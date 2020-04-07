Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 680B71A10E6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9956E8A1;
	Tue,  7 Apr 2020 16:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D736E8A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:03:29 +0000 (UTC)
IronPort-SDR: bDhGr2uteKSbwbGtBU++aBBUEdG4KEESy2rDgQUbaoL+VIUP5e7JksL2vxiXdSG2faUcUJUhCo
 cJSsuJWB+cnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:03:27 -0700
IronPort-SDR: 3fk/fIfJQ32DR0DJiRZz2dUeGG+dp/YVbMZcPLRF47SESrUZzEh3vlS/9rMlV5EQ8T9KCI7eqV
 zkQM1bxzqxrw==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="275144536"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:03:24 -0700
Date: Tue, 7 Apr 2020 19:02:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407160244.GF21484@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407011157.362092-6-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915/tc/tgl: Implement TC cold
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
Reply-To: imre.deak@intel.com
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 06:11:55PM -0700, Jos=E9 Roberto de Souza wrote:
> TC ports can enter in TCCOLD to save power and is required to request
> to PCODE to exit this state before use or read to TC registers.
> =

> For TGL there is a new MBOX command to do that with a parameter to ask
> PCODE to exit and block TCCOLD entry or unblock TCCOLD entry.
> =

> So adding a new power domain to reuse the refcount and only allow
> TC cold when all TC ports are not in use.
> =

> v2:
> - fixed missing case in intel_display_power_domain_str()
> - moved tgl_tc_cold_request to intel_display_power.c
> - renamed TGL_TC_COLD_OFF to TGL_TC_COLD_OFF_POWER_DOMAINS
> - added all TC and TBT aux power domains to
> TGL_TC_COLD_OFF_POWER_DOMAINS
> =

> BSpec: 49294
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 98 +++++++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_tc.c       | 17 +++-
>  drivers/gpu/drm/i915/i915_reg.h               |  3 +
>  4 files changed, 116 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 0383801a9acc..5d33929f3724 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -151,6 +151,8 @@ intel_display_power_domain_str(enum intel_display_pow=
er_domain domain)
>  		return "GT_IRQ";
>  	case POWER_DOMAIN_DPLL_DC_OFF:
>  		return "DPLL_DC_OFF";
> +	case POWER_DOMAIN_TC_COLD_OFF:
> +		return "TC_COLD_OFF";
>  	default:
>  		MISSING_CASE(domain);
>  		return "?";
> @@ -2858,6 +2860,21 @@ void intel_display_power_put(struct drm_i915_priva=
te *dev_priv,
>  #define TGL_AUX_I_TBT6_IO_POWER_DOMAINS (	\
>  	BIT_ULL(POWER_DOMAIN_AUX_I_TBT))
>  =

> +#define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
> +	BIT_ULL(POWER_DOMAIN_AUX_D)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_E)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_F)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_G)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_H)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_I)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_D_TBT)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_E_TBT)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_F_TBT)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_G_TBT)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_H_TBT)	|	\
> +	BIT_ULL(POWER_DOMAIN_AUX_I_TBT)	|	\
> +	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
> +
>  static const struct i915_power_well_ops i9xx_always_on_power_well_ops =
=3D {
>  	.sync_hw =3D i9xx_power_well_sync_hw_noop,
>  	.enable =3D i9xx_always_on_power_well_noop,
> @@ -3960,6 +3977,81 @@ static const struct i915_power_well_desc ehl_power=
_wells[] =3D {
>  	},
>  };
>  =

