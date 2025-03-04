Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E613A4ECCE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 20:08:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CB210E689;
	Tue,  4 Mar 2025 19:08:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iL4qJX73";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187AB10E693;
 Tue,  4 Mar 2025 19:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741115286; x=1772651286;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j9EemYefkowE3/WuIkX8KrraC18j2XrCrHRlxZ4iZxs=;
 b=iL4qJX73Q9dj4GK01GA+VJyZ1Imk+HyWZSWBSOvzTTQsfqxfgL+S0d9O
 Si0FfTxzNoqMur3kTqVzaXIwe3fQ9n72bG20I0baqoaH33qx8vcJj5nDf
 KX8McpnH9FqJaqVqoI5Mo+POb6jq1prfJPB1XcY78yjHKHcV0+pnC3S4a
 mzDNdSRbJZ9qSYvizzE095wMdfio6qPqXsFkwBTwCm3/e5whG47W0ltQf
 ts9ufn7Oi3g+CIljDFN06dKVanKbDA+mSIRgS3z3UqJDzgmmwFfjfbTyP
 KQaHUntdpYRePOIFkEz244y22zl5VGT7ZWjxMxU2uPOiiOd1ptAm0N0H0 Q==;
X-CSE-ConnectionGUID: t/veyMbZSAC84UI5Yiq5yQ==
X-CSE-MsgGUID: OYPZTWOKR3ON/VoAQU+k/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42182991"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42182991"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 11:08:02 -0800
X-CSE-ConnectionGUID: ILalWOHbRUyVdNoZ0Af7pg==
X-CSE-MsgGUID: YuET3DBHRYSf+By4UG4t5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123662527"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 04 Mar 2025 11:07:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Mar 2025 21:07:58 +0200
Date: Tue, 4 Mar 2025 21:07:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 19/22] drm/i915/vrr: Allow fixed_rr with pipe joiner
Message-ID: <Z8dPjugyQ1dPoNdX@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-20-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304081948.3177034-20-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 04, 2025 at 01:49:45PM +0530, Ankit Nautiyal wrote:
> VRR with joiner is currently disabled as it still needs some work to
> correctly sequence the primary and secondary transcoders. However, we can
> still use VRR Timing generator in fixed refresh rate for joiner and since
> it just need to program vrr timings once and does not involve changing
> timings on the fly. We still need to skip the VRR and LRR for joiner.
> 
> To achieve this set vrr.in_range to 0 for joiner case, so that we do not
> try VRR and LRR for the joiner case.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 38 +++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 0dfe6220ff4a..2b6d022434d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -292,6 +292,9 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;

I don't think this gets called on the secondary crtc anyway.

> +
>  	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>  		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> @@ -349,19 +352,23 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (!HAS_VRR(display))
>  		return;
>  
> -	/*
> -	 * FIXME all joined pipes share the same transcoder.
> -	 * Need to account for that during VRR toggle/push/etc.
> -	 */
> -	if (crtc_state->joiner_pipes)
> -		return;
> -
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
>  	crtc_state->vrr.in_range =
>  		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>  
> +	/*
> +	 * Allow fixed refresh rate with VRR Timing Generator.
> +	 * For now set the vrr.in_range to 0, to allow fixed_rr but skip actual
> +	 * VRR and LRR.
> +	 * #TODO For actual VRR with joiner, we need to figure out how to
> +	 * correctly sequence transcoder level stuff vs. pipe level stuff
> +	 * in the commit.
> +	 */
> +	if (crtc_state->joiner_pipes)
> +		crtc_state->vrr.in_range = 0;
> +
>  	vmin = intel_vrr_compute_vmin(crtc_state);
>  
>  	if (crtc_state->vrr.in_range) {
> @@ -448,6 +455,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;

Also shouldn't get called on the secondary.

>  	/*
>  	 * This bit seems to have two meanings depending on the platform:
>  	 * TGL: generate VRR "safe window" for DSB vblank waits
> @@ -486,6 +495,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	if (dsb)
>  		intel_dsb_nonpost_start(dsb);
>  
> @@ -560,6 +572,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>  		       crtc_state->vrr.vmin - 1);
>  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> @@ -590,6 +605,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
> +		return;

All thosea three cases should be impossible on account of
vrr.enable==false.

> +
>  	if (!intel_vrr_always_use_vrr_tg(display)) {
>  		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  			       trans_vrr_ctl(old_crtc_state));
> @@ -613,6 +631,9 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	if (!intel_vrr_always_use_vrr_tg(display)) {
>  		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  			       trans_vrr_ctl(crtc_state));
> @@ -637,6 +658,9 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;

And these two again shouldn't be called on the secondary crtc.

So I think you should be able to drop all the
intel_crtc_is_joiner_secondary() checks from this patch.

> +
>  	if (!intel_vrr_always_use_vrr_tg(display)) {
>  		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  			       trans_vrr_ctl(crtc_state));
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
