Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A671964E9
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 10:58:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE99F6EAC3;
	Sat, 28 Mar 2020 09:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC8A6EAC3
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 09:58:46 +0000 (UTC)
IronPort-SDR: 4CkiPGtPmTnEU77YDIlYpw8eXeMoUnE8K79XENDffwHJKPzHxMAwvCBOspk8YsEFxg4I4SX79M
 BkRywvb/ZXjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 02:58:46 -0700
IronPort-SDR: EIyPMlZD3nM+gJTCsXlj0loYYU7t9nNE4zaUHPmY7X57DiVSQ+OkQaeILv1iLfhT74Ia/PVDGN
 xCjblUyOAMaA==
X-IronPort-AV: E=Sophos;i="5.72,315,1580803200"; d="scan'208";a="421389716"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 02:58:44 -0700
Date: Sat, 28 Mar 2020 11:57:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200328095739.GA12322@ideak-desk.fi.intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201429.29153-1-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/tc/tgl: Implement TCCOLD
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

Hi Jos=E9,

On Tue, Mar 24, 2020 at 01:14:24PM -0700, Jos=E9 Roberto de Souza wrote:
> TC ports can enter in TCCOLD to save power and is required to request
> to PCODE to exit this state before use or read to TC registers.
> =

> For TGL there is a new MBOX command to do that with a parameter to ask
> PCODE to exit and block TCCOLD entry or unblock TCCOLD entry.
> For GEN11 the sequence is more complex and will be handled in a
> separated patch.
> =

> BSpec: 49294
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 61 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h         |  3 ++
>  drivers/gpu/drm/i915/intel_sideband.c   | 22 +++++++++
>  drivers/gpu/drm/i915/intel_sideband.h   |  4 ++
>  4 files changed, 88 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 9b850c11aa78..e4c5de5ce874 100644
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
> @@ -496,6 +497,55 @@ bool intel_tc_port_connected(struct intel_digital_po=
rt *dig_port)
>  	return is_connected;
>  }
>  =

> +static inline int tgl_tc_cold_request(struct intel_digital_port *dig_por=
t,
> +				      bool block)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	u32 low_val, high_val;
> +	u8 tries =3D 0;
> +	int ret;
> +
> +	do {
> +		low_val =3D 0;
> +		high_val =3D block ? 0 : TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ;
> +
> +		ret =3D sandybridge_pcode_write_read_timeout(i915,
> +							   TGL_PCODE_TCCOLD,
> +							   &low_val, &high_val,
> +							   150, 1);

The spec says trying 3 times for 200 usec. Is there a problem if we just
reuse sandybridge_pcode_read() here which has a 500 usec timeout?

> +		if (ret =3D=3D 0) {
> +			if (block &&
> +			    low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED)
> +				ret =3D -EIO;
> +			else
> +				break;
> +		}
> +
> +		if (ret !=3D -EAGAIN)
> +			tries++;
> +	} while (tries < 3);
> +
> +	return ret;

The return value isn't used and I think we can't do much about it, so
just make the function a void type and warn about a timeout?

