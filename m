Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA43860527
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC5A10EA99;
	Thu, 22 Feb 2024 21:51:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4fReqkr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A0A10EA9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638699; x=1740174699;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KUcn9HJBcJzQzZ8RkWeZe/ReLgN/R5LIhOTMLS4LiSk=;
 b=I4fReqkre4BnZQ7Aqh9BTlLX9/sLrpNiEbU1D3NfPAcQrxuJciwotkYW
 W2JGNY/WFI8d6/NZKV4Kb5ftF/wZQYQVnurttKanrVes8z/YsJwJ3P0jF
 e19KKe+SNY57StwwCyvoaWwvooXSlpbDnr2r/Q227y7tFGv6WGKxNS7/J
 cgbw/EoEAUzj2Ie6p6A2+wkXVF6cz6Zmp7IxwptcF2tbd2xrRXLqMyENV
 6462xQcPWyWycDWS4GWRb3lUDCci1GzVaNxnJE9aQE8+zikEzpN8lWJGs
 Gc7o9dTTq1BKhEb4IGGb2ejaIZS0wCOGuPTtTyb3K15cEN2go0nITApBQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13525308"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13525308"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:51:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5940273"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:51:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:51:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:51:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:51:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZUHYbxFLYqoE6GiD/4KhBqR7Pc3CKsUCCFFpv/VRMxxcqp6sxrqcXiBCOKAALte/RdiM0DmaGNIsHweMDxvI4uKYzRbJuxSOojyTZNiNouo9Py5iogLVT9/Dv/uIV0iLzE7bOnGzJlC61UlWhebGgtq108CYmFn/7CBlt4c7Eo2rmlosqNAkNBYpTkhFSPwttWCeipFDJGekGTju+sps1bVGmKhArdtEKTJIwTX5n5RBnV4MLHFlyFyg0tBeqYfcv3N79N9lNa9lNzuNbxKDPsi7LUm/mRDbMTUULSDiqXtwNTp2/SqRTW6RRyzk1t5xxMSnQ0+TG8l/Umoc2dLcbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7wE4YgaI84VNYDaeSXqpvi/7e3+RuLQ4BTt1BK06Oqk=;
 b=mhJFlMk6LYB4Pmdbq3exvi+4YEFGqiD+ttCAJ1X7M5TrOpQeobSWHnYeflnNuIwk60rYHa1u3b5Ovf9XQlDxvFoNo4yLBhCATZx88aNBogx4MWclFJAgrDWGRmv4Qv/fzG8/Y5I171nuhsCHfV2jkGwker2/R9Ztlw55mGSUT5GeQiUV687RkkbjEzHzsjPHuIOIpG81CngnzDUQTyd62rgbJnRL3DfSKOgI4yGQHHoGRC4nsb93HtiXK5zuktAcm7U9SMwP1zj6/q+6ExsKea4qHKNG6C6E36i3IU8mQUC4BLqMC89B6LeNo/XZOlZX3JAOzpNHTp1HaQBYSnrWHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6018.namprd11.prod.outlook.com (2603:10b6:8:5e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.44; Thu, 22 Feb
 2024 21:51:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:51:30 +0000
Date: Thu, 22 Feb 2024 16:51:27 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/12] drm/i915: Convert pipe_config_buffer_mismatch() to
 drm_printer