> +static void
> +tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
> +{
> +	u32 low_val, high_val;

Can be moved to their scope.

> +	u8 tries =3D 0;
> +	int ret;
> +
> +	do {
> +		low_val =3D 0;
> +		high_val =3D block ? 0 : TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ;
> +
> +		/*
> +		 * Spec states that we should timeout the request after 200us
> +		 * but the function below will timeout after 500us
> +		 */
> +		ret =3D sandybridge_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val,
> +					     &high_val);
> +		if (ret =3D=3D 0) {
> +			if (block &&
> +			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> +				ret =3D -EIO;
> +			else
> +				break;
> +		}
> +
> +		if (ret !=3D -EAGAIN)
> +			tries++;

-EAGAIN means that the PCODE run/busy flag didn't get cleared in the
previous iteration, and BSpec says to bail out and not to use the port
in that case. But we can't really do that, so let's give some slack to
PUNIT (and CPU), msleep(1) so the next iteration doesn't return
immediately and still protect against an endless loop?

> +	} while (tries < 3);
> +
> +	drm_dbg_kms(&i915->drm, "TC cold %sblock %s\n", block ? "" : "un",
> +		    ret =3D=3D 0 ? "succeeded" : "failed");

Isn't the fail always a true error? (also on ICL)

> +}
> +
> +static void
> +tgl_tc_cold_off_power_well_enable(struct drm_i915_private *i915,
> +				  struct i915_power_well *power_well)
> +{
> +	tgl_tc_cold_request(i915, true);
> +}
> +
> +static void
> +tgl_tc_cold_off_power_well_disable(struct drm_i915_private *i915,
> +				   struct i915_power_well *power_well)
> +{
> +	tgl_tc_cold_request(i915, false);
> +}
> +
> +static void
> +tgl_tc_cold_off_power_well_sync_hw(struct drm_i915_private *i915,
> +				   struct i915_power_well *power_well)
> +{
> +	if (power_well->count > 0)
> +		tgl_tc_cold_off_power_well_enable(i915, power_well);
> +	else
> +		tgl_tc_cold_off_power_well_disable(i915, power_well);
> +}
> +
> +static bool
> +tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
> +				      struct i915_power_well *power_well)
> +{
> +	/*
> +	 * Not the correctly implementation but there is no way to just read it
> +	 * from PCODE, so returning count to avoid state mismatch errors
> +	 */
> +	return power_well->count;
> +}
> +
> +static const struct i915_power_well_ops tgl_tc_cold_off_ops =3D {
> +	.sync_hw =3D tgl_tc_cold_off_power_well_sync_hw,
> +	.enable =3D tgl_tc_cold_off_power_well_enable,
> +	.disable =3D tgl_tc_cold_off_power_well_disable,
> +	.is_enabled =3D tgl_tc_cold_off_power_well_is_enabled,
> +};
> +
>  static const struct i915_power_well_desc tgl_power_wells[] =3D {
>  	{
>  		.name =3D "always-on",
> @@ -4287,6 +4379,12 @@ static const struct i915_power_well_desc tgl_power=
_wells[] =3D {
>  			.hsw.irq_pipe_mask =3D BIT(PIPE_D),
>  		},
>  	},
> +	{
> +		.name =3D "TC cold off",
> +		.domains =3D TGL_TC_COLD_OFF_POWER_DOMAINS,
> +		.ops =3D &tgl_tc_cold_off_ops,
> +		.id =3D DISP_PW_ID_NONE,
> +	},
>  };
>  =

>  static int
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index da64a5edae7a..070457e7b948 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -76,6 +76,7 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_GT_IRQ,
>  	POWER_DOMAIN_DPLL_DC_OFF,
> +	POWER_DOMAIN_TC_COLD_OFF,
>  	POWER_DOMAIN_INIT,
>  =

>  	POWER_DOMAIN_NUM,
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 7564259d677e..83861653768d 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -53,16 +53,27 @@ tc_port_load_fia_params(struct drm_i915_private *i915,
>  	}
>  }
>  =

> +static enum intel_display_power_domain
> +tc_cold_get_power_domain(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +
> +	if (INTEL_GEN(i915) =3D=3D 11)
> +		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +	else
> +		return POWER_DOMAIN_TC_COLD_OFF;
> +}
> +
>  static intel_wakeref_t
>  tc_cold_block(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	enum intel_display_power_domain domain;
>  =

> -	if (INTEL_GEN(i915) !=3D 11 || !dig_port->tc_legacy_port)
> +	if (INTEL_GEN(i915) =3D=3D 11 && !dig_port->tc_legacy_port)
>  		return 0;
>  =

> -	domain =3D intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +	domain =3D tc_cold_get_power_domain(dig_port);
>  	return intel_display_power_get(i915, domain);
>  }
>  =

> @@ -80,7 +91,7 @@ tc_cold_unblock(struct intel_digital_port *dig_port, in=
tel_wakeref_t wakeref)
>  	if (wakeref =3D=3D 0)
>  		return;
>  =

> -	domain =3D intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +	domain =3D tc_cold_get_power_domain(dig_port);
>  	intel_display_power_put_async(i915, domain, wakeref);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 5cbcd01ac3d5..e04eec003d4b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9110,6 +9110,9 @@ enum {
>  #define   ICL_PCODE_EXIT_TCCOLD			0x12
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
>  #define   DISPLAY_IPS_CONTROL			0x19
> +#define   TGL_PCODE_TCCOLD			0x26
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED   REG_BIT(0)
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ   REG_BIT(0)
>              /* See also IPS_CTL */
>  #define     IPS_PCODE_CONTROL			(1 << 30)
>  #define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
