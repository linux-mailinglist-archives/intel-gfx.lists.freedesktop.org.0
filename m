Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UA4HMSdezWkRcQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 20:04:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0394137EFF8
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 20:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9280110EE12;
	Wed,  1 Apr 2026 17:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HNbJXCmK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 945FD10EDBF;
 Wed,  1 Apr 2026 17:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775066222; x=1806602222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qaQToXnW0wdaLZDcsHVoGVNm1eVvphC2yqb5watvv20=;
 b=HNbJXCmKLfWuANdtysigqCvPTCfPhOBrgghVCoBMpbYTGfGylxRBbtYA
 Tqkse8K3KixguLf1pRShNw2ObkEwaaGVNyI8GxZmerMmqNhEsyhmwJ/iJ
 sZwIN8ClcMI7wRzX2tExdFXy7N08awKbM5ha53wD+1gMtbP34P1WNYs4Q
 BUnfnSI4Y+alt0oFb7I4UDgy4Rzmd0B5SdYNlKjAQEuOQCOVlEEFC86bn
 ryrD9XkeNJXtQNZy6ybjxWz2Z+gV71utkUueB3yTweTqAQS7pnUr7qmzx
 fTQ84SnC4po3xSXkIn0gXXILMq4Q+s57PR3kzTeBdw0ISTFBsLa6yBkDn g==;
X-CSE-ConnectionGUID: Pja5UFZGTyiOY8gaESjU0A==
X-CSE-MsgGUID: yrhVXKv4SfyEl5+c6B7ALw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86418639"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="86418639"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 10:57:02 -0700
X-CSE-ConnectionGUID: 0to90fPYSpmJPlHZzfbikg==
X-CSE-MsgGUID: yRWfZ6r7Ql+rZvs5iAhghg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="231150451"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 10:56:58 -0700
Date: Wed, 1 Apr 2026 20:56:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: Juasheem Sultan <jdsultan@google.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Manasi Navare <navaremanasi@google.com>,
 Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>,
 Rajat Jain <rajatja@google.com>
Subject: Re: [PATCH v4 2/2] drm/i915/display: Sync state to BIOS for seamless
 handoff
Message-ID: <ac1caHw-8IOZb3pD@intel.com>
References: <20260317220908.130968-1-jdsultan@google.com>
 <20260317220908.130968-3-jdsultan@google.com>
 <08c99b0d-6adb-423b-9c4b-2e8add00f5d3@lankhorst.se>
 <CAH6Pru5Me2pY31JF2GP61k3gy8XDaLfmH7U6jpAwXoYvGEZBwA@mail.gmail.com>
 <acZX6htfhw4v0G8c@intel.com>
 <6f14905d-74bd-4722-ba67-08361e779c17@lankhorst.se>
 <ac1ZgLOwVm6YrDsd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ac1ZgLOwVm6YrDsd@intel.com>
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
X-Spamd-Result: default: False [7.75 / 15.00];
	URIBL_BLACK(7.50)[lankhorst.se:email];
	R_MIXED_CHARSET(0.56)[subject];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	R_DKIM_ALLOW(0.00)[intel.com:s=Intel];
	GREYLIST(0.00)[pass,body];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DMARC_POLICY_ALLOW(0.00)[intel.com,none];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.652];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email]
