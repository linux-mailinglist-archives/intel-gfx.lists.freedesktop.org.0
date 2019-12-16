Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C13121BB8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 22:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855568901E;
	Mon, 16 Dec 2019 21:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6995B8901E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 21:30:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 13:30:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="266374954"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 Dec 2019 13:29:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Dec 2019 23:29:58 +0200
Date: Mon, 16 Dec 2019 23:29:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191216212958.GC1208@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-7-jose.souza@intel.com>
 <20191212204429.GT1208@intel.com> <20191213205615.GI1208@intel.com>
 <1c28dd0726dc881192a9f684e1681e2ede515d25.camel@intel.com>
 <b9dfaeecbd3a11f8d691b271b72eeb5ea6f906cc.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9dfaeecbd3a11f8d691b271b72eeb5ea6f906cc.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 rebased 07/11] drm/i915/tgl: Select
 master transcoder for MST stream
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

On Mon, Dec 16, 2019 at 07:07:52PM +0000, Souza, Jose wrote:
> On Mon, 2019-12-16 at 09:23 -0800, Jos=E9 Roberto de Souza wrote:
> > On Fri, 2019-12-13 at 22:56 +0200, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Dec 12, 2019 at 10:44:29PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Wed, Dec 11, 2019 at 10:45:22AM -0800, Jos=E9 Roberto de Souza
> > > > wrote:
> > > > > On TGL the blending of all the streams have moved from DDI to
> > > > > transcoder, so now every transcoder working over the same MST
> > > > > port must
> > > > > send its stream to a master transcoder and master will send to
> > > > > DDI
> > > > > respecting the time slots.
> > > > > =

> > > > > So here adding all the CRTCs that shares the same MST stream if
> > > > > needed and computing their state again, it will pick the lowest
> > > > > pipe/transcoder among the ones in the same stream to be master.
> > > > > =

> > > > > Most of the time skl_commit_modeset_enables() enables pipes in
> > > > > a
> > > > > crescent order but due DDB overlapping it might not happen,
> > > > > this
> > > > > scenarios will be handled in the next patch.
> > > > > =

> > > > > v2:
> > > > > - Using recently added intel_crtc_state_reset() to set
> > > > > mst_master_transcoder to invalid transcoder for all non gen12 &
> > > > > MST
> > > > > code paths
> > > > > - Setting lowest pipe/transcoder as master, previously it was
> > > > > the
> > > > > first one but setting a predictable one will help in future MST
> > > > > e
> > > > > port sync integration
> > > > > - Moving to intel type as much as we can
> > > > > =

> > > > > BSpec: 50493
> > > > > BSpec: 49190
> > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  14 ++
> > > > >  drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +
> > > > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
> > > > >  drivers/gpu/drm/i915/display/intel_display.c  |  13 +-
> > > > >  .../drm/i915/display/intel_display_types.h    |   3 +
> > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 139
> > > > > ++++++++++++++++--
> > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
> > > > >  7 files changed, 178 insertions(+), 13 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > index 6e93a39a6fec..69a0430c4638 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > @@ -206,6 +206,20 @@
> > > > > intel_digital_connector_needs_modeset(struct
> > > > > intel_atomic_state *state,
> > > > >  	       (new_crtc &&
> > > > > drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi));
> > > > >  }
> > > > >  =

