import { Module } from '@nestjs/common';
import { ScheduleModule } from '@nestjs/schedule';
import { IngestionSchedulerService } from './ingestion-scheduler.service';
import { IngestionModule } from '../ingestion/ingestion.module';
import { NotificationModule } from '../notifications/notification.module';
import { SurveysModule } from '../surveys/surveys.module';

@Module({
    imports: [
        ScheduleModule.forRoot(),
        IngestionModule,
        NotificationModule,
        SurveysModule,
    ],
    providers: [
        IngestionSchedulerService,
    ],
})
export class SchedulerModule { }
