Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 316E65AEB5A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 16:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708E610E69B;
	Tue,  6 Sep 2022 14:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4442710E68E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662473591; x=1694009591;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=htfzWJvSxaUR+XAp0w9CbPmtXmK+1c70ggIa0a2MQVU=;
 b=VNIlYYorvCnfBwbLAm1Jb79xgjmb2H1VdDJPSkXWT6ixtiCIA3jizz2j
 ZhPkasB91qLyzSb6atLJ4NkbOPwojnT5TdhzUYdZ7ucUXaG7MHfxPamE2
 iLbpD7kfnTzgnV5K/U+8glxOyi1zio7PUUUy0/SYK6oYOaiCV1EsbYuiT
 UvVI9NOzq/Bjgv98bwQ5KNpwHpz81Gov6exhqGN+ZBkFBJ7ltqX6gH5yG
 7x8Gh6sbChMmJata5U1w0ZLkI4qsfm0ywURuaezcM3xbPolwk/jaK9ZYE
 7SCQEpX0MHqPobJARdpjU0OIy1QLO1h1r3dO0Tx+RHJPq+kPByftRlkPp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="283598487"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="283598487"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 07:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="789692345"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 06 Sep 2022 07:13:10 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 07:13:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 07:13:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 07:13:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 07:13:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XiEzQbhluVaLJwA5xkPLrY3OcWcLVO+eeWbc7g8UaZLE/V3bPtp+5v4A6n25fCMJAAEDu4YLcIr5/gg1MY4tYWBBxm1rZ82HIdDU7yxj/P+wRiMleCsmVLq83RU4uKYAa+9jqybYOuks81/B2cR9iuNDFDZB4+Y7K4fi+C8cPLC8Ti95TRCzoIpn3S1xKAiWg1LFio3C4WsXp8H1IuyvN1tbiY/miHYskDwIcnBeupEWLo9HlZpUcbNoQ+XsIUXzDgD7X4eXM+J1MDa+eYcfzM50Vn+x1iQaWUP5BFhSSnzVHRHA/R0mLR4w0uufrZmmVvRYVfLo0ll5FVEXGW+7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CnoOCIhtF/u+xOhX5y8VE0LCDMRm0duU68P1LiKJBis=;
 b=EqK8sRgcyyMky8mLiynd+Bukt6sN3YSFmcB56hkqptpujNyarrSOsQzI7o3GTjqNg90Py/owmlwuHHAdONCtFqedMmyeChgyR+IPXrLKHbxYxf5quY7vNJR8tY35xDPdF08ciMinBpHhDbnUdGMrY1tcFeF7GhyNaMtMCF5YpPCIK0bwr3XUWeAM+Qac+MFBG2IWcyZrZuHkBmpjaDco1YPEqdW3ZX4U837XG6cRgQEqpOKRJy5wuuMHKvmy0T1eC3WIhap1FII5fLNGuus/sdxAzn//QoQG0YnRMcNDtB7uIr9Oh4wFa+ml2a96W0P0vzLEMbr7r6o1jZbh9hh6xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5511.namprd11.prod.outlook.com (2603:10b6:208:317::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Tue, 6 Sep
 2022 14:13:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Tue, 6 Sep 2022
 14:13:07 +0000
