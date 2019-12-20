Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947AE12810D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD5A6E112;
	Fri, 20 Dec 2019 17:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244226E10A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:03:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:03:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="222525671"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 20 Dec 2019 09:03:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 19:03:16 +0200
Date: Fri, 20 Dec 2019 19:03:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191220170316.GS1208@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
 <20191220152954.83276-3-jose.souza@intel.com>
 <20191220154710.GO1208@intel.com>
 <fa59bd3005e0ae580e99bb7e4c26fbbca9b83779.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa59bd3005e0ae580e99bb7e4c26fbbca9b83779.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 3/7] drm/i915/tgl: Select master
 transcoder for MST stream
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

On Fri, Dec 20, 2019 at 04:53:22PM +0000, Souza, Jose wrote:
> On Fri, 2019-12-20 at 17:47 +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Dec 20, 2019 at 07:29:50AM -0800, Jos=E9 Roberto de Souza
> > wrote:
> > > On TGL the blending of all the streams have moved from DDI to
> > > transcoder, so now every transcoder working over the same MST port
> > > must
> > > send its stream to a master transcoder and master will send to DDI
> > > respecting the time slots.
> > > =

> > > So here adding all the CRTCs that shares the same MST stream if
> > > needed and computing their state again, it will pick the lowest
> > > pipe/transcoder among the ones in the same stream to be master.
> > > =

> > > Most of the time skl_commit_modeset_enables() enables pipes in a
> > > crescent order but due DDB overlapping it might not happen, this
> > > scenarios will be handled in the next patch.
> > > =

> > > v2:
> > > - Using recently added intel_crtc_state_reset() to set
> > > mst_master_transcoder to invalid transcoder for all non gen12 & MST
> > > code paths
> > > - Setting lowest pipe/transcoder as master, previously it was the
> > > first one but setting a predictable one will help in future MST e
> > > port sync integration
> > > - Moving to intel type as much as we can
> > > =

> > > v3:
> > > - Now intel_dp_mst_master_trans_compute() returns the MST master
> > > transcoder
> > > - Replaced stdbool.h by linux/types.h
> > > - Skip the connector being checked in
> > > intel_dp_mst_atomic_master_trans_check()
> > > - Using pipe instead of transcoder to compute MST master
> > > =

> > > v4:
> > > - renamed connector_state to conn_state
> > > =

> > > v5:
> > > - Improved the parameters of intel_dp_mst_master_trans_compute() to
> > > simply code
> > > - Added call drm_atomic_add_affected_planes() in
> > > intel_dp_mst_atomic_master_trans_check() as helper could not do it
> > > for us
> > > - Removed "if (ret)" left over from v3 changes
> > > =

> > > BSpec: 50493
> > > BSpec: 49190
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  14 ++
> > >  drivers/gpu/drm/i915/display/intel_atomic.h   |   4 +
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
> > >  .../drm/i915/display/intel_display_types.h    |   3 +
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 140
> > > ++++++++++++++++--
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
> > >  7 files changed, 179 insertions(+), 13 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index b7dda18b6f29..0eb973f65977 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -192,6 +192,20 @@ intel_connector_needs_modeset(struct
> > > intel_atomic_state *state,
> > >  									=

> > >     new_conn_state->crtc)));
> > >  }
> > >  =