X-Rspamd-Queue-Id: 0394137EFF8
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Wed, Apr 01, 2026 at 08:44:32PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 01, 2026 at 06:19:00PM +0200, Maarten Lankhorst wrote:
> > Hey,
> > 
> > Den 2026-03-27 kl. 11:11, skrev Ville Syrjälä:
> > > On Thu, Mar 26, 2026 at 04:10:13PM -0700, Juasheem Sultan wrote:
> > >> Hi,
> > >>
> > >> Thanks for looking at this.
> > >>
> > >> You're saying instead of manually adopting the state that I should focus on
> > >> modifying the comparisons that we do to determine if we can perform a
> > >> fastset?
> > > 
> > > We don't want any fuzzy fastset hacks anywhere. I intentionally killed
> > > all that stuff because it was making it impossible to trust that the
> > > software state actually represents what the hardware is doing.
> > > 
> > > Someone needs to figure out what exactly is the difference between
> > > the states between the GOP and the driver, and then figure out where
> > > that difference is coming from.
> > 
> > In some cases the firmware may have different considerations for setting a mode,
> > not necesssarily worse than what the display driver is using, just different.
> > 
> > In this case userspace requests a mode for example 1920x1080, but it doesn't
> > particularly care what pll's are used or anything nor has it a way to specify
> > it at all.
> > 
> > Until there is a major change like disabling the screen, what are the downsides
> > taking over the inherited mode from the firmware, and postponing changing the
> > display mode?
> 
> Because all the hacks we had for this of the form:
> 1. fully compute a new state
> 2. randomly overwrite bits and pieces of that with the 
>    old state
> 3. somehow hope that whatever got overwritten isn't incompatible
>    with all the stuff that wasn't overwritten
> 
> It was a completely unmaintainable mess that could result in all
> kinds of weird bugs.
> 
> And to be clear, we *do* take the state the firmware was using, and
> ideally we don't recompute it at all. It's only because we lack certain
> readout support/etc that we sometimes punt to the full computation and
> therefore we may end up with a fastset mismatch (see the
> .initial_fastset_check() stuff). The correct way to solve that is to
> add the missing readout support, not add more hacks.

I suppose I should say that only really covers in the initial_commit().

I do admit that we may have a bit of a problem with the initial
userspace commit (when crtc_state->inherited is cleared). In the past
that was required at least to fix audio, but audio shouldn't really need
that anymore since I added fastset support for it.

What could be attempted is to move the audio state computation into
.compute_config_late(), and if userspace didn't flag a modeset on the
first commit, then we'd skip the full .compute_config() and just do
the _late() part. Afterwards the normal audio fastset should kick in.
That's assuming audio isn't a dependency of some other stuff in
.compute_config().

And of course we'd have to think whether we have some other features
besides audio that users actually want to work, but we only
enable/disable them in response to the full .compute_config()...