Date: Tue, 6 Sep 2022 10:13:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YxdVb+MCFl2Q+Sr5@intel.com>
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
 <20220902235302.1112388-5-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220902235302.1112388-5-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0107.namprd03.prod.outlook.com
 (2603:10b6:a03:333::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ffd3c88d-6e4b-45e5-cc74-08da9011ebba
X-MS-TrafficTypeDiagnostic: BL1PR11MB5511:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cLqCA3/VL8ArFYuwYmTOCmjZwCf5xYSELjlVH9nnre7XDn0UZOEeFezioxmGXCKQ02ZushMWmgkVk2LfTbMYtUPOqyaQNrKh/sQYG4iHMCDqnuxlPKl9wtpkdtptCkkdre1yiJEsTe4K1lh58U3faAjT0wHy04byMrrNq7Aihe1bQI5K5x+glq4KKb9Vh1Ql1JX/vPPJFNLvh4AZmLg/+BdDBkYhkrZ+258ODrz9GPd1rNSFc9Y5/c7biQFDX8CEZDl2J0BQkgjiXjDsXB7pW2PYDLbElfo9GG+MieM+MGHyV22FkYwWWmLmXBsuLLxzHBT9xv5vw4RRz8RovHmSdVjuU6le9FtZjwuzSMF8vaC7RAUfD+Q/9appiwH9iLdyr7vAIhRTvBbADn388rbQuLnKgl+huQxhk8jciHS0rZwWcBdSJb6r2SlfXcAoaJ1qUQfIxUfK8RIDf1Epi3qRTMeGW+NeebnBotJytTLmdoq6C32/A5RXtOrIwKyKt8lHNoQgRsBB0wxCNEQPWFOBEN+Z9KWHa4nvFkKvbHNK+7YvqWB0yLArBQYCb0h+6t1yfRFcPGmwGmHQRyrpGXiDcbYXq4Ecy7TMFZANC4VuED+yp+qkj2IokEhsM2vws9y0BacVkazzMRk55rQA2Sna6yaA4yqLrQf3Q+6NQw3GnkRqvuDc91vPOG7bzxQV9PIuQ0UtCQ+IMNN7QzQmvehkkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(136003)(396003)(39860400002)(366004)(4326008)(8676002)(2906002)(44832011)(66476007)(66556008)(66946007)(6636002)(5660300002)(6862004)(8936002)(37006003)(478600001)(6486002)(41300700001)(6666004)(6506007)(6512007)(26005)(186003)(2616005)(82960400001)(83380400001)(38100700002)(86362001)(36756003)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RFRg+CW83kiYniXIPjfVSJ89bp73sP+Ey4WKG0hJb/nezIyLKpT70CkiC7mj?=
 =?us-ascii?Q?5E9QYEoqvEExqFN9VHbCmTnpdivLgw/HHaO0suPZvrjUjFgQLKz02Eh8zNwp?=
 =?us-ascii?Q?Oi1iWTzrRAvLnyCcyQ7IAQ8L+nqqrCI/ImEh4zoSV3BBIpjwAdvyIo4eq+eR?=
 =?us-ascii?Q?/XLxgaki+x0uhrCRpUwKnwhniS4VL8rTZwWpX1w7Q2ik5knle3ihtVSoPuR/?=
 =?us-ascii?Q?OO2UJHiGxveFGiqj0vCCr7kj4/jJEzaE+P3g68mcTTtBKiYiMQmm1ILINBLB?=
 =?us-ascii?Q?Z4W9fLDZyVLyFZumOOmMFYMi6UXwhTNZnOXXuXfxHl+/2GUJC04fHg3tBK2t?=
 =?us-ascii?Q?cOUU2POLb7Y4A0Ns6z/zRASAfjeSe5pEB8gGzuhWQT2M418WxugvtksS6W51?=
 =?us-ascii?Q?8t+zXh0I/aW2w3+zvZRY7bUKdUL3oZWsOjlYbb8a9R+kkh9crHutQSdK+bwQ?=
 =?us-ascii?Q?5rsIkm1kXtXqWbQdBKZtNhMYG5j6wms4GjdB7f3xybNKUMVtCQIvX74MR+vd?=
 =?us-ascii?Q?R95kNomBHAiUv3ixqbT8GJB5uKbvxOQ+hMbAqVOXBszX4R6VnHWCSQ45h8OE?=
 =?us-ascii?Q?rYr7Zrc5gn+B+YC6EvUGsWhC5ACzYQXCYEOTl1PwP5Id+7K0ktAJx98aknDK?=
 =?us-ascii?Q?BHRU1LgPmtlidokF5gnGWJ985Y+kNbTkodWvgFu2bthIFSPenyuwhpEWgeOJ?=
 =?us-ascii?Q?tVtRErD0ZlPUNn3pXbS26Fq6vg+vDP3/S7C+63TExKhbs8grwD+vmvhljaTP?=
 =?us-ascii?Q?YCJha97vcLpz+Asbq1NnlhS9N6euSJOREHnNcOmqXambgvy6iBvYYHqlDnI2?=
 =?us-ascii?Q?/4y1e7bgXpPKwURLRMaJV/RhjEMTSM4pQRqwVMbZyqRH+Kf5FqYx/xtI8E3N?=
 =?us-ascii?Q?TOLn9qmnVdyhAty0mkkAo9L+NNdt/yMjtm4i3e2cAjawiqgQ/loDWDudE1O/?=
 =?us-ascii?Q?bgi0jPknMxfaecV/p9BxCNND+A/YzOtUHYQD33fe/cIAKBKrs4OQm5ZET/VJ?=
 =?us-ascii?Q?pQZWSSZcd12MSxAEHxShIMfTvKaOmjoGJUroT77b2hjEthdFx23m8Bi/Nbg/?=
 =?us-ascii?Q?f/BmF4unXoGcUozORHr2hx4KKNWuj2t3J9yMn1/AIEfVc1dJiXT+unErQGUz?=
 =?us-ascii?Q?Q9IpXOxDmaQDXK98hqKXfL1elWkqrM3zS5n4zWp3S9EXv73Sb1Qn1oPrNtwD?=
 =?us-ascii?Q?BsqAhlYAFGbCUqrtjnWFrK7InCrTvUvYXPDnaMAkFWghMeqQqB3EPu46MeeE?=
 =?us-ascii?Q?CDHM7b2yw8M8tU7d+0BndNLQvV1UB1y42+t05z+2+zF5r19ZNaSExMNFb6tB?=
 =?us-ascii?Q?m8lHnM22qsOcdS83hDAgc8USkoMtDgH7LAJFxYjRRHtEl3bGbD4k8bALJnVa?=
 =?us-ascii?Q?QYhRudOUdHJWXGCx9qGgtj+VvBg1q+Q7wpXmU/sHGf4nx06Yn+vEpf7q8oXD?=
 =?us-ascii?Q?DIcHrWIn0mtGWDyvERypyRnoKJJjZs6EX4gJSalB5K+ZpfefRnHFbRQ5x4gf?=
 =?us-ascii?Q?WVjjbHyfZCydsod0oeJXbtYIjZk0HBmZZAT6G7HS0tjtHyZVmjZCHkLp9xeM?=
 =?us-ascii?Q?DrgkUZsaBTC4ph0BNbUpf8bsYWwRaXPhLO1B++w+l1wjobcccJg1g15LlRni?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffd3c88d-6e4b-45e5-cc74-08da9011ebba
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 14:13:07.4632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uSVsc6StTwmOKYX7EJJvUhXdF9iBqLVshOUC6EE2fIOaL0hUPvq8NK0BRUg/DkF+ZcTw9MxLOTGRXQL6l1KSCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5511
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/debugfs: Add
 perf_limit_reasons in debugfs
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

On Fri, Sep 02, 2022 at 04:53:00PM -0700, Ashutosh Dixit wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> Add perf_limit_reasons in debugfs. Unlike the lower 16 perf_limit_reasons
> status bits, the upper 16 log bits remain set until cleared, thereby
> ensuring the throttling occurrence is not missed. The clear fop clears
> the upper 16 log bits, the get fop gets all 32 log and status bits.
> 
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 27 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 108b9e76c32e..5c95cba5e5df 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -655,6 +655,32 @@ static bool rps_eval(void *data)
>  
>  DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
>  
> +static int perf_limit_reasons_get(void *data, u64 *val)
> +{
> +	struct intel_gt *gt = data;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
> +
> +	return 0;
> +}
> +
> +static int perf_limit_reasons_clear(void *data, u64 val)
> +{
> +	struct intel_gt *gt = data;
> +	intel_wakeref_t wakeref;
> +
> +	/* Clear the upper 16 log bits, the lower 16 status bits are read-only */
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
> +				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
> +			perf_limit_reasons_clear, "%llu\n");
> +
>  void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> @@ -664,6 +690,7 @@ void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  		{ "forcewake_user", &forcewake_user_fops, NULL},
>  		{ "llc", &llc_fops, llc_eval },
>  		{ "rps_boost", &rps_boost_fops, rps_eval },
> +		{ "perf_limit_reasons", &perf_limit_reasons_fops, NULL },
>  	};
>  
>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5e6239864c35..10126995e1f6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1802,6 +1802,7 @@
>  #define   POWER_LIMIT_4_MASK		REG_BIT(9)
>  #define   POWER_LIMIT_1_MASK		REG_BIT(11)
>  #define   POWER_LIMIT_2_MASK		REG_BIT(12)
> +#define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)

Is this valid for all platforms?
What does the bits are really telling us?
Could we expand the reasons? The previous bits we know exactly
what kind of limits we are dealing of, but with this combined
one without any explanation I'm afraid this will bring more
confusion than help. We will get bugged by many folks trying
to debug this out there when bit 13, for instance, is set.
"What does bit 13 mean?" will be a recurrent question with
only a tribal knowledge kind of answer.

>  
>  #define CHV_CLK_CTL1			_MMIO(0x101100)
>  #define VLV_CLK_CTL2			_MMIO(0x101104)
> -- 
> 2.34.1
> 
