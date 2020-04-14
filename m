Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8261A8A7D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 21:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B856E558;
	Tue, 14 Apr 2020 19:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643566E558
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 19:02:55 +0000 (UTC)
IronPort-SDR: Z+zSg/h48BSZLgSB8aLeelyPfw4NWI9HZ3A02Kxw2WLojpR2IUoLOVM4cULUGhDBK/1LwvF0c2
 rDtVs9Bsk9wQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 12:02:54 -0700
IronPort-SDR: haqiCMS+rOlrQbAWFZyE5AaB3JAhGongbZ6zmvH5hJj3bubCm8i5wEqoJe4WitifI8pZWgQjau
 fX88lBwD9I1A==
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="427169946"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 12:02:52 -0700
Date: Tue, 14 Apr 2020 22:02:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200414190234.GE5942@ideak-desk.fi.intel.com>
References: <20200413164515.13355-1-jose.souza@intel.com>
 <20200413164515.13355-6-jose.souza@intel.com>
 <20200414173912.GB5942@ideak-desk.fi.intel.com>
 <c1639510d8f0ae46750366ef4685faff2648842c.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1639510d8f0ae46750366ef4685faff2648842c.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 6/9] drm/i915/tc/tgl: Implement TC cold
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 14, 2020 at 08:41:50PM +0300, Souza, Jose wrote:
> On Tue, 2020-04-14 at 20:39 +0300, Imre Deak wrote:
> > On Mon, Apr 13, 2020 at 09:45:12AM -0700, Jos=E9 Roberto de Souza
> > wrote:
> > > TC ports can enter in TCCOLD to save power and is required to
> > > request
> > > to PCODE to exit this state before use or read to TC registers.
> > > =

> > > For TGL there is a new MBOX command to do that with a parameter to
> > > ask
> > > PCODE to exit and block TCCOLD entry or unblock TCCOLD entry.
> > > =

> > > So adding a new power domain to reuse the refcount and only allow
> > > TC cold when all TC ports are not in use.
> > > =

> > > v2:
> > > - fixed missing case in intel_display_power_domain_str()
> > > - moved tgl_tc_cold_request to intel_display_power.c
> > > - renamed TGL_TC_COLD_OFF to TGL_TC_COLD_OFF_POWER_DOMAINS
> > > - added all TC and TBT aux power domains to
> > > TGL_TC_COLD_OFF_POWER_DOMAINS
> > > =

> > > v3:
> > > - added one msec sleep when PCODE returns -EAGAIN
> > > - added timeout of 5msec to not loop forever if
> > > sandybridge_pcode_write_timeout() keeps returning -EAGAIN
> > > =

> > > v4:
> > > - Made failure to block or unblock TC cold a error
> > > - removed 5msec timeout, intead giving PCODE 1msec by up 3 times to
> > > recover from the internal error
> > > =

> > > BSpec: 49294
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > > Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_power.c    | 107
> > > ++++++++++++++++++
> > >  .../drm/i915/display/intel_display_power.h    |   1 +
> > >  drivers/gpu/drm/i915/display/intel_tc.c       |  17 ++-
> > >  drivers/gpu/drm/i915/i915_reg.h               |   4 +
> > >  4 files changed, 126 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 50bed2d1dd13..00de926aaccf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -151,6 +151,8 @@ intel_display_power_domain_str(enum
> > > intel_display_power_domain domain)
> > >  		return "GT_IRQ";
> > >  	case POWER_DOMAIN_DPLL_DC_OFF:
> > >  		return "DPLL_DC_OFF";
> > > +	case POWER_DOMAIN_TC_COLD_OFF:
> > > +		return "TC_COLD_OFF";
> > >  	default:
> > >  		MISSING_CASE(domain);
> > >  		return "?";
> > > @@ -2861,6 +2863,21 @@ void intel_display_power_put(struct
> > > drm_i915_private *dev_priv,
> > >  #define TGL_AUX_I_TBT6_IO_POWER_DOMAINS (	\
> > >  	BIT_ULL(POWER_DOMAIN_AUX_I_TBT))
> > >  =

