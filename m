Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B77C6633C89
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB25A10E3D2;
	Tue, 22 Nov 2022 12:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0739810E3D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120388; x=1700656388;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=vsK3IW1iRWTFzeEHd/+rnQ4jx1E8zYkj087NXuHkXes=;
 b=OLMvUWRhKbD1CQ6YRh8tGQVVXA7JavLuUE0MPPFxiVR0To6b2WznXqHt
 oY6dsShFiDTHnZv67SMOg6rRR2RoqEoomfRAp/sJOhi5OcZJ/+Q89gVIR
 XMesbfBVmbOlqIET5puJvuHBP0WqgBfBU0dZkH2FEBzHIGebsFn8vUz0a
 ydcC7n2sewmlqaSW346mlk8qH4ZwqXMrATlagny8ZshP6CR/bXU7u5wmQ
 UwZlrGCSqyfb0h0HUfOGzLCDu1ATqKtcrN+3jQ0X1tjJ6Bvgu/bVmTfaY
 VkIvDLBwLMDrXWA7+T6KYPhAQsV4CVUqsP6b3Leo6qw1VL1kbuvHzB2ks g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="311431999"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="311431999"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:33:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="710177707"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="710177707"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:33:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-5-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:33:04 +0200
Message-ID: <87v8n7xj7j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/dvo: Parametrize
 DVO/DVO_SRCDIM registers
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the dvo_reg/dvo_srcdim_reg stuff by parametrizing
> the DVO port registers.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c     | 73 ++++++++------------
>  drivers/gpu/drm/i915/display/intel_dvo_dev.h |  7 +-
>  drivers/gpu/drm/i915/i915_reg.h              | 11 ++-
>  3 files changed, 37 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 575cb920bd43..d20334d3394c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -56,48 +56,42 @@ static const struct intel_dvo_device intel_dvo_device=
s[] =3D {
>  	{
>  		.type =3D INTEL_DVO_CHIP_TMDS,
>  		.name =3D "sil164",
> -		.dvo_reg =3D DVOC,
> -		.dvo_srcdim_reg =3D DVOC_SRCDIM,
> +		.port =3D PORT_C,
>  		.slave_addr =3D SIL164_ADDR,
>  		.dev_ops =3D &sil164_ops,
>  	},
>  	{
>  		.type =3D INTEL_DVO_CHIP_TMDS,
>  		.name =3D "ch7xxx",
> -		.dvo_reg =3D DVOC,
> -		.dvo_srcdim_reg =3D DVOC_SRCDIM,
> +		.port =3D PORT_C,
>  		.slave_addr =3D CH7xxx_ADDR,
>  		.dev_ops =3D &ch7xxx_ops,
>  	},
>  	{
>  		.type =3D INTEL_DVO_CHIP_TMDS,
>  		.name =3D "ch7xxx",
> -		.dvo_reg =3D DVOC,
> -		.dvo_srcdim_reg =3D DVOC_SRCDIM,
> +		.port =3D PORT_C,
>  		.slave_addr =3D 0x75, /* For some ch7010 */
>  		.dev_ops =3D &ch7xxx_ops,
>  	},
>  	{
>  		.type =3D INTEL_DVO_CHIP_LVDS,
>  		.name =3D "ivch",
> -		.dvo_reg =3D DVOA,
> -		.dvo_srcdim_reg =3D DVOA_SRCDIM,
> +		.port =3D PORT_A,
>  		.slave_addr =3D 0x02, /* Might also be 0x44, 0x84, 0xc4 */
>  		.dev_ops =3D &ivch_ops,
>  	},
>  	{
>  		.type =3D INTEL_DVO_CHIP_TMDS,
>  		.name =3D "tfp410",
> -		.dvo_reg =3D DVOC,
> -		.dvo_srcdim_reg =3D DVOC_SRCDIM,
> +		.port =3D PORT_C,
>  		.slave_addr =3D TFP410_ADDR,
>  		.dev_ops =3D &tfp410_ops,
>  	},
>  	{
>  		.type =3D INTEL_DVO_CHIP_LVDS,
>  		.name =3D "ch7017",
> -		.dvo_reg =3D DVOC,
> -		.dvo_srcdim_reg =3D DVOC_SRCDIM,
> +		.port =3D PORT_C,
>  		.slave_addr =3D 0x75,
>  		.gpio =3D GMBUS_PIN_DPB,
>  		.dev_ops =3D &ch7017_ops,
> @@ -105,8 +99,7 @@ static const struct intel_dvo_device intel_dvo_devices=
[] =3D {
>  	{
>  		.type =3D INTEL_DVO_CHIP_LVDS_NO_FIXED,
>  		.name =3D "ns2501",
> -		.dvo_reg =3D DVOB,
> -		.dvo_srcdim_reg =3D DVOB_SRCDIM,
> +		.port =3D PORT_B,
>  		.slave_addr =3D NS2501_ADDR,
>  		.dev_ops =3D &ns2501_ops,
>  	},
> @@ -133,10 +126,12 @@ static struct intel_dvo *intel_attached_dvo(struct =
intel_connector *connector)
>  static bool intel_dvo_connector_get_hw_state(struct intel_connector *con=
nector)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -	struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
> +	struct intel_encoder *encoder =3D intel_attached_encoder(connector);
> +	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
> +	enum port port =3D encoder->port;
>  	u32 tmp;
>=20=20
> -	tmp =3D intel_de_read(i915, intel_dvo->dev.dvo_reg);
> +	tmp =3D intel_de_read(i915, DVO(port));
>=20=20
>  	if (!(tmp & DVO_ENABLE))
>  		return false;
> @@ -148,10 +143,10 @@ static bool intel_dvo_get_hw_state(struct intel_enc=
oder *encoder,
>  				   enum pipe *pipe)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
> +	enum port port =3D encoder->port;
>  	u32 tmp;
>=20=20
> -	tmp =3D intel_de_read(i915, intel_dvo->dev.dvo_reg);
> +	tmp =3D intel_de_read(i915, DVO(port));
>=20=20
>  	*pipe =3D (tmp & DVO_PIPE_SEL_MASK) >> DVO_PIPE_SEL_SHIFT;
>=20=20
> @@ -162,12 +157,12 @@ static void intel_dvo_get_config(struct intel_encod=
er *encoder,
>  				 struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
> +	enum port port =3D encoder->port;
>  	u32 tmp, flags =3D 0;
>=20=20
>  	pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DVO);
>=20=20
> -	tmp =3D intel_de_read(i915, intel_dvo->dev.dvo_reg);
> +	tmp =3D intel_de_read(i915, DVO(port));
>  	if (tmp & DVO_HSYNC_ACTIVE_HIGH)
>  		flags |=3D DRM_MODE_FLAG_PHSYNC;
>  	else
> @@ -189,12 +184,12 @@ static void intel_disable_dvo(struct intel_atomic_s=
tate *state,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
> -	i915_reg_t dvo_reg =3D intel_dvo->dev.dvo_reg;
> -	u32 temp =3D intel_de_read(i915, dvo_reg);
> +	enum port port =3D encoder->port;
> +	u32 temp =3D intel_de_read(i915, DVO(port));
>=20=20
>  	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
> -	intel_de_write(i915, dvo_reg, temp & ~DVO_ENABLE);
> -	intel_de_read(i915, dvo_reg);
> +	intel_de_write(i915, DVO(port), temp & ~DVO_ENABLE);
> +	intel_de_read(i915, DVO(port));
>  }
>=20=20
>  static void intel_enable_dvo(struct intel_atomic_state *state,
> @@ -204,15 +199,15 @@ static void intel_enable_dvo(struct intel_atomic_st=
ate *state,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
> -	i915_reg_t dvo_reg =3D intel_dvo->dev.dvo_reg;
> -	u32 temp =3D intel_de_read(i915, dvo_reg);
> +	enum port port =3D encoder->port;
> +	u32 temp =3D intel_de_read(i915, DVO(port));
>=20=20
>  	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
>  					 &pipe_config->hw.mode,
>  					 &pipe_config->hw.adjusted_mode);
>=20=20
> -	intel_de_write(i915, dvo_reg, temp | DVO_ENABLE);
> -	intel_de_read(i915, dvo_reg);
> +	intel_de_write(i915, DVO(port), temp | DVO_ENABLE);
> +	intel_de_read(i915, DVO(port));
>=20=20
>  	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
>  }
> @@ -289,14 +284,12 @@ static void intel_dvo_pre_enable(struct intel_atomi=
c_state *state,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> -	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
> +	enum port port =3D encoder->port;
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 dvo_val;
> -	i915_reg_t dvo_reg =3D intel_dvo->dev.dvo_reg;
> -	i915_reg_t dvo_srcdim_reg =3D intel_dvo->dev.dvo_srcdim_reg;
>=20=20
>  	/* Save the data order, since I don't know what it should be set to. */
> -	dvo_val =3D intel_de_read(i915, dvo_reg) &
> +	dvo_val =3D intel_de_read(i915, DVO(port)) &
>  		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
>  	dvo_val |=3D DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
>  		   DVO_BLANK_ACTIVE_HIGH;
> @@ -308,9 +301,9 @@ static void intel_dvo_pre_enable(struct intel_atomic_=
state *state,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
>  		dvo_val |=3D DVO_VSYNC_ACTIVE_HIGH;
>=20=20
> -	intel_de_write(i915, dvo_srcdim_reg,
> +	intel_de_write(i915, DVO_SRCDIM(port),
>  		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |=
 (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
> -	intel_de_write(i915, dvo_reg, dvo_val);
> +	intel_de_write(i915, DVO(port), dvo_val);
>  }
>=20=20
>  static enum drm_connector_status
> @@ -378,16 +371,6 @@ static const struct drm_encoder_funcs intel_dvo_enc_=
funcs =3D {
>  	.destroy =3D intel_dvo_enc_destroy,
>  };
>=20=20
> -static enum port intel_dvo_port(i915_reg_t dvo_reg)
> -{
> -	if (i915_mmio_reg_equal(dvo_reg, DVOA))
> -		return PORT_A;
> -	else if (i915_mmio_reg_equal(dvo_reg, DVOB))
> -		return PORT_B;
> -	else
> -		return PORT_C;
> -}
> -
>  static int intel_dvo_encoder_type(const struct intel_dvo_device *dvo)
>  {
>  	switch (dvo->type) {
> @@ -528,7 +511,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
>=20=20
>  	encoder->type =3D INTEL_OUTPUT_DVO;
>  	encoder->power_domain =3D POWER_DOMAIN_PORT_OTHER;
> -	encoder->port =3D intel_dvo_port(intel_dvo->dev.dvo_reg);
> +	encoder->port =3D intel_dvo->dev.port;
>  	encoder->pipe_mask =3D ~0;
>=20=20
>  	if (intel_dvo->dev.type !=3D INTEL_DVO_CHIP_LVDS)
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/d=
rm/i915/display/intel_dvo_dev.h
> index ecff7b190856..ea8eb7dcee38 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> +++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> @@ -25,6 +25,8 @@
>=20=20
>  #include "i915_reg_defs.h"
>=20=20
> +#include "intel_display.h"
> +
>  enum drm_connector_status;
>  struct drm_display_mode;
>  struct i2c_adapter;
> @@ -32,9 +34,8 @@ struct i2c_adapter;
>  struct intel_dvo_device {
>  	const char *name;
>  	int type;
> -	/* DVOA/B/C output register */
> -	i915_reg_t dvo_reg;
> -	i915_reg_t dvo_srcdim_reg;
> +	/* DVOA/B/C */
> +	enum port port;
>  	/* GPIO register used for i2c bus to control this device */
>  	u32 gpio;
>  	int slave_addr;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8e1892d14774..f5ae171eaee0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2578,11 +2578,9 @@
>=20=20
>  /* DVO port control */
>  #define _DVOA			0x61120
> -#define DVOA			_MMIO(_DVOA)
>  #define _DVOB			0x61140
> -#define DVOB			_MMIO(_DVOB)
>  #define _DVOC			0x61160
> -#define DVOC			_MMIO(_DVOC)
> +#define DVO(port)		_MMIO_PORT((port), _DVOA, _DVOB)
>  #define   DVO_ENABLE			(1 << 31)
>  #define   DVO_PIPE_SEL_SHIFT		30
>  #define   DVO_PIPE_SEL_MASK		(1 << 30)
> @@ -2609,9 +2607,10 @@
>  #define   DVO_OUTPUT_CSTATE_PIXELS	(1 << 1)	/* SDG only */
>  #define   DVO_OUTPUT_SOURCE_SIZE_PIXELS	(1 << 0)	/* SDG only */
>  #define   DVO_PRESERVE_MASK		(0x7 << 24)
> -#define DVOA_SRCDIM		_MMIO(0x61124)
> -#define DVOB_SRCDIM		_MMIO(0x61144)
> -#define DVOC_SRCDIM		_MMIO(0x61164)
> +#define _DVOA_SRCDIM		0x61124
> +#define _DVOB_SRCDIM		0x61144
> +#define _DVOC_SRCDIM		0x61164
> +#define DVO_SRCDIM(port)	_MMIO_PORT((port), _DVOA_SRCDIM, _DVOB_SRCDIM)
>  #define   DVO_SRCDIM_HORIZONTAL_SHIFT	12
>  #define   DVO_SRCDIM_VERTICAL_SHIFT	0

--=20
Jani Nikula, Intel Open Source Graphics Center
