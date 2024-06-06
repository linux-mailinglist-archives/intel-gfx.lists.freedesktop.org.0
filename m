Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7998FF11C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DBE10E9CE;
	Thu,  6 Jun 2024 15:47:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqEVqPhH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F1410E9CA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688875; x=1749224875;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2YaFfKNKJ7u/FsLJ6XsfRa4yrxl94r75E9/h1xc27BU=;
 b=GqEVqPhHJ9ukOYNHBvbkunstNUDWb503asDdVCMEVv3V/L0ZyYyR1IrA
 PqXoNK85DPXl/+4hpqD0rQZ+qO3v7s8ieDCObdGWvJ3K5692tmYQtNYEM
 XEl0AnLt/grPY4bXtOrMiC4qJqZKNJFvF8u2goPwq5bA4IrtK2iOo1G1P
 sNryTrXdWFUYZUsupq81dtH7vUL2aVcEU3+K+MXI1oJ2MUgF1h29a0kpk
 GBsPnSaS1fTELfHEON/+WD6VJf3hwEq1wBba6IEqxN9qcwPnFJ0Lund7K
 1P5SvZz7GS6hUMhEgHBgLviPwDtLacD+4QeadGK7lqiw1pwG6HYiJX1qV Q==;
X-CSE-ConnectionGUID: 4lBFMi3gQ+619q4GTLmf3Q==
X-CSE-MsgGUID: x5IZHXobTXqW7xejmWMErQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18195722"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18195722"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:47:55 -0700
X-CSE-ConnectionGUID: xByFMuBZQhWZZoA832T+zw==
X-CSE-MsgGUID: WGxUVf16QvuCz/R/P39xxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42577143"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:47:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:47:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:47:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:47:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:47:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtsGmg7l5YqIqxjC76kqunmjSYWeIQvErU5ka/ap5ihMfLM5KzHUiBtXtPNToYlbwP+vdKE0zjxx80dP96A/jtumvdDUwYKEHfh6S96nWUCbdWMtCot5Ac+nesVptJcQAdDHedLhUSTh/82HDEuuQVnS5Q9iOrzq8Qay7rEoRMMWVF19q2/JIrpwEzZ0KYHgHWF5GVH70/WJ4HOaSIm7iXXfliJrKfvmmtHu5eA6iy++ocwPD9TR4ldZfeowmnK+KMaV7EYG6QaDV7BRaJogoOp8g3deiU90uebe+tgXF7T7fMGPO59i5UguDb7+SWSAVD7Ai1RytBHcm1jQ3oDgQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SznU2dpehmhkr/zReivwdWtlaFrE+C7Lp9iiDwjzWEs=;
 b=hHuNQ2xUC9f2Nnzo5jlk5WiLaL5jj9gmT5okDOK4jrD/PEb7IrtI12aIjd6/Dt46lc1CfPTRj6qT3YYnILT8fXinMC2EwJBQx+pVyM5d3MUpedD6bXftpL4NJvVYC+/lQJfb2+uKGYlH6l4LrRAsKwUtBqhkwD9hgHz03s5UWOdhMFW18wqv41jLS3APgvi26uET16if6YU/5ILsMQ7MbAFYvHArmY2fvxhBNBarUOTkzxgHKGsoT9PmdX4Bkz6dN6OqVAc2sDObvFysivvj+oAZjkC6q8W+lEA2zZnxztRFMiL1bUxXoSY4kyfOfhbPKZdJevLA525R4RopKlQF4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5229.namprd11.prod.outlook.com (2603:10b6:5:39f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:47:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:47:49 +0000
Date: Thu, 6 Jun 2024 11:47:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 25/65] drm/i915: pass dev_priv explicitly to DSPARB
Message-ID: <ZmHaIzhPO8CmTK6u@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <9e8dc8978ce3122a0e9c53778be547875a9ae6d8.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9e8dc8978ce3122a0e9c53778be547875a9ae6d8.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0022.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5229:EE_
X-MS-Office365-Filtering-Correlation-Id: 29919a92-8843-4dc9-6f77-08dc864004a9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?D9nDQ9LN5rGodmLMf0Rg/iL1F5ixMCk8JUKvvLLW9tXJabj2gfThnxEypP3q?=
 =?us-ascii?Q?6Awnpi+yStohAbdgYoGy8WR2NpGzdh6r4mykLeOvwG41y8sE2f+2U5YmnJBr?=
 =?us-ascii?Q?E3E7vX/tAWIGXJZ8yjdlPItm8U6OJv8y1Uz2KLySj7sTTde9E9Aw2OSEjaFi?=
 =?us-ascii?Q?E1ENLsqhDFRECPvdwrvo7pU65BKUOAcE9nFAGB4K6va2vCSR68KUBQkil+FT?=
 =?us-ascii?Q?9Io0S3w22kS6aQ3mzVHuBu0misLImWStE/43oymFDe9MtLA01xeIJ3oT7GDX?=
 =?us-ascii?Q?3g6gR6bvRM/vp4VUCQSgBzKWwLr4lU7uX8wIWl6k1YEa9yvkb/TjmyCybjbo?=
 =?us-ascii?Q?nm2xe4rPlfv4fqw+7yF+sT6iE1YlgqzmBysYtnAotDD/Bx+8jopGjLTqFf4m?=
 =?us-ascii?Q?FPxsNUmr4whyn80uVW3h5vKoZrhgvITrs9bFb6EUctrnoAxDDvrDmChemTBI?=
 =?us-ascii?Q?3y8aOpFqP82RPwJlCNJ6LLhWWJVz4A0a2sFup4zlI7xLmj1ghTb1hHEoRhad?=
 =?us-ascii?Q?Z1nwITmI571ZY4S4yjz4hBNMZm6DeeAnrcEzYnoD5+U15FXUPD3SuVAbnSf1?=
 =?us-ascii?Q?1X7SOLAmtQljR+x8HFw41nVresxKp7WoEzWh7I4wPPnc+q5QAGkkDrvtimFz?=
 =?us-ascii?Q?x6piBGE+dpbRnEOezQbp1Wjhujp4r1mlzdqEwUQ5uD0kd80Jx939yt9nm/3k?=
 =?us-ascii?Q?ZNOQkdtA3IYL8lpOMBjozBihZu35JuGtm4HYpc+5Fhz4gmZMp8z+etPF2YDv?=
 =?us-ascii?Q?ZqKkOpJ9a4y1OILfYskLk/cXOQ6PIlE4jJrUzrbKG8l6EKzbzVdP5K0pj0jc?=
 =?us-ascii?Q?v2aX1PfxGSt8Nmt+9U7mj9fPTKcI7QqyYKs1WI8Rw/smNU4tZUP23oy3L8FC?=
 =?us-ascii?Q?4Jqx/glMZiLRklOqovad6hrIolRj1F0KfgJaNu3pFE5v15muIWmnCgmvXoHi?=
 =?us-ascii?Q?m8Y92le5HtgKgGIN6k8a3j+PXYspQsvGj2DsHaSj5NndhPCPejqK4x3kO9jR?=
 =?us-ascii?Q?7EUrx1lr6mdlwym8n4LuOJdp8Mi+JBMOcFiP04JbhwoRk4ahLcDRMhc7WUpO?=
 =?us-ascii?Q?BxKSAWjZiw7XWdGrGbqkUXChr4t2odg/DbjzyLUJU8/u+I6XeoU/Y7Dxo6oT?=
 =?us-ascii?Q?VX9wX38pjk3Gu79XfmIiTq39bduKau1G98JvmPmDKfN7EIOHStr15wEaOHBD?=
 =?us-ascii?Q?MFsOr+RrYkWAZVUtm5cFrDfHczt6J/GbZsgEvT1oVXVISOJIT+COvBZQ15Xf?=
 =?us-ascii?Q?Aozk6Tz2X/p/Ri/uGMLW3KccRpnsCLpIiVltJPnFuRfl1ZQ2nSCwWIc86B7e?=
 =?us-ascii?Q?w5kaLmjoQXPlZUEErLw/N2ep?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7Orj+KWOVqoARXFiglgQRbGMoupWx9wEGug+XrPjWgZnzgisQImviLnoaN6q?=
 =?us-ascii?Q?7O2Oyq30tCUarkq3qqCzbeFPpsE4XtzbcBROxBwH0ZgGNPZSOwCTSEdLLKvJ?=
 =?us-ascii?Q?Wxcqm1dTjHbd3WDDxhd+mw11wg53YOqGN9wsNuDb4Jlgxy3tA6GSLSi7F75f?=
 =?us-ascii?Q?CUoluapmGJHMYb1DPvlPCEQFmBiW4G3RAr2l5t9KplNlH6i5qHsi8qaI6a5y?=
 =?us-ascii?Q?ExrS3DBHFDFrfB1rKC3zsqeIjY+gV5iwJ1Ak3DGUMHdrRiO8kUVjqm9wx4E6?=
 =?us-ascii?Q?uMlfyaiHwelRJWW/0JY7zh1WAzU9lTVywdGElxvyXb5c5NhNuCxpP4eq1/oe?=
 =?us-ascii?Q?U15Ipvfk7QQnD5DKMnLgQPIvFOAaqST7cXuqTs6b0WPjH6aj+qdZuL3ElgCz?=
 =?us-ascii?Q?hp03d5XqOXUxWdovN5RspTQiTk7Q0ZD71AZxhrVnWSIPYUNIJI1/6meOaz7E?=
 =?us-ascii?Q?MisiXHknP3VtATGjIoQwcG0IiC0TmSCv0+krX3DY8P36VRvg6dSyMOCCWO11?=
 =?us-ascii?Q?IYT5Dk0eRexXqXgQhud+rwFz6ByxdOeYfo5B1ze+OLRTkRQIkTJ5dI5tlAxe?=
 =?us-ascii?Q?vvnoKZIueHYOXW4M05+8ksRmeyzzm468+yU6GICvqv2smA7KKrL7hNUM5pSI?=
 =?us-ascii?Q?RZRo0XEJNb2W6ZYt3QbfEEsNVEy93ILGuhzMewVOUONPJM2+gAOtAHY01LOI?=
 =?us-ascii?Q?kgV2cbikYO4KekHzWIQoKWB6AZg3KTNaK1oTFS6wOMmMWAHs+t0y3/ghThEI?=
 =?us-ascii?Q?ciLmM+L0eLGM3VV5eOZNjC4uM0RSWd4AvUtfpnrb4qWl277zReWBiSChbwDS?=
 =?us-ascii?Q?5/dpIXlm9RnluN4rL22XcaEUyWOxEsE542roH+fs9SRE47WVU7C99IaYbMhL?=
 =?us-ascii?Q?ZtFBOzEJKfLDPV1LkpAGs8JWf4Vn+iA0RUInSjTnXqEVvLKAG5szd1r0uFqs?=
 =?us-ascii?Q?ytlzWdaktuB0XH1l1odEu26tVtXvGKq6y++nKymeRJhkNKf9qiYyWPRjtQFF?=
 =?us-ascii?Q?2KZfVsCP3KXlBFjUfYuHavP+/3Pwg6QoZnQtBY2yb+em1b5atMDbEA6YX17n?=
 =?us-ascii?Q?5LG21Im0YTPQ1zp4vV50n6h/OZHVibHvIvPpTT2QSmGvHtbNRmc19wsTOp94?=
 =?us-ascii?Q?FdqWx/+XvwJHjCG6/cVUQ51vX558TBvsRq5nXvZVuFp5cyPnFL9ybtQ+jJyF?=
 =?us-ascii?Q?b8JmSOjGA8LlcxluRxbIzTc+u9e12vUqleun2LNPs1NJINu6V4ilFuM6B8Sd?=
 =?us-ascii?Q?rtocTEMu5Eo90FR3+46S8WNhPsV3twuFBmt4ZnO7Zi5YZPlwc7X6T84e0F6i?=
 =?us-ascii?Q?i5z9mcV1GC25c+L3W5r/2EORy2LSr4p+R1MF1NK5VVOtHhrt2YzU+Cen4T1m?=
 =?us-ascii?Q?aPGVlgnNaxfs7kLcWKOU8GSxzAl7HWMOB6ZfomRzlB0qtUrstbPKIbdT34Hy?=
 =?us-ascii?Q?qaEAbmAU3Am/QG48Gy8xeu/D/o4niNU1qJINZZp5wleeqU1mx0wYtAe5BRM0?=
 =?us-ascii?Q?tWlQ/kS7PHvkzPXoAK+D4nYkrRmTHa258SS+fg1t9NrCWyf3884IfWXGC2Wy?=
 =?us-ascii?Q?eJJ9dpfDPiaMHHkpa+oOT84oGTNqMWMu5f2LUAEw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29919a92-8843-4dc9-6f77-08dc864004a9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:47:49.6113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8bSh4pKmiLmAd2hZgJHTOhzFSxXXybtNkiUeGyR2bvNfgfIozDnNl3SLnqkLOjj3RS4MPZONXkoY6laowGdd7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5229
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 04, 2024 at 06:25:43PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the DSPARB register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 22 ++++++++++++----------
>  drivers/gpu/drm/i915/i915_reg.h        |  2 +-
>  drivers/gpu/drm/i915/i915_suspend.c    |  6 ++++--
>  3 files changed, 17 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 628e7192ebc9..fd14010b4cc3 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -269,13 +269,15 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
>  
>  	switch (pipe) {
>  	case PIPE_A:
> -		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +		dsparb = intel_uncore_read(&dev_priv->uncore,
> +					   DSPARB(dev_priv));
>  		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
>  		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
>  		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
>  		break;
>  	case PIPE_B:
> -		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +		dsparb = intel_uncore_read(&dev_priv->uncore,
> +					   DSPARB(dev_priv));
>  		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
>  		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
>  		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
> @@ -300,7 +302,7 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
>  static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
>  			      enum i9xx_plane_id i9xx_plane)
>  {
> -	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
>  	int size;
>  
>  	size = dsparb & 0x7f;
> @@ -316,7 +318,7 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
>  static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
>  			      enum i9xx_plane_id i9xx_plane)
>  {
> -	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
>  	int size;
>  
>  	size = dsparb & 0x1ff;
> @@ -333,7 +335,7 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
>  static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
>  			      enum i9xx_plane_id i9xx_plane)
>  {
> -	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
>  	int size;
>  
>  	size = dsparb & 0x7f;
> @@ -1787,7 +1789,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
>  
>  	switch (crtc->pipe) {
>  	case PIPE_A:
> -		dsparb = intel_uncore_read_fw(uncore, DSPARB);
> +		dsparb = intel_uncore_read_fw(uncore, DSPARB(dev_priv));
>  		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
>  
>  		dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
> @@ -1800,11 +1802,11 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
>  		dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
>  			   VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));
>  
> -		intel_uncore_write_fw(uncore, DSPARB, dsparb);
> +		intel_uncore_write_fw(uncore, DSPARB(dev_priv), dsparb);
>  		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
>  		break;
>  	case PIPE_B:
> -		dsparb = intel_uncore_read_fw(uncore, DSPARB);
> +		dsparb = intel_uncore_read_fw(uncore, DSPARB(dev_priv));
>  		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
>  
>  		dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
> @@ -1817,7 +1819,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
>  		dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
>  			   VLV_FIFO(SPRITED_HI, sprite1_start >> 8));
>  
> -		intel_uncore_write_fw(uncore, DSPARB, dsparb);
> +		intel_uncore_write_fw(uncore, DSPARB(dev_priv), dsparb);
>  		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
>  		break;
>  	case PIPE_C:
> @@ -1841,7 +1843,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
>  		break;
>  	}
>  
> -	intel_uncore_posting_read_fw(uncore, DSPARB);
> +	intel_uncore_posting_read_fw(uncore, DSPARB(dev_priv));
>  
>  	spin_unlock(&uncore->lock);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index cbe109973f57..75223b8cb575 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1984,7 +1984,7 @@
>  #define   SPRITEA_INVALID_GTT_STATUS			REG_BIT(1)
>  #define   PLANEA_INVALID_GTT_STATUS			REG_BIT(0)
>  
> -#define DSPARB			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
> +#define DSPARB(dev_priv)			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
>  #define   DSPARB_CSTART_MASK	(0x7f << 7)
>  #define   DSPARB_CSTART_SHIFT	7
>  #define   DSPARB_BSTART_MASK	(0x7f)
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index 81def10eb58f..bc449613c848 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -92,7 +92,8 @@ void i915_save_display(struct drm_i915_private *dev_priv)
>  
>  	/* Display arbitration control */
>  	if (GRAPHICS_VER(dev_priv) <= 4)
> -		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv, DSPARB);
> +		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,
> +							     DSPARB(dev_priv));
>  
>  	if (GRAPHICS_VER(dev_priv) == 4)
>  		pci_read_config_word(pdev, GCDGMBUS,
> @@ -116,7 +117,8 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
>  
>  	/* Display arbitration */
>  	if (GRAPHICS_VER(dev_priv) <= 4)
> -		intel_de_write(dev_priv, DSPARB, dev_priv->regfile.saveDSPARB);
> +		intel_de_write(dev_priv, DSPARB(dev_priv),
> +			       dev_priv->regfile.saveDSPARB);
>  
>  	intel_vga_redisable(dev_priv);
>  
> -- 
> 2.39.2
> 
