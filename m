Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C528B16FA5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C487810E771;
	Thu, 31 Jul 2025 10:32:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxg2S0vw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAAD10E771
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 10:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753957966; x=1785493966;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=7OM2DJzi/VtsGU3Im2gsw1T1vgxFIzZxEhhnuDjzd7c=;
 b=jxg2S0vwFXJp7TyfUrZ5+U1pMglDul8KhnBjFQ77SlVo3GJSxq2ms3N1
 6s5E+Qw/b3pWv+DjAadhLovV6NUWn6Rdpzec3jyi/M/5W0HRpcikW2g0R
 kjnXcgp9XKyKaVqP4FGud8brDH1NmHR4wS4TAl96bCKw2IWbrHY80/o7m
 izWRwAx48xYypWAPLVe1A1IrH1cEURkLK7vCpczG/8hivUcSjkBOLqIzu
 rzl9/lY708q4yvE+wwwz4SUs3et61NPt1losGQLs8nJqenJuJMxt+6EFt
 eGLy2Nu4MMUo1F0swdS4n91XRny2gv3E+YXshmLbEyCWs3ruiyMDMUvdx w==;
X-CSE-ConnectionGUID: xAI1ttzBTrWcoTG/psvk8w==
X-CSE-MsgGUID: JwfCVNH+QGuZ0eMgUbaeFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56161757"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56161757"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:32:45 -0700
X-CSE-ConnectionGUID: H84PXUSsTfWxTOb19O0c8w==
X-CSE-MsgGUID: jHCOReS9R9mbOyWHw56W8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="163595857"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:32:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
In-Reply-To: <IA1PR11MB64671CB31BF0A602D52490A3E327A@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250731084900.1684276-1-nemesa.garg@intel.com>
 <db4873fb3468cf079ec8fd4fea14a668a1b554ad@intel.com>
 <IA1PR11MB6467032E19C9C147EBBBDF8AE327A@IA1PR11MB6467.namprd11.prod.outlook.com>
 <IA1PR11MB64671CB31BF0A602D52490A3E327A@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Thu, 31 Jul 2025 13:32:40 +0300
Message-ID: <a5d20973bf786aaf032287b6c5b56d46f7414076@intel.com>
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

On Thu, 31 Jul 2025, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
>> -----Original Message-----
>> From: Garg, Nemesa
>> Sent: Thursday, July 31, 2025 2:55 PM
>> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: RE: [PATCH] drm/i915/display: WA_14011503117
>> 
>> 
>> 
>> > -----Original Message-----
>> > From: Jani Nikula <jani.nikula@linux.intel.com>
>> > Sent: Thursday, July 31, 2025 2:51 PM
>> > To: Garg, Nemesa <nemesa.garg@intel.com>;
>> > intel-gfx@lists.freedesktop.org
>> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
>> > Subject: Re: [PATCH] drm/i915/display: WA_14011503117
>> >
>> > On Thu, 31 Jul 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
>> > > Before enabling the scaler mask the bit and after enabling the
>> > > scaler, in the later stage after waiting for a frame unmask the
>> > > PS_ECC bit and ERR_FATAL_MASK bit.
>> > > Unmasking of DISPLAY_ERR_FATAL_MASK bit is use for validation purpose.
>> > > There is no functional imapct.
>> > >
>> > > v2: Remove intel_display_need_wa [Jani]
>> >
>> > Ugh, this is not what I meant.
>> >
>> > Do use intel_display_wa(display, 14011503117).
>> >
>> > Do not add static bool intel_display_needs_wa_14011503117() inside
>> > intel_display_wa.c.
>> >
>> Got it. Will add this.
>> Instead of adding function something like this I need to add inside __intel_display_wa
> +       case INTEL_DISPLAY_WA_14011503117:
> +               return DISPLAY_VER(display) == 13;
>
> Also should I add the documentation to describe  the wa.

Yes.

>
> Thanks and Regards,
> Nemesa
>
>> > BR,
>> > Jani.
>> >
>> >
>> > >     Optimise the ecc_unmask call[Animesh]
>> > >
>> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_display.c |  5 ++++
>> > >  drivers/gpu/drm/i915/display/skl_scaler.c    | 28 ++++++++++++++++++++
>> > >  drivers/gpu/drm/i915/display/skl_scaler.h    |  4 +++
>> > >  3 files changed, 37 insertions(+)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> > > b/drivers/gpu/drm/i915/display/intel_display.c
>> > > index 7035c1fc9033..08cc747638ca 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > > @@ -1081,6 +1081,11 @@ static void intel_post_plane_update(struct
>> > intel_atomic_state *state,
>> > >  	if (audio_enabling(old_crtc_state, new_crtc_state))
>> > >  		intel_encoders_audio_enable(state, crtc);
>> > >
>> > > +	if (DISPLAY_VER(display) == 13) {
>> > > +		if (old_crtc_state->pch_pfit.enabled != new_crtc_state-
>> > >pch_pfit.enabled)
>> > > +			adl_scaler_ecc_unmask(new_crtc_state);
>> > > +	}
>> > > +
>> > >  	intel_alpm_post_plane_update(state, crtc);
>> > >
>> > >  	intel_psr_post_plane_update(state, crtc); diff --git
>> > > a/drivers/gpu/drm/i915/display/skl_scaler.c
>> > > b/drivers/gpu/drm/i915/display/skl_scaler.c
>> > > index 4cc55f4e1f9f..cadfcb549ae8 100644
>> > > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> > > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> > > @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct
>> > > intel_crtc_state
>> > *crtc_state)
>> > >  			crtc_state->scaler_state.scaler_id < 0))
>> > >  		return;
>> > >
>> > > +	if (DISPLAY_VER(display) == 13)
>> > > +		adl_scaler_ecc_mask(crtc_state);
>> > > +
>> > >  	drm_rect_init(&src, 0, 0,
>> > >  		      drm_rect_width(&crtc_state->pipe_src) << 16,
>> > >  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
>> > 938,3
>> > > +941,28 @@ void skl_scaler_get_config(struct intel_crtc_state
>> > > +*crtc_state)
>> > >  	else
>> > >  		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);  }
>> > > +
>> > > +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) {
>> > > +	struct intel_display *display = to_intel_display(crtc_state);
>> > > +
>> > > +	if (!crtc_state->pch_pfit.enabled)
>> > > +		return;
>> > > +
>> > > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }
>> > > +
>> > > +void adl_scaler_ecc_unmask(const struct intel_crtc_state
>> > > +*crtc_state) {
>> > > +	struct intel_display *display = to_intel_display(crtc_state);
>> > > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > > +	const struct intel_crtc_scaler_state *scaler_state =
>> > > +		&crtc_state->scaler_state;
>> > > +	int id;
>> > > +
>> > > +	if (!scaler_state && scaler_state->scaler_id == -1)
>> > > +		return;
>> > > +
>> > > +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
>> > > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
>> > > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
>> > > b/drivers/gpu/drm/i915/display/skl_scaler.h
>> > > index 692716dd7616..79183d9ecc3b 100644
>> > > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
>> > > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
>> > > @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
>> > >  		      enum intel_output_format output_format,
>> > >  		      int num_joined_pipes);
>> > >
>> > > +void adl_scaler_ecc_mask(const struct intel_crtc_state
>> > > +*crtc_state);
>> > > +
>> > > +void adl_scaler_ecc_unmask(const struct intel_crtc_state
>> > > +*crtc_state);
>> > > +
>> > >  #endif
>> >
>> > --
>> > Jani Nikula, Intel

-- 
Jani Nikula, Intel
