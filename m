Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086EA51D72A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 14:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEAB10EAE4;
	Fri,  6 May 2022 12:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE2910EC3F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 12:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651838417; x=1683374417;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HeZMalDl6JCLsHENenaarbDHrlLvODGnvR1bV7a/gv0=;
 b=jLXT0JmnE8nEpTA6QS3ZDb4r6CNHhMuYlYhY++k3M86AOIi2THOKE1HE
 wroL0W0BXbY1lRdTf7tGEnboTVGugdRvnjx0LPVvzmUGjcGHkPXg1E+aI
 snC0n9sgxnzSB6Jzu5MwQG4/BjDEkVur6BtfKkNjsn12q3NE9lECTPhWt
 SUVA0Zw5pfoH5yW4UeADm5+CzVgaHMRGn+v2LHZQ82IUSL/YzlsPd4Mra
 on8frg8CBI2z/cGtvKKl7JKwRP7qJyzgxiMQkrK10aj7KDIZzJCkcl5Vs
 HACdTSg8qPC2anNjUTP6CtKXOq4Ck/Qw2Hipu2avO+Gf2e/ciO0/1FEVv A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="268053595"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="268053595"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 05:00:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="585945737"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.157.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 05:00:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220414210657.1785773-14-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220414210657.1785773-1-imre.deak@intel.com>
 <20220414210657.1785773-14-imre.deak@intel.com>
Date: Fri, 06 May 2022 15:00:12 +0300
Message-ID: <87v8uikh0z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [CI 14/18] drm/i915: Sanitize the port -> DDI/AUX
 power domain mapping for each platform
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

