Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3899F1A10F1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830776E8A4;
	Tue,  7 Apr 2020 16:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C666E8A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:05:06 +0000 (UTC)
IronPort-SDR: 29/Z4GXe5fZnmCnTMDsGM8FxIAyYhkDQdEU4ZyF8GVmCMrF0N+cEG2OxGDw+Ad3vPpLTdV0lNf
 s8flsIwp5RSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:05:06 -0700
IronPort-SDR: 72y+4ONvZhHJ1hRVJZFge/zq53Y2R6IjV64capaeKnt08DLto4xTKzJQl3cV+97QIqsQgsolg5
 EUjB1dpjbIXA==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="397900976"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:05:05 -0700
Date: Tue, 7 Apr 2020 19:04:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407160455.GG21484@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-7-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407011157.362092-7-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 7/8] drm/i915/tc: Catch TC users
 accessing FIA registers without enable aux
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 06:11:56PM -0700, Jos=E9 Roberto de Souza wrote:
> As described in "drm/i915/tc/icl: Implement TC cold sequences" users
> of TC functions should held aux power well during access to avoid
> read garbage due HW in TC cold state.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 83861653768d..e473bb4a9b0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -95,6 +95,20 @@ tc_cold_unblock(struct intel_digital_port *dig_port, i=
ntel_wakeref_t wakeref)
>  	intel_display_power_put_async(i915, domain, wakeref);
>  }
>  =

> +static void
> +is_tc_cold_blocked(struct intel_digital_port *dig_port)

assert_tc_cold_blocked()?

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	bool enabled;
> +
> +	if (INTEL_GEN(i915) =3D=3D 11 && !dig_port->tc_legacy_port)
> +		return;
> +
> +	enabled =3D intel_display_power_is_enabled(i915,
> +						 tc_cold_get_power_domain(dig_port));
> +	drm_WARN_ON(&i915->drm, !enabled);
> +}
> +
>  u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> @@ -104,7 +118,7 @@ u32 intel_tc_port_get_lane_mask(struct intel_digital_=
port *dig_port)
>  	lane_mask =3D intel_uncore_read(uncore,
>  				      PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
>  =

> -	drm_WARN_ON(&i915->drm, lane_mask =3D=3D 0xffffffff);
> +	is_tc_cold_blocked(dig_port);
>  =

>  	lane_mask &=3D DP_LANE_ASSIGNMENT_MASK(dig_port->tc_phy_fia_idx);
>  	return lane_mask >> DP_LANE_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
> @@ -119,7 +133,7 @@ u32 intel_tc_port_get_pin_assignment_mask(struct inte=
l_digital_port *dig_port)
>  	pin_mask =3D intel_uncore_read(uncore,
>  				     PORT_TX_DFLEXPA1(dig_port->tc_phy_fia));
>  =

> -	drm_WARN_ON(&i915->drm, pin_mask =3D=3D 0xffffffff);
> +	is_tc_cold_blocked(dig_port);
>  =

>  	return (pin_mask & DP_PIN_ASSIGNMENT_MASK(dig_port->tc_phy_fia_idx)) >>
>  	       DP_PIN_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
> @@ -134,6 +148,8 @@ int intel_tc_port_fia_max_lane_count(struct intel_dig=
ital_port *dig_port)
>  	if (dig_port->tc_mode !=3D TC_PORT_DP_ALT)
>  		return 4;
>  =

> +	is_tc_cold_blocked(dig_port);
> +
>  	lane_mask =3D 0;
>  	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
>  		lane_mask =3D intel_tc_port_get_lane_mask(dig_port);
> @@ -166,6 +182,8 @@ void intel_tc_port_set_fia_lane_count(struct intel_di=
gital_port *dig_port,
>  	drm_WARN_ON(&i915->drm,
>  		    lane_reversal && dig_port->tc_mode !=3D TC_PORT_LEGACY);
>  =

> +	is_tc_cold_blocked(dig_port);
> +
>  	val =3D intel_uncore_read(uncore,
>  				PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia));
>  	val &=3D ~DFLEXDPMLE1_DPMLETC_MASK(dig_port->tc_phy_fia_idx);
> -- =

> 2.26.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
