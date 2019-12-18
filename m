Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB411254BF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 22:34:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C8D6EA84;
	Wed, 18 Dec 2019 21:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E796EA84
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 21:33:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:33:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="205974585"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 18 Dec 2019 13:33:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 23:33:51 +0200
Date: Wed, 18 Dec 2019 23:33:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191218213351.GD1208@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-4-jose.souza@intel.com>
 <20191218200829.GZ1208@intel.com>
 <bdd9a0a699e143a807cb4cff9f88aaa0cedbe1af.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdd9a0a699e143a807cb4cff9f88aaa0cedbe1af.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 4/6] drm/i915/dp: Fix MST disable
 sequences
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 09:25:33PM +0000, Souza, Jose wrote:
> On Wed, 2019-12-18 at 22:08 +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Dec 18, 2019 at 10:59:08AM -0800, Jos=E9 Roberto de Souza
> > wrote:
> > > The disable sequence after wait for transcoder off was not
> > > correctly
> > > implemented.
> > > The MST disable sequence is basically the same for HSW, SKL, ICL
> > > and
> > > TGL, with just minor changes for TGL.
> > > =

> > > With this last patch we finally fixed the hotplugs triggered by MST
> > > sinks during the disable/enable sequence, those were causing source
> > > to try to do a link training while it was not ready causing CPU
> > > pipe
> > > FIFO underrrus on TGL.
> > > =

> > > v2: Only unsetting TGL_TRANS_DDI_PORT_MASK for TGL on the post
> > > disable sequence
> > > =

> > > v4: Rebased, moved MST sequences to intel_mst_post_disable_dp()
> > > =