On Fri, 15 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> Atm the port -> DDI and AUX power domain mapping is specified by relying
> on the aliasing of the platform specific intel_display_power_domain enum
> values. For instance D12+ platforms refer to the 'D' port and power
> domain instances, which doesn't match the bspec terminology, on these
> platforms the corresponding port is TC1. To make it clear what
> port/domain the code refers to add a mapping between them which matches
> the bspec terms on different display versions.
>
> This also allows for removing the aliasing in enum values in a follow-up
> patch.
>
> v2: Add the functions to intel_display_power.c, use
>     intel_display_power_ prefix.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  85 +-------
>  drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
>  .../drm/i915/display/intel_display_power.c    | 206 ++++++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  12 +
>  drivers/gpu/drm/i915/display/intel_tc.c       |   5 +-
>  8 files changed, 235 insertions(+), 89 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 16bb21ad898b3..5a957acebfd62 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -13,6 +13,7 @@
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -1375,7 +1376,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	dig_port->max_lanes =3D 4;
>=20=20
>  	intel_encoder->type =3D INTEL_OUTPUT_DP;
> -	intel_encoder->power_domain =3D intel_port_to_power_domain(port);
> +	intel_encoder->power_domain =3D intel_display_power_ddi_lanes_domain(de=
v_priv, port);
>  	if (IS_CHERRYVIEW(dev_priv)) {
>  		if (port =3D=3D PORT_D)
>  			intel_encoder->pipe_mask =3D BIT(PIPE_C);
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 8bfef08b7c43f..5fbd2ae958692 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -10,6 +10,7 @@
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_fifo_underrun.h"
> @@ -574,7 +575,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  	intel_encoder->shutdown =3D intel_hdmi_encoder_shutdown;
>=20=20
>  	intel_encoder->type =3D INTEL_OUTPUT_HDMI;
> -	intel_encoder->power_domain =3D intel_port_to_power_domain(port);
> +	intel_encoder->power_domain =3D intel_display_power_ddi_lanes_domain(de=
v_priv, port);
>  	intel_encoder->port =3D port;
>  	if (IS_CHERRYVIEW(dev_priv)) {
>  		if (port =3D=3D PORT_D)
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 01463c4711d3e..d9f238edf547f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -40,6 +40,7 @@
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
> +#include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -4364,7 +4365,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	encoder->get_power_domains =3D intel_ddi_get_power_domains;
>=20=20
>  	encoder->type =3D INTEL_OUTPUT_DDI;
> -	encoder->power_domain =3D intel_port_to_power_domain(port);
> +	encoder->power_domain =3D intel_display_power_ddi_lanes_domain(dev_priv=
, port);
>  	encoder->port =3D port;
>  	encoder->cloneable =3D 0;
>  	encoder->pipe_mask =3D ~0;
> @@ -4492,8 +4493,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	}
>=20=20
>  	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
> -	dig_port->ddi_io_power_domain =3D POWER_DOMAIN_PORT_DDI_IO_A +
> -					      port - PORT_A;
> +	dig_port->ddi_io_power_domain =3D intel_display_power_ddi_io_domain(dev=
_priv, port);
>=20=20
>  	if (init_dp) {
>  		if (!intel_ddi_init_dp_connector(dig_port))
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7e9abcbbbcc2f..2bff98908d67f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -51,6 +51,7 @@
>  #include "display/intel_crt.h"
>  #include "display/intel_ddi.h"
>  #include "display/intel_display_debugfs.h"
> +#include "display/intel_display_power.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dp_mst.h"
>  #include "display/intel_dpll.h"
> @@ -2157,91 +2158,15 @@ enum tc_port intel_port_to_tc(struct drm_i915_pri=
vate *dev_priv, enum port port)
>  		return TC_PORT_1 + port - PORT_C;
>  }
>=20=20
> -enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t)
> -{
> -	switch (port) {
> -	case PORT_A:
> -		return POWER_DOMAIN_PORT_DDI_LANES_A;
> -	case PORT_B:
> -		return POWER_DOMAIN_PORT_DDI_LANES_B;
> -	case PORT_C:
> -		return POWER_DOMAIN_PORT_DDI_LANES_C;
> -	case PORT_D:
> -		return POWER_DOMAIN_PORT_DDI_LANES_D;
> -	case PORT_E:
> -		return POWER_DOMAIN_PORT_DDI_LANES_E;
> -	case PORT_F:
> -		return POWER_DOMAIN_PORT_DDI_LANES_F;
> -	case PORT_G:
> -		return POWER_DOMAIN_PORT_DDI_LANES_G;
> -	case PORT_H:
> -		return POWER_DOMAIN_PORT_DDI_LANES_H;
> -	case PORT_I:
> -		return POWER_DOMAIN_PORT_DDI_LANES_I;
> -	default:
> -		MISSING_CASE(port);
> -		return POWER_DOMAIN_PORT_OTHER;
> -	}
> -}
> -
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port)
>  {
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
> -		switch (dig_port->aux_ch) {
> -		case AUX_CH_C:
> -			return POWER_DOMAIN_AUX_TBT_C;
> -		case AUX_CH_D:
> -			return POWER_DOMAIN_AUX_TBT_D;
> -		case AUX_CH_E:
> -			return POWER_DOMAIN_AUX_TBT_E;
> -		case AUX_CH_F:
> -			return POWER_DOMAIN_AUX_TBT_F;
> -		case AUX_CH_G:
> -			return POWER_DOMAIN_AUX_TBT_G;
> -		case AUX_CH_H:
> -			return POWER_DOMAIN_AUX_TBT_H;
> -		case AUX_CH_I:
> -			return POWER_DOMAIN_AUX_TBT_I;
> -		default:
> -			MISSING_CASE(dig_port->aux_ch);
> -			return POWER_DOMAIN_AUX_TBT_C;
> -		}
> -	}
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>=20=20
> -	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> -}
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		return intel_display_power_tbt_aux_domain(i915, dig_port->aux_ch);
>=20=20
> -/*
> - * Converts aux_ch to power_domain without caring about TBT ports for th=
at use
> - * intel_aux_power_domain()
> - */
> -enum intel_display_power_domain
> -intel_legacy_aux_to_power_domain(enum aux_ch aux_ch)
> -{
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -		return POWER_DOMAIN_AUX_A;
> -	case AUX_CH_B:
> -		return POWER_DOMAIN_AUX_B;
> -	case AUX_CH_C:
> -		return POWER_DOMAIN_AUX_C;
> -	case AUX_CH_D:
> -		return POWER_DOMAIN_AUX_D;
> -	case AUX_CH_E:
> -		return POWER_DOMAIN_AUX_E;
> -	case AUX_CH_F:
> -		return POWER_DOMAIN_AUX_F;
> -	case AUX_CH_G:
> -		return POWER_DOMAIN_AUX_G;
> -	case AUX_CH_H:
> -		return POWER_DOMAIN_AUX_H;
> -	case AUX_CH_I:
> -		return POWER_DOMAIN_AUX_I;
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return POWER_DOMAIN_AUX_A;
> -	}
> +	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
>  }
>=20=20
>  static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 867fa248f0422..187910d94ec65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -635,11 +635,9 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crt=
c *crtc,
>  void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  			 struct intel_crtc_state *pipe_config);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
> -enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
> +enum intel_display_power_domain intel_port_to_power_domain(struct intel_=
digital_port *dig_port);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> -enum intel_display_power_domain
> -intel_legacy_aux_to_power_domain(enum aux_ch aux_ch);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state);
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 69f66da007056..b417ca4e5c58f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2256,3 +2256,209 @@ void intel_display_power_debug(struct drm_i915_pr=
ivate *i915, struct seq_file *m
>=20=20
>  	mutex_unlock(&power_domains->lock);
>  }
> +
> +struct intel_ddi_port_domains {
> +	enum port port_start;
> +	enum port port_end;
> +	enum aux_ch aux_ch_start;
> +	enum aux_ch aux_ch_end;
> +
> +	enum intel_display_power_domain ddi_lanes;
> +	enum intel_display_power_domain ddi_io;
> +	enum intel_display_power_domain aux_legacy_usbc;
> +	enum intel_display_power_domain aux_tbt;
> +};
> +
> +static const struct intel_ddi_port_domains
> +i9xx_port_domains[] =3D {
> +	{
> +		.port_start =3D PORT_A,
> +		.port_end =3D PORT_F,
> +		.aux_ch_start =3D AUX_CH_A,
> +		.aux_ch_end =3D AUX_CH_F,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_A,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_A,
> +		.aux_tbt =3D POWER_DOMAIN_INVALID,
> +	},
> +};
> +
> +static const struct intel_ddi_port_domains
> +d11_port_domains[] =3D {
> +	{
> +		.port_start =3D PORT_A,
> +		.port_end =3D PORT_B,
> +		.aux_ch_start =3D AUX_CH_A,
> +		.aux_ch_end =3D AUX_CH_B,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_A,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_A,
> +		.aux_tbt =3D POWER_DOMAIN_INVALID,
> +	}, {
> +		.port_start =3D PORT_C,
> +		.port_end =3D PORT_F,
> +		.aux_ch_start =3D AUX_CH_C,
> +		.aux_ch_end =3D AUX_CH_F,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_C,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_C,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_C,
> +		.aux_tbt =3D POWER_DOMAIN_AUX_TBT_C,
> +	},
> +};
> +
> +static const struct intel_ddi_port_domains
> +d12_port_domains[] =3D {
> +	{
> +		.port_start =3D PORT_A,
> +		.port_end =3D PORT_C,
> +		.aux_ch_start =3D AUX_CH_A,
> +		.aux_ch_end =3D AUX_CH_C,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_A,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_A,
> +		.aux_tbt =3D POWER_DOMAIN_INVALID,
> +	}, {
> +		.port_start =3D PORT_TC1,
> +		.port_end =3D PORT_TC6,
> +		.aux_ch_start =3D AUX_CH_USBC1,
> +		.aux_ch_end =3D AUX_CH_USBC6,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_TC1,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_TC1,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_USBC1,
> +		.aux_tbt =3D POWER_DOMAIN_AUX_TBT1,
> +	},
> +};
> +
> +static const struct intel_ddi_port_domains
> +d13_port_domains[] =3D {
> +	{
> +		.port_start =3D PORT_A,
> +		.port_end =3D PORT_C,
> +		.aux_ch_start =3D AUX_CH_A,
> +		.aux_ch_end =3D AUX_CH_C,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_A,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_A,
> +		.aux_tbt =3D POWER_DOMAIN_INVALID,
> +	}, {
> +		.port_start =3D PORT_TC1,
> +		.port_end =3D PORT_TC4,
> +		.aux_ch_start =3D AUX_CH_USBC1,
> +		.aux_ch_end =3D AUX_CH_USBC4,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_TC1,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_TC1,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_USBC1,
> +		.aux_tbt =3D POWER_DOMAIN_AUX_TBT1,
> +	}, {
> +		.port_start =3D PORT_D_XELPD,
> +		.port_end =3D PORT_E_XELPD,
> +		.aux_ch_start =3D AUX_CH_D_XELPD,
> +		.aux_ch_end =3D AUX_CH_E_XELPD,
> +
> +		.ddi_lanes =3D POWER_DOMAIN_PORT_DDI_LANES_D_XELPD,
> +		.ddi_io =3D POWER_DOMAIN_PORT_DDI_IO_D_XELPD,
> +		.aux_legacy_usbc =3D POWER_DOMAIN_AUX_D_XELPD,
> +		.aux_tbt =3D POWER_DOMAIN_INVALID,
> +	},
> +};
> +
> +static void
> +intel_port_domains_for_platform(struct drm_i915_private *i915,
> +				const struct intel_ddi_port_domains **domains,
> +				int *domains_size)
> +{
> +	if (DISPLAY_VER(i915) >=3D 13) {
> +		*domains =3D d13_port_domains;
> +		*domains_size =3D ARRAY_SIZE(d13_port_domains);
> +	} else if (DISPLAY_VER(i915) >=3D 12) {
> +		*domains =3D d12_port_domains;
> +		*domains_size =3D ARRAY_SIZE(d12_port_domains);
> +	} else if (DISPLAY_VER(i915) >=3D 11) {
> +		*domains =3D d11_port_domains;
> +		*domains_size =3D ARRAY_SIZE(d11_port_domains);
> +	} else {
> +		*domains =3D i9xx_port_domains;
> +		*domains_size =3D ARRAY_SIZE(i9xx_port_domains);
> +	}
> +}
> +
> +static const struct intel_ddi_port_domains *
> +intel_port_domains_for_port(struct drm_i915_private *i915, enum port por=
t)
> +{
> +	const struct intel_ddi_port_domains *domains;
> +	int domains_size;
> +	int i;
> +
> +	intel_port_domains_for_platform(i915, &domains, &domains_size);
> +	for (i =3D 0; i < domains_size; i++)
> +		if (port >=3D domains[i].port_start && port <=3D domains[i].port_end)
> +			return &domains[i];
> +
> +	return NULL;
> +}
> +
> +enum intel_display_power_domain
> +intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum po=
rt port)
> +{
> +	const struct intel_ddi_port_domains *domains =3D intel_port_domains_for=
_port(i915, port);
> +
> +	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_io =3D=3D POWER_D=
OMAIN_INVALID)
> +		return POWER_DOMAIN_PORT_DDI_IO_A;
> +
> +	return domains->ddi_io + port - domains->port_start;
> +}
> +
> +enum intel_display_power_domain
> +intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum=
 port port)
