Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEJzAvZXxmmMIwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 11:12:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35275342400
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 11:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8465610EC9B;
	Fri, 27 Mar 2026 10:12:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eVLVr/xR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E48110EC8B;
 Fri, 27 Mar 2026 10:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774606320; x=1806142320;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v9jOy18qqTCEPC0qlEEbTl7NvFVw13aI4sClHw5PUhc=;
 b=eVLVr/xRZVzGfvR64Jc7c3DcllwDuwACnL9bZS4NlAdfotPuWkft+PEP
 gDsJ0VI3VxnoebmwGsDnXJk8Q+AP8yud8xh0kAw8GVj1udnn1GYLR9QEU
 +HCa34TV/8ZkUCPtNgHJpMSJHMgb5sPrqfx/7SOK4cosO7ioesfXrf+mc
 kynHTPPoDLfSYaPTyfmdo4zOUfp9T9l0OzirIerNmXGRwTpJMIFibP9dn
 sOqME0X9ekwXzIrWmvzhDlAaGnKgXAO2lcESsdmbp00AA9LKEfjGGEdHi
 bnmvUxEsEhqUSttAxfIBwLYajqi8dmDboKd8wA1CkeJc4QgzrhQpglzFN A==;
X-CSE-ConnectionGUID: v37aWdpiQ/KbaTWAvkD7Nw==
X-CSE-MsgGUID: NldpmV2XSambWylCF0C4MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="63232694"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="63232694"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 03:12:00 -0700
X-CSE-ConnectionGUID: qCQvs0WARMSGhx0J9O1xvA==
X-CSE-MsgGUID: uiFw2mXvTDyySMrgGWESIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="229750291"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 03:11:57 -0700
Date: Fri, 27 Mar 2026 12:11:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juasheem Sultan <jdsultan@google.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Manasi Navare <navaremanasi@google.com>,
 Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>,
 Rajat Jain <rajatja@google.com>
Subject: Re: [PATCH v4 2/2] drm/i915/display: Sync state to BIOS for seamless
 handoff
Message-ID: <acZX6htfhw4v0G8c@intel.com>
References: <20260317220908.130968-1-jdsultan@google.com>
 <20260317220908.130968-3-jdsultan@google.com>
 <08c99b0d-6adb-423b-9c4b-2e8add00f5d3@lankhorst.se>
 <CAH6Pru5Me2pY31JF2GP61k3gy8XDaLfmH7U6jpAwXoYvGEZBwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH6Pru5Me2pY31JF2GP61k3gy8XDaLfmH7U6jpAwXoYvGEZBwA@mail.gmail.com>
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
X-Spamd-Result: default: False [-0.75 / 15.00];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email]
X-Rspamd-Queue-Id: 35275342400
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 04:10:13PM -0700, Juasheem Sultan wrote:
> Hi,
> 
> Thanks for looking at this.
> 
> You're saying instead of manually adopting the state that I should focus on
> modifying the comparisons that we do to determine if we can perform a
> fastset?

We don't want any fuzzy fastset hacks anywhere. I intentionally killed
all that stuff because it was making it impossible to trust that the
software state actually represents what the hardware is doing.

Someone needs to figure out what exactly is the difference between
the states between the GOP and the driver, and then figure out where
that difference is coming from.

