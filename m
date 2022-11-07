Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3155761FE1E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDF710E392;
	Mon,  7 Nov 2022 19:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF8910E053
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 19:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667847693; x=1699383693;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EI8zg2o9kRFQri3IUGDgDvCusMvRF14cJ9qtnB72xLQ=;
 b=PM2/I9qPlWG/uBhlYGRzYtIBo6Eq8ekVWgItwp69/FQPhIoBQ+r9I4l+
 +bRfAZc+AIUwsMQRd8JEV0OWA7k6o9fMNzLsRk6FWN55OOJF3VNATWqV1
 mMrs8suXt788jfnf9QmV+CkPcKv/Yb9cAGkD6R8SvI/8NUfdguq4U36Fd
 J3+SIei/qGmevj4s5pWDZ24/55j/vzsFHoMbaEMnH12Qni3ShJfX5KGUC
 /JiXPSzV7t4GgYPbXXuaumW1JQ+gTAr2c55IFBDEHNzQhmCY2goEU5WYD
 ZztUbKE1cwSWg8glHwhnMLLuKzE/ss3eGcCdFUj48SUgXgo0zZrUORAMj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="309206788"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="309206788"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="638485786"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="638485786"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 07 Nov 2022 11:01:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 11:01:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 11:01:32 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 11:01:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UljbNry/JqMDtVw1gtBmxJZWY/3zVOArxdDZX4y+Fle6BZYVMbGAbhzHDDzrpk1xaQ08GLWMuEL6kGzt+Z7z/VzQe8OEYj1WI8wAx7OWkeAlYFHLLtNwvB9WK43mHiR5eLCe22YsI0hFcAXuqgC/R3DPd9bZ/AyqnZ5/244bmxB0D2HBUY6+3NwDN1w140VStd02RdrO0SS2IjlYQ0FlzhBc5psbmodYTOW5noKGJr9cwLR3wKbD8xIt5Pp37/g+dR7yR3LnvLu47blNxpXY/RG3o8rKNB/F4liFa1CuVoj1zLXbyzNNA5J9H6wDPAT7/EUzNDBLB+Ge0/7210AdbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCcAthDgwx+qMzhCbjgo0mXyAdr7dF6+FqqNWsXvBKA=;
 b=eFON37xbdxpsGRo+KIlNDjU2KPicX8+MOMS9zz4SgK756OfeBGsm6AEE+v3mUaF0hQp0IfOkvNq0zT4rP5YL95EO2sx2BFBG/yLylvIPw+63FhWYk6ulxDPXH1592f8tc1B/F5nrEJ4id3oKNezQ7QiJZz/TkPMTW517LDSKpgT0lNDwmyANqCHVMzZgSQatOHPH5E1wRISis2u3aoRxgiV20j8Fwxx0cHDOFIJvCVNDv3ODIUZ8pGHjD1YLBfgml7SpFqQG9zmYHJr84Nmzq9wUD/2oKsELg+ntPZQKe9jSL+lqbbokeftGtmz2Bomzhf1/yDnuf/vWqm/k0RN+eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MN2PR11MB4549.namprd11.prod.outlook.com (2603:10b6:208:26d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 19:01:29 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 19:01:29 +0000
Date: Mon, 7 Nov 2022 11:01:18 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y2lV/gULj0d3WREQ@unerlige-ril>
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
 <20221105003235.1717908-3-umesh.nerlige.ramappa@intel.com>
 <01a58f9d-2c9f-1e7c-344b-989ec429a0df@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <01a58f9d-2c9f-1e7c-344b-989ec429a0df@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::29) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MN2PR11MB4549:EE_
