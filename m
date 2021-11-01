Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 361EF4419CD
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 11:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15808999A;
	Mon,  1 Nov 2021 10:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91898999A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 10:25:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="211755624"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="211755624"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:25:26 -0700
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="499982288"
Received: from mvtammin-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:25:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
Date: Mon, 01 Nov 2021 12:25:21 +0200
Message-ID: <87ilxcdvfy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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

On Mon, 28 Jun 2021, Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanah=
alli.pradeep@intel.com> wrote:
> PCH display HPD IRQ is not detected with default filter value.
> So, PP_CONTROL is manually reprogrammed.

Returning to this workaround.

You're not supposed to enable the workaround when there's eDP
connected. This is also crucial in avoiding issues with eDP PPS.

The workaround is specific to Tiger Lake PCH, so you need to check
against the PCH, not the GPU.

Also see comments inline.

>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli=
.pradeep@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16 ++++++++++++++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 285380079aab..e44323cc76f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -6385,8 +6385,16 @@ static void intel_power_domains_verify_state(struc=
t drm_i915_private *i915)
>=20=20
>  void intel_display_power_suspend_late(struct drm_i915_private *i915)
>  {
> +    struct drm_i915_private *dev_priv =3D i915;
> +    u32 val;
>  	if (DISPLAY_VER(i915) >=3D 11 || IS_GEMINILAKE(i915) ||
>  	    IS_BROXTON(i915)) {
> +		val =3D intel_de_read(dev_priv, PP_CONTROL(0));
> +		/* Wa_14013120569:tgl */
> +		if (IS_TIGERLAKE(i915)) {
> +			val &=3D ~PANEL_POWER_ON;
> +			intel_de_write(dev_priv, PP_CONTROL(0), val);
> +	}

As Jos=C3=A9 said, how do you enable the workaround after resume if external
displays are still connected?

>  		bxt_enable_dc9(i915);
>  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
>  		if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP && INTEL_PCH_TYPE(i915) <=3D PCH=
_MCC)
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 47c85ac97c87..8e3f84100daf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -26,6 +26,7 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_hotplug.h"
> +#include "intel_de.h"
>=20=20
>  /**
>   * DOC: Hotplug
> @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>  		      struct intel_connector *connector)
>  {
>  	struct drm_device *dev =3D connector->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	enum drm_connector_status old_status;
> +	u32 val;
>  	u64 old_epoch_counter;
>  	bool ret =3D false;
>=20=20
> @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>  			      drm_get_connector_status_name(connector->base.status),
>  			      old_epoch_counter,
>  			      connector->base.epoch_counter);
> +
> +		/* Wa_14013120569:tgl */
> +		if (IS_TIGERLAKE(dev_priv)) {
> +			val =3D intel_de_read(dev_priv, PP_CONTROL(0));
> +			if (connector->base.status =3D=3D connector_status_connected) {
> +				val |=3D PANEL_POWER_ON;
> +				intel_de_write(dev_priv, PP_CONTROL(0), val);
> +			}
> +			else if (connector->base.status =3D=3D connector_status_disconnected)=
 {
> +				val &=3D ~PANEL_POWER_ON;
> +				intel_de_write(dev_priv, PP_CONTROL(0), val);
> +			}
> +		}

First off, usually if you have a clean, generic, high level function,
it's a hint you shouldn't stick low level register access there.

If you plug in two external displays and then unplug one of them, you
end up disabling the workaround, while it's supposed to remain enabled
if there's an external display connected. This is likely the most
annoying part about the workaround.

This does not seem like a trivial workaround to implement.


BR,
Jani.


>  		return INTEL_HOTPLUG_CHANGED;
>  	}
>  	return INTEL_HOTPLUG_UNCHANGED;

--=20
Jani Nikula, Intel Open Source Graphics Center
