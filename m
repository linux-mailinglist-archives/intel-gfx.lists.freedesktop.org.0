Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A4458E920
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 10:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D3AAD2F3;
	Wed, 10 Aug 2022 08:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6862818B894
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 08:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660121802; x=1691657802;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RoVKFTVAckoIvOm9SIDpNqQ47QiX2AH1SMI+bNqKy6A=;
 b=ldhLiFOvsJzEWtflwnOqXBav37JuLf14jx8K1VntQHGrb5KFr2gZafgY
 4tuQEHJ0R37MV48TCXT8rzfVMJDJqfekUQrJncz9EkoHneWncgZk57Vbm
 Gu88Jvv2HFd8IIUAD+RCInXUvJSRPoTcqAB3J/seghD+xrhIibDrMcBoJ
 OZ8MR3ZFqA9tPcUO+pL+5ly8KbcyiPaZAYyKN/52tJRMKnmFPp/UJIh+o
 Ql+DxUt/QGdEjnpFRTWVvhslIhxXm9S9mGHIJQsuZmEi5T34C0NE7M6h5
 7ByLZGeGc0gbVf8e+1CDTDAFvSrMCD1Kn6KZ3pcCltS9g5BtUSrNQYBKS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="352768859"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="352768859"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 01:56:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="664811855"
Received: from tsanates-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.129])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 01:56:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220804082840.3468949-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220804082840.3468949-1-suraj.kandpal@intel.com>
 <20220804082840.3468949-3-suraj.kandpal@intel.com>
Date: Wed, 10 Aug 2022 11:56:36 +0300
Message-ID: <87k07g8ojf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Enabling WD Transcoder
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

On Thu, 04 Aug 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Adding support for writeback transcoder to start capturing frames using
> interrupt mechanism

Basically this changes the assumption that all drm_connectors in i915
are embedded within intel_connectors. That needs to be a separate prep
patch, actually several patches, without the actual writeback
implementation.

Some random comments inline. It's not so much about the writeback
implementation details, but about the overall stuff, with a bunch of
nitpicking about other details.

BR,
Jani.

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  63 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |  15 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  14 +-
>  .../drm/i915/display/intel_display_types.h    |  29 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
>  .../drm/i915/display/intel_modeset_setup.c    |  67 +-
>  .../drm/i915/display/intel_modeset_verify.c   |  18 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
>  .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
>  drivers/gpu/drm/i915/display/intel_wd.c       | 733 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wd.h       |  76 ++
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_irq.c               |   8 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   7 +-
>  19 files changed, 1046 insertions(+), 27 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff3..ec63ed16c250 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -302,6 +302,7 @@ i915-y +=3D \
>  	display/intel_tv.o \
>  	display/intel_vdsc.o \
>  	display/intel_vrr.o \
> +	display/intel_wd.o \
>  	display/vlv_dsi.o \
>  	display/vlv_dsi_pll.o
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/=
i915/display/intel_acpi.c
> index e78430001f07..ae08db164f73 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -247,6 +247,7 @@ static u32 acpi_display_type(struct intel_connector *=
connector)
>  	case DRM_MODE_CONNECTOR_LVDS:
>  	case DRM_MODE_CONNECTOR_eDP:
>  	case DRM_MODE_CONNECTOR_DSI:
> +	case DRM_MODE_CONNECTOR_WRITEBACK:
>  		display_type =3D ACPI_DISPLAY_TYPE_INTERNAL_DIGITAL;
>  		break;
>  	case DRM_MODE_CONNECTOR_Unknown:
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 4442aa355f86..f9fa612ac991 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -512,6 +512,9 @@ void intel_pipe_update_start(struct intel_crtc_state =
*new_crtc_state)
>  	if (min <=3D 0 || max <=3D 0)
>  		goto irq_disable;
>=20=20
> +	if (new_crtc_state->output_types & BIT(INTEL_OUTPUT_WD))
> +		goto irq_disable;
> +
>  	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
>  		goto irq_disable;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drive=
rs/gpu/drm/i915/display/intel_crtc_state_dump.c
> index e9212f69c360..f49630d95d6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -71,6 +71,7 @@ static const char * const output_type_str[] =3D {
>  	OUTPUT_TYPE(DSI),
>  	OUTPUT_TYPE(DDI),
>  	OUTPUT_TYPE(DP_MST),
> +	OUTPUT_TYPE(WD)

Please keep the comma at the end so whatever gets added next doesn't
need to add it.

>  };
>=20=20
>  #undef OUTPUT_TYPE
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index a4c8493f3ce7..1360406ca531 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1974,6 +1974,12 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct=
 intel_encoder *encoder)
>  	 */
>  	if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
>  		return;
> +	/*
> +	 * WD transcoder is a virtual encoder hence sanization
> +	 * is not required for it
> +	 */
> +	if (encoder->type =3D=3D INTEL_OUTPUT_WD)
> +		return;
>=20=20
>  	if (!encoder->base.crtc && intel_encoder_is_dp(encoder)) {
>  		u8 pipe_mask;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a0f84cbe974f..90b41b49e1d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -116,6 +116,7 @@
>  #include "intel_sprite.h"
>  #include "intel_tc.h"
>  #include "intel_vga.h"
> +#include "intel_wd.h"
>  #include "i9xx_plane.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> @@ -1507,6 +1508,9 @@ static void intel_encoders_update_prepare(struct in=
tel_atomic_state *state)
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>=20=20
> +		if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +			continue;
> +
>  		if (!intel_connector_needs_modeset(state, connector))
>  			continue;
>=20=20
> @@ -1536,6 +1540,9 @@ static void intel_encoders_update_complete(struct i=
ntel_atomic_state *state)
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>=20=20
> +		if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +			continue;
> +
>  		if (!intel_connector_needs_modeset(state, connector))
>  			continue;
>=20=20
> @@ -1550,6 +1557,39 @@ static void intel_encoders_update_complete(struct =
intel_atomic_state *state)
>  	}
>  }
>=20=20
> +static void intel_queue_writeback_job(struct intel_atomic_state *state,
> +		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_connector_state *new_conn_state;
> +	struct drm_connector *connector;
> +	struct drm_writeback_connector *wb_conn;
> +	int i;
> +
> +	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
> +					i) {
> +		if (!new_conn_state->writeback_job)
> +			continue;
> +
> +		wb_conn =3D drm_connector_to_writeback(connector);
> +		drm_writeback_queue_job(wb_conn, new_conn_state);
> +	}
> +}
> +
> +static void intel_find_writeback_connector(struct intel_atomic_state *st=
ate,
> +		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_connector_state *new_conn_state;
> +	struct drm_connector *connector;
> +	int i;
> +
> +	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
> +					i) {
> +		if (connector->connector_type !=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +			continue;
> +		intel_wd_enable_capture(crtc_state, new_conn_state);

It's surprising that a function named "find connector" enables capture.

> +	}
> +}
> +
>  static void intel_encoders_pre_pll_enable(struct intel_atomic_state *sta=
te,
>  					  struct intel_crtc *crtc)
>  {
> @@ -1650,8 +1690,12 @@ static void intel_encoders_post_disable(struct int=
el_atomic_state *state,
>  	int i;
>=20=20
>  	for_each_old_connector_in_state(&state->base, conn, old_conn_state, i) {
> -		struct intel_encoder *encoder =3D
> -			to_intel_encoder(old_conn_state->best_encoder);
> +		struct intel_encoder *encoder;
> +
> +		if (conn->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +			continue;
> +
> +		encoder =3D to_intel_encoder(old_conn_state->best_encoder);
>=20=20
>  		if (old_conn_state->crtc !=3D &crtc->base)
>  			continue;
> @@ -1928,7 +1972,8 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  		bdw_set_pipemisc(new_crtc_state);
>=20=20
>  	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> -	    !transcoder_is_dsi(cpu_transcoder))
> +	    !transcoder_is_dsi(cpu_transcoder) &&
> +	    !transcoder_is_wd(cpu_transcoder))
>  		hsw_configure_cpu_transcoder(new_crtc_state);
>=20=20
>  	crtc->active =3D true;
> @@ -7578,6 +7623,10 @@ static void intel_atomic_commit_tail(struct intel_=
atomic_state *state)
>  		}
>  	}
>=20=20
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		intel_wd_set_vblank_event(crtc, new_crtc_state);
> +	}
> +

