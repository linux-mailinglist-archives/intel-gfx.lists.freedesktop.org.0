Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875EA908AF1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 13:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715E910E257;
	Fri, 14 Jun 2024 11:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJeI2Ptr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E327810ED08;
 Fri, 14 Jun 2024 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718365288; x=1749901288;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=n6W9IR8P3WJJbwaWBW6LhiiUpw5Cf8KISMHenG0gpD0=;
 b=mJeI2Ptr4MItfr8UEhgtXCipcbfqITvaNzw3UfhyUskXgA7FOknIkcIS
 UjAXYXGpr4XUOUaQFVZ6UUYrOjm/MuDpml47C+hg/79wDraptmiF2GCBq
 rRj30uNIvupdr3tAy46mfYSM+Gg4XNZf4T850qozhYh+Q6DU96v9g6KTP
 PKXe3PYoGjXKiw9K8ldqYqMLVLnC2qzFlJEWXiH/iiOG0/USzEJD+iFdG
 yQ7rwcK3PttHf6YZ70mmCG2FJDlDzpTQTHpKk7WmbmuH56vquMG65N8QQ
 22hJLPTNR5C+MG5WqVMvAm//K8c4QPrptarLo0Vhep8aCbgm+khyQAOze g==;
X-CSE-ConnectionGUID: YCLFfe1IQ4ewyQB30MdAtw==
X-CSE-MsgGUID: JkI58NmCSAa7fq9tuRrt0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="18167075"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="18167075"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 04:41:27 -0700
X-CSE-ConnectionGUID: nylO4FS2RFCTbXxJvNCMlA==
X-CSE-MsgGUID: 3NRBCPhNT4qzIREzSgIROA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40443672"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 14 Jun 2024 04:41:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Jun 2024 14:41:24 +0300
Date: Fri, 14 Jun 2024 14:41:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/i915/mso: using joiner is not possible with
 eDP MSO
Message-ID: <ZmwsZCkP6mobS7ki@intel.com>
References: <cover.1718360103.git.jani.nikula@intel.com>
 <137a010815ab8ba8f266fea7a85fe14d7bfb74cd.1718360103.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <137a010815ab8ba8f266fea7a85fe14d7bfb74cd.1718360103.git.jani.nikula@intel.com>
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

On Fri, Jun 14, 2024 at 01:16:03PM +0300, Jani Nikula wrote:
> It's not possible to use the joiner at the same time with eDP MSO. When
> a panel needs MSO, it's not optional, so MSO trumps joiner.
> 
> While just reporting false for intel_dp_has_joiner() should be
> sufficient, also skip creation of the joiner force enable debugfs to
> better handle this in testing.
> 
> Cc: stable@vger.kernel.org
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_dp.c              | 4 ++++
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 91757fed9c6d..5eb31404436c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1546,8 +1546,12 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	if (DISPLAY_VER(i915) >= 11 &&
>  	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> -		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> -				    &connector->force_bigjoiner_enable);
> +		struct intel_dp *intel_dp = intel_attached_dp(connector);

That won't give you anything on MST. Dunno if there's any point in
trying to do anything here anyway. We don't account for the other
intel_dp_has_joiner() restrictions here either.

> +
> +		/* eDP MSO is not compatible with joiner */
> +		if (!intel_dp->mso_link_count)
> +			debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> +					    &connector->force_bigjoiner_enable);
>  	}
>  
>  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
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

This part looks fine.

>  	return DISPLAY_VER(dev_priv) >= 12 ||
>  		(DISPLAY_VER(dev_priv) == 11 &&
>  		 encoder->port != PORT_A);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
