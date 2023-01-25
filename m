Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C377C67B505
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 15:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFFF10E104;
	Wed, 25 Jan 2023 14:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA8810E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 14:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674657883; x=1706193883;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AlLHNigZJ824i60ScOEbEbMEhCa+Tvo5vcMiLQJF1wg=;
 b=VRKspi4GrmtswvR+C68rtrYfUU4d0pPX9TmHqCJe4vg5EGSacGt/Km+U
 1M7niuTttiGdg0s4H27gdp7pklTsaww7g9jzpCVMIEb2V3Rhp90xisIz7
 vsGzZtodm5AcgxPZ/NTedvKZYhAVEprHPbFwGCKCaCbBEgPpJDM/E+j1N
 b3jxlgxY4r32hxUfJU3+jlLsJ/OdR0l8pWD8YD+COmW1end/xMSNV++ph
 2jwQNdchXe+m6+Ug2+qgfGpApAbin9+Ykfhi1JrYYbgRFuCQ0t1831miw
 T0dFSJuUL7NAYisq5YFCB8Vm2XEkG6e8f6wiiA/zimP1BYbi6WYunPr9w g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326597529"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="326597529"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 06:44:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655822085"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="655822085"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 25 Jan 2023 06:44:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 06:44:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 06:44:40 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 06:44:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAL5s62gjcJG4+I9w5uFvagaRl+V0DuToF1orV3dOIJ7y1y2X1kbtoGZlqpyOcjbM+0pZe9rIwRkTwDG6pMdqeCzThzBTJsceBvjZES6UXqXvTZZZWKKZ65Oyy2yNvTcVq8fb4CzCBmAfe9JvDoa7oJ6Qlf5DX0cJg4uoW0Mk+tnGIpaUnOU2D/aCRl381IfugzLh3Mb+MldBPEFAm29B/uWIlZz5lejAMxJdDqndXdCAMblI/Fmpy291t7Fjrt5iBFsqahB2u/jlRZSlHwEQfaSnbail/b65Blbi+PIzAmoFR4UQ6Ls2MRmvNiwiqXI6QXPirIwIv2VpkEDWYo8aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QyIAJU5P2zIUXKdx9M6RTUpBmlMPChVhsJXBR3y8Uko=;
 b=azbJJgJ62GA0SJ4RZDREXQ4R6z3BwCt9vcb6b5FWUyRonADmXtwx47F57GH6iMDn2WrBteMH7duyzOF+Qj/N6i2/DIXnJJoQGk/HxJ5tw13AkCguCGeXjGqEGhKI+S8dW9H7jGrq9hNiVYKVIxMrxitXZ79rD5sfw+nuRDAz4GvwfKHyMQeOykZh7QFs5VUeBAOriAtv0iJgQLXSmwBSk73LHGefXVySYmlc81kUXW9eRj1m8c5QdJkFA5T8C44HwLu9lYnTUCoppG5FofgsDH2qAHRCyp6/tpfd8qNnh8RsaaSRx/BVgaqfdQB7bjA3UZcgKN2f1uSh4uVhMfXszg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SN7PR11MB6924.namprd11.prod.outlook.com (2603:10b6:806:2ab::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 14:44:27 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f%6]) with mapi id 15.20.6043.017; Wed, 25 Jan 2023
 14:44:26 +0000
