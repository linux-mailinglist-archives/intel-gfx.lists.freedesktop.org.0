Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52251614F19
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 17:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C6510E3F9;
	Tue,  1 Nov 2022 16:22:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7272D10E3F8;
 Tue,  1 Nov 2022 16:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667319747; x=1698855747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hb9/nGmYkaLDjSsm8q77way0z71acPYgASou3vnDWxw=;
 b=iMgYn6g85295Fz9CBwCV2n9DfreGVrou9TsBvIq5BlJeEXEH9rkCFldh
 cyxZjV+fcv3FRRD9kohr6U1dmGaDgSiNcQECy6qNbq+KPZHDHKkGh+I3p
 NyLRQS0Gd4ddmfSPmqp4TSYkG5WxkD/2hYIX4YV14cq7MDfCEdxkwFlh6
 TfMp/OjnPFcXySKFODz6g1i8/p12S8BmDb0lJ+uFZk0dSXXKX9BuDq7Hh
 gEcUOMvI7q42PO6EnMwramQpA6qlqeFxqB/u+0TjCeudhiMSrphRylOhN
 as8X6UrDNNmFRhrnsCj0EFL0vuRsuKia2ie6KMgiHkAxhZKbRAQCLQ4O+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="335848625"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="335848625"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 09:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="697456079"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="697456079"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2022 09:22:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 09:22:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 09:22:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 09:22:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXA9C3jtlPXT3p2YUDZQYf6x4hGqbALi5EYX8siRqxRq4DfWakdxs9nIOqz9XbCgXFRboJhJgP0RMwjhrHkg2Eddv4G67YP2JxNQHZz2DWcm03eb4udgfftXbWwfHfpbPr+nirbonf+VZjP4HeqRvqIccs5LqeLR/iMOFt0HXnH05fQbXvpppVoPFLyjmjCq2yRZsJLelDNZNAfEiW4jDSkk8x6gS38V+tEilKqIRyC4gUDFkAz+LzErJlNZ/91yipGtjrqLo2BLf7uHElARTa3kgdL+iqKtEPwAaPuCDq1IUVmYJ+qJqIrz3jVS//eSE+3qfjjgjLpiTicPygTUQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I01dI9hgb/1B1goiGmc7ebxIyFRqB582jYu7srCoRxY=;
 b=AI6NZ1Bwl1OeoZgX5Ld7DJURMDrHJz3mAU2zV59b+JpzEM58SDG6e/35B2taOHDcwlfQWTTQhqjzg2Trscr/AR1qPXhRmjlrCuI1f2CWdqepyZs/yv0k7GlPIMRgzvur5yp8nftbX8EnFy3WGAb9fwu/WQ7MC9XiCfNx7/CPsGN+lVdmXD1SqoTHv0qVzMeUiFiwwgDN4nqfe+92yuNUmz/qBI3XjhWpPL1D71L204/4ePk56i8R2w/z/MsLmb90o58eeFLYZLHDY/8lS+8cjNo8awMJ25zZgse7WLv99aG09edD4CdS1dmZEhmo+QL6A+AE/XRFq6F6ZPsOm2mtIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Tue, 1 Nov
 2022 16:22:13 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 16:22:13 +0000
Message-ID: <9fbc49e1-f651-f19b-d7b5-43ac02f12f9c@intel.com>
Date: Tue, 1 Nov 2022 09:22:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20221031222440.546-1-John.C.Harrison@Intel.com>
 <87tu3id7ao.wl-ashutosh.dixit@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <87tu3id7ao.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0011.namprd08.prod.outlook.com
 (2603:10b6:a03:100::24) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DM4PR11MB5294:EE_
