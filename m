Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AD819ABEC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 14:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D2A6E239;
	Wed,  1 Apr 2020 12:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52CA6E239
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 12:43:49 +0000 (UTC)
IronPort-SDR: sQj3C1W0dZ9a0JIc/dgHMCz0XL4cym1UOZp6tvElBHkWB0OtqeKVZKpZHUXr7wiAs6FA7zW+T2
 4btKGyY5lihA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:43:48 -0700
IronPort-SDR: YZZHSJ43h/FKqIQ28Y6C+QBtaB9S4JdJXoKBwR07EHYxgfswhZmgsuxA3sxL0Muiup7yeLf62Y
 N/BUUkc6vaFA==
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="422703356"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:43:47 -0700
Date: Wed, 1 Apr 2020 15:43:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200401124342.GD24964@ideak-desk.fi.intel.com>
References: <20200401004120.408586-1-jose.souza@intel.com>
 <20200401004120.408586-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401004120.408586-5-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/tc/icl: Implement TC cold
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

On Tue, Mar 31, 2020 at 05:41:19PM -0700, Jos=E9 Roberto de Souza wrote:
> This is required for legacy/static TC ports as IOM is not aware of
> the connection and will not trigger the TC cold exit.
> =

> Just request PCODE to exit TCCOLD is not enough as it could enter
> again be driver makes use of the port, to prevent it BSpec states that
> aux powerwell should be held.
> =

> So here embedding the TC cold exit sequence into ICL aux enable,
> it will enable aux, request tc cold exit and depending in the TC live
> state continue with the regular aux enable sequence.
> =

> And then turning on aux power well during tc lock and turning off
> during unlock both depending into the TC port refcount.
> =

> BSpec: 21750
> Fixes: https://gitlab.freedesktop.org/drm/intel/issues/1296
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
> =

> Will run some tests in the office with TBT dockstation to check if
> it will be a issue keep both aux enabled. Otherwise more changes will
> be required here.
> =

>  .../drm/i915/display/intel_display_power.c    | 12 ++++-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_tc.c       | 47 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_tc.h       |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  5 files changed, 59 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index dbd61517ba63..1ccd57d645c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -592,9 +592,17 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_pri=
vate *dev_priv,
>  =

>  	_hsw_power_well_enable(dev_priv, power_well);
>  =

> -	/* TODO ICL TC cold handling */
> +	if (INTEL_GEN(dev_priv) =3D=3D 11)

Should be if (ICL && dig_port->tc_legacy_port)

> +		intel_tc_icl_tc_cold_exit(dev_priv);
>  =

> -	_hsw_power_well_continue_enable(dev_priv, power_well);
> +	/*
> +	 * To avoid power well enable timeouts when disconnected or in TBT mode
> +	 * when doing the TC cold exit sequence for GEN11
> +	 */
> +	if (INTEL_GEN(dev_priv) !=3D 11 ||
> +	    (intel_tc_port_live_status_mask(dig_port) &
> +	     (TC_PORT_LEGACY | TC_PORT_DP_ALT)))
> +		_hsw_power_well_continue_enable(dev_priv, power_well);

Why can't we call this unconditionally?