> > > +struct intel_digital_connector_state *
> > > +intel_atomic_get_digital_connector_state(struct intel_atomic_state
> > > *state,
> > > +					 struct intel_connector
> > > *connector)
> > > +{
> > > +	struct drm_connector_state *conn_state;
> > > +
> > > +	conn_state =3D drm_atomic_get_connector_state(&state->base,
> > > +						    &connector->base);
> > > +	if (IS_ERR(conn_state))
> > > +		return ERR_CAST(conn_state);
> > > +
> > > +	return to_intel_digital_connector_state(conn_state);
> > > +}
> > > +
> > >  /**
> > >   * intel_crtc_duplicate_state - duplicate crtc state
> > >   * @crtc: drm crtc
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h
> > > b/drivers/gpu/drm/i915/display/intel_atomic.h
> > > index a7d1a8576c48..74c749dbfb4f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> > > @@ -17,6 +17,7 @@ struct drm_device;
> > >  struct drm_i915_private;
> > >  struct drm_property;
> > >  struct intel_atomic_state;
> > > +struct intel_connector;
> > >  struct intel_crtc;
> > >  struct intel_crtc_state;
> > >  =

> > > @@ -34,6 +35,9 @@ struct drm_connector_state *
> > >  intel_digital_connector_duplicate_state(struct drm_connector
> > > *connector);
> > >  bool intel_connector_needs_modeset(struct intel_atomic_state
> > > *state,
> > >  				   struct drm_connector *connector);
> > > +struct intel_digital_connector_state *
> > > +intel_atomic_get_digital_connector_state(struct intel_atomic_state
> > > *state,
> > > +					 struct intel_connector
> > > *connector);
> > >  =

> > >  struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc
> > > *crtc);
> > >  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index c9ba7d7f3787..c3ac950e79a8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -1899,8 +1899,13 @@ intel_ddi_transcoder_func_reg_val_get(const
> > > struct intel_crtc_state *crtc_state)
> > >  		temp |=3D TRANS_DDI_MODE_SELECT_DP_MST;
> > >  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> > >  =

> > > -		if (INTEL_GEN(dev_priv) >=3D 12)
> > > -			temp |=3D
> > > TRANS_DDI_MST_TRANSPORT_SELECT(crtc_state->cpu_transcoder);
> > > +		if (INTEL_GEN(dev_priv) >=3D 12) {
> > > +			enum transcoder master;
> > > +
> > > +			master =3D crtc_state->mst_master_transcoder;
> > > +			WARN_ON(master =3D=3D INVALID_TRANSCODER);
> > > +			temp |=3D TRANS_DDI_MST_TRANSPORT_SELECT(master);
> > > +		}
> > >  	} else {
> > >  		temp |=3D TRANS_DDI_MODE_SELECT_DP_SST;
> > >  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> > > @@ -4405,6 +4410,11 @@ void intel_ddi_get_config(struct
> > > intel_encoder *encoder,
> > >  		pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DP_MST);
> > >  		pipe_config->lane_count =3D
> > >  			((temp & DDI_PORT_WIDTH_MASK) >>
> > > DDI_PORT_WIDTH_SHIFT) + 1;
> > > +
> > > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > > +			pipe_config->mst_master_transcoder =3D
> > > +					REG_FIELD_GET(TRANS_DDI_MST_TRA
> > > NSPORT_SELECT_MASK, temp);
> > > +
> > >  		intel_dp_get_m_n(intel_crtc, pipe_config);
> > >  		break;
> > >  	default:
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index fc77829ea958..eb97ad562c96 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -46,6 +46,7 @@
> > >  #include "display/intel_crt.h"
> > >  #include "display/intel_ddi.h"
> > >  #include "display/intel_dp.h"
> > > +#include "display/intel_dp_mst.h"
> > >  #include "display/intel_dsi.h"
> > >  #include "display/intel_dvo.h"
> > >  #include "display/intel_gmbus.h"
> > > @@ -11627,6 +11628,7 @@ static void intel_crtc_state_reset(struct
> > > intel_crtc_state *crtc_state,
> > >  	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
> > >  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
> > >  	crtc_state->scaler_state.scaler_id =3D -1;
> > > +	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> > >  }
> > >  =

> > >  static struct intel_crtc_state *intel_crtc_state_alloc(struct
> > > intel_crtc *crtc)
> > > @@ -12484,6 +12486,9 @@ static void intel_dump_pipe_config(const
> > > struct intel_crtc_state *pipe_config,
> > >  			      pipe_config->csc_mode, pipe_config-
> > > >gamma_mode,
> > >  			      pipe_config->gamma_enable, pipe_config-
> > > >csc_enable);
> > >  =

> > > +	DRM_DEBUG_KMS("MST master transcoder: %s\n",
> > > +		      transcoder_name(pipe_config-
> > > >mst_master_transcoder));
> > > +
> > >  dump_planes:
> > >  	if (!state)
> > >  		return;
> > > @@ -13264,6 +13269,8 @@ intel_pipe_config_compare(const struct
> > > intel_crtc_state *current_config,
> > >  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> > >  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> > >  =

> > > +	PIPE_CONF_CHECK_I(mst_master_transcoder);
> > > +
> > >  #undef PIPE_CONF_CHECK_X
> > >  #undef PIPE_CONF_CHECK_I
> > >  #undef PIPE_CONF_CHECK_BOOL
> > > @@ -14348,7 +14355,7 @@ static void
> > > intel_commit_modeset_disables(struct intel_atomic_state *state)
> > >  	u32 handled =3D 0;
> > >  	int i;
> > >  =

> > > -	/* Only disable port sync slaves */
> > > +	/* Only disable port sync and MST slaves */
> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state,
> > >  					    new_crtc_state, i) {
> > >  		if (!needs_modeset(new_crtc_state))
> > > @@ -14362,7 +14369,8 @@ static void
> > > intel_commit_modeset_disables(struct intel_atomic_state *state)
> > >  		 * slave CRTCs are disabled first and then master CRTC
> > > since
> > >  		 * Slave vblanks are masked till Master Vblanks.
> > >  		 */
> > > -		if (!is_trans_port_sync_slave(old_crtc_state))
> > > +		if (!is_trans_port_sync_slave(old_crtc_state) &&
> > > +		    !intel_dp_mst_is_slave_trans(old_crtc_state))
> > >  			continue;
> > >  =

> > >  		intel_pre_plane_update(state, crtc);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 83ea04149b77..630a94892b7b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1054,6 +1054,9 @@ struct intel_crtc_state {
> > >  =

> > >  	/* Bitmask to indicate slaves attached */
> > >  	u8 sync_mode_slaves_mask;
> > > +
> > > +	/* Only valid on TGL+ */
> > > +	enum transcoder mst_master_transcoder;
> > >  };
> > >  =

> > >  struct intel_crtc {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 7aa0975c33b7..a6237da9ac52 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -87,10 +87,53 @@ static int
> > > intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> > >  	return 0;
> > >  }
> > >  =

> > > +/*
> > > + * Iterate over all connectors and return the smallest transcoder
> > > in the MST
> > > + * stream
> > > + */
> > > +static enum transcoder
> > > +intel_dp_mst_master_trans_compute(struct intel_atomic_state
> > > *state,
> > > +				  struct intel_dp *mst_port)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct intel_digital_connector_state *conn_state;
> > > +	struct intel_connector *connector;
> > > +	enum pipe ret =3D I915_MAX_PIPES;
> > > +	int i;
> > > +
> > > +	if (INTEL_GEN(dev_priv) < 12)
> > > +		return INVALID_TRANSCODER;
> > > +
> > > +	for_each_new_intel_connector_in_state(state, connector,
> > > conn_state, i) {
> > > +		struct intel_crtc_state *crtc_state;
> > > +		struct intel_crtc *crtc;
> > > +
> > > +		if (connector->mst_port !=3D mst_port || !conn_state-
> > > >base.crtc)
> > > +			continue;
> > > +
> > > +		crtc =3D to_intel_crtc(conn_state->base.crtc);
> > > +		crtc_state =3D intel_atomic_get_new_crtc_state(state,
> > > crtc);
> > > +		if (!crtc_state->uapi.active)
> > > +			continue;
> > > +
> > > +		/*
> > > +		 * Using crtc->pipe because crtc_state->cpu_transcoder
> > > is
> > > +		 * computed, so others CRTCs could have non-computed
> > > +		 * cpu_transcoder
> > > +		 */
> > > +		if (crtc->pipe < ret)
> > > +			ret =3D crtc->pipe;
> > > +	}
> > =

> > Still has the problem that ret=3D=3DI915_MAX_PIPES if no active crtcs in
> > the
> > state.
> > =

> > I guess a simple
> > if (ret =3D=3D MAX_PIPES)
> > 	return INVALID;
> > should do here. Or something similar.
> =

> It would never happen, if it is computing state for this MST connector
> it is active, so it can be master. But okay adding it anyways.

active !=3D enabled. Pretty sure it will happen.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