> > > > > +struct intel_digital_connector_state *
> > > > > +intel_atomic_get_digital_connector_state(struct
> > > > > intel_atomic_state *state,
> > > > > +					 struct intel_connector
> > > > > *connector)
> > > > > +{
> > > > > +	struct drm_connector_state *connector_state;
> > > > > +
> > > > > +	connector_state =3D
> > > > > drm_atomic_get_connector_state(&state->base,
> > > > > +							 &conne
> > > > > ctor-
> > > > > > base);
> > > > > +	if (IS_ERR(connector_state))
> > > > > +		return ERR_CAST(connector_state);
> > > > > +
> > > > > +	return
> > > > > to_intel_digital_connector_state(connector_state);
> > > > > +}
> > > > > +
> > > > >  /**
> > > > >   * intel_crtc_duplicate_state - duplicate crtc state
> > > > >   * @crtc: drm crtc
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h
> > > > > b/drivers/gpu/drm/i915/display/intel_atomic.h
> > > > > index ba9cc29a5865..6e8638d83d28 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> > > > > @@ -35,6 +35,9 @@ struct drm_connector_state *
> > > > >  intel_digital_connector_duplicate_state(struct drm_connector
> > > > > *connector);
> > > > >  bool intel_digital_connector_needs_modeset(struct
> > > > > intel_atomic_state *state,
> > > > >  					   struct
> > > > > intel_connector
> > > > > *connector);
> > > > > +struct intel_digital_connector_state *
> > > > > +intel_atomic_get_digital_connector_state(struct
> > > > > intel_atomic_state *state,
> > > > > +					 struct intel_connector
> > > > > *connector);
> > > > >  =

> > > > >  struct drm_crtc_state *intel_crtc_duplicate_state(struct
> > > > > drm_crtc *crtc);
> > > > >  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > index 5b6f32517c75..6ee5230045eb 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > @@ -1903,8 +1903,13 @@
> > > > > intel_ddi_transcoder_func_reg_val_get(const struct
> > > > > intel_crtc_state *crtc_state)
> > > > >  		temp |=3D TRANS_DDI_MODE_SELECT_DP_MST;
> > > > >  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> > > > >  =

> > > > > -		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > -			temp |=3D
> > > > > TRANS_DDI_MST_TRANSPORT_SELECT(crtc_state->cpu_transcoder);
> > > > > +		if (INTEL_GEN(dev_priv) >=3D 12) {
> > > > > +			enum transcoder master;
> > > > > +
> > > > > +			master =3D crtc_state-
> > > > > >mst_master_transcoder;
> > > > > +			WARN_ON(master =3D=3D INVALID_TRANSCODER);
> > > > > +			temp |=3D
> > > > > TRANS_DDI_MST_TRANSPORT_SELECT(master);
> > > > > +		}
> > > > >  	} else {
> > > > >  		temp |=3D TRANS_DDI_MODE_SELECT_DP_SST;
> > > > >  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> > > > > @@ -4377,6 +4382,11 @@ void intel_ddi_get_config(struct
> > > > > intel_encoder *encoder,
> > > > >  		pipe_config->output_types |=3D
> > > > > BIT(INTEL_OUTPUT_DP_MST);
> > > > >  		pipe_config->lane_count =3D
> > > > >  			((temp & DDI_PORT_WIDTH_MASK) >>
> > > > > DDI_PORT_WIDTH_SHIFT) + 1;
> > > > > +
> > > > > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > +			pipe_config->mst_master_transcoder =3D
> > > > > +					REG_FIELD_GET(TRANS_DDI
> > > > > _MST_TRA
> > > > > NSPORT_SELECT_MASK, temp);
> > > > > +
> > > > >  		intel_dp_get_m_n(intel_crtc, pipe_config);
> > > > >  		break;
> > > > >  	default:
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 39b00a19d752..1cecce2f54f8 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -46,6 +46,7 @@
> > > > >  #include "display/intel_crt.h"
> > > > >  #include "display/intel_ddi.h"
> > > > >  #include "display/intel_dp.h"
> > > > > +#include "display/intel_dp_mst.h"
> > > > >  #include "display/intel_dsi.h"
> > > > >  #include "display/intel_dvo.h"
> > > > >  #include "display/intel_gmbus.h"
> > > > > @@ -11663,6 +11664,7 @@ static void
> > > > > intel_crtc_state_reset(struct
> > > > > intel_crtc_state *crtc_state,
> > > > >  	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
> > > > >  	crtc_state->output_format =3D
> > > > > INTEL_OUTPUT_FORMAT_INVALID;
> > > > >  	crtc_state->scaler_state.scaler_id =3D -1;
> > > > > +	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> > > > >  }
> > > > >  =

> > > > >  /* Returns the currently programmed mode of the given encoder.
> > > > > */
> > > > > @@ -12510,6 +12512,9 @@ static void
> > > > > intel_dump_pipe_config(const
> > > > > struct intel_crtc_state *pipe_config,
> > > > >  			      pipe_config->csc_mode,
> > > > > pipe_config-
> > > > > > gamma_mode,
> > > > >  			      pipe_config->gamma_enable,
> > > > > pipe_config-
> > > > > > csc_enable);
> > > > >  =