> +{
> +	const struct intel_ddi_port_domains *domains =3D intel_port_domains_for=
_port(i915, port);
> +
> +	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_lanes =3D=3D POWE=
R_DOMAIN_INVALID)
> +		return POWER_DOMAIN_PORT_DDI_LANES_A;
> +
> +	return domains->ddi_lanes + port - domains->port_start;

The above two functions lead to some sparse warnings:

drivers/gpu/drm/i915/display/intel_display_power.c:2431:34: warning: mixing=
 different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    unsigned int=
 enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    int enum port
drivers/gpu/drm/i915/display/intel_display_power.c:2442:37: warning: mixing=
 different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    unsigned int=
 enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    int enum port
drivers/gpu/drm/i915/display/intel_display_power.c:2468:43: warning: mixing=
 different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned int=
 enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned int=
 enum aux_ch
drivers/gpu/drm/i915/display/intel_display_power.c:2479:35: warning: mixing=
 different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned int=
 enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned int=
 enum aux_ch

BR,
Jani.


> +}
> +
> +static const struct intel_ddi_port_domains *
> +intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch=
 aux_ch)
> +{
> +	const struct intel_ddi_port_domains *domains;
> +	int domains_size;
> +	int i;
> +
> +	intel_port_domains_for_platform(i915, &domains, &domains_size);
> +	for (i =3D 0; i < domains_size; i++)
> +		if (aux_ch >=3D domains[i].aux_ch_start && aux_ch <=3D domains[i].aux_=
ch_end)
> +			return &domains[i];
> +
> +	return NULL;
> +}
> +
> +enum intel_display_power_domain
> +intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enu=
m aux_ch aux_ch)
> +{
> +	const struct intel_ddi_port_domains *domains =3D intel_port_domains_for=
_aux_ch(i915, aux_ch);
> +
> +	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_legacy_usbc =3D=
=3D POWER_DOMAIN_INVALID)
> +		return POWER_DOMAIN_AUX_A;
> +
> +	return domains->aux_legacy_usbc + aux_ch - domains->aux_ch_start;
> +}
> +
> +enum intel_display_power_domain
> +intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum a=
ux_ch aux_ch)
> +{
> +	const struct intel_ddi_port_domains *domains =3D intel_port_domains_for=
_aux_ch(i915, aux_ch);
> +
> +	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_tbt =3D=3D POWER_=
DOMAIN_INVALID)
> +		return POWER_DOMAIN_AUX_TBT1;
> +
> +	return domains->aux_tbt + aux_ch - domains->aux_ch_start;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 66fef12ef3db4..2ea30a4cfaa89 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -8,8 +8,10 @@
>=20=20
>  #include "intel_runtime_pm.h"
>=20=20
> +enum aux_ch;
>  enum dpio_channel;
>  enum dpio_phy;
> +enum port;
>  struct drm_i915_private;
>  struct i915_power_well;
>  struct intel_encoder;
> @@ -130,6 +132,7 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_INIT,
>=20=20
>  	POWER_DOMAIN_NUM,
> +	POWER_DOMAIN_INVALID =3D POWER_DOMAIN_NUM,
>  };
>=20=20
>  #define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
> @@ -266,6 +269,15 @@ intel_display_power_put_all_in_set(struct drm_i915_p=
rivate *i915,
>=20=20
>  void intel_display_power_debug(struct drm_i915_private *i915, struct seq=
_file *m);
>=20=20
> +enum intel_display_power_domain
> +intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum=
 port port);
> +enum intel_display_power_domain
> +intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum po=
rt port);
> +enum intel_display_power_domain
> +intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enu=
m aux_ch aux_ch);
> +enum intel_display_power_domain
> +intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum a=
ux_ch aux_ch);
> +
>  /*
>   * FIXME: We should probably switch this to a 0-based scheme to be consi=
stent
>   * with how we now name/number DBUF_CTL instances.
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index fc037c027ea5a..b8b822ea37553 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_display.h"
> +#include "intel_display_power_map.h"
>  #include "intel_display_types.h"
>  #include "intel_dp_mst.h"
>  #include "intel_tc.h"
> @@ -61,10 +62,12 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digit=
al_port *dig_port)
>  static enum intel_display_power_domain
>  tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_po=
rt_mode mode)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +
>  	if (mode =3D=3D TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_p=
ort))
>  		return POWER_DOMAIN_TC_COLD_OFF;
>=20=20
> -	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
>  }
>=20=20
>  static intel_wakeref_t

--=20
Jani Nikula, Intel Open Source Graphics Center
