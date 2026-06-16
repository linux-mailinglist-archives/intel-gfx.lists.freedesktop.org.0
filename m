Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N/uuJgFHMWrOfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:52:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C627D68F9E8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:52:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OEjXwjxH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A8410EB91;
	Tue, 16 Jun 2026 12:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CC310EB8A;
 Tue, 16 Jun 2026 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781614334; x=1813150334;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=O+sK6QJSdzS4LnOqsXX4SBihtkcvTDDYhrpfSMfICkY=;
 b=OEjXwjxHfs+ZFVgO/0ATg5HRH3QbH6V/T2RMUdnuaq78brgNaQGLM81D
 xnoyQPbuofjOTcRExA9t60nOAiGR4Lr42z2tAdTsdjFLUmJIK5+GYi3OM
 gccr4BqUpsW3JSX0Gf4pxkOuowfOAQbCCzkYBYyZ2cLWmAw6DBEYmen9d
 tiBA/ZvO6oqt93++xk58LZYjf4ZO8m9R/5NZeuq3HYZRZSDdmkADUa5Ay
 vJHHzJIWPgZOSfoSOqi36mLownmykn3wvtf6gWnlsPOgHNJyW4A4plxyK
 hSWfznegxIXv9HDNkvszBtBD4mg/tmHO9OoGd7ze8pgvzEmt5r7WDISfq w==;
X-CSE-ConnectionGUID: E6fEHHT0R36OaBUam3/o1w==
X-CSE-MsgGUID: xrsmd4FdQe+oOdYYby1bBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93759145"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93759145"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:52:13 -0700
X-CSE-ConnectionGUID: WRTV+nmPSAeU5dPq+hgmoA==
X-CSE-MsgGUID: /MPl3PIKSWid9Dm8sCjDig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271482331"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.167])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:52:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Stephen Fuhry
 <fuhrysteve@gmail.com>
Subject: Re: [PATCH v2 2/2] drm/i915/display: Refcount for fec enable/disable
In-Reply-To: <20260616-fec-v2-2-49a22680138c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616-fec-v2-0-49a22680138c@intel.com>
 <20260616-fec-v2-2-49a22680138c@intel.com>
Date: Tue, 16 Jun 2026 15:52:08 +0300
Message-ID: <9b00c1b2493c371b1bdea8dbb6d981cd6e393bab@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C627D68F9E8

On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
> pre_enable and post_disable. This fec is shared across the mst streams
> and can be enabled per stream basis as well.
> So have a refcount to track the usage of FEC and then enable/disable
> accordingly.

The FEC enable/disable should only happen on the first/last DP MST
stream through the primary_encoder pre_enable()/post_disable() hooks.

There's a lot of stuff that's only relevant for the primary_encoder, and
we don't have to jump through hoops for them. We have the active stream
counting already in place. We shouldn't need separate tracking for FEC.

BR,
Jani.

>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c           | 58 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.h           |  1 +
>  drivers/gpu/drm/i915/display/intel_display_types.h |  3 ++
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +++
>  4 files changed, 68 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 25314ec65ae77b91bf4d732c229f236d070e18cc..477a11a63fe8f8d6731905be21de34dcbaa895b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct intel_encoder *encoder)
>  		encoder->disable_clock(encoder);
>  }
>  
> +/**
> + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from active CRTCs
> + * @display: display device
> + *
> + * intel_digital_port::fec_active_streams is the per-port refcount that gates
> + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initial HW state
> + * readout (driver load, resume, GPU reset takeover), the persistent
> + * crtc_state->fec_enable values reflect what HW currently has; we need to
> + * align the refcount with that so the first paired disable doesn't underflow
> + * and the next enable doesn't incorrectly skip programming the HW bit.
> + *
> + * Must be called once after intel_modeset_readout_hw_state(), before any new
> + * modeset commit can run.
> + */
> +void intel_ddi_seed_fec_refcounts(struct intel_display *display)
> +{
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(display, crtc) {
> +		const struct intel_crtc_state *crtc_state =
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_encoder *encoder;
> +
> +		if (!crtc_state->hw.active || !crtc_state->fec_enable)
> +			continue;
> +
> +		for_each_intel_encoder(display->drm, encoder) {
> +			struct intel_digital_port *dig_port;
> +
> +			if (encoder->base.crtc != &crtc->base)
> +				continue;
> +			if (!intel_encoder_is_dig_port(encoder))
> +				continue;
> +
> +			dig_port = enc_to_dig_port(encoder);
> +			dig_port->fec_active_streams++;
> +			break;
> +		}
> +	}
> +}
> +
>  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	int i;
>  	int ret;
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
> +	/*
> +	 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> +	 * crtc_state->fec_enable is per-stream. For DP MST, several streams
> +	 * on this port share the bit. Only program HW on the first stream
> +	 * needing FEC; subsequent streams just bump the refcount.
> +	 */
> +	if (dig_port->fec_active_streams++ > 0)
> +		return;
> +
>  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
>  		     0, DP_TP_CTL_FEC_ENABLE);
>  
> @@ -2454,10 +2505,17 @@ static void intel_ddi_disable_fec(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
> +	if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <= 0))
> +		return;
> +
> +	if (--dig_port->fec_active_streams > 0)
> +		return;
> +
>  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
>  		     DP_TP_CTL_FEC_ENABLE, 0);
>  	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 580ecb09b8b606e07445c7e26142a2fcfa69a2d2..3678c28a0dc952d4962428893c519fb7d41e4422 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
>  			       enum transcoder cpu_transcoder,
>  			       bool enable, u32 hdcp_mask);
>  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
> +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
>  int intel_ddi_level(struct intel_encoder *encoder,
>  		    const struct intel_crtc_state *crtc_state,
>  		    int lane);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index aa4772a1c208e4cb4bb6f51dc0dcc2349e422dd0..276d4cc21d6ecdd8c17777608e59223d9f49c554 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1989,6 +1989,9 @@ struct intel_digital_port {
>  	struct ref_tracker *ddi_io_wakeref;
>  	struct ref_tracker *aux_wakeref;
>  
> +	/* Number of active streams on this port currently using FEC */
> +	int fec_active_streams;
> +
>  	struct intel_tc_port *tc;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index e8730b5baf2a4bd2e5edfc5fc8fd2622a57d2a4e..4b6abcb1dd928ab2bc9b17f0521db78ebb6ef586 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -952,6 +952,12 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
>  
>  	intel_modeset_readout_hw_state(display);
>  
> +	/*
> +	 * Seed per-port FEC refcounts from the just-populated active
> +	 * crtc_states before anything can issue an enable/disable.
> +	 */
> +	intel_ddi_seed_fec_refcounts(display);
> +
>  	/* HW state is read out, now we need to sanitize this mess. */
>  	get_encoder_power_domains(display);

-- 
Jani Nikula, Intel