> +}
> +
> +static int tc_cold_request(struct intel_digital_port *dig_port, bool blo=
ck)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	int ret;
> +
> +	if (INTEL_GEN(i915) >=3D 12)
> +		ret =3D tgl_tc_cold_request(dig_port, block);
> +	else
> +		/* TODO: implement GEN11 TCCOLD sequences */
> +		ret =3D 0;
> +
> +	drm_dbg_kms(&i915->drm, "Port %s: TCCOLD %sblock %s\n",
> +		    dig_port->tc_port_name, (block ? "" : "un"),
> +		    (ret =3D=3D 0 ? "succeeded" : "failed"));
> +
> +	return ret;
> +}
> +
>  static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
>  				 int required_lanes)
>  {
> @@ -506,9 +556,11 @@ static void __intel_tc_port_lock(struct intel_digita=
l_port *dig_port,
>  =

>  	mutex_lock(&dig_port->tc_lock);
>  =

> -	if (!dig_port->tc_link_refcount &&
> -	    intel_tc_port_needs_reset(dig_port))
> +	if (dig_port->tc_link_refcount =3D=3D 0) {
> +		tc_cold_request(dig_port, true);

I'm not sure if PCODE really refcounts the requests what this would need
(since we submit the same request for all ports). But for other reasons,
like the overhead of the request and the AUX PW ack trickery we need on
ICL, I think we need a tc_cold_off power well/domain. The tc_cold_off
power ref would be get/put around the FIA access sequence here
(intel_tc_port_reset_mode()) and would be held whenever we hold an AUX
power ref.

ICL legacy ports would hold an AUX power ref around the FIA access here
and the AUX power well code would internally do the PCODE request and
deal with the delayed power well ack (so we don't need to create a new
interface for that).

> +		intel_tc_port_needs_reset(dig_port);
>  		intel_tc_port_reset_mode(dig_port, required_lanes);
> +	}
>  =

>  	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
>  	dig_port->tc_lock_wakeref =3D wakeref;
> @@ -524,6 +576,9 @@ void intel_tc_port_unlock(struct intel_digital_port *=
dig_port)
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	intel_wakeref_t wakeref =3D fetch_and_zero(&dig_port->tc_lock_wakeref);
>  =

> +	if (dig_port->tc_link_refcount =3D=3D 0)
> +		tc_cold_request(dig_port, false);
> +
>  	mutex_unlock(&dig_port->tc_lock);
>  =

>  	intel_display_power_put_async(i915, POWER_DOMAIN_DISPLAY_CORE,
> @@ -548,6 +603,8 @@ void intel_tc_port_put_link(struct intel_digital_port=
 *dig_port)
>  {
>  	mutex_lock(&dig_port->tc_lock);
>  	dig_port->tc_link_refcount--;
> +	if (dig_port->tc_link_refcount =3D=3D 0)
> +		tc_cold_request(dig_port, false);
>  	mutex_unlock(&dig_port->tc_lock);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 9c53fe918be6..7e341d9945b3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9019,6 +9019,9 @@ enum {
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
>  #define   DISPLAY_IPS_CONTROL			0x19
> +#define   TGL_PCODE_TCCOLD				0x26
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED	REG_BIT(0)
> +#define     TGL_PCODE_EXIT_TCCOLD_DATA_H_UNBLOCK_REQ	REG_BIT(0)
>              /* See also IPS_CTL */
>  #define     IPS_PCODE_CONTROL			(1 << 30)
>  #define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915=
/intel_sideband.c
> index 1447e7516cb7..20a9d3970930 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -463,6 +463,28 @@ int sandybridge_pcode_write_timeout(struct drm_i915_=
private *i915,
>  	return err;
>  }
>  =

> +int sandybridge_pcode_write_read_timeout(struct drm_i915_private *i915,
> +					 u32 mbox, u32 *val, u32 *val1,
> +					 int fast_timeout_us,
> +					 int slow_timeout_ms)
> +{
> +	int err;
> +
> +	mutex_lock(&i915->sb_lock);
> +	err =3D __sandybridge_pcode_rw(i915, mbox, val, val1,
> +				     fast_timeout_us, slow_timeout_ms,
> +				     true);
> +	mutex_unlock(&i915->sb_lock);
> +
> +	if (err) {
> +		drm_dbg(&i915->drm,
> +			"warning: pcode (write of 0x%08x to mbox %x) mailbox access failed fo=
r %ps: %d\n",
> +			*val, mbox, __builtin_return_address(0), err);
> +	}
> +
> +	return err;
> +}
> +
>  static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbo=
x,
>  				  u32 request, u32 reply_mask, u32 reply,
>  				  u32 *status)
> diff --git a/drivers/gpu/drm/i915/intel_sideband.h b/drivers/gpu/drm/i915=
/intel_sideband.h
> index 7fb95745a444..1939bebb4e67 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.h
> +++ b/drivers/gpu/drm/i915/intel_sideband.h
> @@ -132,6 +132,10 @@ int sandybridge_pcode_read(struct drm_i915_private *=
i915, u32 mbox,
>  int sandybridge_pcode_write_timeout(struct drm_i915_private *i915, u32 m=
box,
>  				    u32 val, int fast_timeout_us,
>  				    int slow_timeout_ms);
> +int sandybridge_pcode_write_read_timeout(struct drm_i915_private *i915,
> +					 u32 mbox, u32 *val, u32 *val1,
> +					 int fast_timeout_us,
> +					 int slow_timeout_ms);
>  #define sandybridge_pcode_write(i915, mbox, val)	\
>  	sandybridge_pcode_write_timeout(i915, mbox, val, 500, 0)
>  =

> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