Shouldn't this happen in a wd encoder hook?

>  	intel_encoders_update_prepare(state);
>=20=20
>  	intel_dbuf_pre_plane_update(state);
> @@ -7598,6 +7647,13 @@ static void intel_atomic_commit_tail(struct intel_=
atomic_state *state)
>=20=20
>  	intel_wait_for_vblank_workers(state);
>=20=20
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (!(new_crtc_state->output_types & BIT(INTEL_OUTPUT_WD)))
> +			continue;
> +		intel_queue_writeback_job(state, crtc, new_crtc_state);
> +		intel_find_writeback_connector(state, crtc, new_crtc_state);
> +	}

Shouldn't this happen in a wd encoder hook?

> +
>  	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
>  	 * already, but still need the state for the delayed optimization. To
>  	 * fix this:
> @@ -7968,6 +8024,7 @@ static void intel_setup_outputs(struct drm_i915_pri=
vate *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_TC1);
>  		intel_ddi_init(dev_priv, PORT_TC2);
>  	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
> +		intel_wd_init(dev_priv, TRANSCODER_WD_0);
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_TC1);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 4e9f22954a41..b6987f57b032 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -52,6 +52,7 @@ struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_dp;
>  struct intel_encoder;
> +struct intel_connector;
>  struct intel_initial_plane_config;
>  struct intel_load_detect_pipe;
>  struct intel_plane;
> @@ -157,6 +158,11 @@ static inline bool transcoder_is_dsi(enum transcoder=
 transcoder)
>  	return transcoder =3D=3D TRANSCODER_DSI_A || transcoder =3D=3D TRANSCOD=
ER_DSI_C;
>  }
>=20=20
> +static inline bool transcoder_is_wd(enum transcoder transcoder)
> +{
> +	return transcoder =3D=3D TRANSCODER_WD_0 || transcoder =3D=3D TRANSCODE=
R_WD_1;
> +}
> +
>  /*
>   * Global legacy plane identifier. Valid only for primary/sprite
>   * planes on pre-g4x, and only for primary planes on g4x-bdw.
> @@ -469,15 +475,16 @@ enum hpd_pin {
>  		for_each_if(intel_encoder_can_psr(intel_encoder))
>=20=20
>  #define for_each_intel_connector_iter(intel_connector, iter) \
> -	while ((intel_connector =3D to_intel_connector(drm_connector_list_iter_=
next(iter))))
> +	while ((intel_connector =3D intel_connector_list_iter_next(iter)))
>=20=20
>  #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
>  	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, =
base.head) \
>  		for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
>=20=20
> -#define for_each_connector_on_encoder(dev, __encoder, intel_connector) \
> -	list_for_each_entry((intel_connector), &(dev)->mode_config.connector_li=
st, base.head) \
> -		for_each_if((intel_connector)->base.encoder =3D=3D (__encoder))
> +#define for_each_connector_on_encoder(dev, __encoder, drm_connector) \
> +	list_for_each_entry((drm_connector), &(dev)->mode_config.connector_list=
, head) \
> +		for_each_if(drm_connector->connector_type !=3D DRM_MODE_CONNECTOR_WRIT=
EBACK &&	\
> +			(to_intel_connector(drm_connector))->base.encoder =3D=3D (__encoder))

There's only one user for this. Maybe open code that and convert to use
connector iterators.

>=20=20
>  #define for_each_old_intel_plane_in_state(__state, plane, old_plane_stat=
e, __i) \
>  	for ((__i) =3D 0; \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 225b6bfc783c..3e11cc6228d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -547,7 +547,7 @@ static void intel_hdmi_info(struct seq_file *m,
>  static void intel_connector_info(struct seq_file *m,
>  				 struct drm_connector *connector)
>  {
> -	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> +	struct intel_connector *intel_connector;
>  	const struct drm_connector_state *conn_state =3D connector->state;
>  	struct intel_encoder *encoder =3D
>  		to_intel_encoder(conn_state->best_encoder);
> @@ -570,6 +570,9 @@ static void intel_connector_info(struct seq_file *m,
>  	if (!encoder)
>  		return;
>=20=20
> +	if (connector->connector_type !=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +		intel_connector =3D to_intel_connector(connector);
> +

We have a lot of this copy-pasted everywhere. I'm wondering if it would
be better to have to_intel_connector() return NULL for writeback.

For one thing, if we miss the check somewhere, we'll fail loud with a
null pointer dereference instead of silently casting a
drm_writeback_connector to intel_connector, possibly corrupting the data
and causing subtle and hard to track bugs.

And for another, we can just do an if (!intel_connector) instead of the
tedious connector_type checks.

>  	switch (connector->connector_type) {
>  	case DRM_MODE_CONNECTOR_DisplayPort:
>  	case DRM_MODE_CONNECTOR_eDP:
> @@ -587,12 +590,15 @@ static void intel_connector_info(struct seq_file *m,
>  		break;
>  	}
>=20=20
> -	seq_puts(m, "\tHDCP version: ");
> -	intel_hdcp_info(m, intel_connector);
> +	if (connector->connector_type !=3D DRM_MODE_CONNECTOR_WRITEBACK) {
> +		seq_puts(m, "\tHDCP version: ");
> +		intel_hdcp_info(m, intel_connector);
> +	}
>=20=20
>  	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>=20=20
> -	intel_panel_info(m, intel_connector);
> +	if (connector->connector_type !=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +		intel_panel_info(m, intel_connector);
>=20=20
>  	seq_printf(m, "\tmodes:\n");
>  	list_for_each_entry(mode, &connector->modes, head)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 0e94bd430bcb..289908a88cc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -44,6 +44,7 @@
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_vblank_work.h>
>  #include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/drm_writeback.h>
>  #include <media/cec-notifier.h>
>=20=20
>  #include "i915_vma.h"
> @@ -1370,6 +1371,11 @@ struct intel_crtc {
>  	bool cpu_fifo_underrun_disabled;
>  	bool pch_fifo_underrun_disabled;
>=20=20
> +	struct {
> +		struct drm_pending_vblank_event *e;
> +		atomic_t work_busy;
> +		wait_queue_head_t wd_wait;
> +	} wd;
>  	/* per-pipe watermark state */
>  	struct {
>  		/* watermarks currently being used  */
> @@ -1498,6 +1504,7 @@ struct cxsr_latency {
>  #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
>  #define to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, =
uapi)
>  #define to_intel_connector(x) container_of(x, struct intel_connector, ba=
se)
> +#define to_intel_wb_connector(x) container_of(x, struct intel_wb_connect=
or, base)
>  #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
>  #define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer=
, base)
>  #define to_intel_plane(x) container_of(x, struct intel_plane, base)
> @@ -2068,4 +2075,26 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
>  }
>=20=20
> +static inline struct intel_connector *
> +intel_connector_list_iter_next(struct drm_connector_list_iter *iter)
> +{
> +	struct drm_connector *connector;
> +	bool flag =3D true;
> +	/*
> +	 * Skipping connector that are Writeback connector as they will
> +	 * not be embedded in intel connector
> +	 */
> +	while (flag) {
> +		connector =3D drm_connector_list_iter_next(iter);
> +		if (connector && connector->connector_type =3D=3D DRM_MODE_CONNECTOR_W=
RITEBACK)
> +			continue;
> +
> +		flag =3D false;
> +
> +		if (connector)
> +			return to_intel_connector(connector);
> +
> +	}
> +	return NULL;

The above could be written simply as:

	drm_for_each_connector_iter(connector, iter) {
		if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK)
			continue;

		return to_intel_connector(connector);
	}

	return NULL;