X-MS-Office365-Filtering-Correlation-Id: 66e25b8c-e94e-4479-705c-08dabc253be3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EHlqm/NE2BFCUK0Cfo6zYlmxtKrdjllbjlh9ASAEJ4TJmIZd0pZHbKG9hQ871tqddJI5irkUrkpZPVDEQfCkXe30G04yyPmeU5BcwU2kE7juKP+lQjWT5AtYFDQLjcO23+zPV5WVLA9P262OMQJjaH+dFCZ44eCYjEIGCX1cK6d1NhhxW99oQhDHoJUruNgnid7p3gSXRG4dkmXHMj9IKLe2J9r8zCqXnlroTARJatYAYXH23wIqdoWbMEAYjlilAAfANHpqtlbmverKrW1IoWVlcj8LanJzMXpB0Vqm4xSbhVyKx+6/a+onE94jt76eG3VzDI73p90Nv1iAiY8IFxVa8CCHfH66iQ9t0J3CtzPTIvnYUV74xr5rp3uLWYIgpXz+XcmrxpIwy6Gdwg+RfNOb/qmbe/79Oe0wGsYDivD3yoCUtS2cgIDnjKZgoKb7nioP1pVw8nq4TBPVu1HGqc/gO3AYsjPtWBxBOutCdwgGEIJNt6VcUBf/YrRCt1aSWgGzl+IEUkHCJL5dgb9hv8ivTC6docSwHgYvE4MB9J7onW/gzjscAITx9AWEjsMyDaJR8BZAqz4TBsIsTH7dVk4knHNn/15Z94xOQI6XGMJaYDBTV0nKzbkvH5puhgjMKns/PkjpCw1Qt7qi4Ldl+MUh8hrToe4bZaqgztqTdtVF1x+GvY4lZY4fCm/zeHGqglKJgycRUP+IxQ7FjZZ4A6RJdTzaj2D/CoiwiMBSmZXwi0Rmh1ivG3utjXZ6t10GMAAwhpEmoiEeh5eFOXzNyO29UIpxmt04a5See/bEIzM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(366004)(39860400002)(396003)(346002)(451199015)(31686004)(36756003)(38100700002)(5660300002)(2906002)(15650500001)(82960400001)(83380400001)(86362001)(31696002)(2616005)(37006003)(6636002)(186003)(478600001)(8676002)(6486002)(6862004)(316002)(4326008)(450100002)(66556008)(66476007)(8936002)(41300700001)(66946007)(6506007)(53546011)(26005)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHhCNlVrdlVod0NSOXlHQWZTWVpNNmhOZVBnUjJjMVYyTmhISGZ5TlB4V3Fo?=
 =?utf-8?B?TlJkeGVKMU03dnVvMEtnVndoTkNXbGpMYzRRSWpyY2R1RGM1ays5VkJIYTQ5?=
 =?utf-8?B?bDExMG56M1Q0OHN1dUY4Vk4rQmFPZ3JCRmV3UmdEazJKMXhERDB0aWFIamhy?=
 =?utf-8?B?NmlqS2gvbDBRTSsrOXMvMGZKWE1wUlFNVklnejhsYytjSFRpK2gvTFVScUVU?=
 =?utf-8?B?U2UxbEhoZTJxS2t3SEIweUR6NE40UXhOSGtWUVRycFZmMWl3RWZBa29YS0tq?=
 =?utf-8?B?ZHRvYXFBVDhEaDU3cU5lVXo4UndjK1RnYkNNZllVR1oyNGw3TDhDN09vempQ?=
 =?utf-8?B?MjNmYWpRdlg5R2g5VzlyUDd1cStQOThQekcwTytDZ0VkcXlhVEFVWXllSGNF?=
 =?utf-8?B?VEdhQWFzRmFmK2dod3FtbSswUVprZmdKbGhGRVhHSTdlMlBPMldvVVREMGt4?=
 =?utf-8?B?QWUxV2FHbDRSYjUyNWYrTXM3QmVBd25rTDdreC92QWtHTUQrRlBYZWNBYjhr?=
 =?utf-8?B?Z1Vvd0V4bHkzSVNhMTJlbGpUOHFMRjN3TGk4TmVqWGFEbTZNWVRVRmJxOEFu?=
 =?utf-8?B?dDI2Q1p3a3VmSUdRTFJsSGRaWkFqRnhQcWdWd1NzV1RGY3hGVDZNNElXdmsw?=
 =?utf-8?B?aUF6Q3diNVFGQllvaFVTN296aGNEU1pmZzJNUm5SWXVtRjl3NEJOcC9wV1hx?=
 =?utf-8?B?czZLOHUvNHZXQUxGdTVjcDdGM0xuWnJwVmtqdldWMmxIUDRBM1RRSHZvSnFx?=
 =?utf-8?B?OFhmRXNrMjM4R0FqVnQ0N3FEQkRuRWxKWGQwTzNtOERuZW5tUlRTclFKU092?=
 =?utf-8?B?bFFSbXkyS3FzKzRQU0lzUUdaSUl0M1hYNTV1LzZ0Y2JZQTNQU24yY0VOOHR0?=
 =?utf-8?B?QWUvME1TYmJBVVFjRGd4MkplMUVJQmFQVjF6U29oWVZZUHNCamhmOCtDN2xK?=
 =?utf-8?B?TXRvOHoyWGZ0cGJwL3JZMmZNdEZHd2ptandsTXZtNjRuQ3NiSjJuWDZLL1lG?=
 =?utf-8?B?TTZxaEtxa0tveGdyR0FVK1dTRmZwMHl6TWlEMmxKdEI2L05UMlI2NVM2SEU3?=
 =?utf-8?B?d3VZQVhhVEc3NkdhWGRqeHMxWnR6RXdEdkZCL3l0cG9DMVFuRVQwMUxONUM1?=
 =?utf-8?B?UDhQR2NjMmJvYnpnRlRiQ0VMR0N0NGNnZVFicEFoUDVmVS9UcHFQZlc3dUZR?=
 =?utf-8?B?cWJIclQ0ajJuM1d4NHA5MU9sRnMvSWZqUWpKZEI5QnU3S2JCOXRTalRTNEht?=
 =?utf-8?B?TFVQZHBkOHkyTDR1N1JTbU96bTFEMGpuS3FhQno0UytJYVpXWEZPaUNYZ2RO?=
 =?utf-8?B?VHY2YkJvSXU1N01rTG9XMFVDZVk3bjdiazZOYW1aTVQxY3FtaUZubTdoQzAw?=
 =?utf-8?B?ZHlFWGN1MnFsLzBIWVp4RjlVTkxISWpXRnhPek1PMXd4d2lvOXVoOUVGbFZS?=
 =?utf-8?B?U3duN3cyTTNSendmSXB2OWQyL2NxU1c1WWVOdmlrM25JQWRwMkFCN1paY0tp?=
 =?utf-8?B?bURwRkhzY21uMVJ3UHlKQWZJUUdacjB4N0hzc2RSR0cyY3pXU2NLR3Q0d1gv?=
 =?utf-8?B?ZHhINEdTVGlYUW1nY1dmWllJLzRjOC9Sbjhoa3RBb2pjQmNVb0VWOVlvdXFR?=
 =?utf-8?B?bnMxOVY4VUlHc0ptT2N3RVdhNHNrRlJPUVlxNVMzMzQ3ZFhnZVVWT0Y2a0RC?=
 =?utf-8?B?Tjl2eUZHRTlONmZobnhpZnRHcEZLUFdTSjlRYnVQcEdQMm5mY1lsaS9UVk1N?=
 =?utf-8?B?MXZhU0RpR2sxYlFOR2RCR1BlV0dna3hnMlZVTnEyTm95S09hcVc5L3EyTEMx?=
 =?utf-8?B?akJxSzdtSDh4aWVCcHVGYzJYUG91aDhpKzdQak94MWZmWTlqNkcxdm9wTGZ0?=
 =?utf-8?B?eUYxRFB0OEhBQzFjRGRORGg4MHJrclkxNEtlQ01vaEZpeTlYVWtxVVo1RE1L?=
 =?utf-8?B?Vm5sZGV3QlBLREIxUG5wKzZtOHJsZU0waE1Ycm95T24xa3FQMGtkaVN4TEtP?=
 =?utf-8?B?T0w1REFuZGcvS2xLcTVSMnRCN0hranBobkxodzBITWFyQXhmN2pmZitzeXgy?=
 =?utf-8?B?R1dLc2FnU2xKd3NKckpSMFJhQVI3cDFsbjBEZTFVaXFrc0Njbm05VmtSN2Fp?=
 =?utf-8?B?ZkV4NzhyZHVhVTRTb2NJRGZXeXpwajBYSnBBVlllRjIvanIyZCtlOEVOc1VP?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66e25b8c-e94e-4479-705c-08dabc253be3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2022 16:22:13.1856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mtG83PimKekGdjLJGVN2dKifGgj3T9FbOseFlx+2t3P2n0sqF0FH58+ao6XIOf3+9WUpp7zPE62wMYC6ekIz5xNHe5/gLqVYSfQIC9RhLa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/sysfs: Update
 timeslice/preemption for new range limits
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/1/2022 08:27, Dixit, Ashutosh wrote:
> On Mon, 31 Oct 2022 15:24:40 -0700, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> Guc submission imposes new range limits on certain scheduling
>> parameters. The idempotent sections of the timeslice duration and
>> pre-emption timeout tests was exceeding those limits and so would fail.
>>
>> Reduce the excessively large value (654s) to one which does not
>> overflow (54s). Also add an assert that the write of the new value
>> actually succeeds.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/sysfs_preempt_timeout.c    | 4 ++--
>>   tests/i915/sysfs_timeslice_duration.c | 4 ++--
>>   2 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/tests/i915/sysfs_preempt_timeout.c b/tests/i915/sysfs_preempt_timeout.c
>> index 515038281638..5e0a7d96299f 100644
>> --- a/tests/i915/sysfs_preempt_timeout.c
>> +++ b/tests/i915/sysfs_preempt_timeout.c
>> @@ -68,7 +68,7 @@ static void set_preempt_timeout(int engine, unsigned int value)
>>   {
>> 	unsigned int delay;
>>
>> -	igt_sysfs_printf(engine, ATTR, "%u", value);
>> +	igt_assert_lte(0, igt_sysfs_printf(engine, ATTR, "%u", value));
>> 	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>> 	igt_assert_eq(delay, value);
>>   }
>> @@ -82,7 +82,7 @@ static int wait_for_reset(int fence)
>>
>>   static void test_idempotent(int i915, int engine)
>>   {
>> -	unsigned int delays[] = { 0, 1, 1000, 1234, 654321 };
>> +	unsigned int delays[] = { 0, 1, 1000, 1234, 54321 };
> By way of documenting the difference between GuC and execlists, I think we
> should use gem_using_guc_submission and define two different arrays, one
> for execlists and the other for GuC?
I really don't think it is worth the effort. Is execlist mode ever going 
to genuinely want an pre-emption timeout or execution quantum of 654s? 
And note that this test is not actually testing the behaviour with those 
values. It merely tests that it can set the value. There are other 
behavioural tests and they max out at 0.5s. So I don't see any benefit 
to adding in the extra complexity to verify that a certain range of 
values passes on execlist but fails on GuC.

>
> We could of course go the extra yard and check for errors with excessively
> large values but I'm not sure if that's worth it so am ok if we skip that
> at this point. Or that's a later patch.
The 'invalid' test already puts in 'excessively large' values and checks 
that they are rejected.

John.

>
> Below too.
>
> Thanks.
> --
> Ashutosh
>
>
>> 	unsigned int saved;
>>
>> 	/* Quick test that store/show reports the same values */
>> diff --git a/tests/i915/sysfs_timeslice_duration.c b/tests/i915/sysfs_timeslice_duration.c
>> index 8a2f1c2f2ece..95dc377785a5 100644
>> --- a/tests/i915/sysfs_timeslice_duration.c
>> +++ b/tests/i915/sysfs_timeslice_duration.c
>> @@ -79,7 +79,7 @@ static void set_timeslice(int engine, unsigned int value)
>>   {
>> 	unsigned int delay;
>>
>> -	igt_sysfs_printf(engine, ATTR, "%u", value);
>> +	igt_assert_lte(0, igt_sysfs_printf(engine, ATTR, "%u", value));
>> 	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
>> 	igt_assert_eq(delay, value);
>>   }
>> @@ -93,7 +93,7 @@ static int wait_for_reset(int fence)
>>
>>   static void test_idempotent(int i915, int engine)
>>   {
>> -	const unsigned int delays[] = { 0, 1, 1234, 654321 };
>> +	const unsigned int delays[] = { 0, 1, 1234, 54321 };
>> 	unsigned int saved;
>>
>> 	/* Quick test to verify the kernel reports the same values as we write */
>> --
>> 2.37.3
>>

