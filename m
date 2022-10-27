Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F36A86101F1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 21:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A29D610E6DC;
	Thu, 27 Oct 2022 19:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F85610E6DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 19:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666899875; x=1698435875;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=xAp3T0LMaQb3NAN2nJjzDl+IrmVVynOb3GIQKOOakWk=;
 b=LDSYjf+4RTB5G9lFhSTFizmHCyFtoM0Kb1SzTz+ygMrqg6vY+R5XqvhU
 zxF+hxYS4mT++yxRtGbZHCLsl75vbf8sVs1Zeod5m56Fw5RZZsW+XcxOv
 VjvmlmIKen6lFpbi3ENI0WEZP9ycgl60FoRWvcZWVqG04eLtG7YI9bAS3
 0L8ZuaB2QrVO8HIm45t/SPIjE0jYv8W78jVbDK/sDOvJ0jC8/0FOmMt1/
 c/SVdgb4PYv5PJhvYniwSpwEqKo26Um/Zg1A7YlwuXJQMigfdDlC4s0DQ
 MYQ1KQRh1K6kT8sxK6/cn5YTcbNOw49lTOPzpDDdFRL1m37gMZSAIm/RK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="291624120"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="291624120"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 12:44:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="737823837"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="737823837"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 27 Oct 2022 12:44:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 12:44:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 12:44:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 12:44:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlGWIvjqj4M5hhgStXKcpxopUf3IhuITbdiIkoRkz3Ka+XlUETvxSRrqlOZh6wVUMSKuYuuXszb1HkhYhUAOKroJuOqMw2vDjOPr/spWZNJyiHSKdNSzBD3utmoKc7Ar/41R0YyMUowdxkwr487QJ8T5zTnjCXpJ8U2IFfKsjTxv95BRmvAX8EP4dRsuab5Zrfzi34sP8oGLVDMHG2L/1Rj8NfzK0D0IL1Mhl0PsDr9bTgb5Qc3TVpRIMjViRnXtQw3hsV0A1E1M9UDp8misyBlFqurimG+I388L4epve326oKV5u8n5ccNMS3cobjC6FGE1XjpdFKLcBJJj8ILlOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MH8g1Qr8ywKnTTUgHW/85y3MyN5rbQopACT72luYOdc=;
 b=Mz7KVtafeXuPEiinwUj1Fn+J8RDLwY4ak/lokNJXzNiHHWAHNPbpvRzR+L/MBQXet9hP2gERPG0VtVm5ZshzckYqQtlAnamaiOZ0jcgAvspmzqe/+rGQkDsNAWX4K+Qw6NsxzFPOF0AB6tHX1o723+xzX5pEczma7QVTtQcram/uchVi0Q6+evOv0dNFnpHEoZA+GV8EdljO5H8rmxm2gABUEfpQjDPlKg8ox2M+otQcWneZ5wQ/S/v+pMLcrt0WOXqZDzom/PA0/koWbFAwPdyKi2vEdizuVwWPOl7qXNTW7nR6CvluRTB6IKIaKIXvm+43G/U54jWkMhSf7VMYuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA0PR11MB7212.namprd11.prod.outlook.com (2603:10b6:208:43e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.28; Thu, 27 Oct 2022 19:44:29 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5769.015; Thu, 27 Oct 2022
 19:44:29 +0000
Date: Thu, 27 Oct 2022 12:44:13 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1rfjW8FVZlHF8N2@unerlige-ril>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
 <166688332151.4252.302590095075880296@emeril.freedesktop.org>
 <Y1rdLic4+qZ5gPzI@unerlige-ril>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1rdLic4+qZ5gPzI@unerlige-ril>
X-ClientProxiedBy: BYAPR02CA0050.namprd02.prod.outlook.com
 (2603:10b6:a03:54::27) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA0PR11MB7212:EE_
X-MS-Office365-Filtering-Correlation-Id: e7ee906c-f227-42b4-a1d2-08dab853a943
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AjKeGFgTjq02UN/+cJ2b96nKuMe1E3Ax6qxrlrjAFT6ODdfzMobuaKjd7KThyIfbNWXLYY0pBdQqTdijKCAkfrwGOR0mhZE/BNbm4RpZQH8tjiZSw3WEFhnF1UwrwAKskurYvQhENgYoJ2s0fBGfxP18PzcG98nUehmQHGpLi+XqugsDlBAU+7br6K74YZMv5PBjEo6TmVni/tLDlHUFlWI7WWdBj731sss/n/pQCpdZ9+Q+KDtbVFr14A4Qf8RoFt4R2gehQAbRxMl1X3Ex7sCNb5Taf28eaNdzkmyLnjkD2yvx2s0cMl07Ih05Ev7EzTTvqPxZrySUTXu24gZlHbZm10J3Eb60IX7gQkMbdBQ+WDfjjh54D+PGwedW5pi2DS7AEhnt1zXZz/WkWemRaCE4Yy66099r2+74EB3Srq+2TN1qNVPTn4jwV+r2+xS7t2cssA/u+m/CfqsPfzjvtkdy2s5EHOcyzfdZzRyju+Yh66zwbalFpttX+bnbb9Pfs8d3o/lV5MWb9ntMattzje3dkdSzZi09p0DM/91jF53hf6a2R9J3zxlsqoKfkHBwv2opRTvI2aC6qrH7ZzXC8HKZLswbsLoGzUSC0LHzSHoAT0xX0yRwiAiYTbrVM76b1+dLOBYBph/pDU5Gve76bFcUnbPJ8Jbq/8NW0K2WaokXdiFW0jVM1gxZlzBXfVm5J5vG1vPtEHGIsn3MWpTgLJfC9/H40NeZnX1RZ/NOevs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(396003)(136003)(39860400002)(366004)(451199015)(86362001)(38100700002)(82960400001)(186003)(83380400001)(2906002)(478600001)(26005)(9686003)(8936002)(6512007)(6666004)(6506007)(6916009)(33716001)(6486002)(316002)(5660300002)(66476007)(41300700001)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkkrZEFQMkpHVDBWQ2xJQ1ZtSytCOW1YUDk3bHlMVVRuOE5tYXBtTjZoZ1VF?=
 =?utf-8?B?eUVacy9HaVpKWGxUZ2hvakJCclBhamQ5bys4R1BXbm51MGdZUG92eldhUk9I?=
 =?utf-8?B?ZTZQbGNOQzkxWHg0MXIvREw3WC9HMmY5VTkvaDR6NzJnWE91NEVBYXhyUTQ0?=
 =?utf-8?B?UEVROXRJQnZva0ZuU2JzQTJJT2ZmbDgzK0NSOUd0N0hiVll0SnhLRS9SdGJ5?=
 =?utf-8?B?d1BMTGxLcllXT01aaTBBRnhCU1lEUStuV2Q3amp0R0NBa01XU2w5aDNVR1o4?=
 =?utf-8?B?YTNkNEpQL3JSdTJEWSs4MjNKM2c4T3JHQ0dSMG5GakxwKzZrcEtsR3ZRY1Fm?=
 =?utf-8?B?V3lrTG90NUQvTjI2eEpWNWhTbEhBSGtCZ2xFRnBwWmp4TEZER3l3aXVTMzdz?=
 =?utf-8?B?YmZwNDNmWExrNWJBdHBVNUlUcGdpSGRCWkptcHVEUUUvS3hDTWNEMkZWVDd6?=
 =?utf-8?B?elMxQnpyMVp0dWZsVnBaZEJJekZDWEtESisxVlZJL1k5QXpwdDFSVFRQN1Zw?=
 =?utf-8?B?SzNDUlhvcDM5SGo0M0ZHdS9KZ010MENGZjdjWDFWKzhkODJYNlNlV2Y3UGwz?=
 =?utf-8?B?QUhMUDBKd3NKTkxyWUpucFJxWTlobGVzS0NKaHZubER1eDR1MzdwT0JEbzFv?=
 =?utf-8?B?Vlo1bG1qZDBlWWxhVEdqM0tOb2Rrc3pVcnJQd2pBSlhrbXpHTnhkbExLNjNR?=
 =?utf-8?B?bUtLb2E1SzVvZDJ3T2tTVWJOb25scFJqL2doSDlISXRiVlBaaFlsYUpiS0NV?=
 =?utf-8?B?TXlXU0lGQjFRbFFWMFNzTXNNaXU4VU91dC9xTHlJN2hmUVg5OFRSbnAzNDNM?=
 =?utf-8?B?SUg2dFBNY2N3dnU5V3M1anB6VUEva2NnRGlFUHZ5eVg3azZtTTFHeGdPN2dx?=
 =?utf-8?B?Q3hBazBqTk9YYzM0STl1ZWphZnNrZllDQUVKckxLTko2OWdBWmpPVTNDVjBI?=
 =?utf-8?B?MldhcFYrelpzK2RNMXA3aEFMSnNHWTRTVkdXL3VEM1dpVS9hTDF6WWk5NDF5?=
 =?utf-8?B?R3JVQ001MVhkTDE1M1diMERSdjVGbG9xcDRJMUpJRmE1TWhoQXVWeGdkYVBT?=
 =?utf-8?B?L01namdxclhkLzFCaTgxVnAwcEhLUmt4MVBha1VUVXRTc3NtZzQwNXhVRGE0?=
 =?utf-8?B?ZGcxMU02c29OdHgxUUE3S2o3UDcrMG82U0tzc0tPNmNDdVRiVm9Nc216cEdT?=
 =?utf-8?B?QjVLa2hZS3ExUVhPU2c2MnV5ZERUbnRJL0JadXlvbkswU2NxakZLZ204d2F6?=
 =?utf-8?B?Y1ZpeDZJZ3BzdGZnL0lqVmpDNFlidk1VQVpwVkFPT3YrYzZBQ2FIM2NOcVkv?=
 =?utf-8?B?M3FkWFdjd3VyMmpQczVCZmlwL3ducE56djdGdDZpUGpZdmFMUEw2Y2ppbS9L?=
 =?utf-8?B?SEE4R3FiQmR3c08xVEZac3ZYUkE3OXZWazNXb0hjS0h6MkQydjlZL0p6N05N?=
 =?utf-8?B?OGlaS3JxTVliZzVwL2VWZjhZUE9DcWFJNFF1SDNYQ1MrWlpYS0NtZXFJTUlu?=
 =?utf-8?B?UkNsUHIzUHlpbnZuNXlSaGg0RjkyMTFsbTNJYkU2UXc3SjEwdUZFY3ltaGc4?=
 =?utf-8?B?YzA2Y1NkTWIwRVNRcStFRjY0VzM0K3BqaXdPUEJCeHJRaXpMeXBYNGtnNGxX?=
 =?utf-8?B?M0Z3U0JPZFlQYVBHTDVJWnlpZ0pTUHBvcURQUjhwRGFCVk9LSkdpSW5uZGhI?=
 =?utf-8?B?Y0xlUlQxSHRpQ0dCamxPMUxEVXRPTjZKcjJKMkZIalVtejNlU1RTQVlVd0hT?=
 =?utf-8?B?V3o5QmZ2UkRoc0lGT3VZVHVqb2xuMFp5MFpmOUo1Um5tdiswRzZqQm52Tzc4?=
 =?utf-8?B?SE5TZXpjUDEvVmo1L3RYVmZNMS9TUGhQUXdSODUrN21Qc3QvOC9uV1BGV3dJ?=
 =?utf-8?B?emFPbk9HSXA4YjQ3dDFmcERPMHFwU25YdFdGelZXRUtEVzA3TWFyUkFaa3B5?=
 =?utf-8?B?VEFiOVVjN0RrdURYaFhUTzFraGFhaG44NjlsNkdrZmZ0dXNZODUrSVlZenB1?=
 =?utf-8?B?d3JKWVV0cmZKWnBUVlRlV0U0NThvYll3aUV1QlI5bWlDaE1oU0drQStKc2Er?=
 =?utf-8?B?Y3FER1VXYnV3TjFjNDBWWmRpWlVXdWpkYkYzZDNKc0JEY3VBUXdLOGErK09s?=
 =?utf-8?B?cTlOYURnSGRvRXRlbGZtR01EaE4yMDlubXZMc1UzY05UdDVQaDE5Y3BzVkd4?=
 =?utf-8?Q?eH1CLyqxxZXBoByN+O9wBhM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ee906c-f227-42b4-a1d2-08dab853a943
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 19:44:29.1049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LZNXvSWWWJWoIywevG+cK4Q70u81xOB10OqnC0zwARoPsDKkkmQWfzi+LAJy3BYU+1SmPKhzlKlSw47PBXqjk/VlUdAErqj/4tAP41gJ6wk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7212
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIEFk?=
 =?utf-8?q?d_DG2_OA_support_=28rev11=29?=
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

On Thu, Oct 27, 2022 at 12:34:06PM -0700, Umesh Nerlige Ramappa wrote:
>On Thu, Oct 27, 2022 at 03:08:41PM +0000, Patchwork wrote:
>>  Patch Details
>>
>>Series:  Add DG2 OA support (rev11)
>>URL:     [1]https://patchwork.freedesktop.org/series/107584/
>>State:   failure
>>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/index.html
>>
>>   CI Bug Log - changes from CI_DRM_12304_full -> Patchwork_107584v11_full
>>
>>Summary
>>
>>  FAILURE
>>
>>  Serious unknown changes coming with Patchwork_107584v11_full absolutely
>>  need to be
>>  verified manually.
>>
>>  If you think the reported changes have nothing to do with the changes
>>  introduced in Patchwork_107584v11_full, please notify your bug team to
>>  allow them
>>  to document this new failure mode, which will reduce false positives in
>>  CI.
>>
>>Participating hosts (11 -> 11)
>>
>>  No changes in participating hosts
>>
>>Possible new issues
>>
>>  Here are the unknown changes that may have been introduced in
>>  Patchwork_107584v11_full:
>>
>> IGT changes
>>
>>   Possible regressions
>>
>>    * igt@perf@global-sseu-config:
>>
>>         * shard-tglb: [3]PASS -> [4]SKIP
>>
>>   Suppressed
>>
>>  The following results come from untrusted machines, tests, or statuses.
>>  They do not affect the overall result.
>>
>>    * igt@perf@global-sseu-config:
>>
>>         * {shard-rkl}: [5]PASS -> [6]SKIP
>>
>>         * {shard-dg1}: [7]PASS -> [8]SKIP
>
>The sseu-config feature is only applicable to ICL, for all other 
>platforms, these tests are expected to skip.

Revisiting this, I see that the IGT series needs to be fixed to allow 
these tests to run on gen12. Only gen12.5 onwards these tests are 
supposed to skip.

Thanks,
Umesh
>
>Thanks,
>Umesh
>>
>>Known issues
>>
