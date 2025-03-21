Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B537CA6C1F5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 19:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5F910E805;
	Fri, 21 Mar 2025 18:00:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ikxzVaVX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2628610E805;
 Fri, 21 Mar 2025 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742580033; x=1774116033;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=itiWddLL8sQhM0XEDUMsVj43Bi7N5zoHdwy6NqFzsgk=;
 b=ikxzVaVXcZuTR/BeoChX6rlcItHdPvVU7YhTqPqG4RJRRX3Fqks3IjWO
 LuWcSzjFYJ/9+wmhSOqRRnInW1TKz87T6p/LOjV8EbEIaXycIYKbA40X8
 hgoX1wGBD20wvWvLQiZM8vxtYHED0vFjLye1xWSCXBMKUVLpoULEIjL2P
 1WK99kKh0VTR3VUmEqn2pw6F6xe96sgzLTAehWYwO00ltdLCMgDJoblIR
 a273t+kKnpZ/G6cOtV23BGAwDmhq3Ve/cr5Ad2leQOy90zoGLLcWv0/Ja
 YRLrQQPzqk4zhIfwbfHkkGucTR60MuaJ6y7kmbJenH1uEnJ5zWhPNn/fD w==;
X-CSE-ConnectionGUID: Ou5jE9gRRym2GJzd7YLYfw==
X-CSE-MsgGUID: 9B8tUGHKTpSK+6xmI8K/Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="44016356"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="44016356"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 11:00:33 -0700
X-CSE-ConnectionGUID: ct47r/8cSOeK4ORuucNKow==
X-CSE-MsgGUID: PuMfdrGkSba+n+kB8LHzNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128687391"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 11:00:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 20:00:29 +0200
Date: Fri, 21 Mar 2025 20:00:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/dp_mst: Fix side-band message timeouts due
 to long PPS delays
Message-ID: <Z92pPajId5OECQR7@intel.com>
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250321145626.94101-3-imre.deak@intel.com>
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

On Fri, Mar 21, 2025 at 04:56:25PM +0200, Imre Deak wrote:
> The Panel Power Sequencer lock held on an eDP port (a) blocks a DP AUX
> transfer on another port (b), since the PPS lock is device global, thus
> shared by all ports. The PPS lock can be held on port (a) for a longer
> period due to the various PPS delays (panel/backlight on/off,
> power-cycle delays). This in turn can cause an MST down-message request
> on port (b) time out, if the above PPS delay defers the handling of the
> reply to the request by more than 100ms: the MST branch device sending
> the reply (signaling this via the DP_DOWN_REP_MSG_RDY flag in the
> DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register) may cancel the reply
> (clearing DP_DOWN_REP_MSG_RDY and the reply message buffer) after 110
> ms, if the reply is not processed by that time.
> 
> Avoid MST down-message timeouts described above, by locking the PPS
> state for AUX transfers only if this is actually required: on eDP ports,
> where the VDD power depends on the PPS state and on all DP and eDP ports
> on VLV/CHV, where the PPS is a pipe instance and hence a modeset on any
> port possibly affecting the PPS state.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 3c078fd53fbfa..7d7157983f25e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -26,6 +26,11 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
>  static void pps_init_delays(struct intel_dp *intel_dp);
>  static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
>  
> +static bool intel_pps_is_pipe_instance(struct intel_display *display)
> +{
> +	return display->platform.valleyview || display->platform.cherryview;
> +}
> +
>  static const char *pps_name(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> @@ -955,10 +960,32 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
>  		intel_pps_vdd_off_unlocked(intel_dp, false);
>  }
>  
> +static bool aux_needs_pps_lock(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	/*
> +	 * The PPS state needs to be locked for:
> +	 * - eDP on all platforms, since AUX transfers on eDP need VDD power
> +	 *   (either forced or via panel power) which depends on the PPS
> +	 *   state.
> +	 * - non-eDP on platforms where the PPS is a pipe instance (VLV/CHV),
> +	 *   since changing the PPS state (via a parallel modeset for
> +	 *   instance) may interfere with the AUX transfers on a non-eDP
> +	 *   output as well.
> +	 */
> +	return intel_dp_is_edp(intel_dp) || intel_pps_is_pipe_instance(display);
> +}
> +
>  intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
>  {
>  	intel_wakeref_t wakeref;
>  
> +	if (!aux_needs_pps_lock(intel_dp)) {
> +		*vdd_ref = false;
> +		return NULL;

I was pondering if we need a define for this since intel_wakeref_t
doesn't look like a pointer, but apparently we use NULLs elsewhere
as well for this stuff.

> +	}
> +
>  	wakeref = intel_pps_lock(intel_dp);
>  
>  	/*
> @@ -976,6 +1003,13 @@ intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
>  
>  void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	if (!wakeref) {
> +		drm_WARN_ON(display->drm, vdd_ref || aux_needs_pps_lock(intel_dp));
> +		return;
> +	}
> +
>  	if (vdd_ref)
>  		intel_pps_vdd_off_unlocked(intel_dp, false);
>  
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