>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12 && !power_well->desc->hsw.is_tc_tbt) {
>  		enum tc_port tc_port;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 176ab5f1e867..a9a4a3c1b4d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1391,6 +1391,7 @@ struct intel_digital_port {
>  	enum intel_display_power_domain ddi_io_power_domain;
>  	struct mutex tc_lock;	/* protects the TypeC port mode */
>  	intel_wakeref_t tc_lock_wakeref;
> +	intel_wakeref_t tc_cold_wakeref;
>  	int tc_link_refcount;
>  	bool tc_legacy_port:1;
>  	char tc_port_name[8];
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index d944be935423..b6d67f069ef7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -7,6 +7,7 @@
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_dp_mst.h"
> +#include "intel_sideband.h"
>  #include "intel_tc.h"
>  =

>  static const char *tc_port_mode_name(enum tc_port_mode mode)
> @@ -506,6 +507,13 @@ static void __intel_tc_port_lock(struct intel_digita=
l_port *dig_port,
>  =

>  	mutex_lock(&dig_port->tc_lock);
>  =

> +	if (INTEL_GEN(i915) =3D=3D 11 && dig_port->tc_link_refcount =3D=3D 0) {
> +		enum intel_display_power_domain aux_domain;
> +
> +		aux_domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +		dig_port->tc_cold_wakeref =3D intel_display_power_get(i915, aux_domain=
);
> +	}
> +

It would be enough to hold this ref only for the time we access FIA
regs. Anything else later will hold its own AUX reference, which takes
care of blocking tc-cold. So here something like:

	tc_cold_wakeref =3D block_tc_cold(dig_port);

where block_tc_cold() would return a non-NULL wakeref only for
ICL/dig_port->tc_legacy_port and TGL.

>  	if (!dig_port->tc_link_refcount &&
>  	    intel_tc_port_needs_reset(dig_port))
>  		intel_tc_port_reset_mode(dig_port, required_lanes);

	unblock_tc_cold(tc_cold_wakeref);

We need to call block/unblock_tc_cold() also in intel_tc_port_sanitize()
and intel_tc_port_connected().

> @@ -519,15 +527,30 @@ void intel_tc_port_lock(struct intel_digital_port *=
dig_port)
>  	__intel_tc_port_lock(dig_port, 1);
>  }
>  =

> +static void icl_tc_cold_unblock(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	enum intel_display_power_domain aux_domain;
> +	intel_wakeref_t tc_cold_wakeref;
> +
> +	if (INTEL_GEN(i915) !=3D 11 || dig_port->tc_link_refcount > 0)
> +		return;
> +
> +	tc_cold_wakeref =3D fetch_and_zero(&dig_port->tc_cold_wakeref);
> +	aux_domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +	intel_display_power_put_async(i915, aux_domain, tc_cold_wakeref);
> +}
> +
>  void intel_tc_port_unlock(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	intel_wakeref_t wakeref =3D fetch_and_zero(&dig_port->tc_lock_wakeref);
>  =

> +	icl_tc_cold_unblock(dig_port);
> +
>  	mutex_unlock(&dig_port->tc_lock);
>  =

> -	intel_display_power_put_async(i915, POWER_DOMAIN_DISPLAY_CORE,
> -				      wakeref);
> +	intel_display_power_put_async(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
>  }
>  =

>  bool intel_tc_port_ref_held(struct intel_digital_port *dig_port)
> @@ -548,6 +571,7 @@ void intel_tc_port_put_link(struct intel_digital_port=
 *dig_port)
>  {
>  	mutex_lock(&dig_port->tc_lock);
>  	dig_port->tc_link_refcount--;
> +	icl_tc_cold_unblock(dig_port);
>  	mutex_unlock(&dig_port->tc_lock);
>  }
>  =

> @@ -568,3 +592,22 @@ void intel_tc_port_init(struct intel_digital_port *d=
ig_port, bool is_legacy)
>  	dig_port->tc_link_refcount =3D 0;
>  	tc_port_load_fia_params(i915, dig_port);
>  }
> +
> +void intel_tc_icl_tc_cold_exit(struct drm_i915_private *i915)

This could be in intel_display_power.c now, so we don't need to export
it.

> +{
> +	int ret;
> +
> +	do {
> +		ret =3D sandybridge_pcode_write_timeout(i915,
> +						      ICL_PCODE_EXIT_TCCOLD,
> +						      0, 250, 1);
> +
> +	} while (ret =3D=3D -EAGAIN);
> +
> +	if (!ret)
> +		msleep(1);

Could you add a comment explaining that we need the sleep, since
according to BSpec the above request may not have completed even though
it returned success?

> +
> +	if (ret)
> +		drm_dbg_kms(&i915->drm, "TC cold block %s\n",
> +			    (ret =3D=3D 0 ? "succeeded" : "failed"));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i9=
15/display/intel_tc.h
> index a1afcee48818..168d8896fcfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -9,6 +9,7 @@
>  #include <linux/mutex.h>
>  #include <linux/types.h>
>  =

> +struct drm_i915_private;
>  struct intel_digital_port;
>  =

>  bool intel_tc_port_connected(struct intel_digital_port *dig_port);
> @@ -29,5 +30,6 @@ bool intel_tc_port_ref_held(struct intel_digital_port *=
dig_port);
>  void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_leg=
acy);
>  =

>  u32 intel_tc_port_live_status_mask(struct intel_digital_port *dig_port);
> +void intel_tc_icl_tc_cold_exit(struct drm_i915_private *i915);
>  =

>  #endif /* __INTEL_TC_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 17484345cb80..b111815d6596 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9107,6 +9107,7 @@ enum {
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
> +#define   ICL_PCODE_EXIT_TCCOLD			0x12
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
>  #define   DISPLAY_IPS_CONTROL			0x19
>              /* See also IPS_CTL */
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
