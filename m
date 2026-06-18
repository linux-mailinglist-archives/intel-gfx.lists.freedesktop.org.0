Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rNBsLJtCNGrUTAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 21:10:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AB56A24D8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 21:10:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OokbEsKQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8D010E2D1;
	Thu, 18 Jun 2026 19:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A37510E2D1;
 Thu, 18 Jun 2026 19:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781809816; x=1813345816;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ql37xc05J34nHzwTmEu7jraTRuC3HNu4LQC1IIXTDn0=;
 b=OokbEsKQUISgvkHqPno0zsnT8jA6L0kPRV9hs1JT8b9VORuzHkQ0Zbnm
 ovpYscoIfsuaKP/HYeFgE6aAnN6+PmnsrN5AJ3cAtBkYEGjcXK7HE0KI/
 K8k6iXEBLi1dBV3OiBHBbGh91FpHZCcrPYZ9nHDuiGvtmUqfk0R4AXYFc
 bZ9AAbzi587PskZDUhMbJW7q016pn2mMzT0KDLPcFYHVm7BFnSWMMdoBB
 Wl1VcY/xejh9YgKlUZLDG8q2sZHcaQJIZebTaSAbpBNJCQTcea816GiDX
 KDpGNStIIYMAJhgMWhFfSuhMCk4/wJIVhbwp2oM6LF5GDjWgkkowdRw4g g==;
X-CSE-ConnectionGUID: HpT8+/NSS9Cykad63eU4CA==
X-CSE-MsgGUID: x/4Oci3TSKqQbwhHFKlMPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="93307189"
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="93307189"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 12:10:16 -0700
X-CSE-ConnectionGUID: POlMpuU/SH+sXaLjwPn1XQ==
X-CSE-MsgGUID: y0au7U3JQPWOnoCGT3xZfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="272142009"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.79])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 12:10:14 -0700
Date: Thu, 18 Jun 2026 22:10:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/panel: Attempt VRR based refresh rate
 change for !allow_modeset
Message-ID: <ajRCkjh-kHwg56V4@intel.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <20260612144203.31715-5-ville.syrjala@linux.intel.com>
 <e7414943-3902-4209-b372-3cddce601d78@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e7414943-3902-4209-b372-3cddce601d78@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5AB56A24D8

