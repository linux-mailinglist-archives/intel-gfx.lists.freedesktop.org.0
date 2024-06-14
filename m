Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FC6908DA2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 16:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 862EC10E04A;
	Fri, 14 Jun 2024 14:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="coEOpjYW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D55110E089;
 Fri, 14 Jun 2024 14:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718375993; x=1749911993;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J7uz1x5jYI7lPoTiLt2qtkWfX7SjMOs7CGOUsUyfTM4=;
 b=coEOpjYWNuQ+8l8TxrXdlIRJNXT1cesG3TYFRh0V6skxiCrjbUvedQJS
 fOF01fkF6UwsrS6/QP1slwt9aGqd2LV0okL4k7FOgEausJ3sleiPG1zRL
 2YIrloa06z0wAohfOdmY9EPQCi8DRf56TZnaz9MR287aKyssyE+sHRMUk
 yHFPpfxZeeK/8H4foDc1dLQw5dNW5z+GV8PQqewjRqYl5vFtukIK4Q0dT
 jvte/sblFoFe+zKsTAwkd9K/3HsRLm2r5kNRgTw+DDUnk5jcSgSoLv9YZ
 gJWjby/E9izBVDAkds4CBQ5hT1lOdzhNC8GlnzIADQ7aSxv1aEhwgC46S w==;
X-CSE-ConnectionGUID: floPnUwVS2+IXtYLZCtRJw==
X-CSE-MsgGUID: +76B0ZTjTJeiOPbb8/g0Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="32742028"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="32742028"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:39:42 -0700
X-CSE-ConnectionGUID: s+JFUkSNTyi0qJpVlco4Ow==
X-CSE-MsgGUID: vPjUpIANQTebIVEa0HgCZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="40479774"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 14 Jun 2024 07:39:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Jun 2024 17:39:39 +0300
Date: Fri, 14 Jun 2024 17:39:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/mso: using joiner is not possible with eDP MSO
Message-ID: <ZmxWKyz8RcqjQ0Mg@intel.com>
References: <20240614142311.589089-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240614142311.589089-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Jun 14, 2024 at 05:23:11PM +0300, Jani Nikula wrote:
> It's not possible to use the joiner at the same time with eDP MSO. When
> a panel needs MSO, it's not optional, so MSO trumps joiner.
> 
> v3: Only change intel_dp_has_joiner(), leave debugfs alone (Ville)
> 
> Cc: stable@vger.kernel.org
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> ---
> 
> Just the minimal fix for starters to move things along.
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9a9bb0f5b7fe..ab33c9de393a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -465,6 +465,10 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>  	struct intel_encoder *encoder = &intel_dig_port->base;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
> +	/* eDP MSO is not compatible with joiner */
> +	if (intel_dp->mso_link_count)
> +		return false;
> +
>  	return DISPLAY_VER(dev_priv) >= 12 ||
>  		(DISPLAY_VER(dev_priv) == 11 &&
>  		 encoder->port != PORT_A);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