> 
> > 
> > Having a flicker-free boot is a desired feature to have, and something intel
> > handles a lot better than the other drivers.
> > 
> > Kind regards,
> > ~Maarten Lankhorst
> > 
> > >>
> > >> -Juasheem
> > >>
> > >> On Wed, Mar 18, 2026 at 5:00 AM Maarten Lankhorst <dev@lankhorst.se> wrote:
> > >>
> > >>> Hey,
> > >>>
> > >>> Den 2026-03-17 kl. 23:09, skrev Juasheem Sultan:
> > >>>> Align DP timings and C10 PLL state with BIOS values if within a 0.5%
> > >>>> clock threshold. This prevents minor mismatches from triggering a full
> > >>>> modeset during the first atomic commit, ensuring a flicker-free handoff.
> > >>>>
> > >>>> Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> > >>>> ---
> > >>>>  drivers/gpu/drm/i915/display/intel_display.c | 67 ++++++++++++++++++++
> > >>>>  1 file changed, 67 insertions(+)
> > >>>>
> > >>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > >>> b/drivers/gpu/drm/i915/display/intel_display.c
> > >>>> index c4246481fc2f..22e5e931f134 100644
> > >>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> > >>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > >>>> @@ -6397,6 +6397,71 @@ static int
> > >>> intel_atomic_check_config_and_link(struct intel_atomic_state *state)
> > >>>>
> > >>>>       return ret;
> > >>>>  }
> > >>>> +
> > >>>> +// Helper function to sanitize pll state
> > >>>> +static void intel_sanitize_pll_state(struct intel_crtc_state
> > >>> *old_crtc_state,
> > >>>> +             struct intel_crtc_state *new_crtc_state)
> > >>>> +{
> > >>>> +     int j;
> > >>>> +
> > >>>> +     for (j = 4; j < 9; j++) {
> > >>>> +             if (new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] !=
> > >>>> +
> > >>>  old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j]) {
> > >>>> +                     new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] =
> > >>>> +
> > >>>  old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j];
> > >>>> +             }
> > >>>> +     }
> > >>>> +}
> > >>>> +
> > >>>> +/*
> > >>>> + * intel_dp_sanitize_seamless_boot - Snap driver state to BIOS state
> > >>> for seamless handoff.
> > >>>> + * @state: the atomic state to sanitize
> > >>>> + *
> > >>>> + * This function compares the driver's calculated new_state with the
> > >>> inherited BIOS state
> > >>>> + * (old_state). If they are within a small threshold (e.g., 0.5% for
> > >>> clock), it "snaps"
> > >>>> + * the new_state to match the BIOS state exactly. This prevents minor
> > >>> state mismatches
> > >>>> + * that would otherwise force a full modeset (and a screen flicker)
> > >>> during the initial
> > >>>> + * kernel handoff.
> > >>>> + */
> > >>>> +static void intel_dp_sanitize_seamless_boot(struct intel_atomic_state
> > >>> *state)
> > >>>> +{
> > >>>> +     struct intel_display *display = to_intel_display(state);
> > >>>> +     struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> > >>>> +     struct intel_crtc *crtc;
> > >>>> +     struct intel_encoder *encoder;
> > >>>> +     int i;
> > >>>> +
> > >>>> +     for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > >>> new_crtc_state, i) {
> > >>>> +             /*
> > >>>> +              * We must check old_crtc_state->inherited because
> > >>> new_crtc_state->inherited
> > >>>> +              * is cleared at the start of intel_atomic_check for
> > >>> userspace commits.
> > >>>> +              */
> > >>>> +             if (!old_crtc_state->inherited ||
> > >>> !new_crtc_state->hw.active)
> > >>>> +                     continue;
> > >>>> +
> > >>>> +             if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> > >>>> +                     int old_clock =
> > >>> old_crtc_state->hw.adjusted_mode.crtc_clock;
> > >>>> +                     int new_clock =
> > >>> new_crtc_state->hw.adjusted_mode.crtc_clock;
> > >>>> +                     int threshold = old_clock / 200; /* 0.5% */
> > >>>> +
> > >>>> +                     if (abs(new_clock - old_clock) <= threshold) {
> > >>>> +                             new_crtc_state->hw.pipe_mode.crtc_clock =
> > >>> old_clock;
> > >>>> +
> > >>>  new_crtc_state->hw.adjusted_mode.crtc_clock = old_clock;
> > >>>> +                             new_crtc_state->pixel_rate =
> > >>> old_crtc_state->pixel_rate;
> > >>>> +                             new_crtc_state->dp_m_n =
> > >>> old_crtc_state->dp_m_n;
> > >>>> +                     }
> > >>>> +             }
> > >>>> +
> > >>>> +             for_each_intel_encoder_mask(display->drm, encoder,
> > >>>> +                             new_crtc_state->uapi.encoder_mask) {
> > >>>> +                     if (intel_encoder_is_c10phy(encoder)) {
> > >>>> +                             if
> > >>> (!new_crtc_state->dpll_hw_state.cx0pll.ssc_enabled)
> > >>>> +
> > >>>  intel_sanitize_pll_state(old_crtc_state, new_crtc_state);
> > >>>> +                     }
> > >>>> +             }
> > >>>> +     }
> > >>>> +}
> > >>>> +
> > >>>>  /**
> > >>>>   * intel_atomic_check - validate state object
> > >>>>   * @dev: drm device
> > >>>> @@ -6447,6 +6512,8 @@ int intel_atomic_check(struct drm_device *dev,
> > >>>>       if (ret)
> > >>>>               goto fail;
> > >>>>
> > >>>> +     intel_dp_sanitize_seamless_boot(state);
> > >>>> +
> > >>>>       for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > >>>>               if (!intel_crtc_needs_modeset(new_crtc_state))
> > >>>>                       continue;
> > >>>
> > >>> This might fix boot state, but in a way that complicates the code
> > >>> considerably.
> > >>>
> > >>> Have you considered updating intel_pipe_config_compare instead?
> > >>>
> > >>> Kind regards,
> > >>> ~Maarten Lankhorst
> > >>>
> > > 
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
