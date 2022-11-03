Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BACD461871E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 19:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8BE10E779;
	Thu,  3 Nov 2022 18:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFFE10E768
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 18:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667498981; x=1699034981;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=qfkK5Mdg06ezg0R3e7MpkCgpej/zdCPOYbg6ujAvMVk=;
 b=c9ztYiKJxTbYZnwAHdihOgOJxzOyreK7gQPfZNYz6lSLFs5RXzGijR0Y
 qH/ejPurqW7gAvxZPV7DpbLX4IKSAkL3iTfmeta+xq19K4jJQdVABhly6
 CppgwmhoVKo8LUsil8TyGmbwNtFg3ZvpQHOs6nztm/diK2vpmkN+GJuLS
 ryJFPxKHHwInBxAMXKynbK14l6cHERO92x+msK/pXPU3n0wbw4GXkyJcB
 4JTW9anxs/BAtUzYp+DIxWOh1vsYNe91uIe3HV+k06M87de6kYypha0yW
 /STbpyuOcsqK+AGRaR6fClEeHvY+BoB0LcMO4uHr7ZLxumjDLM2AwMzqo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="311497434"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="311497434"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777407172"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="777407172"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 03 Nov 2022 11:09:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:09:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 11:09:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 11:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4T0W9krgLFM8rQ6RzaTIvEWtvWold9NpnWXMxwy0Y5LBBuzlTtg4PFWWeLWXMMTLqLH4VUMhXWRn9CZf2mwTcDpnAW6ybwg7VwF6hwdkMfp1fGAnM2wsQi8cIFf9KTBknb5pvUpD8HHs8s4YqgNsiSAX2mkDgacCcIuhxcfQrs2+867kdWNzmVEqAlAqduUXvJ4oOdfy7HZUE+DdiYupxjCU+fcr/oupKcQj0FER50J8fBdToDRCI3bAw5hZRvghl/HvEEKWG8NY1nZUlVnoIC9EUDY7K0Bf5KsRLXmS2FmlnrO004SioB/yLIKaiB0PwhwFMjylcnkm0sOx+lreQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kuu2RUuF+rJQRZmKuV2+UV+N6j5EBs4oDHPnU9ML8CI=;
 b=kIIXnk++pEzhTzyvu3S4sXFcXTR1936AsvgcGgn/+9e18iuhRczOXelQiXpWhm65kGIfyxNfQ/Zs4ofk9rpZFwf2y3Zxt6CbcYtuD0DHKrxlBEr/Kv1XF3IfAz5oVT8H9GQhHoj2rY2IGe5J2EjbbDv0BMP3mJPDo7NsmcrA5cU1EkQQsUEIxIVIRmiYDv24wkMNWnQm6Y8v3rejwPv+BU8exPB8wbPogJO58e09vh5/ii9WzwegllwypBAfLCFDwyJ9eprV9Bo/Einwcvawi8HXvStKfhv7WWLFfA6NVcrZplOmFb3NkHfyY8BdEgDby1nIFVsE3GHbD8p/tsT0CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH0PR11MB5048.namprd11.prod.outlook.com (2603:10b6:510:3d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20; Thu, 3 Nov 2022 18:09:38 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 18:09:38 +0000
Date: Thu, 3 Nov 2022 11:09:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y2QD4FAM8miZAluS@unerlige-ril>
References: <20221103180705.1315142-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221103180705.1315142-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BYAPR02CA0071.namprd02.prod.outlook.com
 (2603:10b6:a03:54::48) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH0PR11MB5048:EE_
X-MS-Office365-Filtering-Correlation-Id: fa8dc431-d642-4e22-4f3b-08dabdc69275
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yxaFBclOasnbUk+EBmlIJJ0Nb1CiV+6Pie8RZCvAzMk0J3GJw6PtdqOYZMD9ZSqRpTHfBG5RTBsOAh1tq33usNcKxwLYsbb+Cjc8lHahEjQaLovToJq008fN9ZxQURTII8UT6U+q1tIar9kDDzFc4lZPT1BoGG7rord3/OnhwZta7z1unNNOIZa1smB7Z5+MDSemP5L3MXg5hRDQt28dMKRzB0hCiXc8K48jEEIPkUBBugnJKImSRM01XioGHbCCFKcofyk0GiaDQ7iJWCDTk+vkxTHq7LiAwYXq/rqJL2lIaPT07o7nNhBrfS8c0Wxy+dAVHrVKYcdT8p8fXDo1G6T22VNz6ORKAK1COe1dYejyZQ8Wd1mC+PHPNAPZzitBe5Ct/3meF/vrW0Of9EkLzserIzH1UlFTun744Ru38s6WkWN3Fz3A40VEAX9+lUKdHZQA+PCu6htkFdi7QTu0t5XjX/JLBpO8xw5lrgC5hvHaRBaxwUvNaKx/a8NshU5jUSv5VaQ1R3LBS/nk0ZSI2Gp4f527w0NhwoZJQ4NWrQaxF8ZESSC/0olNbZNvP9hZYVemcIv0JHNHJ/nVeId/RPRTMKUohVGqeHGluwQ7+oaYM4YU0c+RJa+tQvl+Gzq2MUw9j0zBxmDP2Q+VVqwx9N2c+EQKZfSuW72/xkGlMa3VjA5oVyV4u1aol4HRayr5RMzqK4hviFyynsk3fVS2mQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(39860400002)(136003)(376002)(366004)(346002)(451199015)(86362001)(33716001)(316002)(82960400001)(38100700002)(8676002)(6506007)(6486002)(66946007)(41300700001)(478600001)(66476007)(6916009)(8936002)(83380400001)(2906002)(5660300002)(186003)(6512007)(26005)(9686003)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlFEWDFtUTR6QTh3NjgvR2ZwUWRhTiszdnUvZUw2Z2FqTWdyMjhrOHlLZ0Zq?=
 =?utf-8?B?aFRtQ2IxMERrUkQ5Umt6RFdQMS9ueUlaTmN1MndDN2hIOTlXc1FVTnVld1gw?=
 =?utf-8?B?ZC9lK3d5akV0OUg0YklGV1F2Q2l6V1ZnbjlOVUZuZnRjSEpxbVBKdU1vcTQy?=
 =?utf-8?B?L3V5Wk41OUxkb0p6ZkdlcGV3MmVPZjRJVzR5U3hJNG1NZHBJUG9UOUFzc1Nu?=
 =?utf-8?B?am5OcGo5LzVGUmpnTS9heGZFZUJRTTB2aER5UzhLQVBGZFVxRDdGdm1ZL1FW?=
 =?utf-8?B?d01rRys3WUF3WXlVeFZOUlBoemZyc2hUK0t6dm82VUFwVHRvV1dxN3JtdGZG?=
 =?utf-8?B?NkpnSlM1ekJLNk4rUEVXOXJrcjJrSUlVQ3kwY2pESlkreUlNVG1NQ042YWxh?=
 =?utf-8?B?Rkd1MDQ1b1RIRmxjYWxEbUEwbXp3cDZTVHlhR3ptRk1yTE1SWXNxYXZVdUpW?=
 =?utf-8?B?UmxlZE8xMkN5SUkzRmdQL1hXdGJSUEhMVDJlZ3NjNGJsQWMzNk14QUxaNVlo?=
 =?utf-8?B?QmJpNWxEdmE1UmlZMkIvMk1sd0Mzc0cxQURKYzVDZnRjWnBzaGVwM2JPbkM4?=
 =?utf-8?B?VHd4b3gwc1ZodGdOakZ3dDcvYWxUc0J0SlNwVUZxM3dDNnVqdHdrTHFEejdM?=
 =?utf-8?B?QVV3aU9yR05iS3hROUNYUEZFbkJKY3pCVy8xa0dvaXpWQ28veHZjQ2s3ZnlI?=
 =?utf-8?B?VDFPSHNRWnZ2OURwVnVLQ1BiVVZYbTFLd0IwRHBmNFFPZDg3cXdOODJFRmF0?=
 =?utf-8?B?S0hFU1k5RUtZOFllSHRYT3Y3NE9Bb2Y1VVgwcVdIdExoMTJzNlRUaHBWSE5n?=
 =?utf-8?B?ZTVUKzNXUFpISXVFN2xSRXN3dUxBSGpMbnRBNktET0NOMS9xK2xpUHJtckdD?=
 =?utf-8?B?SS9tSWplbTdDWnpWVHZVWWFsNGdybXpuVlJzRkZpRk1vQ2lkZjI4N0VkWnJL?=
 =?utf-8?B?MVJGWmlMdncrTFlkbUIyczNpRnRldml0bHVVdE9KampwTlRDaFpFem1vWFor?=
 =?utf-8?B?dHpxUDdyeVBSakl5M01sWXJJSm9rbDI3MVlpL21sYjJqTy9EV1VqWWlLQzB1?=
 =?utf-8?B?WXJWM2ZkekpHc0NrT1prMEV5ZXIxSG1DaVRvdWdIdEt3c2QxWjNTNWNwWjBu?=
 =?utf-8?B?SVovbUpBU1BjVEM0NVl0MG40QjRsaFJCczh1R2w5bFFVcHd1NU91ODdGL3VL?=
 =?utf-8?B?VXJ4eWFVb2ZkMEpxZkYzWndHa1pzSlRGb1YrVThydm4zTjhIL2xpTEdiNisv?=
 =?utf-8?B?ekE0R2FjelQxVjRaeVlHNktLZ1dzTXlTTFpscFJ3dVVGZjE2SHFNdERyUEtq?=
 =?utf-8?B?eGJhdGJycm9aTkJ6VnpaNWVrbitod0ExNnc1UWFlZEk3M2JtNWk2dVBpamFY?=
 =?utf-8?B?TzNCUmM5M3hYbkloZjhNUG1KVEhhMHNLVVl6MjRmSUJwMUJNcW9GNWRSVmhV?=
 =?utf-8?B?TStyaUNhKzF0ZGxEaGpqUXlmTFZVWDVabnhITndoTzM0TUs5VmN1bEtMUjg4?=
 =?utf-8?B?c3ZaOVMyNmhFTC9FRUt1WnVXSVROVWVGQzRIWURkYnI4Y3ZOcHZiVlEreFRm?=
 =?utf-8?B?NXNVbjZpamxSTndDMURHaE5FQmhFaDViMVF2TmkwNHh0SVJCL1cwV2pweVJ5?=
 =?utf-8?B?QndlcGMzbGFDWFZOYW9HNndETDhvd0tvL09iM2RTcG5WWk9qR3VnWmdzR2FT?=
 =?utf-8?B?VXhaMTU3T0JJTytveUQrUHJ0aFVMcHJPV0NBbDRtOTdvbi92emozL3JlNDBj?=
 =?utf-8?B?M1hYek5wZGFjbzVXbXZVOXdPYkNvRExvQ1pPRlZCa1pVaXAxditqOEk4eXcv?=
 =?utf-8?B?OWQxUkFSa0ltMi9WWW1PQnZzWWo0dWEvSFBBVHhid3BIUTNMVHp5TmxuZFBt?=
 =?utf-8?B?bmk1bFJoSHFTK1lWK05EWWlabis3NzUvZ1ZJS2NqYmcwWjVjSG1jTzgrdXBX?=
 =?utf-8?B?MkNka0NjT01tb3BETUJtcU5zdGdFOFRWaWtoYzl2dkd6ajN4Vjl0M3dkdFhR?=
 =?utf-8?B?MkM5Mm45UmhOYkE0MGdEcDFjclVRT2VabGQxbzVvcWR5QzEzS29IY0U5NlhS?=
 =?utf-8?B?VnVLN0VVdlVaMkpVcTQxd3JXc3BBc0JVckxQdGNSRmZneHROejA4TCt6a3Bv?=
 =?utf-8?B?SVlmSHlXN2dOeWRwTXpwV1hqbWppT2FvNEhCU2RjQ2JkY01HWUdDc2N0cVR2?=
 =?utf-8?Q?qZdMJordE+t4QrwIAl5P6bo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa8dc431-d642-4e22-4f3b-08dabdc69275
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 18:09:38.5463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xEhink1zVwleSLir6Rn01cAZ3KkUekTSkfvGylYp9Wknw/h+UlU+sU1fzdcTWMg0CyTD9eS3f0g5XXsyg/eQc0WbW6iBadlCkg3S1Q0wRhU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5048
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Use a faster read for 2x32 mmio
 reads
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

On Thu, Nov 03, 2022 at 11:07:05AM -0700, Umesh Nerlige Ramappa wrote:
>PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
>32 bit registers are read in a loop, there is a latency involved in
>getting the GT timestamp. To reduce the latency, define another version
>of the helper that requires caller to acquire uncore->spinlock and
>necessary forcewakes.
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Not for review, just to demonstrate one of the solutions to a DG1 BAT 
issue

Thanks,
Umesh
>---
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 ++++++++++++++++---
> drivers/gpu/drm/i915/intel_uncore.h           | 24 +++++++++++++++++
> 2 files changed, 47 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index 693b07a97789..64b0193c9ee4 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -1252,6 +1252,28 @@ static u32 gpm_timestamp_shift(struct intel_gt *gt)
> 	return 3 - shift;
> }
>
>+static u64 gpm_timestamp(struct intel_uncore *uncore, ktime_t *now)
>+{
>+	enum forcewake_domains fw_domains;
>+	u64 reg;
>+
>+	/* Assume MISC_STATUS0 and MISC_STATUS1 are in the same fw_domain */
>+	fw_domains = intel_uncore_forcewake_for_reg(uncore,
>+						    MISC_STATUS0,
>+						    FW_REG_READ);
>+
>+	spin_lock_irq(&uncore->lock);
>+	intel_uncore_forcewake_get__locked(uncore, fw_domains);
>+
>+	reg = intel_uncore_read64_2x32_fw(uncore, MISC_STATUS0, MISC_STATUS1);
>+	*now = ktime_get();
>+
>+	intel_uncore_forcewake_put__locked(uncore, fw_domains);
>+	spin_unlock_irq(&uncore->lock);
>+
>+	return reg;
>+}
>+
> static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
> {
> 	struct intel_gt *gt = guc_to_gt(guc);
>@@ -1261,10 +1283,8 @@ static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
> 	lockdep_assert_held(&guc->timestamp.lock);
>
> 	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
>-	gpm_ts = intel_uncore_read64_2x32(gt->uncore, MISC_STATUS0,
>-					  MISC_STATUS1) >> guc->timestamp.shift;
>+	gpm_ts = gpm_timestamp(gt->uncore, now) >> guc->timestamp.shift;
> 	gt_stamp_lo = lower_32_bits(gpm_ts);
>-	*now = ktime_get();
>
> 	if (gt_stamp_lo < lower_32_bits(guc->timestamp.gt_stamp))
> 		gt_stamp_hi++;
>diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>index 5449146a0624..dd0cf7d4ce6c 100644
>--- a/drivers/gpu/drm/i915/intel_uncore.h
>+++ b/drivers/gpu/drm/i915/intel_uncore.h
>@@ -455,6 +455,30 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
> 		intel_uncore_write_fw(uncore, reg, val);
> }
>
>+/*
>+ * Introduce a _fw version of intel_uncore_read64_2x32 so that the 64 bit
>+ * register read is as quick as possible.
>+ *
>+ * NOTE:
>+ * Prior to calling this function, the caller must
>+ * 1. obtain the uncore->lock
>+ * 2. acquire forcewakes for the upper and lower register
>+ */
>+static inline u64
>+intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
>+			    i915_reg_t lower_reg, i915_reg_t upper_reg)
>+{
>+	u32 upper, lower, old_upper, loop = 0;
>+
>+	upper = intel_uncore_read_fw(uncore, upper_reg);
>+	do {
>+		old_upper = upper;
>+		lower = intel_uncore_read_fw(uncore, lower_reg);
>+		upper = intel_uncore_read_fw(uncore, upper_reg);
>+	} while (upper != old_upper && loop++ < 2);
>+	return (u64)upper << 32 | lower;
>+}
>+
> static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
> 						i915_reg_t reg, u32 val,
> 						u32 mask, u32 expected_val)
>-- 
>2.36.1
>