X-MS-Office365-Filtering-Correlation-Id: db34c7a2-d647-47fe-967d-08dac0f27a59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5mTXVFZDbA9bneIl684QR8HmHFFpW4DM4LMe6GqWhgoFExVxc5Pj+cKPOJ6eBiz4lN9L4UW/vzShNoueKAB83Ktcvqsryb8TN+1gOJUuVl1s+MxHBbbWqSqOvU6ooo04TxzlSR0KGeqpKTpG1iPmNM02vlAFULGe+8WveUHoL8VYITa8aWWaFVDz6a2P27cCCwaTYgIFdru7JicGbv0zp+rzDuxkiJKBaJZfXQxgS1WjpK09oc3UclGdyoEw6U4+kEx/mpjc3CuH9KIZOZ/69hXX+GMQ/93k64ayqmIO7qCE/WSrtr2wT+V1AjKjVFcWXJCOccqf1JAkOweiQkl1/QLkZlqG5NGeYu5XE052KYRTTQU6rdT7YIAOeIE6KughdH+HJNgvl4Xd8YuwEMFPbfaOMw/L1BIcnAWr1IPxdtBT7KL8w9SDARs3Le8aMx1nI/eXATR1YNIQXC8rcNPd2JX5eapw5ICEXFKP4ScfhD3j4rCmn5OJG8lxbyPasxymTklYsdgymaK4clmHMUMqCW08h4fukHCb9yctgWm6URHXJF+o2IXXcQMb0WjyWS9FMJCunHXeKRlKvBOp9ge9iIX87ltopLzyBUhFyyP6jiHHwULVb+7fFGzTzl/yvLK5nmaGooPJ0xtIwBqmvd6Lqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(396003)(366004)(39860400002)(346002)(376002)(451199015)(38100700002)(82960400001)(86362001)(316002)(6916009)(6666004)(6486002)(66946007)(66556008)(8936002)(5660300002)(478600001)(2906002)(6506007)(8676002)(66476007)(41300700001)(4326008)(83380400001)(966005)(6512007)(26005)(9686003)(33716001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1EwaFBjUTVtMGZLcXQrdWkyRVpYSmdob21GMXUwakJ1cnc2bzcxdlpNR0s2?=
 =?utf-8?B?YWZRZjAzQkN1NzMyL0x4eXdLQmVhenBJejc4MDR0T3JmdWdtTDVmalRHbExC?=
 =?utf-8?B?STZxWS9OQm1DdVpDdU40Y2NIRk1sTGdNb3I2Q2hPT3JHVm5NeHpoano1MTkz?=
 =?utf-8?B?MkVMSXFweHRyeXNKYk5xUUVIeFZjWitwU3dGLytoNGhUMHVyRW5wTDI1MUpS?=
 =?utf-8?B?WEhNd1dQM3c4Rkx6SE1laThUeFZQLzVkd1ZrTm9CeHhOd2QvWGpZclBuUm9o?=
 =?utf-8?B?NFMxb2plVm5NTzEvaVNnczVMbVM3UksrNXpZb2RScGlQZE12NEFQTTgvMURT?=
 =?utf-8?B?Rk9saGVZTk1TOGp6NU9uenFOVUlEcjhiaXZmdlhsUVNqM1RnU1dLOWQ1ZE12?=
 =?utf-8?B?ME9CeGxDcC9NNCtYK2FvRk8yWDN3WDd1S0c2M1BML1ZZRzJ3VGJydXNDRGVM?=
 =?utf-8?B?UXJoNmRIZHNKNGRIdGk5T0V3UnpXeTIzdWFyb29kbWVteWljMjgvbU9NSi8v?=
 =?utf-8?B?VjJmUzBJcXh2TVRoRloxSjNqNitnRXJOMEpLNFRIUEp5OURWMHlEYWo4ZS92?=
 =?utf-8?B?dFdtNEQwMEl0ejBabFhPK2NVM3d3TWRkWk1VOFRuTnQ3SDRMMzREejNMdjN2?=
 =?utf-8?B?cXFsZXZWT055c3paZkZ4bkFVYmc2R3V1YXkvQWZIeXpqMk80Z3hQbWhtb0Ry?=
 =?utf-8?B?ZDdKeDIrRnl6SFovMFNIZHdqbk5jWS9CbmpuWk9KSDIzcTdXWE9CWmlsU2M5?=
 =?utf-8?B?MWEyTzladGdhVTJLMk1BdnBBNkN1SkppZHhRTFpnR1lGbVUrb1V1Nk9RYXRq?=
 =?utf-8?B?ZUo3MnZrRzRrKzJnNWpWcldyN0dPS3pzTnV5UC9Ld2k5bFdqTnRGKzB0Ymk0?=
 =?utf-8?B?RUVJRkh2WjdmYWtsb04zbld6Z0FJeDBYdWF5T1dZdUNuM1FhR2pDeEtwMndx?=
 =?utf-8?B?N0RsaWNpcHRoWVVpVENwMVFUT1Z6NXREdk5lUnFOZXhEWU1aSFZZV0NyekdR?=
 =?utf-8?B?Z091UUZzTDFRR0xVaHhwbHVnUVRnWUpDYnZDekRlbHJ4dWtIM3J3WURmOExF?=
 =?utf-8?B?WkZhUWZpZHdOVnFmOFhBcm82bUpZV0NMWWdCSDlKOXdFczhIYUZqdWF4aTNN?=
 =?utf-8?B?c2hDTkpRMnV2T2JuVlUrZmZ4VUY5Mzk0MDl4S1Rva1FCVHF4R2JMT2szYnkr?=
 =?utf-8?B?a2dvcm1iSXRSU3k5eGdHUVlKZEtsU3hXVnRlU1Bvc0JNOWRBRGZLZXlFOXg2?=
 =?utf-8?B?bmJvN1Q5OVpVb0VZaFE4Nk9FQXlIcWlhV2tnZXM5UUk3SjdlUWJjR2ZOQjdC?=
 =?utf-8?B?d1RPaSttWkNlNU9yMmRHV0N4cWt2V3dDK25iMlplZ3o4TWhlRWYxcml2clVT?=
 =?utf-8?B?MFpmNE9OUzlKd0txazAycjZqQUNPZWJnUVV0Uk9BWWJTQkhDUXA1dXJ4dkhP?=
 =?utf-8?B?d2RaVUxpNUVVV3R4c0V4VklaSVpBTU9rNExPNkVlZUllTXJhZG4rSWVsaGtH?=
 =?utf-8?B?YjdJano1Q1Qwek90WmdGUU0ySGFYd0UzY1Bka2xVb0pjRUJQbklVOGROZk5t?=
 =?utf-8?B?QUNTZkUwdks2Z3VjakdyTUpPTGVPSkhpUUhGeUZIdzZKM3dOVG9zVHhjcldG?=
 =?utf-8?B?VWY2VVdtcmh0MUxmblF3c09pVENXbW00dFozbm9LZnVQNEc2VVJQSE1pMWpW?=
 =?utf-8?B?V28wQml6V0tUTXVJOUEwY1B5RVJLUHdPcm94d3RmbGszeDU4aEVmd2Z6QUNy?=
 =?utf-8?B?bkYyZFJ0S0ExUW52VytzTWJZZ1ZZVXBwZnpPSlIvMFJDMnlEV1A3WVFyVndI?=
 =?utf-8?B?VkJnSmprQ2JxYStqS24reFdWU2Zlay9VWWpKdk9vWkdDVkdSU0EvdUxjd3lJ?=
 =?utf-8?B?c0xkdUR0OEhRK0NUNG5COUFINVAvalF6d2laajNZWlJJakJKQm9KY1ZpK0d1?=
 =?utf-8?B?TXFxMXlzcFVaTEpZdm1zcnNMSlpwcUtLQ1N5REl4QUdUeUx2SVNxcHZTV2ps?=
 =?utf-8?B?UGxDaWd5Y2gvK3llclRmSUYyaG9qMTZmWU1FQVUzREF2eWRqTEpJYlNVMVZk?=
 =?utf-8?B?Q05vOFFOZmg2N0tMU1ArNEVmRnJ1dkpxWUpIa2lKYUZLL0hUdmhJYkhnREZX?=
 =?utf-8?B?WHMyNUxxWXZRNktYZHJYQ0VRNDNnVnY5Uzd5U21kcjdCbWtGZnIxa1d5dDJR?=
 =?utf-8?Q?R5xvNzScb9TdX6d1CPilc/k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db34c7a2-d647-47fe-967d-08dac0f27a59
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2022 19:01:29.6781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SBbUb6kWoLjOXj6pbN++o4Xt0Z7vhpyW0Uep7M/Su3u2XfSiHxL09oDheMVk7W+woPyMFS+fTOU0nAsG3/mnUtGMTBa7uGx3tKcu4ndPAU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4549
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: Bump up sample
 period for busy stats selftest
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

On Mon, Nov 07, 2022 at 10:16:20AM +0000, Tvrtko Ursulin wrote:
>
>On 05/11/2022 00:32, Umesh Nerlige Ramappa wrote:
>>Engine busyness samples around a 10ms period is failing with busyness
>>ranging approx. from 87% to 115%. The expected range is +/- 5% of the
>>sample period.
>>
>>When determining busyness of active engine, the GuC based engine
>>busyness implementation relies on a 64 bit timestamp register read. The
>>latency incurred by this register read causes the failure.
>>
>>On DG1, when the test fails, the observed latencies range from 900us -
>>1.5ms.
>
>Is it at all faster with the locked 2x32 or still the same unexplained 
>display related latencies can happen?

Considering that originally this failed 1 in 10 runs,

The locked 2x32 patch in this series reduces failure rate to 1 in 50.

What really helps is - if the CPU timestamp is taken within the 
forcewake block, then the correlation between GPU/CPU times is very good 
and that reduces the selftest failure frequency (1 in 200).  More like 
this:

uncore_lock
fw_get
read 64-bit GPU time
read CPU timestamp
fw_put
uncore_unlock.

I recall we had arrived at this sequence in the past when implementing 
query_cs_cycles 
- https://patchwork.freedesktop.org/patch/432041/?series=89766&rev=1

I still included the locked 2x32 patch here because 1 in 50 is still 
better than 1 in 10.

For now, 100 ms sample period is the only promising solution I see. No 
failures for 1000 runs.

Thanks,
Umesh

>
>>One solution tried was to reduce the latency between reg read and
>>CPU timestamp capture, but such optimization does not add value to user
>>since the CPU timestamp obtained here is only used for (1) selftest and
>>(2) i915 rps implementation specific to execlist scheduler. Also, this
>>solution only reduces the frequency of failure and does not eliminate
>>it.
>>
>>In order to make the selftest more robust and account for such
>>latencies, increase the sample period to 100 ms.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>index 0dcb3ed44a73..87c94314cf67 100644
>>--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>@@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>>  		ENGINE_TRACE(engine, "measuring busy time\n");
>>  		preempt_disable();
>>  		de = intel_engine_get_busy_time(engine, &t[0]);
>>-		mdelay(10);
>>+		mdelay(100);
>>  		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>>  		preempt_enable();
>>  		dt = ktime_sub(t[1], t[0]);
>
>Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Regards,
>
>Tvrtko
