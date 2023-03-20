Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5746C222C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE36910E314;
	Mon, 20 Mar 2023 20:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD1A10E314
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679342711; x=1710878711;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yAra1OU//GAFF8iA9Xe9qMfn59kYOydGvziiXtGCYGM=;
 b=NWHflOL6IVZQmprzxYLjX0Mm7D0K31OQK5zczDmhyosWrBoCOlPfbkSU
 oluhxjZE5ENX3I80d7UPwcI+rs5/eULZFUi3kZzhKCF0ihWHqYdo+A+KE
 4Wo2SGu840cJDJ+vweASgZ0dFlZw4UvGs3lX9TFsN8Fseo+2NRVs7Ei7P
 5zQsH7Y5EKX/9joo6PBjCOHVBBAtVDfsy4qMvXHWMX/hGvcg+ADVgwhUV
 Iq+A5UJY2JtX33iXEPXAGUpKFyY67a2gQ52d4WyR46Arp2BB6lvwkJtk7
 gCiFuDLwtfiM+GPgntJfZ+OMVeHofUyLjsPxMT3BB5vy4Hv2I4xp5msVm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="319166727"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="319166727"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:05:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770328017"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770328017"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:05:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:05:08 +0200
Date: Mon, 20 Mar 2023 22:05:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZBi8dKHt2btDdzqI@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-14-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316131724.359612-14-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/i915/tc: Factor out a function
 querying active links on a TC port
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

On Thu, Mar 16, 2023 at 03:17:23PM +0200, Imre Deak wrote:
> For clarity factor out the function to determine if there are active
> links on a TC port. This prepares for the next patch also checking the
> port's PLL type.
> 
> No functional changes.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 35 ++++++++++++++++---------
>  1 file changed, 22 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 5d040f0c5f630..8481018d0fdaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -872,6 +872,27 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
>  	mutex_unlock(&dig_port->tc_lock);
>  }
>  
> +static bool tc_port_has_active_links(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_encoder *encoder = &dig_port->base;
> +	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
> +	int active_links = 0;
> +
> +	if (dig_port->dp.is_mst) {
> +		active_links = intel_dp_mst_encoder_active_links(dig_port);
> +	} else if (crtc && crtc->active) {

Uff. Can we get rid of this legacy encoder->crtc and crtc->active usage?

> +		active_links = 1;
> +	}
> +
> +	if (active_links && !icl_tc_phy_is_connected(dig_port))
> +		drm_err(&i915->drm,
> +			"Port %s: PHY disconnected with %d active link(s)\n",
> +			dig_port->tc_port_name, active_links);
> +
> +	return active_links;
> +}
> +
>  /**
>   * intel_tc_port_sanitize_mode: Sanitize the given port's TypeC mode
>   * @dig_port: digital port
> @@ -885,23 +906,11 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
>  void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct intel_encoder *encoder = &dig_port->base;
> -	int active_links = 0;
>  
>  	mutex_lock(&dig_port->tc_lock);
>  
> -	if (dig_port->dp.is_mst)
> -		active_links = intel_dp_mst_encoder_active_links(dig_port);
> -	else if (encoder->base.crtc)
> -		active_links = to_intel_crtc(encoder->base.crtc)->active;
> -
>  	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
> -	if (active_links) {
> -		if (!icl_tc_phy_is_connected(dig_port))
> -			drm_dbg_kms(&i915->drm,
> -				    "Port %s: PHY disconnected with %d active link(s)\n",
> -				    dig_port->tc_port_name, active_links);
> -	} else {
> +	if (!tc_port_has_active_links(dig_port)) {
>  		/*
>  		 * TBT-alt is the default mode in any case the PHY ownership is not
>  		 * held (regardless of the sink's connected live state), so
> -- 
> 2.37.1

-- 
Ville Syrjälä
Intel