or, if to_intel_connector() does the writeback check as I suggested earlier:

	drm_for_each_connector_iter(connector, iter) {
		struct intel_connector *intel_connector =3D to_intel_connector(connector);

		if (intel_connector)
			return intel_connector;
	}

	return NULL;

The latter is actually a neat prep change since it doesn't even mention
writeback.

> +}

Blank line here.

>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 5262f16b45ac..82bb8e170197 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -939,6 +939,9 @@ static int hsw_crtc_compute_clock(struct intel_atomic=
_state *state,
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
>=20=20
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_WD))
> +		return 0;
> +
>  	if (DISPLAY_VER(dev_priv) < 11 &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
> @@ -955,6 +958,9 @@ static int hsw_crtc_get_shared_dpll(struct intel_atom=
ic_state *state,
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
>=20=20
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_WD))
> +		return 0;
> +
>  	if (DISPLAY_VER(dev_priv) < 11 &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.c
> index f0e04d3904c6..f6c85614842a 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -23,6 +23,7 @@
>  #include "intel_modeset_setup.h"
>  #include "intel_pch_display.h"
>  #include "intel_pm.h"
> +#include "intel_wd.h"
>=20=20
>  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  					struct drm_modeset_acquire_ctx *ctx)
> @@ -110,17 +111,17 @@ static void intel_crtc_disable_noatomic(struct inte=
l_crtc *crtc,
>=20=20
>  static void intel_modeset_update_connector_atomic_state(struct drm_i915_=
private *i915)
>  {
> -	struct intel_connector *connector;
> +	struct drm_connector *drm_conn;
>  	struct drm_connector_list_iter conn_iter;
>=20=20
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		struct drm_connector_state *conn_state =3D connector->base.state;
> +	drm_for_each_connector_iter(drm_conn, &conn_iter) {
> +		struct drm_connector_state *conn_state =3D drm_conn->state;
>  		struct intel_encoder *encoder =3D
> -			to_intel_encoder(connector->base.encoder);
> +			to_intel_encoder(drm_conn->encoder);
>=20=20
>  		if (conn_state->crtc)
> -			drm_connector_put(&connector->base);
> +			drm_connector_put(drm_conn);
>=20=20
>  		if (encoder) {
>  			struct intel_crtc *crtc =3D
> @@ -132,7 +133,7 @@ static void intel_modeset_update_connector_atomic_sta=
te(struct drm_i915_private
>  			conn_state->crtc =3D &crtc->base;
>  			conn_state->max_bpc =3D (crtc_state->pipe_bpp ?: 24) / 3;
>=20=20
> -			drm_connector_get(&connector->base);
> +			drm_connector_get(drm_conn);
>  		} else {
>  			conn_state->best_encoder =3D NULL;
>  			conn_state->crtc =3D NULL;
> @@ -205,10 +206,10 @@ static bool intel_crtc_has_encoders(struct intel_cr=
tc *crtc)
>  static struct intel_connector *intel_encoder_find_connector(struct intel=
_encoder *encoder)
>  {
>  	struct drm_device *dev =3D encoder->base.dev;
> -	struct intel_connector *connector;
> +	struct drm_connector *drm_connector;
>=20=20
> -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> -		return connector;
> +	for_each_connector_on_encoder(dev, &encoder->base, drm_connector)
> +		return to_intel_connector(drm_connector);

Yeah this should just be rewritten to ditch
for_each_connector_on_encoder().

>=20=20
>  	return NULL;
>  }
> @@ -422,6 +423,8 @@ static void intel_modeset_readout_hw_state(struct drm=
_i915_private *i915)
>  	struct intel_crtc *crtc;
>  	struct intel_encoder *encoder;
>  	struct intel_connector *connector;
> +	struct drm_connector *drm_conn;
> +	struct drm_encoder *drm_enc;

We never use "drm_conn" or "drm_enc" anywhere, let's not start now.

These are the combos generally in use, from most preferred to least
preferred:

struct drm_encoder *_encoder;
struct intel_encoder *encoder

struct drm_encoder *encoder;
struct intel_encoder *intel_encoder

struct drm_encoder *drm_encoder;
struct intel_encoder *encoder

Similarly for connector. Ditto everywhere.

>  	struct drm_connector_list_iter conn_iter;
>  	u8 active_pipes =3D 0;
>=20=20
> @@ -503,8 +506,7 @@ static void intel_modeset_readout_hw_state(struct drm=
_i915_private *i915)
>  			struct intel_crtc_state *crtc_state;
>  			struct intel_crtc *crtc;
>=20=20
> -			connector->base.dpms =3D DRM_MODE_DPMS_ON;
> -
> +			connector->base.dpms =3D DRM_MODE_DPMS_OFF;

Huh?

>  			encoder =3D intel_attached_encoder(connector);
>  			connector->base.encoder =3D &encoder->base;
>=20=20
> @@ -533,6 +535,49 @@ static void intel_modeset_readout_hw_state(struct dr=
m_i915_private *i915)
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>=20=20
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	drm_for_each_connector_iter(drm_conn, &conn_iter) {
> +		if (drm_conn->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK) {
> +			struct intel_crtc_state *crtc_state;
> +			struct drm_writeback_connector *wb_conn =3D
> +						drm_connector_to_writeback(drm_conn);
> +			struct intel_wd *intel_wd =3D wb_conn_to_intel_wd(wb_conn);
> +			struct intel_crtc *crtc;
> +
> +			pipe =3D 0;
> +			drm_enc =3D &intel_wd->base.base;
> +			drm_conn->encoder =3D drm_enc;
> +			encoder =3D to_intel_encoder(drm_enc);
> +			if (encoder->get_hw_state(encoder, &pipe)) {
> +				drm_conn->dpms =3D DRM_MODE_DPMS_ON;
> +
> +				crtc =3D to_intel_crtc(drm_enc->crtc);
> +				crtc_state =3D crtc ? to_intel_crtc_state(crtc->base.state) : NULL;
> +
> +				if (crtc_state && crtc_state->hw.active) {
> +					/*
> +					 * This has to be done during hardware readout
> +					 * because anything calling .crtc_disable may
> +					 * rely on the connector_mask being accurate.
> +					 */
> +					crtc_state->uapi.connector_mask |=3D
> +						drm_connector_mask(&connector->base);
> +					crtc_state->uapi.encoder_mask |=3D
> +						drm_encoder_mask(&encoder->base);
> +				}
> +			} else {
> +				drm_conn->dpms =3D DRM_MODE_DPMS_OFF;
> +				drm_conn->encoder =3D NULL;
> +			}
> +			drm_dbg_kms(&i915->drm,
> +					"[CONNECTOR:%d:%s] hw state readout: %s\n",
> +					drm_conn->base.id, drm_conn->name,
> +					str_enabled_disabled(drm_conn->encoder));
> +		}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);

Surprised to see a dedicated loop for writeback.

> +
> +

Superfluous double newline.

>  	for_each_intel_crtc(&i915->drm, crtc) {
>  		struct intel_bw_state *bw_state =3D
>  			to_intel_bw_state(i915->bw_obj.state);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/driver=
s/gpu/drm/i915/display/intel_modeset_verify.c
> index a91586d77cb6..4a3d04f14ef7 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -25,11 +25,17 @@
>  static void intel_connector_verify_state(struct intel_crtc_state *crtc_s=
tate,
>  					 struct drm_connector_state *conn_state)
>  {
> -	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct drm_connector *drm_conn =3D conn_state->connector;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 =3D to_i915(drm_conn->dev);
>=20=20
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
> -		    connector->base.base.id, connector->base.name);
> +		    drm_conn->base.id, drm_conn->name);
> +
> +	if (drm_conn->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK)
> +		return;
> +
> +	connector =3D to_intel_connector(drm_conn);
>=20=20
>  	if (connector->get_hw_state(connector)) {
>  		struct intel_encoder *encoder =3D intel_attached_encoder(connector);
> @@ -119,6 +125,9 @@ verify_encoder_state(struct drm_i915_private *dev_pri=
v, struct intel_atomic_stat
>  			    encoder->base.base.id,
>  			    encoder->base.name);
>=20=20
> +		if (encoder->type =3D=3D INTEL_OUTPUT_WD)
> +			continue;
> +
>  		for_each_oldnew_connector_in_state(&state->base, connector, old_conn_s=
tate,
>  						   new_conn_state, i) {
>  			if (old_conn_state->best_encoder =3D=3D &encoder->base)
> @@ -177,6 +186,9 @@ verify_crtc_state(struct intel_crtc *crtc,
>=20=20
>  	intel_crtc_get_pipe_config(pipe_config);
>=20=20
> +	if (new_crtc_state->output_types & BIT(INTEL_OUTPUT_WD))
> +		return;
> +
>  	/* we keep both pipes enabled on 830 */
>  	if (IS_I830(dev_priv) && pipe_config->hw.active)
>  		pipe_config->hw.active =3D new_crtc_state->hw.active;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index 1c0c745c142d..73a5a12e2c48 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -374,6 +374,9 @@ int intel_opregion_notify_encoder(struct intel_encode=
r *intel_encoder,
>  	if (ret)
>  		return ret;
>=20=20
> +	if (intel_encoder->type =3D=3D INTEL_OUTPUT_WD)
> +		return 0;
> +
>  	if (intel_encoder->type =3D=3D INTEL_OUTPUT_DSI)
>  		port =3D 0;
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_wb_connector.h b/drivers/=
gpu/drm/i915/display/intel_wb_connector.h
> new file mode 100644
> index 000000000000..8063a9273bc7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_wb_connector.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation
> + */
> +
> +#ifndef __INTEL_WB_CONNECTOR_H__
> +#define __INTEL_WB_CONNECTOR_H__
> +
> +#include "intel_display.h"
> +
> +struct intel_wb_connector *intel_wb_connector_alloc(void);
> +void intel_wb_connector_free(struct intel_wb_connector *connector);
> +void intel_wb_connector_destroy(struct drm_connector *connector);
> +bool intel_wb_connector_get_hw_state(struct intel_wb_connector *connecto=
r);
> +enum pipe intel_wb_connector_get_pipe(struct intel_wb_connector *connect=
or);
> +void intel_wb_connector_attach_encoder(struct intel_wb_connector *connec=
tor,
> +					struct intel_encoder *encoder);
> +
> +#endif /* __INTEL_WB_CONNECTOR_H__ */
> +
> diff --git a/drivers/gpu/drm/i915/display/intel_wd.c b/drivers/gpu/drm/i9=
15/display/intel_wd.c
> new file mode 100644
> index 000000000000..7c9c83038de1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_wd.c
> @@ -0,0 +1,733 @@
> +// SPDX-License-Identifier: GPL-2.0

MIT.

> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER D=
EALINGS
> + * IN THE SOFTWARE.

Not needed when SPDX is used.

> + *
> + * Authors:
> + *	Suraj Kandpal <suraj.kandpal@intel.com>
> + *	Arun Murthy <arun.r.murthy@intel.com>

Please consider not adding authors lists. They'll get outdated, the
up-to-date info is available in git log/blame, they create a false sense
of ownership in shared code, they create a constant problem of deciding
when to add authorship line and when to accept/reject additions to
authors.

I still seem to have authors lines in two files, from before I changed
my mind about this, but based on my contributious I (and many others)
could justify adding authors to nearly all the files under display/ and
elsewhere. Yet we have authors lines from people who haven't contributed
in 10 years and their original contributions have been rewritten many
times over. IMHO there's just no point in authors lists in code.

> + *
> + */
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_fourcc.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_connector.h"
> +#include "intel_wd.h"
> +#include "intel_fb_pin.h"
> +#include "intel_de.h"
> +
> +enum {
> +	WD_CAPTURE_4_PIX,
> +	WD_CAPTURE_2_PIX,
> +} wd_capture_format;
> +
> +static struct drm_writeback_job
> +*intel_get_writeback_job_from_queue(struct intel_wd *intel_wd)
> +{
> +	struct drm_writeback_job *job;
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_wd->base.base.dev);

All new code should name this struct drm_i915_private *i915. Ditto everywhe=
re.

> +	struct drm_writeback_connector *wb_conn =3D
> +		&intel_wd->wb_conn;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&wb_conn->job_lock, flags);
> +	job =3D list_first_entry_or_null(&wb_conn->job_queue,
> +			struct drm_writeback_job,
> +			list_entry);
> +	spin_unlock_irqrestore(&wb_conn->job_lock, flags);
> +	if (job =3D=3D NULL) {
> +		drm_dbg_kms(&dev_priv->drm, "job queue is empty\n");
> +		return NULL;
> +	}
> +
> +	return job;
> +}
> +
> +/*Check with Spec*/
> +static const u32 wb_fmts[] =3D {
> +		DRM_FORMAT_YUV444,
> +		DRM_FORMAT_XYUV8888,
> +		DRM_FORMAT_XBGR8888,
> +		DRM_FORMAT_XRGB8888,
> +		DRM_FORMAT_Y410,
> +		DRM_FORMAT_YUV422,
> +		DRM_FORMAT_XBGR2101010,
> +		DRM_FORMAT_RGB565,

Indentation. Please see checkpatch.

> +
> +};
> +
> +static int intel_wd_get_format(int pixel_format)
> +{
> +	int wd_format =3D -EINVAL;
> +
> +	switch (pixel_format) {
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_YUV444:
> +		wd_format =3D WD_CAPTURE_4_PIX;
> +		break;
> +	case DRM_FORMAT_YUV422:
> +	case DRM_FORMAT_RGB565:
> +		wd_format =3D WD_CAPTURE_2_PIX;
> +		break;
> +	default:
> +		DRM_ERROR("unsupported pixel format %x!\n",
> +			pixel_format);
> +	}
> +
> +	return wd_format;
> +}
> +
> +static int intel_wd_verify_pix_format(int format)
> +{
> +	const struct drm_format_info *info =3D drm_format_info(format);
> +	int pix_format =3D info->format;
> +	int i =3D 0;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(wb_fmts); i++)
> +		if (pix_format =3D=3D wb_fmts[i])
> +			return 0;
> +
> +	return 1;
> +}
> +
> +static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
> +			int format)
> +{
> +	const struct drm_format_info *info =3D drm_format_info(format);
> +	int wd_format;
> +	int hactive, pixel_size;
> +
> +	wd_format =3D intel_wd_get_format(info->format);
> +
> +	switch (wd_format) {
> +	case WD_CAPTURE_4_PIX:
> +		pixel_size =3D 4;
> +		break;
> +	case WD_CAPTURE_2_PIX:
> +		pixel_size =3D 2;
> +		break;
> +	default:
> +		pixel_size =3D 1;
> +		break;
> +	}
> +
> +	hactive =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
> +
> +	return DIV_ROUND_UP(hactive * pixel_size, 64);
> +}
> +
> +static int intel_wd_pin_fb(struct intel_wd *intel_wd,
> +			struct drm_framebuffer *fb)
> +{
> +	const struct i915_ggtt_view view =3D {
> +		.type =3D I915_GGTT_VIEW_NORMAL,
> +		};

Indentation.=20

> +	struct i915_vma *vma;
> +
> +	vma =3D intel_pin_and_fence_fb_obj(fb, false, &view, false,
> +			&intel_wd->flags);
> +
> +	if (IS_ERR(vma))
> +		return PTR_ERR(vma);
> +
> +	intel_wd->vma =3D vma;
> +	return 0;
> +}
> +
> +static void intel_configure_slicing_strategy(struct drm_i915_private *de=
v_priv,
> +		struct intel_wd *intel_wd, u32 *tmp)
> +{
> +	*tmp &=3D ~WD_STRAT_MASK;
> +	if (intel_wd->slicing_strategy =3D=3D 1)
> +		*tmp |=3D WD_SLICING_STRAT_1_1;
> +	else if (intel_wd->slicing_strategy =3D=3D 2)
> +		*tmp |=3D WD_SLICING_STRAT_2_1;
> +	else if (intel_wd->slicing_strategy =3D=3D 3)
> +		*tmp |=3D WD_SLICING_STRAT_4_1;
> +	else if (intel_wd->slicing_strategy =3D=3D 4)
> +		*tmp |=3D WD_SLICING_STRAT_8_1;
> +
> +	intel_de_write(dev_priv, WD_STREAMCAP_CTL(intel_wd->trans),
> +			*tmp);
> +
> +}
> +
> +static enum drm_mode_status
> +intel_wd_mode_valid(struct drm_connector *connector,
> +		struct drm_display_mode *mode)
> +{
> +	drm_dbg_kms(connector->dev, ":");
> +	return MODE_OK;
> +}
> +
> +static int intel_wd_get_modes(struct drm_connector *connector)
> +{
> +	return 0;
> +}
> +
> +static void intel_wd_get_config(struct intel_encoder *encoder,
> +		struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_crtc *intel_crtc =3D
> +		to_intel_crtc(pipe_config->uapi.crtc);
> +
> +	if (intel_crtc) {
> +		memcpy(pipe_config, intel_crtc->config,
> +			sizeof(*pipe_config));
> +		pipe_config->output_types |=3D BIT(INTEL_OUTPUT_WD);
> +	}
> +
> +}
> +
> +static int intel_wd_compute_config(struct intel_encoder *encoder,
> +			struct intel_crtc_state *pipe_config,
> +			struct drm_connector_state *conn_state)
> +{
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	struct drm_writeback_job *job;
> +
> +	job =3D intel_get_writeback_job_from_queue(intel_wd);
> +	if (job || conn_state->writeback_job) {
> +		intel_wd->wd_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +		return 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static void intel_wd_get_power_domains(struct intel_encoder *encoder,
> +			struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_display_power_get(dev_priv,
> +				encoder->power_domain);
> +
> +	intel_wd->io_wakeref[0] =3D wakeref;
> +}
> +
> +static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
> +		enum pipe *pipe)
> +{
> +	bool ret =3D false;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	struct intel_crtc *wd_crtc =3D intel_wd->wd_crtc;
> +	intel_wakeref_t wakeref;
> +	u32 tmp;
> +
> +	if (wd_crtc)
> +		return false;
> +
> +	wakeref =3D intel_display_power_get_if_enabled(dev_priv,
> +				encoder->power_domain);
> +
> +	if (!wakeref)
> +		goto out;
> +
> +	tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +	ret =3D tmp & WD_TRANS_ACTIVE;
> +
> +	if (ret) {
> +		*pipe =3D wd_crtc->pipe;
> +		return true;
> +	}
> +
> +out:
> +	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
> +	return false;
> +
> +}
> +
> +static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
> +				    struct drm_crtc_state *crtc_st,
> +				    struct drm_connector_state *conn_st)
> +{
> +	/* Check for the format and buffers and property validity */
> +	struct drm_framebuffer *fb;
> +	struct drm_writeback_job *job =3D conn_st->writeback_job;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->dev);
> +	const struct drm_display_mode *mode =3D &crtc_st->mode;
> +	int ret;
> +
> +	drm_dbg_kms(&dev_priv->drm, "\n");
> +
> +	if (!job) {
> +		drm_dbg_kms(&dev_priv->drm, "No writeback job created returning\n");
> +		return -EINVAL;
> +	}
> +
> +	fb =3D job->fb;
> +
> +	if (!fb) {
> +		drm_dbg_kms(&dev_priv->drm, "Invalid framebuffer\n");
> +		return -EINVAL;
> +	}
> +
> +	if (fb->width !=3D mode->hdisplay || fb->height !=3D mode->vdisplay) {
> +		drm_dbg_kms(&dev_priv->drm, "Invalid framebuffer size %ux%u\n",
> +				fb->width, fb->height);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D intel_wd_verify_pix_format(fb->format->format);
> +
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm, "Unsupported framebuffer format %08x\n",
> +				fb->format->format);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +
> +static const struct drm_encoder_helper_funcs wd_encoder_helper_funcs =3D=
 {
> +	.atomic_check =3D intel_wd_encoder_atomic_check,
> +};
> +
> +static void intel_wd_connector_destroy(struct drm_connector *connector)
> +{
> +	drm_dbg_kms(connector->dev, "\n");
> +	drm_connector_cleanup(connector);
> +	kfree(connector);
> +}
> +
> +static enum drm_connector_status
> +intel_wb_connector_detect(struct drm_connector *connector, bool force)
> +{
> +	return connector_status_connected;
> +}
> +
> +static const struct drm_connector_funcs wd_connector_funcs =3D {
> +	.detect =3D intel_wb_connector_detect,
> +	.reset =3D drm_atomic_helper_connector_reset,
> +	.destroy =3D intel_wd_connector_destroy,
> +	.fill_modes =3D drm_helper_probe_single_connector_modes,
> +	.atomic_destroy_state =3D drm_atomic_helper_connector_destroy_state,
> +	.atomic_duplicate_state =3D drm_atomic_helper_connector_duplicate_state,
> +};
> +
> +static const struct drm_connector_helper_funcs wd_connector_helper_funcs=
 =3D {
> +	.get_modes =3D intel_wd_get_modes,
> +	.mode_valid =3D intel_wd_mode_valid,
> +};
> +
> +static const struct drm_encoder_funcs drm_writeback_encoder_funcs =3D {
> +	.destroy =3D drm_encoder_cleanup,
> +};
> +
> +static bool intel_fastset_dis(struct intel_encoder *encoder,
> +		struct intel_crtc_state *pipe_config)
> +{
> +	pipe_config->uapi.mode_changed =3D true;
> +	return false;
> +}
> +
> +static void intel_wd_connector_init(struct intel_wd *intel_wd)
> +{
> +	drm_atomic_helper_connector_reset(&intel_wd->wb_conn.base);
> +}
> +
> +void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder tr=
ans)
> +{
> +	struct intel_wd *intel_wd;
> +	struct intel_encoder *encoder;
> +	struct drm_writeback_connector *wb_conn;
> +	int n_formats =3D ARRAY_SIZE(wb_fmts);
> +	struct drm_encoder *drm_enc;
> +	int err, ret;
> +
> +	intel_wd =3D kzalloc(sizeof(*intel_wd), GFP_KERNEL);
> +
> +	if (!intel_wd)
> +		return;
> +
> +	intel_wd_connector_init(intel_wd);
> +	encoder =3D &intel_wd->base;
> +	drm_enc =3D &encoder->base;
> +	wb_conn =3D &intel_wd->wb_conn;
> +	intel_wd->trans =3D trans;
> +	intel_wd->triggered_cap_mode =3D 1;
> +	intel_wd->frame_num =3D 1;
> +	intel_wd->slicing_strategy =3D 1;
> +	encoder->get_config =3D intel_wd_get_config;
> +	encoder->compute_config =3D intel_wd_compute_config;
> +	encoder->get_hw_state =3D intel_wd_get_hw_state;
> +	encoder->type =3D INTEL_OUTPUT_WD;
> +	encoder->cloneable =3D 0;
> +	encoder->pipe_mask =3D BIT(PIPE_B);
> +	encoder->power_domain =3D POWER_DOMAIN_TRANSCODER_B;
> +	encoder->get_power_domains =3D intel_wd_get_power_domains;
> +	encoder->initial_fastset_check =3D intel_fastset_dis;
> +
> +	drm_encoder_helper_add(drm_enc,
> +			&wd_encoder_helper_funcs);
> +
> +	drm_enc->possible_crtcs =3D BIT(PIPE_B);
> +
> +	ret =3D drm_encoder_init(&dev_priv->drm, drm_enc,
> +			       &drm_writeback_encoder_funcs,
> +			       DRM_MODE_ENCODER_VIRTUAL, NULL);
> +
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm,
> +		"Writeback drm_encoder init Failed: %d\n",
> +			ret);
> +		goto cleanup;
> +	}
> +
> +	err =3D drm_writeback_connector_init_with_encoder(&dev_priv->drm,
> +		wb_conn, drm_enc, &wd_connector_funcs,
> +		wb_fmts, n_formats);
> +
> +	if (err !=3D 0) {
> +		drm_dbg_kms(&dev_priv->drm,
> +		"drm_writeback_connector_init: Failed: %d\n",
> +			err);
> +		goto cleanup;
> +	}
> +
> +	wb_conn->base.encoder =3D drm_enc;
> +	drm_connector_helper_add(&wb_conn->base, &wd_connector_helper_funcs);
> +	wb_conn->base.status =3D connector_status_connected;
> +	return;
> +
> +cleanup:
> +	kfree(intel_wd);
> +	return;
> +}
> +
> +static void intel_wd_writeback_complete(struct intel_wd *intel_wd,
> +	struct drm_writeback_job *job, int status)
> +{
> +	struct drm_writeback_connector *wb_conn =3D
> +		&intel_wd->wb_conn;
> +	drm_writeback_signal_completion(wb_conn, status);
> +}
> +
> +static int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
> +		struct intel_crtc_state *pipe_config,
> +		struct drm_connector_state *conn_state,
> +		struct drm_writeback_job *job)
> +{
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	enum pipe pipe =3D intel_crtc->pipe;
> +	struct drm_framebuffer *fb;
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	struct drm_gem_object *wd_fb_obj;
> +	int ret;
> +	u32 stride, tmp;
> +	u16 hactive, vactive;
> +
> +	fb =3D job->fb;
> +	wd_fb_obj =3D fb->obj[0];
> +	if (!wd_fb_obj) {
> +		drm_dbg_kms(&dev_priv->drm, "No framebuffer gem object created\n");
> +		return -1;
> +	}
> +	ret =3D intel_wd_pin_fb(intel_wd, fb);
> +	drm_WARN_ON(&dev_priv->drm, ret !=3D 0);
> +
> +	/*Write stride and surface registers in that particular order*/
> +	stride =3D intel_wd_get_stride(pipe_config, fb->format->format);
> +
> +	tmp =3D intel_de_read(dev_priv, WD_STRIDE(intel_wd->trans));
> +	tmp &=3D ~WD_STRIDE_MASK;
> +	tmp |=3D (stride << WD_STRIDE_SHIFT);
> +
> +	intel_de_write(dev_priv, WD_STRIDE(intel_wd->trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, WD_SURF(intel_wd->trans));
> +
> +	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
> +			i915_ggtt_offset(intel_wd->vma));
> +
> +	tmp =3D intel_de_read_fw(dev_priv, WD_IIR(intel_wd->trans));
> +	intel_de_write_fw(dev_priv, WD_IIR(intel_wd->trans), tmp);
> +
> +	tmp =3D ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
> +			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
> +	intel_de_write_fw(dev_priv, WD_IMR(intel_wd->trans), tmp);
> +
> +	if (intel_wd->stream_cap) {
> +		tmp =3D intel_de_read(dev_priv,
> +				WD_STREAMCAP_CTL(intel_wd->trans));
> +		tmp |=3D WD_STREAM_CAP_MODE_EN;
> +		intel_configure_slicing_strategy(dev_priv, intel_wd, &tmp);
> +	}
> +
> +	hactive =3D pipe_config->uapi.mode.hdisplay;
> +	vactive =3D pipe_config->uapi.mode.vdisplay;
> +	tmp =3D intel_de_read(dev_priv, HTOTAL(intel_wd->trans));
> +	tmp =3D intel_de_read(dev_priv, VTOTAL(intel_wd->trans));
> +
> +	/* minimum hactive as per bspec: 64 pixels*/
> +	if (hactive < 64)
> +		drm_err(&dev_priv->drm, "hactive is less then 64 pixels\n");
> +
> +	intel_de_write(dev_priv, HTOTAL(intel_wd->trans), hactive - 1);
> +	intel_de_write(dev_priv, VTOTAL(intel_wd->trans), vactive - 1);
> +
> +	tmp =3D intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans));
> +	/* select pixel format */
> +	tmp &=3D ~WD_PIX_FMT_MASK;
> +
> +	switch (fb->format->format) {
> +	default:
> +	fallthrough;
> +	case DRM_FORMAT_YUYV:
> +		tmp |=3D WD_PIX_FMT_YUYV;
> +		break;
> +	case DRM_FORMAT_XYUV8888:
> +		tmp |=3D WD_PIX_FMT_XYUV8888;
> +		break;
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_XRGB8888:
> +		tmp |=3D WD_PIX_FMT_XBGR8888;
> +		break;
> +	case DRM_FORMAT_Y410:
> +		tmp |=3D WD_PIX_FMT_Y410;
> +		break;
> +	case DRM_FORMAT_YUV422:
> +		tmp |=3D WD_PIX_FMT_YUV422;
> +		break;
> +	case DRM_FORMAT_XBGR2101010:
> +		tmp |=3D WD_PIX_FMT_XBGR2101010;
> +		break;
> +	case DRM_FORMAT_RGB565:
> +		tmp |=3D WD_PIX_FMT_RGB565;
> +		break;
> +	}
> +
> +	if (intel_wd->triggered_cap_mode)
> +		tmp |=3D WD_TRIGGERED_CAP_MODE_ENABLE;
> +
> +	if (intel_wd->stream_cap)
> +		tmp |=3D WD_CTL_POINTER_DTDH;
> +
> +	/*select input pipe*/
> +	tmp &=3D ~WD_INPUT_SELECT_MASK;
> +	switch (pipe) {
> +	default:
> +		fallthrough;
> +	case PIPE_A:
> +		tmp |=3D WD_INPUT_PIPE_A;
> +		break;
> +	case PIPE_B:
> +		tmp |=3D WD_INPUT_PIPE_B;
> +		break;
> +	case PIPE_C:
> +		tmp |=3D WD_INPUT_PIPE_C;
> +		break;
> +	case PIPE_D:
> +		tmp |=3D WD_INPUT_PIPE_D;
> +		break;
> +	}
> +
> +	/* enable DDI buffer */
> +	if (!(tmp & TRANS_WD_FUNC_ENABLE))
> +		tmp |=3D TRANS_WD_FUNC_ENABLE;
> +
> +	intel_de_write(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +	ret =3D tmp & WD_TRANS_ACTIVE;
> +
> +	if (!ret) {
> +		/*enable the transcoder	*/
> +		tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +		tmp |=3D WD_TRANS_ENABLE;
> +		intel_de_write(dev_priv, PIPECONF(intel_wd->trans), tmp);
> +
> +		/* wait for transcoder to be enabled */
> +		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
> +				WD_TRANS_ACTIVE, 10))
> +			drm_err(&dev_priv->drm, "WD transcoder could not be enabled\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void intel_wd_disable_capture(struct intel_wd *intel_wd)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_wd->base.base.dev);
> +	u32 tmp;
> +
> +	intel_de_write_fw(dev_priv, WD_IMR(intel_wd->trans), 0xFF);
> +	tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +	tmp &=3D WD_TRANS_DISABLE;
> +	intel_de_write(dev_priv, PIPECONF(intel_wd->trans), tmp);
> +	tmp =3D intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans));
> +	tmp |=3D ~TRANS_WD_FUNC_ENABLE;
> +}
> +
> +static int intel_wd_capture(struct intel_wd *intel_wd,
> +		struct intel_crtc_state *pipe_config,
> +		struct drm_connector_state *conn_state,
> +		struct drm_writeback_job *job)
> +{
> +	u32 tmp;
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_wd->base.base.dev);
> +	int ret =3D 0, status =3D 0;
> +	struct intel_crtc *wd_crtc =3D intel_wd->wd_crtc;
> +	unsigned long flags;
> +
> +	if (!job->out_fence)
> +		drm_dbg_kms(&dev_priv->drm, "Not able to get out_fence for job\n");
> +
> +	ret =3D intel_wd_setup_transcoder(intel_wd, pipe_config,
> +		conn_state, job);
> +
> +	if (ret < 0) {
> +		drm_dbg_kms(&dev_priv->drm,
> +		"WD transcoder setup not completed aborting capture\n");
> +		return -1;
> +	}
> +
> +	if (wd_crtc =3D=3D NULL) {
> +		DRM_ERROR("CRTC not attached\n");

drm_err() please. Ditto everywhere.

> +		return -1;
> +	}
> +
> +	tmp =3D intel_de_read_fw(dev_priv,
> +			WD_TRANS_FUNC_CTL(intel_wd->trans));
> +	tmp |=3D START_TRIGGER_FRAME;
> +	tmp &=3D ~WD_FRAME_NUMBER_MASK;
> +	tmp |=3D intel_wd->frame_num;
> +	intel_de_write_fw(dev_priv,
> +			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
> +
> +	if (!intel_de_wait_for_set(dev_priv, WD_IIR(intel_wd->trans),
> +				WD_FRAME_COMPLETE_INT, 100)){
> +		drm_dbg_kms(&dev_priv->drm, "frame captured\n");
> +		status =3D 0;
> +	} else {
> +		drm_dbg_kms(&dev_priv->drm, "frame not captured triggering stop frame\=
n");
> +		tmp =3D intel_de_read(dev_priv,
> +				WD_TRANS_FUNC_CTL(intel_wd->trans));
> +		tmp |=3D STOP_TRIGGER_FRAME;
> +		intel_de_write(dev_priv,
> +				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
> +		status =3D -1;
> +	}
> +
> +	intel_de_write(dev_priv, WD_IIR(intel_wd->trans), tmp);
> +	intel_wd_writeback_complete(intel_wd, job, status);
> +	if (intel_get_writeback_job_from_queue(intel_wd) =3D=3D NULL)
> +		intel_wd_disable_capture(intel_wd);
> +	if (wd_crtc->wd.e) {
> +		spin_lock_irqsave(&dev_priv->drm.event_lock, flags);
> +		drm_dbg_kms(&dev_priv->drm, "send %p\n", wd_crtc->wd.e);
> +		drm_crtc_send_vblank_event(&wd_crtc->base,
> +					wd_crtc->wd.e);
> +		spin_unlock_irqrestore(&dev_priv->drm.event_lock, flags);
> +		wd_crtc->wd.e =3D NULL;
> +	} else {
> +		DRM_ERROR("Event NULL! %p, %p\n", &dev_priv->drm,
> +			wd_crtc);
> +	}
> +	return 0;
> +
> +}
> +
> +void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
> +		struct drm_connector_state *conn_state)

Feels like this should be an encoder hook, called like for any encoder.

> +{
> +	struct drm_i915_private *i915 =3D
> +		to_i915(conn_state->connector->dev);
> +	struct drm_writeback_connector *wb_conn =3D
> +		drm_connector_to_writeback(conn_state->connector);
> +	struct intel_wd *intel_wd =3D wb_conn_to_intel_wd(wb_conn);
> +	struct drm_writeback_job *job;
> +
> +	job =3D intel_get_writeback_job_from_queue(intel_wd);
> +	if (job =3D=3D NULL) {
> +		drm_dbg_kms(&i915->drm,
> +			"job queue is empty not capturing any frame\n");
> +		return;
> +	}
> +
> +	intel_wd_capture(intel_wd, pipe_config,
> +			conn_state, job);
> +	intel_wd->frame_num +=3D 1;
> +
> +}
> +
> +void intel_wd_set_vblank_event(struct intel_crtc *intel_crtc,
> +			struct intel_crtc_state *intel_crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	struct drm_crtc_state *state =3D &intel_crtc_state->uapi;
> +	struct intel_encoder *encoder;
> +	struct intel_wd *intel_wd;
> +
> +	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +
> +		if (encoder->type !=3D INTEL_OUTPUT_WD)
> +			continue;
> +
> +		intel_wd =3D enc_to_intel_wd(encoder);
> +
> +		if (!intel_wd->wd_crtc)
> +			return;
> +	}
> +
> +	if (intel_crtc =3D=3D intel_wd->wd_crtc) {
> +		intel_crtc->wd.e =3D state->event;
> +		state->event =3D NULL;
> +	}
> +}
> +void intel_wd_handle_isr(struct drm_i915_private *dev_priv)
> +{
> +	u32 iir_value =3D 0;
> +	struct intel_encoder *encoder;
> +	struct intel_wd *intel_wd;
> +
> +	iir_value =3D intel_de_read(dev_priv, WD_IIR(TRANSCODER_WD_0));
> +	drm_dbg_kms(&dev_priv->drm, "\n");
> +
> +	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +
> +		if (encoder->type =3D=3D INTEL_OUTPUT_WD)
> +			continue;
> +
> +		intel_wd =3D enc_to_intel_wd(encoder);
> +
> +		if (!intel_wd->wd_crtc) {
> +			DRM_ERROR("NO CRTC attached with WD\n");
> +			goto clear_iir;
> +		}
> +	}
> +
> +	if (iir_value & WD_FRAME_COMPLETE_INT)
> +		return;
> +
> +clear_iir:
> +	intel_de_write(dev_priv, WD_IIR(TRANSCODER_WD_0), iir_value);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_wd.h b/drivers/gpu/drm/i9=
15/display/intel_wd.h
> new file mode 100644
> index 000000000000..f16b9b2d78d8
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_wd.h
> @@ -0,0 +1,76 @@
> +/* SPDX-License-Identifier: GPL-2.0

MIT.

> + * Copyright =C2=A9 2021 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> + * DEALINGS IN THE SOFTWARE.

Unnecessary.

> + *
> + * Author :
> + *	Suraj Kandpal<suraj.kandpal@intel.com>
> + *	Arun Murthy<arun.r.murthy@intel.com>

See what I said above about authors.

> + */
> +
> +#ifndef _INTEL_WD_H
> +#define _INTEL_WD_H
> +
> +#include <drm/drm_crtc.h>

