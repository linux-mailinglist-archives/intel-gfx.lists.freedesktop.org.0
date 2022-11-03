Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA078618755
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 19:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B6110E79D;
	Thu,  3 Nov 2022 18:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E8410E255
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 18:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667499610; x=1699035610;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=v8MjOsS7fx9D0fiHeu1tp8JFyaCb98q2MLt5xrzCnaA=;
 b=ie5VvZYd+h1O0Rq2rFauPIr3M0g4o+JWOsPAI8yP18K0fYhBfLhoA3oX
 61UhftVD3wvzYFEKDnQ0+52D3fnClZ6oPRyZGwP81noVtCMEUi4/Xcum3
 4Qd92Npwple+OlXNQDMie4ItbMM7I5Nlw/ETpYOasX6rLUvSGUbPQL3t6
 lDjTuwsqH2eRLnwkEEstuIYmSsoiJ58tG96hFMLmh4zZnFVbY2QJ8noTA
 AMoOevN9FdFBmQ/UAbrkB7xSZCQ9WvkimtMbH0nWpWov9RJyefWUm1ii0
 /2rPO+4zmNGcLxdFMAwfisMuuu8fDzbRcoOUrZWim6t/dA1qg2nTSA3Pr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="290155660"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="290155660"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="585894991"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="585894991"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 03 Nov 2022 11:20:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:20:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:20:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 11:20:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 11:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sa+Brq1gg7E+mrqAmJBN14dzj7I/msPvgVT72zoM+12O8L6V8914eDZs4CP+n7E2HJmiba9HrvwGAHeudyia/qx7lKUuebPJ5yk7+A7px80SAr/yJUtA2ssmSe/LsbyD3FZKNcWiLg/XUW1YAOb12DrtgbSUZYUSb3KWRt5/p6pP2v6akU5fdrcG7UrIYNle2LwHZNBbAnyxJvNniXpRKeAGQmY2qJ1S0HSHIatJfHdmcKtabH8i6IPxyw0ixNzBXepjxjXTgKRTEcKn+cn9XOUvOQeeB/NMwlMhf/iuvK8EVZo00IAuDgmNdryU6X08G34F6ndO3Ty5+9qsdxhZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EU9s0H7VGNmFrOj9ZnzWN6x2JKHEe5K2Ogw3dc8FVS4=;
 b=B7fUSyhtQ244+9fOU8fbGmR2v5U09+81ksbqzt1hh9d4z8B9QjNcDhU68pkysiJ8C8ihfxPIbgsKVjBIeXq7rQbG+Bqn48m7S4eKhfQFHYGfB9fpk1E5sW24+YHxgwbL1Qyic2d1jV+Tem+vpiOe2+4dxGNKK+XtWRIpqYB7jVd35r9grckgXP6khhuLK1FukU6Dhm5OaAxaC7QnsVXDdHBm4JJ7hN9qF6FPBlWl1LxlJBoJPzYnwhz3hkQr1i+aaohF6bhqqK+lafEYj//fvfXtxCc2RsObwdE1OYUEvQNsdYO8hu5GYA76COxhNkyLus5TWP4LzF+XRSSbzQyUbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.21; Thu, 3 Nov 2022 18:20:05 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 18:20:05 +0000
Date: Thu, 3 Nov 2022 11:19:55 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y2QGSyhe3rAENDBL@unerlige-ril>
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
 <87zgd8km5k.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87zgd8km5k.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR05CA0098.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::39) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CH0PR11MB5332:EE_
