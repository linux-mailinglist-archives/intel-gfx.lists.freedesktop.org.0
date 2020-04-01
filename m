Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 561C119AC27
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 14:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FBB6E33C;
	Wed,  1 Apr 2020 12:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E136E33C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 12:56:04 +0000 (UTC)
IronPort-SDR: 8oPr+KK4EhFV1Iozw+ogMFquSlEAE1b1IHzbveA+pxsH7vhWCAODCGQg3Ny8mrGhxyqaNockDr
 6LbcTvRS7A6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:56:03 -0700
IronPort-SDR: dZQDvrJ6dHDOUCo3FeszAm3yAMGVcdbJJJ/+AY3ybuO7zWn2iQ+Lcn+sX6o9BrgR2SdXXkF2LV
 +CxRBg0UxnCg==
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="242226152"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:56:01 -0700
Date: Wed, 1 Apr 2020 15:55:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200401125557.GE24964@ideak-desk.fi.intel.com>
References: <20200401004120.408586-1-jose.souza@intel.com>
 <20200401004120.408586-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401004120.408586-6-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/tc/tgl: Implement TC cold
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

On Tue, Mar 31, 2020 at 05:41:20PM -0700, Jos=E9 Roberto de Souza wrote:
> TC ports can enter in TCCOLD to save power and is required to request
> to PCODE to exit this state before use or read to TC registers.
> =

> For TGL there is a new MBOX command to do that with a parameter to ask
> PCODE to exit and block TCCOLD entry or unblock TCCOLD entry.
> =

> So adding a new power domain to reuse the refcount and only allow
> TC cold when all TC ports are not in use.
> =

> BSpec: 49294
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 46 ++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_tc.c       | 63 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_tc.h       |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  3 +
>  5 files changed, 103 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 1ccd57d645c7..5de115583146 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2842,6 +2842,8 @@ void intel_display_power_put(struct drm_i915_privat=
e *dev_priv,
>  #define TGL_AUX_I_TBT6_IO_POWER_DOMAINS (	\
>  	BIT_ULL(POWER_DOMAIN_AUX_I_TBT))
>  =

> +#define TGL_TC_COLD_OFF (BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))

TGL_TC_COLD_OFF_POWER_DOMAINS
and should also include all the AUX power domains.

> +
>  static const struct i915_power_well_ops i9xx_always_on_power_well_ops =
=3D {
>  	.sync_hw =3D i9xx_power_well_sync_hw_noop,
>  	.enable =3D i9xx_always_on_power_well_noop,
> @@ -3944,6 +3946,44 @@ static const struct i915_power_well_desc ehl_power=
_wells[] =3D {
>  	},
>  };
>  =

