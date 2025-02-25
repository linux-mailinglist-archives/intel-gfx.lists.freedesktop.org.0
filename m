Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6267BA436D3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:02:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CFA10E594;
	Tue, 25 Feb 2025 08:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CE1qXV/y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81CE10E594;
 Tue, 25 Feb 2025 08:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470541; x=1772006541;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nzT2MHIqnvduSc0AEwrA0ARVzyF0wQ65i7in7V+LT1c=;
 b=CE1qXV/y6uKZhHegvpE01xocSRHxFXGIRjTqgz36kA+AoPLc+uvLx05r
 RCGvTodolvuVFnUY72IUXVOxHnJee+zwiSw9YbPG9NmJTDzHEkaALPXD3
 xIK2Jn/jka6KrxVEMDzVtclfWC/KikMwGluW0uvP/CHn+a3w8augG/Wv1
 ksNQR4mr5PCuairldIatXvX32tzEWm4qPKboJeQVxIzEpqdfheuQuR/Pj
 GqIhQcTp7qcrhvpENiKQiuLyBEOOaMDfmLUBxgJ1Za+Ib56nudn9TYNvi
 jjj4qiYE1YoA8U/C+DEX8ApSbDIbfzTEvU2wC96ujIHZaPJphgX4lSXvC Q==;
X-CSE-ConnectionGUID: CycQEJzbScuK++rYQTr1JQ==
X-CSE-MsgGUID: GgdWUQIbQn2i/9HX5lIK6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="63728371"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="63728371"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:02:20 -0800
X-CSE-ConnectionGUID: GQg4AbnxSnWJk2f7PGnVXQ==
X-CSE-MsgGUID: h6Fc78IeRaCYVb5VXAMxlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116335365"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:02:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
In-Reply-To: <PH7PR11MB5981971262D74BC11EAA1BEAF9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-5-animesh.manna@intel.com>
 <87r03n7h55.fsf@intel.com>
 <PH7PR11MB5981971262D74BC11EAA1BEAF9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Tue, 25 Feb 2025 10:02:15 +0200
Message-ID: <875xky78qg.fsf@intel.com>
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

On Tue, 25 Feb 2025, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Monday, February 24, 2025 4:18 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
>> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
>> Subject: Re: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
>> dependent parameters
>>
>> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
>> > For every commit the dependent condition for LOBF is checked and
>> > accordingly update has_lobf flag which will be used to update the
>> > ALPM_CTL register during commit.
>> >
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_alpm.c | 16 ++++++++++++++++
>> > drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
>> > drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>> >  3 files changed, 19 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> > b/drivers/gpu/drm/i915/display/intel_alpm.c
>> > index 1438e125cde1..83719ee1721c 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> > @@ -312,6 +312,22 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>> >             (first_sdp_position + waketime_in_lines);  }
>> >
>> > +void intel_alpm_lobf_update(const struct intel_crtc_state
>> > +*crtc_state) {
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> > +   enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> > +   u32 alpm_ctl;
>> > +
>> > +   if (DISPLAY_VER(display) < 20)
>> > +           return;
>> > +
>> > +   alpm_ctl = intel_de_read(display, ALPM_CTL(display,
>> cpu_transcoder));
>> > +   if (alpm_ctl & ALPM_CTL_LOBF_ENABLE && !crtc_state->has_lobf) {
>>
>> You don't need to even read the register if crtc_state->has_lobf is true.
>
> Thanks Jani for review.
> Reading register to get what is there in ALPM_CTL register, like aux-less or aux-wake alpm and etc.
> For LOBF we need to touch a specific bit, and don't want to modify other bitfields.

You only modify the register if crtc_state->has_lobf is false. You don't
need to read the register if crtc_state->has_lobf is true.


BR,
Jani.


>
> Regards,
> Animesh
>
>>
>> > +           alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
>> > +           intel_de_write(display, ALPM_CTL(display, cpu_transcoder),
>> alpm_ctl);
>> > +   }
>> > +}
>> > +
>> >  static void lnl_alpm_configure(struct intel_dp *intel_dp,
>> >                            const struct intel_crtc_state *crtc_state)  { diff --
>> git
>> > a/drivers/gpu/drm/i915/display/intel_alpm.h
>> > b/drivers/gpu/drm/i915/display/intel_alpm.h
>> > index 91f51fb24f98..c6efd25c2062 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
>> > @@ -23,6 +23,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp
>> *intel_dp,
>> >                                 struct drm_connector_state *conn_state);
>> void
>> > intel_alpm_configure(struct intel_dp *intel_dp,
>> >                       const struct intel_crtc_state *crtc_state);
>> > +void intel_alpm_lobf_update(const struct intel_crtc_state
>> > +*crtc_state);
>> >  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>> >                               struct intel_crtc *crtc);
>> >  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > index 26aa32d4d50e..44258ba0d951 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > @@ -37,6 +37,7 @@
>> >  #include "icl_dsi.h"
>> >  #include "intel_alpm.h"
>> >  #include "intel_audio.h"
>> > +#include "intel_alpm.h"
>> >  #include "intel_audio_regs.h"
>> >  #include "intel_backlight.h"
>> >  #include "intel_combo_phy.h"
>> > @@ -3621,6 +3622,7 @@ static void intel_ddi_update_pipe_dp(struct
>> intel_atomic_state *state,
>> >     intel_ddi_set_dp_msa(crtc_state, conn_state);
>> >
>> >     intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>> > +   intel_alpm_lobf_update(crtc_state);
>> >
>> >     intel_backlight_update(state, encoder, crtc_state, conn_state);
>> >     drm_connector_update_privacy_screen(conn_state);
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
