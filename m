Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EA34DB7AA
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 18:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0774A10E876;
	Wed, 16 Mar 2022 17:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C1810E876
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 17:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453410; x=1678989410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sT7U7lJNEpj9GEOpuZkxQSNZEjfEnveeRcctaVJz9VA=;
 b=Kk2uznawh+iQWy9TH4PdwRGjNpzztQLlDLRS+e++Su4+upYtxvOoB5fm
 H8hr7nMkuxlvDrk6R9XyuA5n7tJcWT9PWbYm+J6mE7h+P1WDK4wMCaeER
 woR+1nuwPClzuC0/BkGp/4e1I3yKoT1hlKAUK/WKxBG5Gn2L8Q5lgXMZQ
 WDLpu7DsTkCazPVrsVxk+dUfRm6gGm2IFNd1y0JGTbgTJ2wciNcU1EL20
 +PzdU4sE1tRGEg9j2taEgCcYiMFjhFGaRWHNoQ8jQo5V8zP8UMzEgSBrC
 2uEEmx4Dl+oXUBLn7U6vpChbkSKq0x2zdaDMRDMcsUZ5B2OhxuyNUAG5A Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="281461561"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="281461561"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:56:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690676346"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:56:48 -0700
Date: Wed, 16 Mar 2022 19:57:22 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220316175722.GE21723@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 3/8] drm/i915: Probe whether SAGV works
 on pre-icl
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

On Wed, Mar 09, 2022 at 06:49:43PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Instead of leaving the SAGV enable/disable to the first commit
> let's try to disable it first thing to see if we can do it or
> not (disabling SAGV is a safe thing to at any time). This avoids
> running the code in this funny intermediate state where we don't
> know if SAGV is available or not.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 906501d6b298..36f5bccabf64 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -57,6 +57,8 @@
>  #include "vlv_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
>  
> +static int intel_disable_sagv(struct drm_i915_private *dev_priv);
> +
>  struct drm_i915_clock_gating_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *i915);
>  };
> @@ -3697,6 +3699,18 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
>  
>  static void intel_sagv_init(struct drm_i915_private *i915)
>  {
> +	if (!intel_has_sagv(i915))
> +		i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
> +
> +	/*
> +	 * Probe to see if we have working SAGV control.
> +	 * For icl+ this was already determined by intel_bw_init_hw().
> +	 */
> +	if (DISPLAY_VER(i915) < 11)
> +		intel_disable_sagv(i915);
> +
> +	drm_WARN_ON(&i915->drm, i915->sagv_status == I915_SAGV_UNKNOWN);
> +
>  	i915->sagv_block_time_us = intel_sagv_block_time(i915);
>  
>  	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
> -- 
> 2.34.1
> 