> +static void
> +tgl_tc_cold_off_power_well_enable(struct drm_i915_private *i915,
> +				  struct i915_power_well *power_well)
> +{
> +	intel_tc_tgl_tc_cold_request(i915, true);
> +}
> +
> +static void
> +tgl_tc_cold_off_power_well_disable(struct drm_i915_private *i915,
> +				   struct i915_power_well *power_well)
> +{
> +	intel_tc_tgl_tc_cold_request(i915, false);
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
> +static bool tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_privat=
e *dev_priv,
> +						  struct i915_power_well *power_well)
> +{
> +	/* There is no way to just read it from PCODE */
> +	return false;
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
> @@ -4271,6 +4311,12 @@ static const struct i915_power_well_desc tgl_power=
_wells[] =3D {
>  			.hsw.irq_pipe_mask =3D BIT(PIPE_D),
>  		},
>  	},
> +	{
> +		.name =3D "TC cold off",
> +		.domains =3D POWER_DOMAIN_TC_COLD_OFF,

TGL_TC_COLD_OFF_POWER_DOMAINS

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
> index b6d67f069ef7..58f19037411a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -507,11 +507,16 @@ static void __intel_tc_port_lock(struct intel_digit=
al_port *dig_port,
>  =

>  	mutex_lock(&dig_port->tc_lock);
>  =

> -	if (INTEL_GEN(i915) =3D=3D 11 && dig_port->tc_link_refcount =3D=3D 0) {
> -		enum intel_display_power_domain aux_domain;
> +	if (dig_port->tc_link_refcount =3D=3D 0) {
> +		enum intel_display_power_domain domain;
>  =

> -		aux_domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> -		dig_port->tc_cold_wakeref =3D intel_display_power_get(i915, aux_domain=
);
> +		if (INTEL_GEN(i915) =3D=3D 11)
> +			domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +		else
> +			domain =3D POWER_DOMAIN_TC_COLD_OFF;
> +
> +		dig_port->tc_cold_wakeref =3D intel_display_power_get(i915,
> +								    domain);
>  	}
>  =

>  	if (!dig_port->tc_link_refcount &&
> @@ -527,18 +532,23 @@ void intel_tc_port_lock(struct intel_digital_port *=
dig_port)
>  	__intel_tc_port_lock(dig_port, 1);
>  }
>  =

> -static void icl_tc_cold_unblock(struct intel_digital_port *dig_port)
> +static void tc_cold_unblock(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> -	enum intel_display_power_domain aux_domain;
> +	enum intel_display_power_domain domain;
>  	intel_wakeref_t tc_cold_wakeref;
>  =

> -	if (INTEL_GEN(i915) !=3D 11 || dig_port->tc_link_refcount > 0)
> +	if (dig_port->tc_link_refcount > 0)

You could drop the ref whenever wakeref passed to this function is not NULL=
. =


>  		return;
>  =

>  	tc_cold_wakeref =3D fetch_and_zero(&dig_port->tc_cold_wakeref);
> -	aux_domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> -	intel_display_power_put_async(i915, aux_domain, tc_cold_wakeref);
> +
> +	if (INTEL_GEN(i915) =3D=3D 11)
> +		domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +	else
> +		domain =3D POWER_DOMAIN_TC_COLD_OFF;
> +
> +	intel_display_power_put_async(i915, domain, tc_cold_wakeref);
>  }
>  =

>  void intel_tc_port_unlock(struct intel_digital_port *dig_port)
> @@ -546,7 +556,7 @@ void intel_tc_port_unlock(struct intel_digital_port *=
dig_port)
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	intel_wakeref_t wakeref =3D fetch_and_zero(&dig_port->tc_lock_wakeref);
>  =

> -	icl_tc_cold_unblock(dig_port);
> +	tc_cold_unblock(dig_port);
>  =

>  	mutex_unlock(&dig_port->tc_lock);
>  =

> @@ -571,7 +581,7 @@ void intel_tc_port_put_link(struct intel_digital_port=
 *dig_port)
>  {
>  	mutex_lock(&dig_port->tc_lock);
>  	dig_port->tc_link_refcount--;
> -	icl_tc_cold_unblock(dig_port);
> +	tc_cold_unblock(dig_port);
>  	mutex_unlock(&dig_port->tc_lock);
>  }
>  =

> @@ -611,3 +621,34 @@ void intel_tc_icl_tc_cold_exit(struct drm_i915_priva=
te *i915)
>  		drm_dbg_kms(&i915->drm, "TC cold block %s\n",
>  			    (ret =3D=3D 0 ? "succeeded" : "failed"));
>  }
> +
> +void
> +intel_tc_tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
> +{
> +	u32 low_val, high_val;
> +	u8 tries =3D 0;
> +	int ret;
> +
> +	do {
> +		low_val =3D 0;
> +		high_val =3D block ? 0 : TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ;
> +
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
> +	} while (tries < 3);
> +
> +	if (ret)
> +		drm_dbg_kms(&i915->drm, "TC cold %sblock %s\n",
> +			    (block ? "" : "un"),
> +			    (ret =3D=3D 0 ? "succeeded" : "failed"));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i9=
15/display/intel_tc.h
> index 168d8896fcfd..8bb358cc8f15 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -31,5 +31,6 @@ void intel_tc_port_init(struct intel_digital_port *dig_=
port, bool is_legacy);
>  =

>  u32 intel_tc_port_live_status_mask(struct intel_digital_port *dig_port);
>  void intel_tc_icl_tc_cold_exit(struct drm_i915_private *i915);
> +void intel_tc_tgl_tc_cold_request(struct drm_i915_private *i915, bool bl=
ock);
>  =

>  #endif /* __INTEL_TC_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index b111815d6596..5548f3b56c0b 100644
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