> > > BSpec: 4231
> > > BSpec: 4163
> > > BSpec: 22243
> > > BSpec: 49190
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c    | 33 +++++++++++++++
> > > ------
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 33 +++++++++++++--
> > > ------
> > >  2 files changed, 44 insertions(+), 22 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 9d99ec82d072..94ca26be2fee 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -34,6 +34,7 @@
> > >  #include "intel_ddi.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_dp.h"
> > > +#include "intel_dp_mst.h"
> > >  #include "intel_dp_link_training.h"
> > >  #include "intel_dpio_phy.h"
> > >  #include "intel_dsi.h"
> > > @@ -1949,17 +1950,19 @@ void
> > > intel_ddi_disable_transcoder_func(const struct intel_crtc_state
> > > *crtc_state
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > -	i915_reg_t reg =3D TRANS_DDI_FUNC_CTL(cpu_transcoder);
> > > -	u32 val =3D I915_READ(reg);
> > > +	u32 val;
> > > +
> > > +	val =3D I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > > +	val &=3D ~TRANS_DDI_FUNC_ENABLE;
> > >  =

> > >  	if (INTEL_GEN(dev_priv) >=3D 12) {
> > > -		val &=3D ~(TRANS_DDI_FUNC_ENABLE |
> > > TGL_TRANS_DDI_PORT_MASK |
> > > -			 TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
> > > +		if (!intel_crtc_has_type(crtc_state,
> > > INTEL_OUTPUT_DP_MST) ||
> > > +		    intel_dp_mst_is_slave_trans(crtc_state))
> > =

> > if (!intel_dp_mst_is_master_trans())
> > 	val &=3D ...;
> =

> Makes cleaner, thanks
> =

> > =

> > ?
> > =

> > > +			val &=3D ~TGL_TRANS_DDI_PORT_MASK;
> > >  	} else {
> > > -		val &=3D ~(TRANS_DDI_FUNC_ENABLE | TRANS_DDI_PORT_MASK |
> > > -			 TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
> > > +		val &=3D ~TRANS_DDI_PORT_MASK;
> > >  	}
> > > -	I915_WRITE(reg, val);
> > > +	I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
> > >  =

> > >  	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
> > >  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > > @@ -3808,8 +3811,20 @@ static void intel_ddi_post_disable_dp(struct
> > > intel_encoder *encoder,
> > >  	 */
> > >  	intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_OFF);
> > >  =

> > > -	if (INTEL_GEN(dev_priv) < 12 && !is_mst)
> > > -		intel_ddi_disable_pipe_clock(old_crtc_state);
> > > +	if (INTEL_GEN(dev_priv) >=3D 12) {
> > > +		if (is_mst) {
> > =

> > if (intel_dp_mst_is_master_trans()) {
> =

> If you are talking about replace "if (is_mst)" by "if
> (intel_dp_mst_is_master_trans())" both are the same as this function
> will only be called for master. But if you are thinking in replace "if
> (INTEL_GEN(dev_priv) >=3D 12)" too it will not work.
> =

> Will keep is_mst as we already have it the stack of this functions and
> is shorter

Was just trying to match against the spec. is_master_trans() is
1:1 with the spec so least amount of thinking required.

> =

> > =

> > ?
> > =

> > > +			enum transcoder cpu_transcoder;
> > > +			u32 val;
> > > +
> > > +			cpu_transcoder =3D old_crtc_state-
> > > >cpu_transcoder;
> > =

> > Assignment can be done when declaring the variable.
> =

> Okay it is less than 100col.
> =

> > =

> > > +			val =3D
> > > I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > > +			val &=3D ~TGL_TRANS_DDI_PORT_MASK;
> > > +			I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder),
> > > val);
> > > +		}
> > > +	} else {
> > > +		if (!is_mst)
> > > +			intel_ddi_disable_pipe_clock(old_crtc_state);
> > > +	}
> > >  =

> > >  	intel_disable_ddi_buf(encoder, old_crtc_state);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 710137984c71..efd14b0b507b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -347,6 +347,7 @@ static void intel_mst_post_disable_dp(struct
> > > intel_encoder *encoder,
> > >  		to_intel_connector(old_conn_state->connector);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(connector-
> > > >base.dev);
> > >  	bool last_mst_stream;
> > > +	u32 val;
> > >  =

> > >  	intel_dp->active_mst_links--;
> > >  	last_mst_stream =3D intel_dp->active_mst_links =3D=3D 0;
> > > @@ -357,6 +358,19 @@ static void intel_mst_post_disable_dp(struct
> > > intel_encoder *encoder,
> > >  =

> > >  	intel_disable_pipe(old_crtc_state);
> > >  =

> > > +	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
> > =

> > Hmm. I'm having hard to figuring out what these things do. But from a
> > cursory glance it almost looks like part1 is the one that does the
> > AUX
> > stuff to deallocate stuff. So feels like even that part should be
> > here.
> =

> part2 also do aux stuff.
> I also did not deep dive into this part but other drivers also split
> part1 and part2. =

> =

> > =

> > > +
> > > +	val =3D I915_READ(TRANS_DDI_FUNC_CTL(old_crtc_state-
> > > >cpu_transcoder));
> > > +	val &=3D ~TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
> > > +	I915_WRITE(TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
> > > val);
> > > +
> > > +	if (intel_de_wait_for_set(dev_priv, intel_dp-
> > > >regs.dp_tp_status,
> > > +				  DP_TP_STATUS_ACT_SENT, 1))
> > > +		DRM_ERROR("Timed out waiting for ACT sent when
> > > disabling\n");
> > =

> > I guess we were missing this step entirely. Dunno if we want ERROR
> > for
> > this. Not sure how much noise it'll generate when someone forcefully
> > yanks the cable...
> =

> This waits the HW send the ACT, it do not wait for any sink
> confirmation. We dont get any warning when removing the cable.

Not really sure what it waits for. Some internal state machine I guess.
Just wasn't sure that wasn't tied to some actual wiggling of some pins
which would require the other end of the cable to be awake.

> =

> > =

> > > +	drm_dp_check_act_status(&intel_dp->mst_mgr);
> > > +
> > > +	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector-
> > > >port);
> > =

> > This seems to be pure sw stuff so not so critical where it is.
> > Keeping
> > it next to the hw payload deallocation seems like a good approach.
> > =

> > > +
> > >  	intel_ddi_disable_transcoder_func(old_crtc_state);
> > >  =

> > >  	if (INTEL_GEN(dev_priv) >=3D 9)
> > > @@ -364,6 +378,12 @@ static void intel_mst_post_disable_dp(struct
> > > intel_encoder *encoder,
> > >  	else
> > >  		ironlake_pfit_disable(old_crtc_state);
> > >  =

> > > +	/*
> > > +	 * Power down mst path before disabling the port, otherwise we
> > > end
> > > +	 * up getting interrupts from the sink upon detecting link
> > > loss.
> > > +	 */
> > > +	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector-
> > > >port,
> > > +				     false);
> > =

> > And I guess this was needed to avoid the link loss screams from the
> > sink?
> =

> Yes, we were doing it too late and sink was not happy.
> =

> > =

> > Seems to match the spec better than before at least. Still a bit
> > unsure
> > about he part1/2 stuff for the deallocation. But if that should be
> > changed we can do it as a followup.
> =

> Sure
> =

> > =

> > The code movement into .post_disable() really did make for a much
> > nicer experience when comparing with the spec. Or at least I didn't
> > lose as much hair as with the previous version :)
> =

> Thanks for that, I had imagined a way bigger change when you suggested
> it.
> =

> > =

> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > >  	/*
> > >  	 * From TGL spec: "If multi-stream slave transcoder: Configure
> > >  	 * Transcoder Clock Select to direct no clock to the
> > > transcoder"
> > > @@ -374,19 +394,6 @@ static void intel_mst_post_disable_dp(struct
> > > intel_encoder *encoder,
> > >  	if (INTEL_GEN(dev_priv) < 12 || !last_mst_stream)
> > >  		intel_ddi_disable_pipe_clock(old_crtc_state);
> > >  =

> > > -	/* this can fail */
> > > -	drm_dp_check_act_status(&intel_dp->mst_mgr);
> > > -	/* and this can also fail */
> > > -	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
> > > -
> > > -	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector-
> > > >port);
> > > -
> > > -	/*
> > > -	 * Power down mst path before disabling the port, otherwise we
> > > end
> > > -	 * up getting interrupts from the sink upon detecting link
> > > loss.
> > > -	 */
> > > -	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector-
> > > >port,
> > > -				     false);
> > >  =

> > >  	intel_mst->connector =3D NULL;
> > >  	if (last_mst_stream)
> > > -- =

> > > 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
