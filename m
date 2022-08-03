Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197E1588E57
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 16:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6742B673;
	Wed,  3 Aug 2022 14:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2803C2B512
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 14:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659536136; x=1691072136;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=AkcW4HhOQqJbhnhs937PGc3B9P1ji7dOS7UX8NBxEUs=;
 b=AOsqnBQs+wK+ti547leYOWQUveqC/O7cjZeMUp7ECnLTz4g2iwVIEmxf
 baNHHHiiLvgL5oh7nv6l45/NpzkeQ3Iyu1c3QWf1SVNtcS4uGD+8miKLg
 b5quQ8V4s9voLoE0W4zDLPkswQsXElQCcOTgtKGCWl+bqFrAvf1p9EHWP
 qdTY8SdrwiaF2j9CV8FDrygxIATyVTPq7MZHHknf3jGoC3L4xCE38wEnz
 pU18QrRg0lXPhAvWHq05AFeq8hvcVfP4Hq8hwxm+a+kC/+6FZuEPUDPa6
 Ia5dW8M8RkpDhA5EzGVga5AsIsE+Hd4N3X/aM4EOMzP75mUHR9nmF/xO1 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="351394663"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="351394663"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 07:15:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="578661326"
Received: from ns1-mobl.gar.corp.intel.com (HELO localhost) ([10.252.59.244])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2022 07:15:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220726072300.3950338-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220726072300.3950338-1-ankit.k.nautiyal@intel.com>
Date: Wed, 03 Aug 2022 17:15:31 +0300
Message-ID: <87zgglpg58.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
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

On Tue, 26 Jul 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> The low voltage sku check can be ignored as OEMs need to consider that
> when designing the board and then put any limits in VBT.
>
> Due to this check many DP sink that can be run with higher link rate,
> are run at lower link rate, thereby pruning the resolutions that are
> intended to be working as per bspec.
>
> However, some eDP panels are getting issues [1] with higher link rate.
> So keep the low voltage check for eDP, but ignore for DP sinks.

What's the root cause? This seems like guess work.

BR,
Jani.


> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/6205
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272
>
> v2: Added comment about eDP HBR2 restriction for JSL/EHL (Arun).
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 32292c0be2bd..e50bba14e8c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -405,7 +405,8 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>  	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>  
>  	if (intel_phy_is_combo(dev_priv, phy) &&
> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
> +	    intel_dp_is_edp(intel_dp) &&
> +	    is_low_voltage_sku(dev_priv, phy))
>  		return 540000;
>  
>  	return 810000;
> @@ -413,11 +414,8 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>  
>  static int ehl_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
> -
> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
> +	/* For JSL/EHL, eDP supports only HBR2 5.4 (SOC PHY restriction) */
> +	if (intel_dp_is_edp(intel_dp))
>  		return 540000;
>  
>  	return 810000;
> @@ -429,7 +427,9 @@ static int dg1_max_source_rate(struct intel_dp *intel_dp)
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>  
> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
> +	if (intel_phy_is_combo(i915, phy) &&
> +	    intel_dp_is_edp(intel_dp) &&
> +	    is_low_voltage_sku(i915, phy))
>  		return 540000;
>  
>  	return 810000;

-- 
Jani Nikula, Intel Open Source Graphics Center