Unnecessary AFAICT.

Please use forward declarations instead of includes in headers as much
as possible.

> +
> +#include "intel_display_types.h"
> +
> +#define I915_MAX_WD_TANSCODERS 2
> +
> +struct intel_wd {
> +	struct intel_encoder base;
> +	struct drm_writeback_connector wb_conn;
> +	struct intel_crtc *wd_crtc;
> +	intel_wakeref_t io_wakeref[I915_MAX_WD_TANSCODERS];
> +	//struct intel_connector *attached_connector;
> +	enum transcoder trans;
> +	struct i915_vma *vma;
> +	unsigned long flags;
> +	struct drm_writeback_job *job;
> +	int triggered_cap_mode;
> +	int frame_num;
> +	bool stream_cap;
> +	bool start_capture;
> +	int slicing_strategy;
> +};
> +
> +struct intel_wd_clk_vals {
> +	u32 cdclk;
> +	u16 link_m;
> +	u16 link_n;
> +};

Unused.

> +
> +static inline struct intel_wd *enc_to_intel_wd(struct intel_encoder *enc=
oder)
> +{
> +	return container_of(&encoder->base, struct intel_wd, base.base);
> +}
> +
> +static inline struct intel_wd *wb_conn_to_intel_wd(struct drm_writeback_=
connector *wb_conn)
> +{
> +	return container_of(wb_conn, struct intel_wd, wb_conn);
> +}
> +
> +void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder tr=
ans);
> +void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
> +			struct drm_connector_state *conn_state);
> +void intel_wd_handle_isr(struct drm_i915_private *dev_priv);
> +void intel_wd_set_vblank_event(struct intel_crtc *crtc,
> +			struct intel_crtc_state *state);
> +#endif/* _INTEL_WD_H */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index d25647be25d1..30dc97785392 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -35,6 +35,8 @@
>  #include <linux/pm_qos.h>
>=20=20
>  #include <drm/drm_connector.h>
> +#include <drm/drm_writeback.h>
> +#include <drm/i915_mei_hdcp_interface.h>