Message-ID: <ZdfB32B2Zi1q9JD0@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-6-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR11CA0051.namprd11.prod.outlook.com
 (2603:10b6:a03:80::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6018:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a5de85c-2e69-4965-50db-08dc33f06d67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E6HMrpf3ScmqWbpieKb++qbSzUr1JqhIzGBFWpxlTlCLRZTFlCMxW+easTysMjLvEc1GdSrEq3p1mh16vUOc1tz7AkQ7Bzbq4dZ2rfjcjKQTBGITglFtnSVGsuiDx4oilEUS1nKclHivKCPoexXHcWpp3szqCKAfclFcNDRkoq/j2VnAp/leoYrU0FXQgJ2qjsl2aZ7omf+wksDSgXmDFKHWcxquy/LH8ScYQPb8DZdf45TTF3hiXB9gwgtRchiNjIwnSt9SFv2hy77ZNMIktu/6qqqnId/Ss2rFJTvEunGDuSpSVluyBDSO8IhxRLExSPLKE30V+P7nCb8m0RbqcbHmUE+xxtnxi6rJjqArcthn0ZEp/6zdd3V10BQ9AU0rpPVDKUoxqEg0M7O86SVNawJjBwFp9eV5vUcvoqaRwPqYgC1rE5q2lUA5/roevsg7btYQkj9VlONPUUcEVamKaV/B6XENgixyWMK9L3IW74szIAW37xcw1MAbHdKrCPUN1DpyIWDDwcCGVQWpe54HWR6NvOS2RIxLYNhyCaEYEYk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8rAdbB0iZpsFO2gsimScLOozJnSTV6Ynyo/K7pmJj43NDLv8LAvH2wl3jF?=
 =?iso-8859-1?Q?ImV/nj248E9N275gILuA3Qy9ua7o5gMzc9ibU3AyKQirR73alq6J3XKj0S?=
 =?iso-8859-1?Q?oGuRpgsp5Yx3+PIzNuM1Swx4QhiJVHvMmG+ojTq1VoowT+6157mJYHCez8?=
 =?iso-8859-1?Q?y3W6NUqVynQhxmFA89v3EgX3FJsUXrtTjZsSY8ECSHepq0DX+gr4pqZSFV?=
 =?iso-8859-1?Q?RzjOLYjyqian7Ktb2Z/+oygvdeZJ3QhHcCtE6cAmzs6X4Y7LIZgO9V0XGJ?=
 =?iso-8859-1?Q?ZuKw7lW8SF2Z79wrOZKZy2gcfy/53Dlc+Ui9ppqwrPKHtFuR5uCzjahMt5?=
 =?iso-8859-1?Q?b53LjKyyZYtm5fq/h/q4TmOI7qdddj9vxGaMmrTIi1WDubrc3eP7fOeda/?=
 =?iso-8859-1?Q?o34zNf39gehMkH368/FWuxLhe1YhisFLfxpGEW1rRPkohQm+7TyBX+zxY4?=
 =?iso-8859-1?Q?DqraoFZC8sUgp510ZxpJRDDSJhwUmlU0puQZYOG8cvA8vl7uXa5I6831FZ?=
 =?iso-8859-1?Q?Q9g9Ku8bI5MFYbafcLVh8LWCrAU/wC6qaiq3V/S1YFE2XxvS0JtWVZOcxX?=
 =?iso-8859-1?Q?T2dXxYlVJa1X9RbK1/CDW3+ZkyhjnFKnTkBVgBotRqwqrRMJx3GZOFgTmz?=
 =?iso-8859-1?Q?vw/f5VXpCHivZ9AKETZ/Lgc9meRq3o1A4dJO9byT7Uky8k0X4YEk6IPyAK?=
 =?iso-8859-1?Q?ncIDiA9AXZ1dMEh6EFKFmoKAkkGqSX+eoiJORAEQN87Aco0kEffpd1xO2b?=
 =?iso-8859-1?Q?5L8oLWldjWstNmjOC9Lx17ga16Ltd6nqZonnlfyiQBNeA56zL1IH1MSJIJ?=
 =?iso-8859-1?Q?U8elUk1H9YeCI1wK6IvwHuS97Q20xgl+IG1g4atFX+xuP1OL4FZnX90nMa?=
 =?iso-8859-1?Q?U+n+Vt8ceY0G8amIC76uAnA68z4wYkxKOPgsHiROzP+VMWNK+XbvLN1l6c?=
 =?iso-8859-1?Q?BW4Ag7x/bKGGjWq+6nwCIgDluUg1zSWW6WFe6Uz3JmPIzlTa/mN7cvqS1T?=
 =?iso-8859-1?Q?AZMg6JLN7drksqHc4Dd/PtcMNbhutD3LZ5biUH5Pwk/ipmz979UoiGS9Qo?=
 =?iso-8859-1?Q?OBa6ERFEohm2EWL8FnbiVFZtxblNc7irv3DWd/c4NwQW4ffKyTajNNMQ3Q?=
 =?iso-8859-1?Q?QsK5kLFJCib2UXegIKjF3tHNFidbWNeh+L1x8pcT4QaMDKsMS9HETnGV2D?=
 =?iso-8859-1?Q?vveLP9Sj8VFWYByjYAyF8C1mgKPLROuFO4dLPr+tji59390BdouY7e3aSE?=
 =?iso-8859-1?Q?QRwYdIUoHJA+KstAd9LykjLvYHQlbCzrr8jIuUW+JoHTybXPrfywYrc2Cj?=
 =?iso-8859-1?Q?npC0pG0WhtMUmQqXx/6OSll1crlDGIVp/kq2LRXUIVRa3bedDM8v5XY0Gt?=
 =?iso-8859-1?Q?DIEPoHfr2wfJKXZpdUo+vAve28Nu4bKu1M+XyNNYGc4zfOdVb9WvUdKB37?=
 =?iso-8859-1?Q?pv4QMENdBqO0XCHBGmwgiowOx2IO6HpYefqiK0pcWPE4wF7eqsgfq6L9TT?=
 =?iso-8859-1?Q?ePo547NSottyrZgTKWKGnP6RQGeOn1XtVUTDLRrV2bfW67t25TNrDgH92+?=
 =?iso-8859-1?Q?nCYG68Ldugl8CAJ3E2XXVX7/n39MSsHaI4H25jt2I3Sdgg/nG7ZEoQDM2y?=
 =?iso-8859-1?Q?NRqDEyc/SLMygxid4bPxIEPAh582uanwXmEa2DHhy5COGy6rhTOp8iHw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a5de85c-2e69-4965-50db-08dc33f06d67
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:51:30.2125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pk4K9qXdTu+9J6xRY2cLyBlLQqis6hc2Cu/fMIBZp+D3BxvkoHGk2ncDU8ghC/+tutFiNqUDccPhsOVB1e/MBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6018
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

On Thu, Feb 15, 2024 at 06:40:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Utilize drm_printer in pipe_config_infoframe_mismatch() to avoid
> a bit of code duplication.
> 
> print_hex_dump() doesn't know anything about the printer so
> it still needs the DRM_UT_KMS check and special handling for
> the loglevel. But at least we end up with a bit less copy-pasta.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 37 ++++++++++----------
>  1 file changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0292c49e0dad..e5010049d52e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4866,33 +4866,34 @@ pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
>  			    const char *name,
>  			    const u8 *a, const u8 *b, size_t len)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct drm_printer p;
> +	const char *loglevel;
>  
>  	if (fastset) {
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>  
> -		/* only dump up to the last difference */
> -		len = memcmp_diff_len(a, b, len);
> +		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> +		loglevel = KERN_DEBUG;
>  
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CRTC:%d:%s] fastset requirement not met in %s buffer\n",
> -			    crtc->base.base.id, crtc->base.name, name);
> -		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
> -			       16, 0, a, len, false);
> -		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
> -			       16, 0, b, len, false);
> +		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s buffer\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
> -		/* only dump up to the last difference */
> -		len = memcmp_diff_len(a, b, len);
> +		p = drm_err_printer(&i915->drm, NULL);
> +		loglevel = KERN_ERR;
>  
> -		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> -			crtc->base.base.id, crtc->base.name, name);
> -		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
> -			       16, 0, a, len, false);
> -		print_hex_dump(KERN_ERR, "found: ", DUMP_PREFIX_NONE,
> -			       16, 0, b, len, false);
> +		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s buffer\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	}
> +
> +	/* only dump up to the last difference */
> +	len = memcmp_diff_len(a, b, len);
> +
> +	print_hex_dump(loglevel, "expected: ", DUMP_PREFIX_NONE,
> +		       16, 0, a, len, false);
> +	print_hex_dump(loglevel, "found: ", DUMP_PREFIX_NONE,
> +		       16, 0, b, len, false);
>  }
>  
>  static void __printf(4, 5)
> -- 
> 2.43.0
> 