X-MS-Office365-Filtering-Correlation-Id: 88c52923-3506-42e2-9e01-08dabdc80803
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Av2LLaJZkmOE983jJpFG5gCganOZ96TCSRBGaIyo1fK41JSmVpUYimI3BI/5/OuR+HC+RtAUYCHqUzibtIoAj7Rea8XTJYRtjgAizzDIo/rjYJCHJxqgPaKUF1HR1+POG2rJZrKHtU8/jfMOwhcpv2wDpN6YOKuqFNPIeF6UqkOVMCjxa2LxklSBMFZ0i4FRqJ0RcJ6f7YahB/cvKQ2wj0MDOHNJm78YmKVz+sKJmqb9JlAjH3/jHlzZZGykkvUQf9eHrd8vekwFD3zC4qzKQ+7gVVGXj2qB+Pe3y9Px58Ds34XM78GdtYCd99rQ6YbUlCAlcFhfP/QEShBSzXOIZzxmdhvpaeUTKc9f7KvqWegmWrjeMnN6da/P2CoB95p74TpJQuhL8ykpkXJKaIgK1XlZnSgeVc36ZkowJ4vUDAOpX2MiNXlMZcjn/EtHGLIwwjgT9QnNIwY+vOjOfoiUeqmEzCex3aRYaVFIFFpAjfee2YulmRKGS4BngO8PBSOMewI62tOOkC8+6N5r7PKWpWYsEyb1Rv194NNukcVoDSyZmDevXDR3JPUpHTT2LXKw9hdgiEIAV2yZgCDRxROo9iGbtktqqGSL9ueEo48pHV6UKgGM0rN3uk1nfSgr0Lx8GlFdgdXMZrog/vsjFg+4jxthZrU74gDZI/qvjnSrIwz1BQoqTRxQwkmOUcvlbmuUZMxRnysYbg31wMN09Wl2aQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199015)(9686003)(186003)(83380400001)(8936002)(41300700001)(6862004)(82960400001)(2906002)(38100700002)(5660300002)(26005)(33716001)(86362001)(6512007)(66476007)(66946007)(66556008)(4326008)(6506007)(8676002)(478600001)(6486002)(316002)(6666004)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0tEM0ppVGR2Sm55NE81d3J5Y1ZKSjk5cUwvdGY1UlVwaGN5Zm43ZE1vK0pJ?=
 =?utf-8?B?RnU0OUhOWE15dFdBSzdTVFhReDJpbDdCanI0YTFiVVQ3OXlGSU1OTDd2dHRk?=
 =?utf-8?B?Z0dGaGRJQTNFUFM2b0NmUzN2cVFWcjBQUDIyMDZnV3pFbkhWVnU0Ty9wSVRy?=
 =?utf-8?B?ek9RM1hkRWwrakZmMWVMcXFUVE1YQ01icWtzbk9aOXpDNENEaEt6aHdFK2hm?=
 =?utf-8?B?UVArbFFHNmUzclJYRzdXQVc5Qy9WYmdhYmIweVRHNUlRSWFEb3NRWnlpNlZE?=
 =?utf-8?B?NFBaNnpHSXVGTzdtSDgyTWZSbzllamJUOGxpYlhKWFlQNVM4UzY1RlFBcU5q?=
 =?utf-8?B?U1MydFUxaUV6WENoVEpBZXM4OWRTU2lUbTVZTU5iYkloWHBWTXhPSUFRRjB5?=
 =?utf-8?B?RTBKcjJLTVJCam8vSCsvSnN6SFU5WndkbVMzalcxOXBHb1hVK0ZuaGhUYkNy?=
 =?utf-8?B?d0ZrTzkvWVhGWHppS1JCQlMycSt1dGppbXpXU1lRTmNraWZRb0VSVU45Rm9n?=
 =?utf-8?B?YXJuQkVRS0dvZHFZODF0ZVdsM0E0Qy9KVXM5MnVzd0RDSElkT2tFZ1ZMWXdE?=
 =?utf-8?B?bHJDQkJZeXEwSXpkR0lrRmt1Z1E5U3VWZTR1clVsd292cjExN2hMNWxRejh2?=
 =?utf-8?B?dTdtbHRrZVNmR1B0dGNtTTlKK0xvaDlIdndNa29JU1plYTI3cUpTRDhnWUV0?=
 =?utf-8?B?VS9ySk8rR2hOQjVvTlY2eStyNHNmeXZZNldZbXF0NXZ6SnRqdWhhYzcxODZ3?=
 =?utf-8?B?OHRnTlRJWVVhdFdBcS9kWWNpSmZ3elhpZDNxZ0dDQnNOd2d0UGhZaHBDbmh3?=
 =?utf-8?B?VHFOa2pIN3RDd0xQcWQ0ZVVOeExDR1pUWVRhK21yTVI4dmRaREpxOTF6TmpV?=
 =?utf-8?B?bkExZ25qUHZqdEhZOFlVK0VLdGdKczNqOGE1L1c1SmhYaGFHc24vdzhCQUtX?=
 =?utf-8?B?SGFndnl2OWpEVHM2ZlVRTWcwYW9YaWkzMTBSaFFvdW5uRnlGZVhVaDBrOXBE?=
 =?utf-8?B?OUkycU54TStkeGpOb0FJNXhYc3VuQ3dISmM2ZkJxUVp0Y0JleWVwNXVCSWVT?=
 =?utf-8?B?Ym5uTk0xbVhsYTVTUXpoRERXc09YU3dYS0pCdmJ0OWtkSUNrYWo0VlV6ZDdu?=
 =?utf-8?B?NWhQOEFybzhsbnl4V1ZCekJMVXU0NXJsKzl5MlFmWUNpdjFUM3l0N0VyUnVj?=
 =?utf-8?B?SEFDNFZGaUljeE5xYmp0V1NabkVQRGE0eE5HT0pORUVXNUZrd3VyUFZpTUE5?=
 =?utf-8?B?Y3pjUjI3QmhPN1lSV2R2VTJ5b1pGUTg0Q3c5TnU5UUEwUFFMenFIcEE0S2Q5?=
 =?utf-8?B?eVdJNVh4NHhBZE0yQSs4bDRCZldpVnRUTER1OTJ0bGF1OXphTVRhaU8rNUVS?=
 =?utf-8?B?MzgrMnRrRTNZeG9zb2pnak5tK1hIdnlXdDM3WGtMODdVVi8zQjlyZTNIN2ZC?=
 =?utf-8?B?UGNzR0RVcXpwblJrK2tMQ1A3V0w2K3Y0K0Q2ajNGc1NPMktVQ0o0aE5GYlNZ?=
 =?utf-8?B?YXN2RGQzbHNycXRMZU5qVjVlbkQyaXpTRmtRSjdBVElNaGRsVGczaEUvaklM?=
 =?utf-8?B?MTVSbk5HYU5sb2dsRTk4b0NJeXkzN3pZM0hYWUdOalFSRWY2UDZpelhPZnJk?=
 =?utf-8?B?YTNNRUhxV1N3d0FPMm5zUHJ1NVFJb25lRG56TTB1VnpuRk5BK3BReHJHc2Ni?=
 =?utf-8?B?ZjR0NTZpeC9ldFd2dWY5c0wvaCs4SFB3cEVSR0hoalVOOVpLWEJoRm90UThz?=
 =?utf-8?B?QlhYZkpBVEdCTUZWbEgvR0lSTkpDWGtkYTJtbzBZVjMwM1JnVjZyYWtpRmdO?=
 =?utf-8?B?b2xxMXI0bzdMUzM5U3R4cmkxVjkyeG53blhOUzlXNjc2UExnRWg0WVRYdlNS?=
 =?utf-8?B?NzRxMjVyNHRvODF0emxpTUhHN09YZXZaRHVqRGhYMmRHMElocWdLdGhqTzR0?=
 =?utf-8?B?ZklVVEdtc1dvaWpId3lhRFZVS3lMeklKNmp6d0FqYWFkaVh5UllZNzJJSTdj?=
 =?utf-8?B?b1ZaeHV3RGhwb3pxbFRDVmNpYmRILzFHK1ZjMmVTR0pFVWs2SWhiWEcydkNE?=
 =?utf-8?B?S0p4dUwxU0NyZmtTMWx6bzVseGE4dU9yZkVPcTE0MERyQ093cHBHVVVEbGt0?=
 =?utf-8?B?Z2kzZXFjM0h3Um1rNVRTWGttUnNzSDBjMkE2OUtiU2ZMSFMrNWY4cGFua0pG?=
 =?utf-8?Q?ALWbcmZWVCrKOPhhFW6wTPU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88c52923-3506-42e2-9e01-08dabdc80803
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 18:20:05.2847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: no7x5WBWS/9KbNlQFtjUpUdYswwPjdIccztT7n+ce2pBNieg+YXjgsrRhiPDXIi851D8XpLmd1VLXgrIPM+gJd26Wb7j68VT+N6DC9sFqk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Bump up sample period
 for busy stats selftest
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 03, 2022 at 10:01:11AM -0700, Dixit, Ashutosh wrote:
>On Wed, 02 Nov 2022 17:11:49 -0700, Umesh Nerlige Ramappa wrote:
>>
>> Engine busyness samples around a 10ms period is failing with busyness
>> ranging approx. from 87% to 115%. The expected range is +/- 5% of the
>> sample period.
>>
>> When determining busyness of active engine, the GuC based engine
>> busyness implementation relies on a 64 bit timestamp register read. The
>> latency incurred by this register read causes the failure.
>>
>> On DG1, when the test fails, the observed latencies range from 900us -
>> 1.5ms.
>>
>> One solution tried was to reduce the latency between reg read and
>> CPU timestamp capture, but such optimization does not add value to user
>> since the CPU timestamp obtained here is only used for (1) selftest and
>> (2) i915 rps implementation specific to execlist scheduler. Also, this
>> solution only reduces the frequency of failure and does not eliminate
>> it.
>>
>> In order to make the selftest more robust and account for such
>> latencies, increase the sample period to 100 ms.
>
>Does it make sense, and also by way of documenting, to use 10 ms for
>execlists and 100 ms for GuC? Maybe a comment in the code would be nice
>too. Thanks.

I was hoping to keep the same logic for execlist/guc backends. I can add 
it to the comments though.

sadly, this is the 2nd time we are bumping this up. This was originally 
100us for execlists. With the GuC backend, there is a latency by design 
since active busyness is calculated using GT timestamp register. 
Execlists relied solely on ktime_get() to check for active busyness and 
that seemed to have negligible latency. I see no robust option here.

Thanks,
Umesh

>
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> index 0dcb3ed44a73..87c94314cf67 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>> @@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>>		ENGINE_TRACE(engine, "measuring busy time\n");
>>		preempt_disable();
>>		de = intel_engine_get_busy_time(engine, &t[0]);
>> -		mdelay(10);
>> +		mdelay(100);
>>		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>>		preempt_enable();
>>		dt = ktime_sub(t[1], t[0]);
>> --
>> 2.36.1
>>