Message-ID: <62049532-41b2-5225-a62f-41a654f731d3@intel.com>
Date: Wed, 25 Jan 2023 15:44:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230125100003.18243-1-nirmoy.das@intel.com>
 <Y9E+bqC2uSuXetNK@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <Y9E+bqC2uSuXetNK@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0087.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::6) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SN7PR11MB6924:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a79c874-8f8c-497c-0127-08dafee2a84a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pScku7XjTQLXrMl5Ts1PuCOxOFvhsUCuxvMyS0xcffgH6EVrfs6lFbDBeChD2O3W4qn8CJmWwpxsNOORVA5qUjVXelbl8irydnkqYUvRbFkuwtMO7rkFnw9yDhzup27ANcSQca74Z8W7N4R4Xp2DBxCzqOj4Map1y6rI8m414Q0jUl46vR50O+DBrsMy38Dulkl/NAJzvI45Yc/HtUhixKOEme0Gm8DWi8YcE5kz0H7V5H/16qRq51BKmxKWnl2Z85OHKegmYZYvO8OCRsc5SxQleh9OwFJUtC/9l0cPbJF/W8MsMoABn3X8VxOIErDNjIhyQS8WnhgSGIgReQJ6b2sAGzTim03jk58V8i14F9YiHyDVlS9RcBz6beRU33HtxD8KqindB1Y0owPYe0Pr1UGIM6q0Ox8voR/h4Oamm70QN7vuuoJhEiXMcgFPuTQ8+R97TBApmkOwVJBGuotIeMnYBnmDfKy0iYdMlcTFJdBOtRjZG4ZIq8RZDEn9eCC5eOttCbYDpJibTz0Ho9QSzpn0iFIh+ZgafWxz3d4H3dGsmM2WZphFMqdoNGqcBh/bV+XJ2JHrugSk1muXPgyHS1+E4Au1LcQ48y05fV/Ph7eBXwr6vppQyttNS73ur+fSCaLid7dDRBrt84kpCiRGI7AyC4hcG7GP0ivwgnQwSO2BlHtn+Qdl1OOzs7x2C02aYYprbXXn0Lx8zpBmwWTnEolgOxpeQiXbdhnHIcTIJdw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199018)(66556008)(66946007)(36756003)(41300700001)(8936002)(31686004)(4326008)(38100700002)(6512007)(83380400001)(5660300002)(86362001)(2616005)(186003)(31696002)(82960400001)(6506007)(6666004)(26005)(53546011)(6486002)(316002)(54906003)(478600001)(66476007)(6916009)(2906002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXo2Vi94S2N0UGcrbURMVHZnS0Faajk2ZlFVbHdoTXZEK1NtcStVVGlvMGZT?=
 =?utf-8?B?aFU5N2hBR2RSMVRCdHJpdzdBY28zakF4eVE5NXN3WjNDTllxekdsQkhTanBS?=
 =?utf-8?B?ZEhJTmwxM2FnLy84SHVxZ2pCejRmSnJrWFg4UUJ1NDJnSHkxWEpqVnlHN3BO?=
 =?utf-8?B?eHloR0N6NmtJNHlvTjRjRmFSRm1SbWpQcWtMRU5yVGpjRExpOWE0SDFXbWFN?=
 =?utf-8?B?eTNXaEFMREFSKzF4aVk2eStQVVBYQ3NURmtJaEF5WTBWNDVmQlJSNy9ORm5k?=
 =?utf-8?B?ZkxvVUFBK08vbkVCSkM3VldReEdVT01nRGNjd1RmSGQ4cFJKYk9pSXEzYnR2?=
 =?utf-8?B?THBSc2dINkJlaXR4L3hXZmNnb2pGUEhnNnZpUFEweDI4cFMvV0REZjF2bnlF?=
 =?utf-8?B?ck9TMjNhekdTYUtYcWlOTW5weGt2ZDdIYTRlWHBIMUFjYkd2VlorUFl1eFVJ?=
 =?utf-8?B?cnQ0ZGE0bWpQUnRMb1k1eThSWFRUN1BRbndOOFZBdWFFMFpRNTVwcy9QZy90?=
 =?utf-8?B?b1FpS2dxZzhRUnRlb3dzMWNUb1M3RkN6aWNDZXdnL2R2dnpMSm9DdDNVRmlo?=
 =?utf-8?B?ZlFPRlhKRENVeElOTWgwMVJzaWJMT0V4UHVRSHpXdVI1RVU1allZaFJ3NFp0?=
 =?utf-8?B?UnVuU2FzRVRqRXduR0dyeWlJU29pdkpnRmU4c1BTQmpMbHJIWHJpNXFkdWNX?=
 =?utf-8?B?RE9VM0VHUDlScDVyd0hOVDdOeFVwUEtMdzVuR0g2Yk1ZZ2ZGejB1QlRmOHdD?=
 =?utf-8?B?TnJhTzlaeDVOb1ViZVBtSjdCQXp1TkE3SFIwRkVqS0ZtTGFmT0NwYVBoRm5p?=
 =?utf-8?B?ODhFeWs5aXg0bXdObWFBbnFqNjJnTkZiRHJkcmswNmEycXVWcHpZMW9uazMw?=
 =?utf-8?B?cXBPa04waXp5dG9PZkpDNEc2c3hITFpZcFVaL3oxNVFNUlN3UFhqNTRGUU84?=
 =?utf-8?B?eHRGeTMwMEFHdG91MTJmeHhQdEpvN00rVlNlVC9XNE9VSXREOHJzdG42WVBl?=
 =?utf-8?B?TmtvMjJIQ1EzTFkvRjhpZlJTc1ZjanExTUh5aVVNcUdPait5UXNHNGg3ODVY?=
 =?utf-8?B?bGhzN0JNcDZKVXN1aExRRm11bjdZMkpsdGJ0VE5tUGo5RkNHR29QQWl3T3VL?=
 =?utf-8?B?aUVleVYrRGxBMEc0OElJZ2FRS01EcGhHUW5UQ1RnR1lIZzZFVVh1bDBma3Ny?=
 =?utf-8?B?Ty9VcjJubHlJQzhaT0xJbUhxN09MUmdaUHpMcVkyeXA2UWJrb3NzTzF1UEht?=
 =?utf-8?B?Q2E3bzV6NHRkVGIzV2dtbk1GV2xCc29tRUlWNGk4UVYxVHVxSUtQd2FyTDlD?=
 =?utf-8?B?Z0RtTmQyOWFJL3dpaVFxdTl6bm9peTVpYWlCd0wrcmFXa1hkemF0YUhiRVhw?=
 =?utf-8?B?U1NkZkRucFJPZkt4NjFiY05mUFg2ODY3OHhOTFVUZ2poZTVVSzhaKzdPQm1j?=
 =?utf-8?B?eFBSU2d2Kzk1OVBtR015eDZxMFNDQUFkWCtKaXl5SzlUZllTdjI4RTNzOU5K?=
 =?utf-8?B?dHVRTGRuZWZyakhnN2RRUTZjRlowSlh4akVCNmJqa0FLU2FTcnVaemR2RTY0?=
 =?utf-8?B?ZU5NTWwzM2FGQVlST1RoTWtMbUZEVDFCOWovdHBpZVU5VXdacW4rcjQ1eW10?=
 =?utf-8?B?NVZDY0ExYWlON04va0E2TjF3RkhPYVJCL2tTaFJnamkwUVNyZVdtajB0WnRU?=
 =?utf-8?B?aWxkcmdPYlFuSFhCRHBhQmNvNVBiYng5Ymc0UWR3cG9pVlRRQVh2QllIQllu?=
 =?utf-8?B?ZWQwdUIzRVhrQjA2NEFLSURNSlVWbEQ1YlNHSUZ6VXAxVzVTd3F0OVhINkpu?=
 =?utf-8?B?VndxSnRtWFZianRiaE10Uk55UmxPQUFCN0tBQzlpd21RNkptN210VWJVMG9C?=
 =?utf-8?B?L2ZhNG1uNmZZbGpBUW02SWVSQ2x5bWJxN0NnR0dxTzJwTE5WVSt5ekFrYWFY?=
 =?utf-8?B?YmREb0N0U1Z6UnkzRHpmUC9zbVFvQzd1U1FPS2pIcVgrZ25XQUhVTXFqNG1w?=
 =?utf-8?B?SXdLTXMvOFR0V0ZLancwekE5MVFVNW5ma1VMQWpxb1MrbjA1MUpxbFFXYW40?=
 =?utf-8?B?Y1E0RHlpQ00vaXpXV2dQSTVPTGZTNFQ5SVhrZVF5Um8xcWZldGVhQ3lwTzNX?=
 =?utf-8?Q?gnLCqyV/ESn6qbYtXysTjKCsR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a79c874-8f8c-497c-0127-08dafee2a84a
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2023 14:44:26.8488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I8Qo63sqnNPFZrO+2y1mmj6G3usPQ529UP9KgKX/YafyfMtsuBSXGcsBVjXpiZ0rYAym5tFNxgS0E0lBF76vOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6924
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl/selftests: Flush all tiles on
 test exit
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

Hi Andi,

On 1/25/2023 3:36 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Wed, Jan 25, 2023 at 11:00:03AM +0100, Nirmoy Das wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We want to idle all tiles when exiting selftests.
>>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> except from the tag list and the title I guess this is the same
> patch as the previous one, right? Can you please add some
> versioning next time?


I wasn't sure if I should add v2 for the title change.

>
> If it's the same this patch then it's good to be pushed. Just a
> little failure that is independent from this change.
>
> BTW, why is there a "mtl" prfix in the title while in the
> previous version it was "xehpsdv"? I can understand the latter
> because originally xehpsdv was a synonymous with multi-gt. But
> it's not the case anymore. If you don't mind I would remove it
> before pushing.


This confusion is because I didn't do the versioning properly :/ Sorry 
about that.

Matt clarified in the v1 that we haven't enabled multi-tile for xehp, 
only for MTL we have multi-tile

enabled. I actually tested this on MTL.


Do you want me to resend with a added  "v2: fix the title as we only 
support multi-tile for MTL now(Matt)" ?

Regards,

Nirmoy

>
> Andi
>
>> ---
>>   .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
>>   1 file changed, 17 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>> index b484e12df417..29110abb4fe0 100644
>> --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>> +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>> @@ -14,21 +14,27 @@
>>   
>>   int igt_flush_test(struct drm_i915_private *i915)
>>   {
>> -	struct intel_gt *gt = to_gt(i915);
>> -	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
>> +	struct intel_gt *gt;
>> +	unsigned int i;
>> +	int ret = 0;
>>   
>> -	cond_resched();
>> +	for_each_gt(gt, i915, i) {
>> +		if (intel_gt_is_wedged(gt))
>> +			ret = -EIO;
>>   
>> -	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
>> -		pr_err("%pS timed out, cancelling all further testing.\n",
>> -		       __builtin_return_address(0));
>> +		cond_resched();
>>   
>> -		GEM_TRACE("%pS timed out.\n",
>> -			  __builtin_return_address(0));
>> -		GEM_TRACE_DUMP();
>> +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
>> +			pr_err("%pS timed out, cancelling all further testing.\n",
>> +			       __builtin_return_address(0));
>>   
>> -		intel_gt_set_wedged(gt);
>> -		ret = -EIO;
>> +			GEM_TRACE("%pS timed out.\n",
>> +				  __builtin_return_address(0));
>> +			GEM_TRACE_DUMP();
>> +
>> +			intel_gt_set_wedged(gt);
>> +			ret = -EIO;
>> +		}
>>   	}
>>   
>>   	return ret;
>> -- 
>> 2.39.0
