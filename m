Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E52387718
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 510CC6E86F;
	Tue, 18 May 2021 11:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B006E86F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 11:06:50 +0000 (UTC)
IronPort-SDR: qNiir6G7mCErt+o+mmzCGRi6vnv9fJitEZfN76L3uUBba5bp0OUBqj8lwx9BR0wnmB2vldXwIM
 u34tddE3kyUw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="197598259"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="197598259"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:06:49 -0700
IronPort-SDR: MhL62hQqRqdY4DIAXZ5628d0c52DfrvzSONpps/PP8xmPBTlQkjojk/zC3pF0MKAILevx2kqCI
 HD2FPLYjsUAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="404786907"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 18 May 2021 04:06:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 May 2021 14:06:46 +0300
Date: Tue, 18 May 2021 14:06:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Message-ID: <YKOfxr9EK6d70qhG@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-19-matthew.d.roper@intel.com>
 <596696f734b83e18a6e1c4b2b4139cd12e2e9fa1.camel@intel.com>
 <1a8f78e8c2e2767e9f770bb748ccaf59171d70cb.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a8f78e8c2e2767e9f770bb748ccaf59171d70cb.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 18/23] drm/i915/display: Introduce new
 intel_psr_pause/resume function
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 09:33:09AM +0000, Mun, Gwan-gyeong wrote:
> Hi Ville,=A0
> initially, intel_psr_pause() called intel_psr_disable_locked() instead
> of intel_psr_exit().
> In intel_psr_resume(), _intel_psr_enable_locked() was called instead of
> intel_psr_activate().
> Can you share what problem the initial code caused when calling
> intel_psr_pause() / intel_psr_resume()?

It was doing illegal stuff with crtc->state/etc. That was oopsing.
The other problem was that IIRC it was going to do DPCD accesses
while the cdclk code was already holding the aux mutexes. I moved it
out from under the lock, but I think we might actually want it inside
the lock since we'll need that to prevent PSR during all AUX transfers
anyway. Putting it back inside the lock should also make it less racy
I guess.

> =

> In addition, intel_psr_exit() /intel_psr_activate() function  disable /
> enable only the PSR source.
> So, if disable/enable for PSR Sink Device is not called together, there
> will be a problem that the PSR state machine of sink and source is
> different.
> What do you think?

If possible I wouldn't want it touch the sink at all. It should
basically be no different to eg. enabling the vblank interrupt.

> =

> On Mon, 2021-05-17 at 09:58 -0700, Souza, Jose wrote:
> > On Fri, 2021-05-14 at 20:10 -0700, Matt Roper wrote:
> > > From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > =

> > > This introduces the following function that can enable and disable
> > > psr
> > > without intel_crtc_state/drm_connector_state when intel_psr is
> > > already
> > > enabled with current intel_crtc_state and drm_connector_state
> > > information.
> > > =

> > > - intel_psr_pause(): Pause current PSR. it deactivates current psr
> > > state.
> > > - intel_psr_resume(): Resume paused PSR without intel_crtc_state and
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 drm_c=
onnector_state. It activates paused psr
> > > state.
> > > =

> > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > > =A0.../drm/i915/display/intel_display_types.h=A0=A0=A0 |=A0 1 +
> > > =A0drivers/gpu/drm/i915/display/intel_psr.c=A0=A0=A0=A0=A0 | 93 +++++=
+++++++++++-
> > > --
> > > =A0drivers/gpu/drm/i915/display/intel_psr.h=A0=A0=A0=A0=A0 |=A0 2 +
> > > =A03 files changed, 82 insertions(+), 14 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index b8d1f702d808..ee7cbdd7db87 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1482,6 +1482,7 @@ struct intel_psr {
> > > =A0=A0=A0=A0=A0=A0=A0=A0bool sink_support;
> > > =A0=A0=A0=A0=A0=A0=A0=A0bool source_support;
> > > =A0=A0=A0=A0=A0=A0=A0=A0bool enabled;
> > > +=A0=A0=A0=A0=A0=A0=A0bool paused;
> > > =A0=A0=A0=A0=A0=A0=A0=A0enum pipe pipe;
> > > =A0=A0=A0=A0=A0=A0=A0=A0enum transcoder transcoder;
> > > =A0=A0=A0=A0=A0=A0=A0=A0bool active;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 4a63d10876ce..d4df3f5e7918 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1060,34 +1060,23 @@ static bool psr_interrupt_error_check(struct
> > > intel_dp *intel_dp)
> > > =A0=A0=A0=A0=A0=A0=A0=A0return true;
> > > =A0}
> > > =A0
> > > -static void intel_psr_enable_locked(struct intel_dp *intel_dp,
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct intel_crtc_state
> > > *crtc_state,
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct drm_connector_state
> > > *conn_state)
> > > +static void _intel_psr_enable_locked(struct intel_dp *intel_dp,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct intel_crtc_state
> > > *crtc_state)
> > > =A0{
> > > =A0=A0=A0=A0=A0=A0=A0=A0struct intel_digital_port *dig_port =3D
> > > dp_to_dig_port(intel_dp);
> > > =A0=A0=A0=A0=A0=A0=A0=A0struct drm_i915_private *dev_priv =3D dp_to_i=
915(intel_dp);
> > > =A0=A0=A0=A0=A0=A0=A0=A0struct intel_encoder *encoder =3D &dig_port->=
base;
> > > -=A0=A0=A0=A0=A0=A0=A0u32 val;
> > > =A0
> > > =A0=A0=A0=A0=A0=A0=A0=A0drm_WARN_ON(&dev_priv->drm, intel_dp->psr.ena=
bled);
> > > =A0
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.psr2_enabled =3D crtc_state->has_=
psr2;
> > > =A0=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.busy_frontbuffer_bits =3D 0;
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.pipe =3D to_intel_crtc(crtc_state=
->uapi.crtc)-
> > > >pipe;
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.transcoder =3D crtc_state->cpu_tr=
anscoder;
> > > -=A0=A0=A0=A0=A0=A0=A0/* DC5/DC6 requires at least 6 idle frames */
> > > -=A0=A0=A0=A0=A0=A0=A0val =3D usecs_to_jiffies(intel_get_frame_time_u=
s(crtc_state) *
> > > 6);
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.dc3co_exit_delay =3D val;
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.dc3co_exitline =3D crtc_state->dc=
3co_exitline;
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.psr2_sel_fetch_enabled =3D crtc_s=
tate-
> > > >enable_psr2_sel_fetch;
> > > =A0
> > > =A0=A0=A0=A0=A0=A0=A0=A0if (!psr_interrupt_error_check(intel_dp))
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > > =A0
> > > =A0=A0=A0=A0=A0=A0=A0=A0drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n=
",
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_dp->p=
sr.psr2_enabled ? "2" : "1");
> > > -=A0=A0=A0=A0=A0=A0=A0intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_sta=
te,
> > > conn_state,
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &intel_dp->psr.vsc);
> > > +
> > > =A0=A0=A0=A0=A0=A0=A0=A0intel_write_dp_vsc_sdp(encoder, crtc_state, &=
intel_dp-
> > > >psr.vsc);
> > > =A0=A0=A0=A0=A0=A0=A0=A0intel_psr_enable_sink(intel_dp);
> > > =A0=A0=A0=A0=A0=A0=A0=A0intel_psr_enable_source(intel_dp);
> > > @@ -1096,6 +1085,28 @@ static void intel_psr_enable_locked(struct
> > > intel_dp *intel_dp,
> > > =A0=A0=A0=A0=A0=A0=A0=A0intel_psr_activate(intel_dp);
> > > =A0}
> > > =A0
> > > +static void intel_psr_enable_locked(struct intel_dp *intel_dp,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct intel_crtc_state
> > > *crtc_state,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct drm_connector_state
> > > *conn_state)
> > > +{
> > > +=A0=A0=A0=A0=A0=A0=A0u32 val;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.psr2_enabled =3D crtc_state->has_=
psr2;
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.pipe =3D to_intel_crtc(crtc_state=
->uapi.crtc)-
> > > >pipe;
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.transcoder =3D crtc_state->cpu_tr=
anscoder;
> > > +=A0=A0=A0=A0=A0=A0=A0/* DC5/DC6 requires at least 6 idle frames */
> > > +=A0=A0=A0=A0=A0=A0=A0val =3D usecs_to_jiffies(intel_get_frame_time_u=
s(crtc_state) *
> > > 6);
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.dc3co_exit_delay =3D val;
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.psr2_sel_fetch_enabled =3D crtc_s=
tate-
> > > >enable_psr2_sel_fetch;
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.dc3co_exitline =3D crtc_state->dc=
3co_exitline;
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp->psr.paused =3D false;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_sta=
te,
> > > conn_state,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &intel_dp->psr.vsc);
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0_intel_psr_enable_locked(intel_dp, crtc_state);
> > > +}
> > > +
> > > =A0/**
> > > =A0 * intel_psr_enable - Enable PSR
> > > =A0 * @intel_dp: Intel DP
> > > @@ -1233,6 +1244,60 @@ void intel_psr_disable(struct intel_dp
> > > *intel_dp,
> > > =A0=A0=A0=A0=A0=A0=A0=A0cancel_delayed_work_sync(&intel_dp->psr.dc3co=
_work);
> > > =A0}
> > > =A0
> > > +/**
> > > + * intel_psr_pause - Pause PSR
> > > + * @intel_dp: Intel DP
> > > + *
> > > + * This function need to be called after enabling psr.
> > > + */
> > > +void intel_psr_pause(struct intel_dp *intel_dp)
> > > +{
> > > +=A0=A0=A0=A0=A0=A0=A0struct intel_psr *psr =3D &intel_dp->psr;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0if (!CAN_PSR(intel_dp))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0mutex_lock(&psr->lock);
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0if (!psr->active) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0mutex_unlock(&psr->lock=
);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > > +=A0=A0=A0=A0=A0=A0=A0}
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0intel_psr_exit(intel_dp);
> > > +=A0=A0=A0=A0=A0=A0=A0psr->paused =3D true;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0mutex_unlock(&psr->lock);
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0cancel_work_sync(&psr->work);
> > > +=A0=A0=A0=A0=A0=A0=A0cancel_delayed_work_sync(&psr->dc3co_work);
> > > +}
> > > +
> > > +/**
> > > + * intel_psr_resume - Resume PSR
> > > + * @intel_dp: Intel DP
> > > + *
> > > + * This function need to be called after pausing psr.
> > > + */
> > > +void intel_psr_resume(struct intel_dp *intel_dp)
> > > +{
> > > +=A0=A0=A0=A0=A0=A0=A0struct intel_psr *psr =3D &intel_dp->psr;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0if (!CAN_PSR(intel_dp))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0mutex_lock(&psr->lock);
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0if (!psr->paused)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto unlock;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0psr->paused =3D false;
> > > +=A0=A0=A0=A0=A0=A0=A0intel_psr_activate(intel_dp);
> > =

> > This patch is doing a bunch of changes around the intel_psr_enable but
> > then it is calling intel_psr_activate().
> > =

> > > +
> > > +unlock:
> > > +=A0=A0=A0=A0=A0=A0=A0mutex_unlock(&psr->lock);
> > > +}
> > > +
> > > =A0static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
> > > =A0{
> > > =A0=A0=A0=A0=A0=A0=A0=A0struct drm_i915_private *dev_priv =3D dp_to_i=
915(intel_dp);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
> > > b/drivers/gpu/drm/i915/display/intel_psr.h
> > > index e3db85e97f4c..641521b101c8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > > @@ -51,5 +51,7 @@ void intel_psr2_program_plane_sel_fetch(struct
> > > intel_plane *plane,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0const struct intel_crtc_=
state
> > > *crtc_state,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0const struct
> > > intel_plane_state *plane_state,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0int color_plane);
> > > +void intel_psr_pause(struct intel_dp *intel_dp);
> > > +void intel_psr_resume(struct intel_dp *intel_dp);
> > > =A0
> > > =A0#endif /* __INTEL_PSR_H__ */
> > =

> =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
