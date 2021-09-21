Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD328413209
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 12:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2F26E93B;
	Tue, 21 Sep 2021 10:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B234E6E93B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 10:58:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="202824300"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="202824300"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 03:58:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="584990190"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 03:58:54 -0700
Date: Tue, 21 Sep 2021 04:10:32 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210921111032.GA5281@labuser-Z97X-UD5H>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913144440.23008-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 03/16] drm/i915: Extract
 intel_dp_use_bigjoiner()
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

On Mon, Sep 13, 2021 at 05:44:27PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Suck the "do we need bigjoiner?" checks into a helper instead of
> duplicating them in two differentt places.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 161c33b2c869..e898834cc5f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -805,6 +805,17 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> +static bool intel_dp_use_bigjoiner(struct intel_dp *intel_dp,
> +				   int hdisplay, int clock)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
> +	if (!intel_dp_can_bigjoiner(intel_dp))
> +		return false;
> +
> +	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *connector,
>  		    struct drm_display_mode *mode)
> @@ -840,8 +851,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	if (mode->clock < 10000)
>  		return MODE_CLOCK_LOW;
>  
> -	if ((target_clock > max_dotclk || mode->hdisplay > 5120) &&
> -	    intel_dp_can_bigjoiner(intel_dp)) {
> +	if (intel_dp_use_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
>  		bigjoiner = true;
>  		max_dotclk *= 2;
>  	}
> @@ -1457,9 +1467,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  		    limits.max_lane_count, limits.max_rate,
>  		    limits.max_bpp, adjusted_mode->crtc_clock);
>  
> -	if ((adjusted_mode->crtc_clock > i915->max_dotclk_freq ||
> -	     adjusted_mode->crtc_hdisplay > 5120) &&
> -	    intel_dp_can_bigjoiner(intel_dp))
> +	if (intel_dp_use_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> +				   adjusted_mode->crtc_clock))
>  		pipe_config->bigjoiner = true;
>  
>  	/*
> -- 
> 2.32.0
> 