> 
> -Juasheem
> 
> On Wed, Mar 18, 2026 at 5:00 AM Maarten Lankhorst <dev@lankhorst.se> wrote:
> 
> > Hey,
> >
> > Den 2026-03-17 kl. 23:09, skrev Juasheem Sultan:
> > > Align DP timings and C10 PLL state with BIOS values if within a 0.5%
> > > clock threshold. This prevents minor mismatches from triggering a full
> > > modeset during the first atomic commit, ensuring a flicker-free handoff.
> > >
> > > Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 67 ++++++++++++++++++++
> > >  1 file changed, 67 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index c4246481fc2f..22e5e931f134 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6397,6 +6397,71 @@ static int
> > intel_atomic_check_config_and_link(struct intel_atomic_state *state)
> > >
> > >       return ret;
> > >  }
> > > +
> > > +// Helper function to sanitize pll state
> > > +static void intel_sanitize_pll_state(struct intel_crtc_state
> > *old_crtc_state,
> > > +             struct intel_crtc_state *new_crtc_state)
> > > +{
> > > +     int j;
> > > +
> > > +     for (j = 4; j < 9; j++) {
> > > +             if (new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] !=
> > > +
> >  old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j]) {
> > > +                     new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] =
> > > +
> >  old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j];
> > > +             }
> > > +     }
> > > +}
> > > +
> > > +/*
> > > + * intel_dp_sanitize_seamless_boot - Snap driver state to BIOS state
> > for seamless handoff.
> > > + * @state: the atomic state to sanitize
> > > + *
> > > + * This function compares the driver's calculated new_state with the
> > inherited BIOS state
> > > + * (old_state). If they are within a small threshold (e.g., 0.5% for
> > clock), it "snaps"
> > > + * the new_state to match the BIOS state exactly. This prevents minor
> > state mismatches
> > > + * that would otherwise force a full modeset (and a screen flicker)
> > during the initial
> > > + * kernel handoff.
> > > + */
> > > +static void intel_dp_sanitize_seamless_boot(struct intel_atomic_state
> > *state)
> > > +{
> > > +     struct intel_display *display = to_intel_display(state);
> > > +     struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> > > +     struct intel_crtc *crtc;
> > > +     struct intel_encoder *encoder;
> > > +     int i;
> > > +
> > > +     for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > new_crtc_state, i) {
> > > +             /*
> > > +              * We must check old_crtc_state->inherited because
> > new_crtc_state->inherited
> > > +              * is cleared at the start of intel_atomic_check for
> > userspace commits.
> > > +              */
> > > +             if (!old_crtc_state->inherited ||
> > !new_crtc_state->hw.active)
> > > +                     continue;
> > > +
> > > +             if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> > > +                     int old_clock =
> > old_crtc_state->hw.adjusted_mode.crtc_clock;
> > > +                     int new_clock =
> > new_crtc_state->hw.adjusted_mode.crtc_clock;
> > > +                     int threshold = old_clock / 200; /* 0.5% */
> > > +
> > > +                     if (abs(new_clock - old_clock) <= threshold) {
> > > +                             new_crtc_state->hw.pipe_mode.crtc_clock =
> > old_clock;
> > > +
> >  new_crtc_state->hw.adjusted_mode.crtc_clock = old_clock;
> > > +                             new_crtc_state->pixel_rate =
> > old_crtc_state->pixel_rate;
> > > +                             new_crtc_state->dp_m_n =
> > old_crtc_state->dp_m_n;
> > > +                     }
> > > +             }
> > > +
> > > +             for_each_intel_encoder_mask(display->drm, encoder,
> > > +                             new_crtc_state->uapi.encoder_mask) {
> > > +                     if (intel_encoder_is_c10phy(encoder)) {
> > > +                             if
> > (!new_crtc_state->dpll_hw_state.cx0pll.ssc_enabled)
> > > +
> >  intel_sanitize_pll_state(old_crtc_state, new_crtc_state);
> > > +                     }
> > > +             }
> > > +     }
> > > +}
> > > +
> > >  /**
> > >   * intel_atomic_check - validate state object
> > >   * @dev: drm device
> > > @@ -6447,6 +6512,8 @@ int intel_atomic_check(struct drm_device *dev,
> > >       if (ret)
> > >               goto fail;
> > >
> > > +     intel_dp_sanitize_seamless_boot(state);
> > > +
> > >       for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > >               if (!intel_crtc_needs_modeset(new_crtc_state))
> > >                       continue;
> >
> > This might fix boot state, but in a way that complicates the code
> > considerably.
> >
> > Have you considered updating intel_pipe_config_compare instead?
> >
> > Kind regards,
> > ~Maarten Lankhorst
> >

-- 
Ville Syrjälä
Intel
