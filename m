Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOrEN+Z6D2rLMgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 23:36:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1E5AC229
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 23:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F7310E649;
	Thu, 21 May 2026 21:36:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMo5beud";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1E510E25E;
 Thu, 21 May 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779399393; x=1810935393;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1kBLjB/oQZ5BM210VtbU92jo2CjotHlpg+PzC35zi64=;
 b=BMo5beudQuVgYSVIMXqNdZMhKlTOplH4EgU25XiqNoFsDGiM4yBP3m/l
 yFAx+ae/Bq77vCCfTgUacKvUXoHFG/ZY3lnsdr7MhZAqPsibiprJmAQWp
 1P6qNsFrsaBAupTrNV5FmkcPzDWE6UpMhQZ2uXL56x6LYsoa8ivOqAQcW
 tOQ4V8EmcxxVfAF+r7UTAbITNJqjm5qAq+pJZDeVA+Q2i7oDFq0JqwmDZ
 v9PqYkTpHAH3rTRtd/HNgmwZabPGQB4/Afr2BO2BMQHBro+ALFqcDDvQf
 gr6hYvApEAa++JlXXXZaYEQyo0iKvMHalk7K511tLT71EivdderZfzhmY A==;
X-CSE-ConnectionGUID: AGkgAnClRrivpnTZPK1sOg==
X-CSE-MsgGUID: gzpGPohRQQ+9K1RNPXZF/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80182558"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80182558"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 14:36:32 -0700
X-CSE-ConnectionGUID: jd5uSWtuSDqU303mOd8BvQ==
X-CSE-MsgGUID: 7OlT/jrlSLGkfvICDPNHkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="242481655"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.86])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 14:36:31 -0700
Date: Fri, 22 May 2026 00:36:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
Message-ID: <ag962-z5WD8SVS9I@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260518112427.2460725-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: BDA1E5AC229
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 02:24:22PM +0300, Imre Deak wrote:
> Add helpers to defer and handle link params resets instead of
> open-coding the same. Rename intel_dp_reset_link_params() to
> intel_dp_reset_link_params_force() to align its name with the new
> deferred reset helpers.
> 
> When deferring a reset, return whether a new reset was queued, used by a
> follow-up change.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
>  .../drm/i915/display/intel_dp_link_training.c |  4 +-
>  5 files changed, 38 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 5ff1cdf4581a5..c20a97e21419b 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
>  
>  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
>  
> -	intel_dp->reset_link_params = true;
> +	intel_dp_reset_link_params_defer(intel_dp);
>  	intel_dp_invalidate_source_oui(intel_dp);
>  
>  	if (display->platform.valleyview || display->platform.cherryview)
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 86520848892e0..77819aaeccb76 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4664,7 +4664,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
>  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
>  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
>  
> -	intel_dp->reset_link_params = true;
> +	intel_dp_reset_link_params_defer(intel_dp);
>  	intel_dp_invalidate_source_oui(intel_dp);
>  
>  	intel_pps_encoder_reset(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1920d2f026665..13163dd085e91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3710,7 +3710,11 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  	intel_dp->lane_count = lane_count;
>  }
>  
> -void intel_dp_reset_link_params(struct intel_dp *intel_dp)
> +/*
> + * Reset link params now, preserving any deferred connector
> + * detect-time reset request.
> + */
> +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp)
>  {
>  	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
>  	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
> @@ -3720,6 +3724,28 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
>  	intel_dp->link.seq_train_failures = 0;
>  }
>  
> +/*
> + * Reset link params during the next connector detect.
> + * Return %true if a new reset was queued.
> + */
> +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp)

I find the intel_dp_reset_link_params_defer() vs.
intel_dp_reset_link_params_force() naming rather confusing.

Can't immediately think of a really good name for
intel_dp_reset_link_params_defer() so maybe it's better to not
have a function for it at all (ie. just drop this patch)? Then
you at least see that it's just setting the flag. AFAICS you
only have a single place (in the last patch) that uses this
return value for anything, so could just do the check+set
dance there on the spot.

> +{
> +	bool reset_was_pending = intel_dp->reset_link_params;
> +
> +	intel_dp->reset_link_params = true;
> +
> +	return !reset_was_pending;
> +}
> +
> +static void intel_dp_handle_deferred_link_params_reset(struct intel_dp *intel_dp)
> +{
> +	if (!intel_dp->reset_link_params)
> +		return;
> +
> +	intel_dp->reset_link_params = false;
> +	intel_dp_reset_link_params_force(intel_dp);
> +}
> +
>  /* Enable backlight PWM and backlight PP control. */
>  void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state)
> @@ -4066,7 +4092,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
>  	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
>  
>  	if (crtc_state) {
> -		intel_dp_reset_link_params(intel_dp);
> +		intel_dp_reset_link_params_force(intel_dp);
>  		intel_dp_set_link_params(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
>  		intel_dp->link.active = true;
>  	}
> @@ -6487,10 +6513,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  
>  	intel_dp_detect_sdp_caps(intel_dp);
>  
> -	if (intel_dp->reset_link_params) {
> -		intel_dp_reset_link_params(intel_dp);
> -		intel_dp->reset_link_params = false;
> -	}
> +	intel_dp_handle_deferred_link_params_reset(intel_dp);
>  
>  	intel_dp_mst_configure(intel_dp);
>  
> @@ -6944,7 +6967,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
>  
>  		intel_dp_read_dprx_caps(intel_dp, dpcd);
>  
> -		intel_dp->reset_link_params = true;
> +		intel_dp_reset_link_params_defer(intel_dp);
>  		intel_dp_invalidate_source_oui(intel_dp);
>  
>  		return IRQ_NONE;
> @@ -7252,7 +7275,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		     encoder->base.name))
>  		return false;
>  
> -	intel_dp->reset_link_params = true;
> +	intel_dp_reset_link_params_defer(intel_dp);
>  
>  	/* Preserve the current hw state. */
>  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
> @@ -7317,7 +7340,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  
>  	intel_dp_set_source_rates(intel_dp);
>  	intel_dp_set_common_rates(intel_dp);
> -	intel_dp_reset_link_params(intel_dp);
> +	intel_dp_reset_link_params_force(intel_dp);
>  
>  	/* init MST on ports that can support it */
>  	intel_dp_mst_encoder_init(dig_port, connector->base.base.id);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index f41480d247142..7c24d3dbb6983 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -114,7 +114,8 @@ int intel_dp_rate_index(const int *rates, int len, int rate);
>  int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
>  void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
>  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
> -void intel_dp_reset_link_params(struct intel_dp *intel_dp);
> +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp);
> +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp);
>  
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index a26094223f780..b7075060e7bd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1935,7 +1935,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
>  	if (err)
>  		return err;
>  
> -	intel_dp_reset_link_params(intel_dp);
> +	intel_dp_reset_link_params_force(intel_dp);
>  	intel_dp->link.force_rate = rate;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> @@ -2037,7 +2037,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
>  	if (err)
>  		return err;
>  
> -	intel_dp_reset_link_params(intel_dp);
> +	intel_dp_reset_link_params_force(intel_dp);
>  	intel_dp->link.force_lane_count = lane_count;
>  
>  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
