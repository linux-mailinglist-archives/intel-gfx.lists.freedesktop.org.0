Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D63B82A1B8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 21:11:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D1B10E673;
	Wed, 10 Jan 2024 20:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF8C10E681
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 20:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704917481; x=1736453481;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=asXsey+ZF9OWz1JOOGX1fh+E9+2UJ3N3rl7BVNC/cOs=;
 b=KZCXtSCfFbE2SG5yia/PTD3/Be/lVGO6vXUabskickILEhLXOGsG8H5q
 flPO6SbtNbjiELySfdTTt0eHQaB1VSjFJHzl8KhgPeminJ4osVem6oix1
 J9HTiFsjaOrBC6D8ir0Ntpk3WIe5RzQ9zGWTPTy4u4bFO3tRUitl6UqwL
 bOyC2o2uXQ+/5AybcBuw2maCoNZdsm9PMlThofXiEYXbjO+fjzyBIGOqt
 7nJjlayXknAIXiuXvEFyu7O4magNB8NE+HCKJjJWs1UJ3rH/bajuYCXiq
 AydAJ5wo7DCXg9Fhf+jUQDF9CnkZE/4zKS8EoGAj2eWxPziRFcYogHOXY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="6001320"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="6001320"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 12:11:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="30717556"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 12:11:17 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 12:11:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 12:11:16 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 12:11:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TlXdq5ECgR7bj2UtgQe/logwSLp2RdsGTvZIkUfmHgtbRCx9v0KcnFSVCEnlJyeCmTpSvOVpBPrIdTFpNTxuyu398+s4GxqhvgnBm6qqDoxu6qdaJFs09SvpfCr+YeEka/asjJnquY3R2vdYTfgig+JyRn/bmf2PbIxHUpi1eKVLSMLeUjMzDDd3eLjYLCKthU7nFOk0xdL7Ehy52oHhil+FQlc6xFM0koWmmqX45ZblGPWzS8C+eCAtfaoQWFKuKoe5Qsmt2U63KvSCFfbjg1OoaXC/f7WFnSMKam7j/cWnCk0sQUUKaEQ6Jg/FRmIyf9pET8DIK0imbE1FsCXMTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fAsGSawRTvIWeIyffemvAk9+F3vxSDIxCRnsHogKGOU=;
 b=afktzUOTPn7tmGhk2vuvO5gvb1AJNIrbnAYMFx+t8EkSDECbhKAoJOqACjIyin0DE9+f5vIrq/Sg1wOxH3ivEYFNMkvKP9Dlh2OlKygjFW4TtS8TmxXjFY0pQr8oCpsmVeVclqQr3ix3+ojHJiePjjPIHjXl5wpbJIzQ8+DHEly6u4cy3ylWtqGOfUy5e1/wJHSMPKXorJKJJRFDwQsISg+xefWvvBBbpn+oaQj19WSC9Sk4RgLB8V/3ONru6nfFSq7pDCmqrplsrPCLACLR/RJXhwkL5w8GwAkIlhVKUWIKhFkHG1BAN4FRZq2D0MAkQkk7/WlmmXgv+XG9arFBnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7243.namprd11.prod.outlook.com (2603:10b6:930:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Wed, 10 Jan
 2024 20:11:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7159.020; Wed, 10 Jan 2024
 20:11:15 +0000
Date: Wed, 10 Jan 2024 15:11:11 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Juan Escamilla <jcescami@wasd.net>
Subject: Re: [PATCH] drm/i915/gt: Use rc6.supported flag from intel_gt for
 rc6_enable sysfs
Message-ID: <ZZ753xDs2F_NrYPJ@intel.com>
References: <20240110010302.553597-1-jcescami@wasd.net>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240110010302.553597-1-jcescami@wasd.net>
X-ClientProxiedBy: SJ0PR13CA0225.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7243:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e54c29e-2c6c-450d-5ca7-08dc12184c42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MHbcbxTMF6pVrxbNWvPvgRNU6yILm+s+WbZhZoGP9ILFk+dhq67Uam2PHE0Wallg58rg76hSnHc/2ktYLu1SLOF4kos7sNyvrgty0lLfZV4g4D2E1qFF7znGbhdEKkuBlwdVLT3M3oy+wYXhauJYgnNrGa8TQQA7qWXbqZNgWdGLQm3iv//TUEeZRRADBC4X7QHpAaPgREwgD0fcvUSsF1bi54ffrJuie962Dussgkd8nLvT4Nqbyxmd/nEF70JsMqUIL8GwNawwqtm9w5aGdjd0QXd/OIs6pCPChIfDwkLYCxe+qkqaIM1n2OR2jyn7z6AIftJPYAmT4NA4Hh9pCnZDw+x+0CBn6/Ro4DY3B4tC/f1LFVodXd2mwOFONJZegAogi4f/HCnQANYX2K0rTwyD/bwa/2kLYEoUeOUepfXdfRGvnyJtRivmN/zz2QweaNuW45EHkxF2DWNloLjuPtVlKk1GWjl/R2FwC61TZewDNZVAwZJHhkwDhZ0Q4SyIeIm22ZRMlocO6xpoRe1cSMyiwCBYvfqisxZsR9kuO+yhDVybTdl/qFMu+1DSm8fg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(38100700002)(478600001)(6486002)(83380400001)(44832011)(4326008)(66476007)(66556008)(8676002)(8936002)(66946007)(6916009)(316002)(36756003)(2616005)(26005)(6506007)(6666004)(6512007)(86362001)(82960400001)(2906002)(5660300002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gLYhLHGOLvjOkp1aP8O3RmhzKWn4Dv4BH2cUUwEgQObQsB4V2DMfBcRtLkhp?=
 =?us-ascii?Q?7mLXiFCzFV9mg3sB22wI23GGhvOjRzza80p/5dGok0uyriW5KMRPeLrj1RsJ?=
 =?us-ascii?Q?bTC/+cPNYf8kcITs8/B6k1lXGEIUHL9q+aqc7cesILv3uNNO5saILkaNgbMp?=
 =?us-ascii?Q?09U2U7x5iYmAADPImHT5+hslMAbZqOjW7JfH3/tH0ay6WlzqMQRGZ+4iHGFx?=
 =?us-ascii?Q?CPNwKhRjnQOXbIcwlBRRyBAi8r3XD4vC8MHdLai4jas6rcClIWDSfAZJwEcH?=
 =?us-ascii?Q?leaOrunINqO/8MPCkDZfnHtOh0aO/mce9Y4tjB+iIzoKpzdCgkEPUDlSCCcG?=
 =?us-ascii?Q?n1osgdSvxvtiLySG/9VxSLuwj2HKj6MToW3IaYZrfK1u84+3X9GSTTAZ60I/?=
 =?us-ascii?Q?JBs3sJABGaCMEbhbLn9NIOQhgdLBJTXKR7KY4uXjywqKhxrjay/PxpbnPJSz?=
 =?us-ascii?Q?iKStD7ZSAhQ/agt2Yibp+E3Mo0J4qmkClvdTa182gsvIGFOHJ7V/kC7nEv7s?=
 =?us-ascii?Q?NmiBllqvYW2bE3n/jSLQSWNrqhwuUYMx9FKi6ANa4jNgRUQ4/gOkyjoJvlHF?=
 =?us-ascii?Q?x4KJRXki3Imnzx2r/EsZTHyCC9p2x7gzPF6oT+FnoAG5x6EvHt2FGVFEl3nF?=
 =?us-ascii?Q?43mWctQVwUqMGkScp5TpMhEuTuyYnsF/LKSbEadWA0dunH9unPgprXNv8xeY?=
 =?us-ascii?Q?GVTad4+E6y5QrL7DFvhzJn8/DiKSH33caRYBT1Eck4EvXbMlqWuV6WaQCRyp?=
 =?us-ascii?Q?ncdv3i/eVzoybTGs0Xo8zzAt7rHReIisZwna76P2uuh6VpDQzbPD9lwGpZ0L?=
 =?us-ascii?Q?Pgc9ZkjoHGhAKrl+P0netUx4iD6uuwAZHTBy7LlY580Zq9d7CGXAKFpevrO5?=
 =?us-ascii?Q?YWPDZKyXUjQDo/vkXnSpVyOG1rp+QTG8/sMtlYi1YfQi7wRTtlFiPXxLyrb/?=
 =?us-ascii?Q?4Hl+WPSPnP1cnl0Fqoiv8Fsd8lm47e1HDXxyrm5B0ZvxzgZbH6EDCcJED+Gz?=
 =?us-ascii?Q?YOQwKeFSbKFX5b15kqYqlHU/9wG7hHNlbxgbWP082iE5KH2r8UOXRPO33zqH?=
 =?us-ascii?Q?uzHsBLm9/cxup6OuRzOt+/NW6SKLvVx7VJvSs0d1azQyvto4mXeq5fLQwPze?=
 =?us-ascii?Q?U91EanrsI7GyDqmXiRBegt7gaJoQ9D6Fq48UR1FyxbnozApPdmQzNmTnoPW5?=
 =?us-ascii?Q?CYLlaaFp/ByyEB8owsNAac2wlyD63t1hmQR+6pzNe3e5j2fQiP+xhT8urx7j?=
 =?us-ascii?Q?v4uVweL609mBJRFaAyTB2Sr8/NVJEUvge4T1uFaXFR2Hd4ynOhj0EJ0MkVwG?=
 =?us-ascii?Q?mzoc0Pm1P+GsF4krQdTGLZ4Kk/FTpxoq+o88tk5v87N7JYy81qJnz/qKoP9W?=
 =?us-ascii?Q?tPLZdH2QSbwNrHE4QDm6VHmNhDnDqefz32ZXuB/g7fNmwWO3L/kD372DanX7?=
 =?us-ascii?Q?3DD8SLeKzlJjLgjaT4Hfd4lbMVzmtM49GQ1fH4GkJa5uG/bIUSfn5oDBTPL3?=
 =?us-ascii?Q?s+MLQ4LuhwTcfPRGlpFGHCcslXczrKh5utMYDZiq1OsU+HIneb1qSsV6xZSx?=
 =?us-ascii?Q?l5advk+oC4y4Eh/ajXpGKTZBsUs3/CpD5miEc916RYJEBJvOt05jyKfvpEPL?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e54c29e-2c6c-450d-5ca7-08dc12184c42
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2024 20:11:15.0905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0vJrF6SPAHFRVJp3FLCYBVnoUUr3GDBpsjkwnT0U3wPmLRhgtudKVH8TvezXg4xsJZsWTCcaX26OYSrqLzm1MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7243
X-OriginatorOrg: intel.com
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


On Tue, Jan 09, 2024 at 05:03:00PM -0800, Juan Escamilla wrote:
> Currently if rc6 is supported, it gets enabled and the sysfs files for
> rc6_enable_show and rc6_enable_dev_show uses masks to check information
> from drm_i915_private.
> 
> However rc6_support functions take more variables and conditions into
> consideration and thus these masks are not enough for most of the modern
> hardware and it is simpley lyting to the user.
> 
> Let's fix it by at least use the rc6.supported flag from intel_gt
> information.
> 
> Signed-off-by: Juan Escamilla <jcescami@wasd.net>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
and pushing this right now, thanks for your patch

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 18 ++----------------
>  1 file changed, 2 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index f0dea54880af..2d3c4dab6d21 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -176,27 +176,13 @@ static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
>  	return DIV_ROUND_CLOSEST_ULL(res, 1000);
>  }
>  
> -static u8 get_rc6_mask(struct intel_gt *gt)
> -{
> -	u8 mask = 0;
> -
> -	if (HAS_RC6(gt->i915))
> -		mask |= BIT(0);
> -	if (HAS_RC6p(gt->i915))
> -		mask |= BIT(1);
> -	if (HAS_RC6pp(gt->i915))
> -		mask |= BIT(2);
> -
> -	return mask;
> -}
> -
>  static ssize_t rc6_enable_show(struct kobject *kobj,
>  			       struct kobj_attribute *attr,
>  			       char *buff)
>  {
>  	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  
> -	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
> +	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
>  }
>  
>  static ssize_t rc6_enable_dev_show(struct device *dev,
> @@ -205,7 +191,7 @@ static ssize_t rc6_enable_dev_show(struct device *dev,
>  {
>  	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
>  
> -	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
> +	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
>  }
>  
>  static u32 __rc6_residency_ms_show(struct intel_gt *gt)
> -- 
> 2.43.0
> 
