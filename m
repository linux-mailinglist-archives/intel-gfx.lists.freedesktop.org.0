Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F66C4E7AB2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 21:46:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AC810E267;
	Fri, 25 Mar 2022 20:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55EB110E267
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 20:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648241197; x=1679777197;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=r+IUXNrIQ8YcuTRaYvYjViQ3U5+v+hFgdYAuDiNz+K0=;
 b=OMDiROyNUVsLvCsifjpyAr3gdeaKYKX0TB00rYrcahiTxprWPHMysDGh
 QuCEVPqz1vweFOlPGpjTVkzpC+S8mtrZ7JuDR8lfxTp87xH9xNyScNHDA
 jDlwNo5FekwxLv50HxymeXLgtKKTEaIJsFC/VWo8ys+GI96ik9zFwDNPX
 2ztUkX+M5uDWM9e/pEwvKRdQKM9cdWJWjeC2OrNfwI1a1DvOxQsBLMV6g
 nWEKuv/f5Wb1IO+uTngKLFf+Bl+XUj2eW9ti0OpTKFbLG+YAP/kjVv8Bp
 6en6ZEC0zUSg+RXd8vBK0OZ9fRPneb7uZO5hhNo/qvSy2fuNyZeayWAke w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="240872266"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="240872266"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 13:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="545220302"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 25 Mar 2022 13:46:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 22:46:33 +0200
Date: Fri, 25 Mar 2022 22:46:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Yj4qKcD760V27Gbq@intel.com>
References: <20220323201749.288566-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220323201749.288566-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Fix register corruption
 after DDI clock enabling
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
Cc: intel-gfx@lists.freedesktop.org,
 Arthur J Runyan <arthur.j.runyan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 23, 2022 at 10:17:49PM +0200, Imre Deak wrote:
> Accessing the DDI_BUF_CTL register without the port's DDI clock being
> enabled (to set/clear the TypeC PHY ownership for the port) can lead to
> a corrupted value read during any i915 register access right after the
> DDI clock is enabled.
> 
> The root cause is the way clock synchronization works for this register,
> controlled by the CHICKEN_DCPR_1 DDI_CLOCK_REG_ACCESS flag. Correctly
> this flag should be cleared on ADLP (see the Bspec link below), however
> after bootup the flag is set.
> 
> One easily reproducible issue is an unclaimed register access of the
> PWR_WELL_CTL_DDI2 register, programmed right after DDI clock enabling to
> enable the port's DDI_IO power well (see the HSDES, VLK links below).
> With the correct setting above this problem can't be reproduced.
> 
> Bspec: 49189
> HSDES: 18019028154
> VLK: 28328, 28655
> 
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: Arthur J Runyan <arthur.j.runyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 1 +
>  drivers/gpu/drm/i915/intel_pm.c | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a0d652f19ff93..d83bd7a75c788 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5939,6 +5939,7 @@
>  #define   ICL_DELAY_PMRSP			REG_BIT(22)
>  #define   DISABLE_FLR_SRC			REG_BIT(15)
>  #define   MASK_WAKEMEM				REG_BIT(13)
> +#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
>  
>  #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
>  #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2c3cd4d775daf..4291963013c51 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7470,6 +7470,9 @@ static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  	/* Wa_22011091694:adlp */
>  	intel_de_rmw(dev_priv, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
> +
> +	/* Bspec/49189 Initialize Sequence */
> +	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
>  }
>  
>  static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
