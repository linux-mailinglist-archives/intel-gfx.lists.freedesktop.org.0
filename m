Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 585B41252FE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 21:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7A06EA69;
	Wed, 18 Dec 2019 20:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE806EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 20:17:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 12:17:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="227998647"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 18 Dec 2019 12:16:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 22:16:57 +0200
Date: Wed, 18 Dec 2019 22:16:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191218201657.GB1208@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-2-jose.souza@intel.com>
 <20191218192407.GW1208@intel.com>
 <bb1c33cd1f75104225fabb6398c4f4e355b61ec5.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb1c33cd1f75104225fabb6398c4f4e355b61ec5.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/tgl: Select master
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

On Wed, Dec 18, 2019 at 08:06:34PM +0000, Souza, Jose wrote:
> On Wed, 2019-12-18 at 21:24 +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Dec 18, 2019 at 10:59:06AM -0800, Jos=E9 Roberto de Souza
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

> > > BSpec: 50493
> > > BSpec: 49190
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  14 ++
> > >  drivers/gpu/drm/i915/display/intel_atomic.h   |   4 +
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  13 +-
> > >  .../drm/i915/display/intel_display_types.h    |   3 +
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 143
> > > ++++++++++++++++--
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
> > >  7 files changed, 183 insertions(+), 13 deletions(-)
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
> > > index fa40ba7cbcad..9d99ec82d072 100644
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
> > > @@ -4400,6 +4405,11 @@ void intel_ddi_get_config(struct
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
> > > index 25bf084427bf..59b3bfe8b721 100644
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
> > > @@ -11630,6 +11631,7 @@ static void intel_crtc_state_reset(struct
> > > intel_crtc_state *crtc_state,
> > >  	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
> > >  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
> > >  	crtc_state->scaler_state.scaler_id =3D -1;
> > > +	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> > >  }
> > >  =

> > >  /* Returns the currently programmed mode of the given encoder. */
> > > @@ -12477,6 +12479,9 @@ static void intel_dump_pipe_config(const
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
> > > @@ -12618,6 +12623,7 @@ intel_crtc_prepare_cleared_state(struct
> > > intel_crtc_state *crtc_state)
> > >  	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
> > >  	       sizeof(saved_state->icl_port_dplls));
> > >  	saved_state->crc_enabled =3D crtc_state->crc_enabled;
> > > +	saved_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> > =

> > That's redundant now?
> =

> No, we don't call intel_crtc_state_reset() when computing state.
> Did not changed that because we are copying a bunch of stuff from the
> saved_state.

Doh. I think we should be able just call the reset thing in saved_state
here?

Oh, and we seem to have another one in vlv_force_pll_on(). Maybe we
should even add a intel_crtc_state_alloc() or something which would
give us a properly initialized fresh state.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