> > > +#define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_D)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_E)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_F)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_G)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_H)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_I)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_D_TBT)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_E_TBT)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_F_TBT)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_G_TBT)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_H_TBT)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_AUX_I_TBT)	|	\
> > > +	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
> > > +
> > >  static const struct i915_power_well_ops
> > > i9xx_always_on_power_well_ops =3D {
> > >  	.sync_hw =3D i9xx_power_well_sync_hw_noop,
> > >  	.enable =3D i9xx_always_on_power_well_noop,
> > > @@ -3963,6 +3980,90 @@ static const struct i915_power_well_desc
> > > ehl_power_wells[] =3D {
> > >  	},
> > >  };
> > >  =

> > > +static void
> > > +tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
> > > +{
> > > +	u8 tries =3D 0;
> > > +	int ret;
> > > +
> > > +	while (1) {
> > > +		u32 low_val =3D 0, high_val;
> > > +
> > > +		if (block)
> > > +			high_val =3D TGL_PCODE_EXIT_TCCOLD_DATA_H_BLOCK_REQ;
> > > +		else
> > > +			high_val =3D TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ;
> > > +
> > > +		/*
> > > +		 * Spec states that we should timeout the request after
> > > 200us
> > > +		 * but the function below will timeout after 500us
> > > +		 */
> > > +		ret =3D sandybridge_pcode_read(i915, TGL_PCODE_TCCOLD,
> > > &low_val,
> > > +					     &high_val);
> > > +		if (ret =3D=3D 0) {
> > > +			if (block &&
> > > +			    (low_val &
> > > TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> > > +				ret =3D -EIO;
> > > +			else
> > > +				break;
> > > +		}
> > > +
> > > +		if (++tries =3D=3D 3)
> > > +			break;
> > > +
> > > +		msleep(1);
> > =

> > Why did this go back to msleep unconditionally? Doing that only for
> > ret =3D=3D -EAGAIN made sense to me, since that is only the case where
> > you'd
> > want to avoid busy looping.
> =

> Mostly thinking about give PCODE some time to recover it selft when it
> returns low_val =3D=3D TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED

The spec says to retry the request in that case immediately. Please put
some comment at least here what the msleep() is for.

> > > +
> > > +	if (ret)
> > > +		drm_err(&i915->drm, "TC cold %sblock failed\n",
> > > +			block ? "" : "un");

Could've printed the error code too.

Reviewed-by: Imre Deak <imre.deak@intel.com>

> > > +	else
> > > +		drm_dbg_kms(&i915->drm, "TC cold %sblock succeeded\n",
> > > +			    block ? "" : "un");
> > > +}
> > > +
> > > +static void
> > > +tgl_tc_cold_off_power_well_enable(struct drm_i915_private *i915,
> > > +				  struct i915_power_well *power_well)
> > > +{
> > > +	tgl_tc_cold_request(i915, true);
> > > +}
> > > +
> > > +static void
> > > +tgl_tc_cold_off_power_well_disable(struct drm_i915_private *i915,
> > > +				   struct i915_power_well *power_well)
> > > +{
> > > +	tgl_tc_cold_request(i915, false);
> > > +}
> > > +
> > > +static void
> > > +tgl_tc_cold_off_power_well_sync_hw(struct drm_i915_private *i915,
> > > +				   struct i915_power_well *power_well)
> > > +{
> > > +	if (power_well->count > 0)
> > > +		tgl_tc_cold_off_power_well_enable(i915, power_well);
> > > +	else
> > > +		tgl_tc_cold_off_power_well_disable(i915, power_well);
> > > +}
> > > +
> > > +static bool
> > > +tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private
> > > *dev_priv,
> > > +				      struct i915_power_well
> > > *power_well)
> > > +{
> > > +	/*
> > > +	 * Not the correctly implementation but there is no way to just
> > > read it
> > > +	 * from PCODE, so returning count to avoid state mismatch
> > > errors
> > > +	 */
> > > +	return power_well->count;
> > > +}
> > > +
> > > +static const struct i915_power_well_ops tgl_tc_cold_off_ops =3D {
> > > +	.sync_hw =3D tgl_tc_cold_off_power_well_sync_hw,
> > > +	.enable =3D tgl_tc_cold_off_power_well_enable,
> > > +	.disable =3D tgl_tc_cold_off_power_well_disable,
> > > +	.is_enabled =3D tgl_tc_cold_off_power_well_is_enabled,
> > > +};
> > > +
> > >  static const struct i915_power_well_desc tgl_power_wells[] =3D {
> > >  	{
> > >  		.name =3D "always-on",
> > > @@ -4290,6 +4391,12 @@ static const struct i915_power_well_desc
> > > tgl_power_wells[] =3D {
> > >  			.hsw.irq_pipe_mask =3D BIT(PIPE_D),
> > >  		},
> > >  	},
> > > +	{
> > > +		.name =3D "TC cold off",
> > > +		.domains =3D TGL_TC_COLD_OFF_POWER_DOMAINS,
> > > +		.ops =3D &tgl_tc_cold_off_ops,
> > > +		.id =3D DISP_PW_ID_NONE,
> > > +	},
> > >  };
> > >  =

> > >  static int
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> > > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > > index da64a5edae7a..070457e7b948 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > > @@ -76,6 +76,7 @@ enum intel_display_power_domain {
> > >  	POWER_DOMAIN_MODESET,
> > >  	POWER_DOMAIN_GT_IRQ,
> > >  	POWER_DOMAIN_DPLL_DC_OFF,
> > > +	POWER_DOMAIN_TC_COLD_OFF,
> > >  	POWER_DOMAIN_INIT,
> > >  =

> > >  	POWER_DOMAIN_NUM,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> > > b/drivers/gpu/drm/i915/display/intel_tc.c
> > > index 0cf33d4d21c3..521a94c63640 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > > @@ -53,16 +53,27 @@ tc_port_load_fia_params(struct drm_i915_private
> > > *i915,
> > >  	}
> > >  }
> > >  =

> > > +static enum intel_display_power_domain
> > > +tc_cold_get_power_domain(struct intel_digital_port *dig_port)
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(dig_port-
> > > >base.base.dev);
> > > +
> > > +	if (INTEL_GEN(i915) =3D=3D 11)
> > > +		return intel_legacy_aux_to_power_domain(dig_port-
> > > >aux_ch);
> > > +	else
> > > +		return POWER_DOMAIN_TC_COLD_OFF;
> > > +}
> > > +
> > >  static intel_wakeref_t
> > >  tc_cold_block(struct intel_digital_port *dig_port)
> > >  {
> > >  	struct drm_i915_private *i915 =3D to_i915(dig_port-
> > > >base.base.dev);
> > >  	enum intel_display_power_domain domain;
> > >  =

> > > -	if (INTEL_GEN(i915) !=3D 11 || !dig_port->tc_legacy_port)
> > > +	if (INTEL_GEN(i915) =3D=3D 11 && !dig_port->tc_legacy_port)
> > >  		return 0;
> > >  =

> > > -	domain =3D intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> > > +	domain =3D tc_cold_get_power_domain(dig_port);
> > >  	return intel_display_power_get(i915, domain);
> > >  }
> > >  =

> > > @@ -80,7 +91,7 @@ tc_cold_unblock(struct intel_digital_port
> > > *dig_port, intel_wakeref_t wakeref)
> > >  	if (wakeref =3D=3D 0)
> > >  		return;
> > >  =

> > > -	domain =3D intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> > > +	domain =3D tc_cold_get_power_domain(dig_port);
> > >  	intel_display_power_put_async(i915, domain, wakeref);
> > >  }
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h
> > > index e4667add70b0..39f281fe6d6c 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -9111,6 +9111,10 @@ enum {
> > >  #define   ICL_PCODE_EXIT_TCCOLD			0x12
> > >  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
> > >  #define   DISPLAY_IPS_CONTROL			0x19
> > > +#define   TGL_PCODE_TCCOLD			0x26
> > > +#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED	REG_BIT
> > > (0)
> > > +#define     TGL_PCODE_EXIT_TCCOLD_DATA_H_BLOCK_REQ	0
> > > +#define     TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ	REG_BIT
> > > (0)
> > >              /* See also IPS_CTL */
> > >  #define     IPS_PCODE_CONTROL			(1 << 30)
> > >  #define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
> > > -- =

> > > 2.26.0
> > > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