On Mon, Jun 15, 2026 at 10:47:10AM +0530, Nautiyal, Ankit K wrote:
> 
> On 6/12/2026 8:12 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Adjust the panel fixed mode selection algorithm to only consider
> > fixed modes that are "VRR compatible" with the old fixed mode
> > when userspace doesn't want to allow full modesets. This will
> > allow a VRR based refresh rate changes (ie. just a change in
> > the vblank length) via the fastset path.
> >
> > When full modesets are allowed, we still use the original algorithm
> > as that may pick a fixed mode with a more optimal dotclock, potentially
> > leading to reduced power consumption.
> >
> > This approach works as long as userspace does the initial
> > allow_modeset=true commit using the highest refresh rate it will
> > want to use. Subsequent commits with allow_modeset=false can then
> > switch between lower refresh rates without blinks.
> >
> > One remaining hurdle we may need to solve is the guardband length.
> > Assuming the highest refresh rate vblank is too short for
> > intel_vrr_compute_optimized_guardband() the intitial guardband will
> > match the highest refresh rate vblank. A subsequent switch to a lower
> > refresh rate will then recompute the guardband and select a value
> > that is higher (since the vblank will be longer). The mismatch in
> > guardband lengths will prevent the fastset. We may either have to
> > preserve the original (sub-optimal) guardband,
> 
> I think preserving the original (sub-optimal) guardband makes sense for 
> the seamless case, but we will lose out on enabling some power saving 
> features like PSR/LOBF for which the sub-otimal guardband would not be 
> sufficient.
> So this really comes down to how we want to interpret the 
> DRM_MODE_ALLOW_MODESET(state->allow_modeset).
> 
> If a lower RR mode is set with allow_modeset = true, then doing a full 
> modeset sounds fine.
> In that case we can recompute the guardband and enable the additional 
> power saving features (PSR/LOBF) if they are supported.
> 
> If the same transition is done without allow_modeset, then we should try 
> to keep it seamless.
> In that case using the sub-optimal guardband to avoid a full modeset 
> seems like the better choice, even if that means power saving features 
> may or may not be enabled, despite being supported at the new RR.
> 
> So effectively:
> with allow_modeset -> recompute and get optimal behavior
> without it -> keep things stable, even if sub-optimal
> 
> IMO this will make the behavior predictable and lets userspace decide 
> when it wants to pay the cost to get those benefits.
> 
> 
> >   or we'll have to
> > revisit the idea of changing the guardband without a full modeset.
> >
> > Note that I'm not 100% happy with this solution because
> > intel_panel_fixed_mode() is no longer fully idempotent, but I wasn't
> > able to come up with anything truly better either :/ The simple
> > solution would be just to always pick the fixed mode with the highest
> > dotclock, but that could lead to increased power consumption even
> > when high refresh rates are never used.
> >
> > Perhaps the proper solution would be to just deprecate this
> > idea of taking in random modes for internal panels and then
> > cooking up a compatible fixed modes. Life would be easier if
> > userspace was required to provide the desired fixed mode directly.
> > But in order to do that we'd need to introduce new uapi properties
> > to control the pfit aspect of this, and we'd probably need a new
> > client cap to select between the old and new userspace behaviour.
> > Something to consider in the future...
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_panel.c | 55 ++++++++++++++++++++--
> >   1 file changed, 50 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> > index af59fc946fcb..a5fcac1318da 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -82,16 +82,37 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
> >   		abs(drm_mode_vrefresh(best_mode) - vrefresh);
> >   }
> >   
> > -const struct drm_display_mode *
> > -intel_panel_fixed_mode(struct intel_connector *connector,
> > -		       const struct drm_display_mode *mode)
> > +static bool is_vrr_compatible(const struct drm_display_mode *mode1,
> > +			      const struct drm_display_mode *mode2)
> > +{
> > +	return drm_mode_match(mode1, mode2,
> > +			      DRM_MODE_MATCH_CLOCK |
> > +			      DRM_MODE_MATCH_TIMINGS_VRR |
> > +			      DRM_MODE_MATCH_FLAGS |
> > +			      DRM_MODE_MATCH_3D_FLAGS);
> > +}
> > +
> > +static const struct drm_display_mode *
> > +_intel_panel_fixed_mode(struct intel_connector *connector,
> > +			const struct drm_display_mode *mode,
> > +			const struct drm_display_mode *vrr_ref_mode)
> >   {
> >   	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
> >   	int vrefresh = drm_mode_vrefresh(mode);
> >   
> > +	if (vrr_ref_mode &&
> > +	    (!intel_vrr_is_in_range(connector, vrefresh) ||
> > +	     !intel_vrr_is_in_range(connector, drm_mode_vrefresh(vrr_ref_mode))))
> > +		return NULL;
> > +
> >   	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> >   		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
> >   
> > +		if (vrr_ref_mode &&
> > +		    (!intel_vrr_is_in_range(connector, fixed_mode_vrefresh) ||
> > +		     !is_vrr_compatible(fixed_mode, vrr_ref_mode)))
> > +			continue;
> > +
> >   		if (is_best_fixed_mode(connector, vrefresh,
> >   				       fixed_mode_vrefresh, best_mode))
> 
> This works for all practical purposes, but if we take a hypothetical 
> case below, it would not work as expected.
> 
> 2 fixed modes:
> with lower RR rate with same clock being first in the modelist:
> 
> "3840x2400": 60 1199280 3840 3848 3880 4004 2400 4968 4976 4992
> "3840x2400": 120 1199280 3840 3848 3880 4004 2400 2472 2480 2496
> 
> vrr range : 120-40Hz
> 
> Scenario: 120Hz is set we want to switch to 80 Hz.
> 
> iteration 1
>      fixed mode = 60Hz
>      best mode = 60 Hz
> 
> iteration 2
>      fixed mode = 120Hz -> 80 is nearer to 60 than to 120 so best mode 
> remains 60
>      best mode = 60Hz
> 
> We will end up selecting 60Hz mode and try to stretch vtotal based on 
> this mode.

I'm thinking that should actually work since it shouldn't really matter
if we end up stretching or shrinking the vblank. But it would feel saner
if we make sure the selected fixed mode does have a higher refresh rate
than the target (ie. final vblank should always end up being >= the
original vblank).

is_best_fixed_mode() does kinda attempt to do that, but badly. I suppose
the correct answer here might be to split the current fixed mode search
to a VRR vs. non-VRR variants, and try the VRR one first. But I think
I'll have to give this one a bit more thought before I can decide if
that approach has any downsides...

> 
> So perhaps we should make is_best_fixed_mode() such that the order of 
> modes should not affect our fixed mode selection algorithm.

Yeah, I suppose that would be nice. Hmm, perhaps we could just sort the
fixed mode list based on the vrefresh. The actual userspace visible
mode list will anyway be sorted by drm_mode_sort() so it shouldn't
matter for anyone else which order we keep on the fixed modes list.

> 
> Note:
> 
> 1) As I have mentioned, this is hypothetical case which I have cooked up 
> by changing the modes from a real panel, which has highest mode as 
> preferred mode and 120 Hz mode being preferred mode.
> 
> fixed modes:
> 
>                  "3840x2400": 120 1199280 3840 3848 3880 4004 2400 2472 
> 2480 2496 0x48 0xa
> 
>                  "3840x2400": 60 1199280 3840 3848 3880 4004 2400 4968 
> 4976 4992 0x40 0xa
> 
> 2) This issue will also not be seen with VRR panels when the clocks are 
> different but Vtotals are same, the patch should work perfectly in that 
> case too.
> 
> 
> Regards,
> 
> Ankit
> 
> 
> >   			best_mode = fixed_mode;
> > @@ -100,6 +121,13 @@ intel_panel_fixed_mode(struct intel_connector *connector,
> >   	return best_mode;
> >   }
> >   
> > +const struct drm_display_mode *
> > +intel_panel_fixed_mode(struct intel_connector *connector,
> > +		       const struct drm_display_mode *mode)
> > +{
> > +	return _intel_panel_fixed_mode(connector, mode, NULL);
> > +}
> > +
> >   static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
> >   			     const struct drm_display_mode *preferred_mode)
> >   {
> > @@ -202,11 +230,28 @@ int intel_panel_compute_config(struct intel_atomic_state *state,
> >   			       struct intel_connector *connector)
> >   {
> >   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > -	const struct drm_display_mode *fixed_mode =
> > -		intel_panel_fixed_mode(connector, adjusted_mode);
> > +	const struct drm_display_mode *fixed_mode = NULL;
> >   	int vrefresh, fixed_mode_vrefresh;
> >   	bool is_vrr;
> >   
> > +	/*
> > +	 * Attempt a VRR based refresh rate change if possible
> > +	 * when userspace has forbidden a full modeset.
> > +	 */
> > +	if (!state->base.allow_modeset) {
> > +		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +		const struct intel_crtc_state *old_crtc_state =
> > +			intel_atomic_get_old_crtc_state(state, crtc);
> > +
> > +		if (old_crtc_state->hw.enable &&
> > +		    old_crtc_state->uapi.encoder_mask == crtc_state->uapi.encoder_mask)
> > +			fixed_mode = _intel_panel_fixed_mode(connector, adjusted_mode,
> > +							     &old_crtc_state->hw.adjusted_mode);
> > +	}
> > +
> > +	if (!fixed_mode)
> > +		fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> > +
> >   	if (!fixed_mode)
> >   		return 0;
> >   

-- 
Ville Syrjälä
Intel
