Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIF6GbhGxmkbIQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 09:58:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE676341623
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 09:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2841910ECD8;
	Fri, 27 Mar 2026 08:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="NftK6A42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334E010ECD8;
 Fri, 27 Mar 2026 08:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1774601902;
 bh=yfVB7YzWX1O42bpFvsBfcYVF1hZzmJ6K9YXX8eQgJRc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=NftK6A42s8t7VMDEZKL9hs1oX+p6IThs9PPc3BuWAB85NH/mqy5Uem0Z6QuApD0M1
 fU6URWV6Akp8v+6at+ymtq8KCudY0Qhz5+ldsOpapnbgH79SSzsdz2s9zQsUz7Kpxc
 00H60uJg9VuX65dLSGjUrseGD+nDaf/LetKGkY/LoEyU3hjLS5zq3R2fNFvc/PH4n+
 oZgzPvVU5QuTBpY/MTFbAi3JPibE68F3Mn8mf6LF4cmzojmQu3A5SNcYVPW35t+2NR
 bb2EGjG64br6j3CKK/aubVNyv3XG6cCXhUbXU/IxcuRxtnejGuQGd7JH7yC8+p4oZ9
 r82p8qprGCMxA==
Message-ID: <bbd4523f-8f75-444f-b075-b323c7c33800@lankhorst.se>
Date: Fri, 27 Mar 2026 09:58:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] drm/i915/display: Sync state to BIOS for seamless
 handoff
To: Juasheem Sultan <jdsultan@google.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Manasi Navare <navaremanasi@google.com>,
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>,
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>
References: <20260317220908.130968-1-jdsultan@google.com>
 <20260317220908.130968-3-jdsultan@google.com>
 <08c99b0d-6adb-423b-9c4b-2e8add00f5d3@lankhorst.se>
 <CAH6Pru5Me2pY31JF2GP61k3gy8XDaLfmH7U6jpAwXoYvGEZBwA@mail.gmail.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <CAH6Pru5Me2pY31JF2GP61k3gy8XDaLfmH7U6jpAwXoYvGEZBwA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: DE676341623
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hey,

Den 2026-03-27 kl. 00:10, skrev Juasheem Sultan:
> Hi, 
> 
> Thanks for looking at this. 
> 
> You're saying instead of manually adopting the state that I should focus on modifying the comparisons that we do to determine if we can perform a fastset? 
That's it exactly, that's the place where those comparisons are relaxed when we inherit the boot state.

Kind regards,
~Maarten Lankhorst

> 
> -Juasheem
> 
> On Wed, Mar 18, 2026 at 5:00 AM Maarten Lankhorst <dev@lankhorst.se <mailto:dev@lankhorst.se>> wrote:
> 
>     Hey,
> 
>     Den 2026-03-17 kl. 23:09, skrev Juasheem Sultan:
>     > Align DP timings and C10 PLL state with BIOS values if within a 0.5%
>     > clock threshold. This prevents minor mismatches from triggering a full
>     > modeset during the first atomic commit, ensuring a flicker-free handoff.
>     >
>     > Signed-off-by: Juasheem Sultan <jdsultan@google.com <mailto:jdsultan@google.com>>
>     > ---
>     >  drivers/gpu/drm/i915/display/intel_display.c | 67 ++++++++++++++++++++
>     >  1 file changed, 67 insertions(+)
>     >
>     > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>     > index c4246481fc2f..22e5e931f134 100644
>     > --- a/drivers/gpu/drm/i915/display/intel_display.c
>     > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>     > @@ -6397,6 +6397,71 @@ static int intel_atomic_check_config_and_link(struct intel_atomic_state *state)
>     > 
>     >       return ret;
>     >  }
>     > +
>     > +// Helper function to sanitize pll state
>     > +static void intel_sanitize_pll_state(struct intel_crtc_state *old_crtc_state,
>     > +             struct intel_crtc_state *new_crtc_state)
>     > +{
>     > +     int j;
>     > +
>     > +     for (j = 4; j < 9; j++) {
>     > +             if (new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] !=
>     > +                             old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j]) {
>     > +                     new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] =
>     > +                             old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j];
>     > +             }
>     > +     }
>     > +}
>     > +
>     > +/*
>     > + * intel_dp_sanitize_seamless_boot - Snap driver state to BIOS state for seamless handoff.
>     > + * @state: the atomic state to sanitize
>     > + *
>     > + * This function compares the driver's calculated new_state with the inherited BIOS state
>     > + * (old_state). If they are within a small threshold (e.g., 0.5% for clock), it "snaps"
>     > + * the new_state to match the BIOS state exactly. This prevents minor state mismatches
>     > + * that would otherwise force a full modeset (and a screen flicker) during the initial
>     > + * kernel handoff.
>     > + */
>     > +static void intel_dp_sanitize_seamless_boot(struct intel_atomic_state *state)
>     > +{
>     > +     struct intel_display *display = to_intel_display(state);
>     > +     struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>     > +     struct intel_crtc *crtc;
>     > +     struct intel_encoder *encoder;
>     > +     int i;
>     > +
>     > +     for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>     > +             /*
>     > +              * We must check old_crtc_state->inherited because new_crtc_state->inherited
>     > +              * is cleared at the start of intel_atomic_check for userspace commits.
>     > +              */
>     > +             if (!old_crtc_state->inherited || !new_crtc_state->hw.active)
>     > +                     continue;
>     > +
>     > +             if (intel_crtc_has_dp_encoder(new_crtc_state)) {
>     > +                     int old_clock = old_crtc_state->hw.adjusted_mode.crtc_clock;
>     > +                     int new_clock = new_crtc_state->hw.adjusted_mode.crtc_clock;
>     > +                     int threshold = old_clock / 200; /* 0.5% */
>     > +
>     > +                     if (abs(new_clock - old_clock) <= threshold) {
>     > +                             new_crtc_state->hw.pipe_mode.crtc_clock = old_clock;
>     > +                             new_crtc_state->hw.adjusted_mode.crtc_clock = old_clock;
>     > +                             new_crtc_state->pixel_rate = old_crtc_state->pixel_rate;
>     > +                             new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
>     > +                     }
>     > +             }
>     > +
>     > +             for_each_intel_encoder_mask(display->drm, encoder,
>     > +                             new_crtc_state->uapi.encoder_mask) {
>     > +                     if (intel_encoder_is_c10phy(encoder)) {
>     > +                             if (!new_crtc_state->dpll_hw_state.cx0pll.ssc_enabled)
>     > +                                     intel_sanitize_pll_state(old_crtc_state, new_crtc_state);
>     > +                     }
>     > +             }
>     > +     }
>     > +}
>     > +
>     >  /**
>     >   * intel_atomic_check - validate state object
>     >   * @dev: drm device
>     > @@ -6447,6 +6512,8 @@ int intel_atomic_check(struct drm_device *dev,
>     >       if (ret)
>     >               goto fail;
>     > 
>     > +     intel_dp_sanitize_seamless_boot(state);
>     > +
>     >       for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>     >               if (!intel_crtc_needs_modeset(new_crtc_state))
>     >                       continue;
> 
>     This might fix boot state, but in a way that complicates the code considerably.
> 
>     Have you considered updating intel_pipe_config_compare instead?
> 
>     Kind regards,
>     ~Maarten Lankhorst
> 

