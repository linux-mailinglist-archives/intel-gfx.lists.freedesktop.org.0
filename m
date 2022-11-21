Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593B86330FC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 00:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3926110E074;
	Mon, 21 Nov 2022 23:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489B910E074
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 23:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669074756; x=1700610756;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=MIXX9btFEVIpPh7OxiNSZ8dNWj/R/Dqmwakuu2fEtSE=;
 b=Nvax2exUH21/XxRl8FFKu9XBihDaoWNlK8Z+lED25Iheov8GX2KDXG9Q
 yZM15WhN9dSfmp0L+NcyCidTWatP6w32mpZcYE1QCvzyeA3RudEHmRQW9
 kvp65j1N7/G/uWypvg6yZgjK+stf6E+1PhUsBCVC+PW+Bjf8zAuqek8vc
 VMC0jFin5pMRUaZgaW6IX3F9SISghNYdnoK31DmHDDFUP9brYHjfrvsIp
 tkYeO8KnvPTum3/X201QNsfUKVRLIpHHzfCYE5YKEUZq0acDtWxSP+JUg
 pZ/Cb/w9LwajlGK7zxvYyj5G8eJmXwYlV+Nb0qBy93Ro8RDgPJQWBpEIA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="314838043"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="314838043"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 15:52:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="591946175"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="591946175"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 21 Nov 2022 15:52:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 15:52:35 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 15:52:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 15:52:34 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 15:52:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UO8AsYKyXltyg0MYh/cd4x2iyjIJH7+YHhZ4DKustcdPv0+KGFRtB+Fv3coD1NjWucbIj1UwYV4DxwuQV0U010VwqKMH0vQ870JEVgImOYt/NogAbZJzS0j4FYzIbvGN8OGyNRdrFOxI7k4ce19Z7s84EkKUKdbajcsohpb/DX5M0gtzJcWWNBv53nJk51pD9yGV3+GD3TexKZcsRyq4IENHslLw6iOMhT+R0e4kvUgf80sXVqgxHDrSyDVcU05/VgdJ9HhlCpgoxreOp1dlfaYAEEvM3KSltFfF00tzFIFtxHQiTDsKDpR/uWrl6UCfVS2QWcMICkjepPdYida7zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UzqY3QXOnAeeH6obCtZz041m0GSj7UZqCf9DBT5V8gc=;
 b=RyIE7lyG8ua1Po0F7wWXbvE04XZ7LXe83ThjnnmIj7aBJPXTG/2N/wQklpyHiCNSRzY/p41geZElYGoFtkvJs9de2ZhxcRhq80rLpsH7LSBZMDsrBpuewItMm0NSzSiPMxLW/tkHL3QKfNT9/Myg3RZ7XIy+b5OsTyN39GINUh+g7DsXNm/CSuCaxJFJxYt6NK/xqVOFVUGZTnb2jkkxirHqJ7l2770odGgQzcQbZS7OYCObLli5ci7YseAqqMyvmhWvEPobqRa1eRldkfqDPCFB5ADCHAfpW0gCwCifUqziLEdvQrO4r0lC7FIfEkqwR5vP4X9AadV11iJ+ErKN5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2984.namprd11.prod.outlook.com (2603:10b6:a03:8b::14)
 by DM4PR11MB5487.namprd11.prod.outlook.com (2603:10b6:5:39f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Mon, 21 Nov
 2022 23:52:33 +0000
Received: from BYAPR11MB2984.namprd11.prod.outlook.com
 ([fe80::442e:537:2534:6159]) by BYAPR11MB2984.namprd11.prod.outlook.com
 ([fe80::442e:537:2534:6159%5]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 23:52:32 +0000
Date: Mon, 21 Nov 2022 23:52:28 +0000
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y3wPPBSZTEYQbxOg@DUT042-DG2FRD.fm.intel.com>
References: <20221110171913.670286-1-umesh.nerlige.ramappa@intel.com>
 <Y3vb27jBmcOuqcvJ@DUT042-DG2FRD.fm.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <Y3vb27jBmcOuqcvJ@DUT042-DG2FRD.fm.intel.com>
X-ClientProxiedBy: SJ0PR03CA0042.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::17) To BYAPR11MB2984.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2984:EE_|DM4PR11MB5487:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a61a366-57c9-4034-e518-08dacc1b7514
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: APBgUPick/yzoXYrO4m6NQadRR5uWcDlI8UYZ4H+apA6LFz7OYQ0dOmFecgCLSY8CO565vK6M9OfJTDpR4LSj3ZYte61AaSjM/5DFYtArz4bcJ3cnTGwh8iEXzbmJiF+7UQpqPEeG3v2IPjhpGa/lEJojlodbGMZRIaSKCQXYaEZVoB7f4QzeP+hV6WaXW4CByA6UqqNKuapECmuDqz8KdH4L/EsxMdyZvoEq/xPw3D8GuxVjKchvIN9giCKsLoxC1fr5PouWKRtBtjaqpe8RAZVBiupiHEnj4sWwvtOQJ96XGPSkedm8df9TS6oZx0njsROC7laQ8pjkW8rCFhJcHAuLxXz8ksfHPIGRjgNwFHlEcncEhlW/1T3Epkb73HstZtDQh/hvQ1PhK1R9oCdJvisVPMnwzyz2p5Dqm9Ja5jwzwMlXWX55OrC/7KfL3xmO+HW/6l3vgFmbXasG8LIbMRuIDRpETscWH0n1aU6q14GNxjJ3DkYVldlG3zji3MxmkMqeo7fPEMgzAS5/ie2cDZSCrtUiywC7o4WiaJdZH3qGO28tgRbkpLql/FrvtfUbofNEcOFBWcwZtfLhgKfIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2984.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(396003)(346002)(376002)(366004)(451199015)(2906002)(66476007)(66556008)(66946007)(41300700001)(86362001)(83380400001)(38100700002)(82960400001)(6916009)(6506007)(5660300002)(8676002)(8936002)(6512007)(6486002)(26005)(316002)(186003)(478600001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmFlWndIRk5yYjljR3N2SXFJdE9CKzBURUQ4MDZoV3NORklHaFVqYWU4OVJW?=
 =?utf-8?B?cmR1MXhWbm00cmkvdGZaMzBvYy9UL0ZWeHV4OW9Ycy94ejBOVDZjUG1yOGh3?=
 =?utf-8?B?ZUwrVDY4b0R4U3hQMHRXVjdscVVRVGNEcThSVnhaMU5QSWNOUzBUOUpaWUNX?=
 =?utf-8?B?SkNiSytsbWZPTE5LV3ZpdE1yR0RBNGpvaTlZMVRPM3ZsMm9FbVRFTnd3bmhO?=
 =?utf-8?B?WFpxMkFNaktWSjhNWmh2OEJ1UUhUN3I4cHJCWUR4bm9aWlBuVHNPRHlIZEcv?=
 =?utf-8?B?OHJQbW9iNnNDSjFIREQrYWNRUVV0ZCszSmxyZHQrOTR2RW91c3RZQ0FxUkNP?=
 =?utf-8?B?UUZpbHViY2pMaHVLU3dnYStsRkN5b1U4cHdoajlvUHVPTzdMRkdiUWF2cHdU?=
 =?utf-8?B?dFRnYlhOYXJpVkZxaEhmdDV3THZWQ2Ztd0ZIdnlGVllPOWNjVGFEaEVXYnJj?=
 =?utf-8?B?ZVV3UjlSaVl5enJ3Zk9iS0tWMk5ERGRiVEEwcGR1UnZRaHJxM1NlUGFsYWpG?=
 =?utf-8?B?QXFHT0hFZHlZckoyb0hDaGVDVk51WCtTMHpidjFxeEVBR0FhZjVraWFGb2pQ?=
 =?utf-8?B?bnNlclFEeFZobUZPK0s5c0I3ZmVRMUU2dWErYUJhMEF4U0dxcmFIRVM5QjlO?=
 =?utf-8?B?KzFiUmJETzBYQzRLbE95WjE3U3VodVBidGw3VnNWVEV6U3NZalhFRHQvajQ2?=
 =?utf-8?B?VVp5MlA2MDBHQStKc0tnTUZvWWZ1OGtQOWJ4akcrbmNqNWM4YWQwQ24xRFVr?=
 =?utf-8?B?UEUwaXdzdTZOVlRqNHM5M2JjaVFjSTY4aUVmRjQwY1c5ZVIwTlNkeUdOSS92?=
 =?utf-8?B?My9adHg4QTVRZG1MWlV4eHpMNjdXbkFxQWN3SndpM2J1K0RoQTNGY2NoQUpr?=
 =?utf-8?B?bGYrOHdDay9QYlhHcUpSbUduOHk4QVB4Vko2VFcxR083YTRYRUJzV2prSlRy?=
 =?utf-8?B?T1k4N2x0ZEo3bm16RHRzS1BRSkdRRUI3UUwwNnBrWENSMVlaS2JQNTFLa3ZH?=
 =?utf-8?B?TkpOWUNNbTZaejg1QlFZSEprWmNxYytTby83KzN2SjgyWDNMOW1TZzNJM3F4?=
 =?utf-8?B?d0dWNDdBdktQcUN1OEU3aHF6TDk0UlV2UkxzUDJVMG04UFZXUVhaVHU5MnR6?=
 =?utf-8?B?ZmNQejNMM1JmYW5kZWRobjR1cUIyZWU2QnNreHA5ZW9ZQUdLaFNZZDdBeS9i?=
 =?utf-8?B?d3lLYlBLNE5iOVpHdHg5UmY4NE1WQW9oNmFtN1d3S3pwTGloTFNsRkJnT0J2?=
 =?utf-8?B?UTRIcWNjVVl6YmVmOHRPU09kRWdNMkV3NmRicVdGQWNVb1RQZjcwV2hMTlJ3?=
 =?utf-8?B?bUtOeE8yMExmcVVsbXhjY05GTW8wSEllZHRuVWZIeHMrOUJIUVJMbFQxbndN?=
 =?utf-8?B?VFg1eVlwYVdxY2tLYi9yT2ZmWVRJckhmOGFHcyt5cWg0Qm9QN2ZHaVphZ3BJ?=
 =?utf-8?B?S21IRFBFbjh0OWY2USt2VURvU3BhS0xNNi93RDJ0NDZJOERZTndFcVV0TDli?=
 =?utf-8?B?dGQvaVREOVA5Smtka0puZlY4UEVCZGNVcmFjMHJEZTNRRW9RcXp0UFNWdWM1?=
 =?utf-8?B?dGMrazBKdnc0ZE1PUjBmWXBFR0xhZDA2bXJZblI1TWlwei9NZEllbFFRKzl1?=
 =?utf-8?B?bHMyR2hKQjJoc2Fyamc1Yk1VcEZnQ01OYXN1MDN5eGptWU1GcFFrK21aQm1S?=
 =?utf-8?B?SGxqTlJmNjBMZ2cxMXRRZlg4eG0zbXJMSWF4ZXZycStLdmhuNmkyZ2hCQjdh?=
 =?utf-8?B?V1pwVDZYSitPTjArcStiNys2MnhtcER4Z1hCOVM4elRUWEFiL1FsdjhJTkVp?=
 =?utf-8?B?N1c2TEczUGQ2VDVPTmI5UXF0dVZ3a2V2RW5iZ25DQjc2cm8yM0ZSdGRnTzdP?=
 =?utf-8?B?M2E2U0FOT1pJdktxOTZuRGMrN3AzQnRGb0dXc005QmN5UmF6aGcvRkQ0WkFL?=
 =?utf-8?B?amxUM3dFZnlXUzZ4VE9CbHNmMDRqcXN0NkdaRFNsQkRsUzh6UmNtK0FVRGhW?=
 =?utf-8?B?b2RKN1l0WEkyNHpKME4vYWNlSENBN3luRk84bkJWWkJJQXpoRjVGMHFqSVFC?=
 =?utf-8?B?aHdla1RuY2cxaGNBWlpBbTdZSk1HU0N1WGpLOCtXcGdnck5XaG8wUEpndVRw?=
 =?utf-8?B?V09QWUlRa0sxVU92SmtqQ1lYN1FkbWpPK2Q4REY5TzJLZnA3SEk1ZUcrSWp2?=
 =?utf-8?Q?1wCHfen8dy67zXtErt9RjIQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a61a366-57c9-4034-e518-08dacc1b7514
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2984.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 23:52:32.8708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: alh8ThIIhM1rRSDmCeW0DqyVXbezkn4ZTxT6YAKM9T2bd2QEiPqHMxweZ+FgJ/UCFLsmDIORgIHZZWzBbJLXOE+1rF/jrFd7h7o0JnF1zE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5487
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/2] Fix live busy stats selftest failure
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 21, 2022 at 08:13:15PM +0000, Umesh Nerlige Ramappa wrote:
>Reg: Fi.CI.IGT
>
>https://patchwork.freedesktop.org/series/110557/#rev3 shows the below 
>CI failures:
>
>igt@i915_module_load@reload-with-fault-injection:
>shard-snb: PASS -> INCOMPLETE

Looks more like a stack corruption, but again this is fault injection, 
so I don't see any relation to this series.

>
>igt@i915_selftest@live@evict:
>shard-skl: NOTRUN -> INCOMPLETE

Looks like the test just causes a reset as I don't see the test in the 
dmesg log, but see it in the igt_runner log. I don't see any way this 
accesses the code path in this series. see (2) below.

>
>igt@kms_cursor_crc@cursor-alpha-transparent@pipe-d-edp-1:
>shard-tglb: PASS -> INCOMPLETE

Not sure why this shows up as incomplete since I see the test exiting in 
dmesg.

[329.896238] [IGT] kms_cursor_crc: starting dynamic subtest pipe-D-eDP-1
[332.499005] [IGT] kms_cursor_crc: exiting, ret=0

This doesn't seem to fall in the code path modified in this series as 
well.

>
>These failures are not related to the changes in this series.

Note that the change in this series is localized to 2 areas:

(1) selftest@gt-engines@live_engine_busy_stats
This cannot be causing the above failures since it is test specific 
change.

(2) A refactor of intel_uncore_read64_2x32
This is used only by guc_update_pm_timestamp() and 
i915_reg_read_ioctl(). I don't see these paths coming into play in the 
above tests.

Thanks,
Umesh

>
>Thanks,
>Umesh
>
>On Thu, Nov 10, 2022 at 05:19:11PM +0000, Umesh Nerlige Ramappa wrote:
>>Fix live busy stats selftest failure in BAT. The issue is seen more easily on
>>DG1 runs.
>>
>>v2: (Tvrtko)
>>In addition refactor intel_uncore_read64_2x32 to obtain the forcewake
>>once before reading upper and lower register dwords.
>>
>>v3: (Ashutosh)
>>Update commit msg
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>>Umesh Nerlige Ramappa (2):
>> i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32
>> drm/i915/selftest: Bump up sample period for busy stats selftest
>>
>>drivers/gpu/drm/i915/gt/selftest_engine_pm.c |  2 +-
>>drivers/gpu/drm/i915/intel_uncore.h          | 44 +++++++++++++-------
>>2 files changed, 31 insertions(+), 15 deletions(-)
>>
>>-- 
>>2.25.1
>>
