Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B661529A5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 12:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530316E95B;
	Wed,  5 Feb 2020 11:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2F96E95B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 11:07:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 03:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="279347142"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 05 Feb 2020 03:07:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2020 13:07:48 +0200
Date: Wed, 5 Feb 2020 13:07:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200205110748.GG13686@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-3-anshuman.gupta@intel.com>
 <20200204143617.GQ13686@intel.com>
 <20200205080254.GJ24118@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205080254.GJ24118@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Remove (pipe == crtc->index)
 assumption
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
Cc: "Cc : Jani Nikula" <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 05, 2020 at 01:32:54PM +0530, Anshuman Gupta wrote:
> On 2020-02-04 at 16:36:17 +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Feb 04, 2020 at 04:59:22PM +0530, Anshuman Gupta wrote:
> > > we can't have (pipe =3D=3D crtc->index) assumption in
> > > driver in order to support 3 non-contiguous
> > > display pipe system.
> > > =

> > > FIXME: Remove the WARN_ON(drm_crtc_index(&crtc->base) !=3D crtc->pipe)
> > > till we won't fix all such assumption.
> > > =

> > > changes since RFC:
> > > - Added again removed (pipe =3D=3D crtc->index) WARN_ON.
> > > - Pass drm_crtc_index instead of intel pipe in order to
> > >   call drm_handle_vblank() from gen8_de_irq_handler(),
> > >   other legacy irq handlers also calls drm_handle_vblank()
> > >   with intel pipe but those doesn't require this change.
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++----
> > >  drivers/gpu/drm/i915/display/intel_display_types.h | 4 +++-
> > >  drivers/gpu/drm/i915/i915_irq.c                    | 8 ++++++--
> > >  3 files changed, 13 insertions(+), 7 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 878d331b9e8c..5709e672151a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14070,11 +14070,11 @@ verify_single_dpll_state(struct drm_i915_pr=
ivate *dev_priv,
> > >  	if (new_crtc_state->hw.active)
> > >  		I915_STATE_WARN(!(pll->active_mask & crtc_mask),
> > >  				"pll active mismatch (expected pipe %c in active mask 0x%02x)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)), pll->active_mask);
> > > +				pipe_name(crtc->pipe), pll->active_mask);
> > >  	else
> > >  		I915_STATE_WARN(pll->active_mask & crtc_mask,
> > >  				"pll active mismatch (didn't expect pipe %c in active mask 0x%02=
x)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)), pll->active_mask);
> > > +				pipe_name(crtc->pipe), pll->active_mask);
> > >  =

> > >  	I915_STATE_WARN(!(pll->state.crtc_mask & crtc_mask),
> > >  			"pll enabled crtcs mismatch (expected 0x%x in 0x%02x)\n",
> > > @@ -14103,10 +14103,10 @@ verify_shared_dpll_state(struct intel_crtc =
*crtc,
> > >  =

> > >  		I915_STATE_WARN(pll->active_mask & crtc_mask,
> > >  				"pll active mismatch (didn't expect pipe %c in active mask)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)));
> > > +				pipe_name(crtc->pipe));
> > >  		I915_STATE_WARN(pll->state.crtc_mask & crtc_mask,
> > >  				"pll enabled crtcs mismatch (found %x in enabled mask)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)));
> > > +				pipe_name(crtc->pipe));
> > >  	}
> > >  }
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index 33ba93863488..80a6460da852 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1618,7 +1618,9 @@ intel_crtc_has_dp_encoder(const struct intel_cr=
tc_state *crtc_state)
> > >  static inline void
> > >  intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe p=
ipe)
> > >  {
> > > -	drm_wait_one_vblank(&dev_priv->drm, pipe);
> > > +	const struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv,=
 pipe);
> > > +
> > > +	drm_wait_one_vblank(&dev_priv->drm, drm_crtc_index(&crtc->base));
> > >  }
> > >  static inline void
> > >  intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, e=
num pipe pipe)
> > > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i=
915_irq.c
> > > index 22ecd5bc407e..9f8b2566166a 100644
> > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > @@ -2311,6 +2311,8 @@ gen8_de_irq_handler(struct drm_i915_private *de=
v_priv, u32 master_ctl)
> > >  =

> > >  	for_each_pipe(dev_priv, pipe) {
> > >  		u32 fault_errors;
> > > +		struct intel_crtc *crtc =3D
> > > +			intel_get_crtc_for_pipe(dev_priv, pipe);
> > >  =

> > >  		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
> > >  			continue;
> > > @@ -2324,8 +2326,10 @@ gen8_de_irq_handler(struct drm_i915_private *d=
ev_priv, u32 master_ctl)
> > >  		ret =3D IRQ_HANDLED;
> > >  		I915_WRITE(GEN8_DE_PIPE_IIR(pipe), iir);
> > >  =

> > > -		if (iir & GEN8_PIPE_VBLANK)
> > > -			drm_handle_vblank(&dev_priv->drm, pipe);
> > > +		if (iir & GEN8_PIPE_VBLANK) {
> > > +			drm_handle_vblank(&dev_priv->drm,
> > > +					  drm_crtc_index(&crtc->base));
> > =

> > Missed all the other places.
> All other places were legcay handlers so i thought we don't require this =
change,
> is it require do this change all places to keep same pattern.

Yes.

> Please correct me if i am wrong here.
> > =

> > Please just add intel_handle_vblank() which wraps the
> > intel_get_crtc_for_pipe()+drm_handle_vblank().
> jani has suggested to use drm_crtc_handle_vblank(), i think =

> that would be simpler to replace it at all places instead of
> intel_handle_vblank(), what is your opinion on that ?

That's orthogonal.

> Thanks,
> Anshuman Gupta.
> > =

> > > +		}
> > >  =

> > >  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
> > >  			hsw_pipe_crc_irq_handler(dev_priv, pipe);
> > > -- =

> > > 2.24.0
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
