Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGKAE3QfvWnG6QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 11:20:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3A72D89F1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 11:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7D410EAD0;
	Fri, 20 Mar 2026 10:20:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PIYZ+zgw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A4710EAD0;
 Fri, 20 Mar 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774002033; x=1805538033;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=DKjRbzTvTQfEwFkAhATBVoudyTIxi0tbaXwC6s6J9V4=;
 b=PIYZ+zgw+NfZ8v292q7DlidmoenhCYF0VMm60sRBY7kfMrwGlUXpYgDB
 iHSAAHNZovvA8nJmTzQtFPvDN2dBUfODjJrymGtqoVsnhxqxR4gibW+xw
 oZeRGN7ygBHOx55M0htdcgQcHYfwf5O0Vamxrqxp3lavmU33ZJBkJTl+f
 HKd7ZF/PqurH2wAn3g5SKyaymme2Lzhok8TMLjL8AszT8MeXTAOlH+MTs
 CUtEOpgOT5W7QnKHHDAAFC4qAsXN77u93bJUXfBmGXfmWhEINqNIGyVQn
 puQnGg58e/7nrZHU3CeubrkxinCwWN2/0WjbAZY1fbluGK7OLKhvAFGDU Q==;
X-CSE-ConnectionGUID: MorJazhPRbOI1UnlE2oh9g==
X-CSE-MsgGUID: 79+iyQOzQyykLxkt1vWFEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="92658948"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="92658948"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 03:20:33 -0700
X-CSE-ConnectionGUID: 7/xScI95SwqrP1H7wK/1BQ==
X-CSE-MsgGUID: tFKrxceVTyy0WR1y0h/8Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="218616305"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 03:20:30 -0700
Date: Fri, 20 Mar 2026 11:20:28 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Uma Shankar <uma.shankar@intel.com>, 
 =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
In-Reply-To: <20260320092900.13210-1-imre.deak@intel.com>
Message-ID: <bbaf3e50-4660-877f-579d-82fa406e077e@intel.com>
References: <20260320092900.13210-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1895512094-1774002031=:3548790"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: AD3A72D89F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1895512094-1774002031=:3548790
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 20 Mar 2026, Imre Deak wrote:
> Clearing the DP tunnel stream BW in the atomic state involves getting
> the tunnel group state, which can fail. Handle the error accordingly.
>
> This fixes at least one issue where drm_dp_tunnel_atomic_set_stream_bw()
> failed to get the tunnel group state returning -EDEADLK, which wasn't
> handled. This lead to the ctx->contended warn later in modeset_lock()
> while taking a WW mutex for another object in the same atomic state, and
> thus within the same already contended WW context.
>
> Moving intel_crtc_state_alloc() later would avoid freeing saved_state on
> the error path; this stable patch leaves that simplification for a
> follow-up.
>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.9+
> Fixes: a4efae87ecb2 ("drm/i915/dp: Compute DP tunnel BW during encoder state computation")
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++-
> .../gpu/drm/i915/display/intel_dp_tunnel.c    | 20 +++++++++++++------
> .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++++++----
> 3 files changed, 28 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ee501009a251f..882db77c0bbcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4640,6 +4640,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> 	struct intel_crtc_state *crtc_state =
> 		intel_atomic_get_new_crtc_state(state, crtc);
> 	struct intel_crtc_state *saved_state;
> +	int err;
>
> 	saved_state = intel_crtc_state_alloc(crtc);
> 	if (!saved_state)
> @@ -4648,7 +4649,12 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> 	/* free the old crtc_state->hw members */
> 	intel_crtc_free_hw_state(crtc_state);
>
> -	intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> +	err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> +	if (err) {
> +		kfree(saved_state);
> +

I am unsure if the blank line above is neccessary, but I might be also
missing style guidelines. Otherwise looks good to me.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał

> +		return err;
> +	}
>
> 	/* FIXME: before the switch to atomic started, a new pipe_config was
> 	 * kzalloc'd. Code that depends on any field being zero should be
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 1fd1ac8d556d8..7363c98172971 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -659,19 +659,27 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
>  *
>  * Clear any DP tunnel stream BW requirement set by
>  * intel_dp_tunnel_atomic_compute_stream_bw().
> + *
> + * Returns 0 in case of success, a negative error code otherwise.
>  */
> -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> -					    struct intel_crtc_state *crtc_state)
> +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> +					   struct intel_crtc_state *crtc_state)
> {
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	int err;
>
> 	if (!crtc_state->dp_tunnel_ref.tunnel)
> -		return;
> +		return 0;
> +
> +	err = drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> +						 crtc_state->dp_tunnel_ref.tunnel,
> +						 crtc->pipe, 0);
> +	if (err)
> +		return err;
>
> -	drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> -					   crtc_state->dp_tunnel_ref.tunnel,
> -					   crtc->pipe, 0);
> 	drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
> +
> +	return 0;
> }
>
> /**
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> index 7f0f720e8dcad..10ab9eebcef69 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> @@ -40,8 +40,8 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
> 					     struct intel_dp *intel_dp,
> 					     const struct intel_connector *connector,
> 					     struct intel_crtc_state *crtc_state);
> -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> -					    struct intel_crtc_state *crtc_state);
> +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> +					   struct intel_crtc_state *crtc_state);
>
> int intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
> 					      struct intel_crtc *crtc);
> @@ -88,9 +88,12 @@ intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
> 	return 0;
> }
>
> -static inline void
> +static inline int
> intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> -				       struct intel_crtc_state *crtc_state) {}
> +				       struct intel_crtc_state *crtc_state)
> +{
> +	return 0;
> +}
>
> static inline int
> intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
> -- 
> 2.49.1
>
>
--8323329-1895512094-1774002031=:3548790--