> > > > > +	DRM_DEBUG_KMS("MST master transcoder: %s\n",
> > > > > +		      transcoder_name(pipe_config-
> > > > > > mst_master_transcoder));
> > > > > +
> > > > >  dump_planes:
> > > > >  	if (!state)
> > > > >  		return;
> > > > > @@ -12651,6 +12656,7 @@ intel_crtc_prepare_cleared_state(struct
> > > > > intel_crtc_state *crtc_state)
> > > > >  	memcpy(saved_state->icl_port_dplls, crtc_state-
> > > > > >icl_port_dplls,
> > > > >  	       sizeof(saved_state->icl_port_dplls));
> > > > >  	saved_state->crc_enabled =3D crtc_state->crc_enabled;
> > > > > +	saved_state->mst_master_transcoder =3D
> > > > > INVALID_TRANSCODER;
> > > > >  	if (IS_G4X(dev_priv) ||
> > > > >  	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> > > > >  		saved_state->wm =3D crtc_state->wm;
> > > > > @@ -13290,6 +13296,8 @@ intel_pipe_config_compare(const struct
> > > > > intel_crtc_state *current_config,
> > > > >  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> > > > >  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> > > > >  =

> > > > > +	PIPE_CONF_CHECK_I(mst_master_transcoder);
> > > > > +
> > > > >  #undef PIPE_CONF_CHECK_X
> > > > >  #undef PIPE_CONF_CHECK_I
> > > > >  #undef PIPE_CONF_CHECK_BOOL
> > > > > @@ -14374,7 +14382,7 @@ static void
> > > > > intel_commit_modeset_disables(struct intel_atomic_state *state)
> > > > >  	u32 handled =3D 0;
> > > > >  	int i;
> > > > >  =

> > > > > -	/* Only disable port sync slaves */
> > > > > +	/* Only disable port sync and MST slaves */
> > > > >  	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > > > old_crtc_state,
> > > > >  					    new_crtc_state, i)
> > > > > {
> > > > >  		if (!needs_modeset(new_crtc_state))
> > > > > @@ -14388,7 +14396,8 @@ static void
> > > > > intel_commit_modeset_disables(struct intel_atomic_state *state)
> > > > >  		 * slave CRTCs are disabled first and then
> > > > > master CRTC
> > > > > since
> > > > >  		 * Slave vblanks are masked till Master
> > > > > Vblanks.
> > > > >  		 */
> > > > > -		if (!is_trans_port_sync_slave(old_crtc_state))
> > > > > +		if (!is_trans_port_sync_slave(old_crtc_state)
> > > > > &&
> > > > > +		    !intel_dp_mst_is_slave_trans(old_crtc_state
> > > > > ))
> > > > >  			continue;
> > > > >  =

> > > > >  		intel_pre_plane_update(state, crtc);
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > index 83ea04149b77..630a94892b7b 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > @@ -1054,6 +1054,9 @@ struct intel_crtc_state {
> > > > >  =

> > > > >  	/* Bitmask to indicate slaves attached */
> > > > >  	u8 sync_mode_slaves_mask;
> > > > > +
> > > > > +	/* Only valid on TGL+ */
> > > > > +	enum transcoder mst_master_transcoder;
> > > > >  };
> > > > >  =

> > > > >  struct intel_crtc {
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > index 926e49f449a6..12f5e799d91f 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > > @@ -87,6 +87,49 @@ static int
> > > > > intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> > > > >  	return 0;
> > > > >  }
> > > > >  =

> > > > > +/*
> > > > > + * Iterate over all connectors and set mst_master_transcoder
> > > > > to
> > > > > the smallest
> > > > > + * transcoder id that shares the same MST connector.
> > > > > + */
> > > > > +static int
> > > > > +intel_dp_mst_master_trans_compute(struct intel_encoder
> > > > > *encoder,
> > > > > +				  struct intel_crtc_state
> > > > > *crtc_state,
> > > > > +				  struct drm_connector_state
> > > > > *connector_state)
> > > > > +{
> > > > > +	struct intel_atomic_state *state =3D
> > > > > to_intel_atomic_state(crtc_state->uapi.state);
> > > > > +	struct intel_connector *connector =3D
> > > > > to_intel_connector(connector_state->connector);
> > > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder-
> > > > > >base.dev);
> > > > > +	struct intel_digital_connector_state
> > > > > *iter_connector_state;
> > > > > +	struct intel_connector *iter_connector;
> > > > > +	int i;
> > > > > +
> > > > > +	if (INTEL_GEN(dev_priv) < 12)
> > > > > +		return 0;
> > > > > +
> > > > > +	crtc_state->mst_master_transcoder =3D
> > > > > I915_MAX_TRANSCODERS;
> > > > > +
> > > > > +	for_each_new_intel_connector_in_state(state,
> > > > > iter_connector,
> > > > > +					      iter_connector_st
> > > > > ate, i)
> > > > > {
> > > > > +		struct intel_crtc_state *iter_crtc_state;
> > > > > +		struct intel_crtc *iter_crtc;
> > > > > +
> > > > > +		if (connector->mst_port !=3D iter_connector-
> > > > > >mst_port ||
> > > > > +		    !iter_connector_state->base.crtc)
> > > > > +			continue;
> > > > > +
> > > > > +		iter_crtc =3D to_intel_crtc(iter_connector_state-
> > > > > > base.crtc);
> > > > > +		iter_crtc_state =3D
> > > > > intel_atomic_get_new_crtc_state(state,
> > > > > +								=

> > > > >   iter_
> > > > > crtc);
> > > > > +		if (!iter_crtc_state->uapi.active)
> > > > > +			continue;
> > > > > +
> > > > > +		if (iter_crtc_state->cpu_transcoder <
> > > > > crtc_state-
> > > > > > mst_master_transcoder)
> > > > > +			crtc_state->mst_master_transcoder =3D
> > > > > iter_crtc_state->cpu_transcoder;
> > > =

> > > Was just reading Manasi's port sync stuff when I realized this
> > > won't
> > > work. We haven't necessarily compute cpu_transcoder for the other
> > > pipes yet. So I suggest we extract the code to compute the
> > > cpu_transcoder
> > > from intel_ddi_connector_get_hw_state() and use it everywhere,
> > > including
> > > here.
> > =

> > okay
> =

> Thinking better we dont need it, only in the initial commit
> cpu_transcoder will have a wrong value, after that the previous state
> will be duplicated, user will change the properties in the drm struct,
> check/commit and it will keep the previous cpu_transcoder.
> =

> And because MST do all the topology discovery the initial state do not
> matter.
> =

> But if you still think is more clear do the pipe to transcoder cast(TGL
> don`t have a EDP transcoder), I will do it.

Yeah, I don't really like relying on the old value when we in theory
are going to overwrite it. Yes, in this case we can know that it will
get computed to the same value, but still feels too magicy to rely on
that. It'll set a bad example of nothing else. Someone is like to
copypaste it for something less innocuous than cpu_transcoder.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