Unnecessary.

>  #include <drm/ttm/ttm_device.h>
>=20=20
>  #include "display/intel_cdclk.h"
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 73cebc6aa650..95a6a8f7a911 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -42,6 +42,7 @@
>  #include "display/intel_hotplug.h"
>  #include "display/intel_lpe_audio.h"
>  #include "display/intel_psr.h"
> +#include "display/intel_wd.h"
>=20=20
>  #include "gt/intel_breadcrumbs.h"
>  #include "gt/intel_gt.h"
> @@ -2342,6 +2343,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private *=
dev_priv, u32 iir)
>  		found =3D true;
>  	}
>=20=20
> +	if (iir & GEN8_DE_MISC_WD0) {
> +		intel_wd_handle_isr(dev_priv);
> +		found =3D true;
> +	}
> +
>  	if (iir & GEN8_DE_EDP_PSR) {
>  		struct intel_encoder *encoder;
>  		u32 psr_iir;
> @@ -3767,7 +3773,7 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  	u32 de_pipe_enables;
>  	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> -	u32 de_misc_masked =3D GEN8_DE_EDP_PSR;
> +	u32 de_misc_masked =3D GEN8_DE_EDP_PSR | GEN8_DE_MISC_WD0;
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  	enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index aacc10f2e73f..bf4f1a7968c5 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -864,7 +864,8 @@ static const struct intel_device_info jsl_info =3D {
>  	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D), \
>  	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
> -		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
> +		BIT(TRANSCODER_WD_0), \
>  	.display.pipe_offsets =3D { \
>  		[TRANSCODER_A] =3D PIPE_A_OFFSET, \
>  		[TRANSCODER_B] =3D PIPE_B_OFFSET, \
> @@ -872,6 +873,8 @@ static const struct intel_device_info jsl_info =3D {
>  		[TRANSCODER_D] =3D PIPE_D_OFFSET, \
>  		[TRANSCODER_DSI_0] =3D PIPE_DSI0_OFFSET, \
>  		[TRANSCODER_DSI_1] =3D PIPE_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] =3D PIPE_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] =3D PIPE_WD1_OFFSET, \
>  	}, \
>  	.display.trans_offsets =3D { \
>  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET, \
> @@ -880,6 +883,8 @@ static const struct intel_device_info jsl_info =3D {
>  		[TRANSCODER_D] =3D TRANSCODER_D_OFFSET, \
>  		[TRANSCODER_DSI_0] =3D TRANSCODER_DSI0_OFFSET, \
>  		[TRANSCODER_DSI_1] =3D TRANSCODER_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] =3D TRANSCODER_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] =3D TRANSCODER_WD1_OFFSET, \
>  	}, \
>  	TGL_CURSOR_OFFSETS, \
>  	.has_global_mocs =3D 1, \

--=20
Jani Nikula, Intel Open Source Graphics Center
