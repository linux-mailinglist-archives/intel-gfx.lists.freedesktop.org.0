Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F5A3832D1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 16:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749D06E9BC;
	Mon, 17 May 2021 14:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78D36E9C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 14:54:04 +0000 (UTC)
IronPort-SDR: Pfo2Wv+PUnMJx1MoP1lNNNja3gIV0HQDvpAQ6ihSi+G/Fdv7ciCjRw/0KKum1GV7+SOwirHzwu
 NCjZBxSz5i+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="264397262"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="264397262"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 07:54:04 -0700
IronPort-SDR: 9Xxbf2S2I0413o5QC/2BhEO2Tv9DMTM1YJ0emMU81hPPjveLBcBoe2E5kigu5adM/QfA2m9qQR
 pfZbenWqH+BQ==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472437728"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 07:54:02 -0700
Date: Mon, 17 May 2021 17:53:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jose Souza <jose.souza@intel.com>
Message-ID: <20210517145359.GA1367033@ideak-desk.fi.intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-9-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-9-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 08/23] drm/i915/adl_p: Handle TC cold
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 14, 2021 at 08:10:20PM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> On ADL-P TC cold is exited and blocked when legacy aux is powered,
> that is exacly the same of what ICL need for static TC ports.
> =

> TODO: When a TBT hub or monitor is connected it will cause TBT and
> legacy aux to be powered at the same time, hopefully this will not
> cause any issues but if it do, some rework will be needed.
> =

> v2:
>  - skip icl_tc_port_assert_ref_held() warn on, adl-p uses aux to
>    block TC cold
> =

> BSpec: 55480
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_tc.c            | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 54c6d65011ee..29d2f1d0cffd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -551,7 +551,8 @@ static void icl_tc_port_assert_ref_held(struct drm_i9=
15_private *dev_priv,
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
>  =

> -	if (DISPLAY_VER(dev_priv) =3D=3D 11 && dig_port->tc_legacy_port)
> +	if (IS_ALDERLAKE_P(dev_priv) ||

A TC port reference is held whenever enabling the port's AUX power
domain (so whenever blocking TC-cold for instance), so this shouldn't be
needed.

OTOH, the !aux_powered check in intel_tc_port_reset_mode() needs this
exception, since there TC-cold must be blocked and so AUX will be
enabled as opposed to other platforms.

Also, in icl_tc_phy_aux_power_well_enable() we need to avoid the power
well enabling timeout error message, since it won't get enabled unless
something is actually plugged to the TC connector.

> +	    (DISPLAY_VER(dev_priv) =3D=3D 11 && dig_port->tc_legacy_port))
>  		return;
>  =

>  	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index e325463acddd..1b108dea5fed 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -28,7 +28,7 @@ tc_cold_get_power_domain(struct intel_digital_port *dig=
_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  =

> -	if (DISPLAY_VER(i915) =3D=3D 11)
> +	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) =3D=3D 11)
>  		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
>  	else
>  		return POWER_DOMAIN_TC_COLD_OFF;
> -- =

> 2.25.4
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
