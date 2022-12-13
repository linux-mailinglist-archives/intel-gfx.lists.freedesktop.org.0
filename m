Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5574C64B2D5
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 10:57:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979F410E2F8;
	Tue, 13 Dec 2022 09:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E532D10E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 09:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670925406; x=1702461406;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CvICcOrN6OLIKltCFnHMIvbSuYB5vqENTk0qAZe6ty8=;
 b=P8CJv1vLbSFljz1Z7KHKzJqcFYSFT61uf32FnpeVaTce92gfGCNQJWbK
 CdIlAYpr2k2hkHWwlx+P4cXp/XR2Pi+ZazA0b5w3pSBO3BRPqB5jQDK3A
 P8j1UUu5d1FAsNECpwjaWBUSIlvktyN0C/g492cQnh4a5brnqAwRhmdf0
 LCIRSLLXoFH8vqJTKJPETJG3vzvNaiINvkfLOrqGjozpatOJZbKkM1GfO
 HeGNPbGPZot7MCeVvqyP/dgk5GUIK9TfBltGdJkLqZ7tEpluJWjcBmSfx
 L5B0Rtx4leRiQIRCSB963ZPEG3AlZ843OuI85S2bjNUd32Uw0qa/Cba+8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="319949789"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="319949789"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 01:56:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="772912519"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="772912519"
Received: from amicu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.19.220])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 01:56:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y5f1+qwk8Hrka/KR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221212143753.1781256-1-jani.nikula@intel.com>
 <Y5f1+qwk8Hrka/KR@intel.com>
Date: Tue, 13 Dec 2022 11:56:40 +0200
Message-ID: <87lenby6cn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsi: add support for ICL+
 native MIPI GPIO sequence
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Dec 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Dec 12, 2022 at 04:37:53PM +0200, Jani Nikula wrote:
>> Starting from ICL, the default for MIPI GPIO sequences seems to be using
>> native GPIOs i.e. GPIOs available in the GPU. These native GPIOs reuse
>> many pins that quite frankly seem scary to poke based on the VBT
>> sequences. We pretty much have to trust that the board is configured
>> such that the relevant HPD, PP_CONTROL and GPIO bits aren't used for
>> anything else.
>>=20
>> MIPI sequence v4 also adds a flag to fall back to non-native sequences.
>>=20
>> v3:
>> - Fix -Wbitwise-conditional-parentheses (kernel test robot <lkp@intel.co=
m>)
>>=20
>> v2:
>> - Fix HPD pin output set (impacts GPIOs 0 and 5)
>> - Fix GPIO data output direction set (impacts GPIOs 4 and 9)
>> - Reduce register accesses to single intel_de_rwm()
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6131
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 84 +++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_reg.h              |  1 +
>>  2 files changed, 82 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/=
drm/i915/display/intel_dsi_vbt.c
>> index fce69fa446d5..f19020074ee3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -41,9 +41,11 @@
>>=20=20
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>> +#include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dsi.h"
>>  #include "intel_dsi_vbt.h"
>> +#include "intel_gmbus_regs.h"
>>  #include "vlv_dsi.h"
>>  #include "vlv_dsi_regs.h"
>>  #include "vlv_sideband.h"
>> @@ -377,6 +379,75 @@ static void icl_exec_gpio(struct intel_connector *c=
onnector,
>>  	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
>>  }
>>=20=20
>> +enum {
>> +	MIPI_RESET_1 =3D 0,
>> +	MIPI_AVDD_EN_1,
>> +	MIPI_BKLT_EN_1,
>> +	MIPI_AVEE_EN_1,
>> +	MIPI_VIO_EN_1,
>> +	MIPI_RESET_2,
>> +	MIPI_AVDD_EN_2,
>> +	MIPI_BKLT_EN_2,
>> +	MIPI_AVEE_EN_2,
>> +	MIPI_VIO_EN_2,
>> +};
>> +
>> +static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
>> +				      int gpio, bool value)
>> +{
>> +	int index;
>> +
>> +	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) =3D=3D 11 && gpi=
o >=3D MIPI_RESET_2))
>> +		return;
>> +
>> +	switch (gpio) {
>> +	case MIPI_RESET_1:
>> +	case MIPI_RESET_2:
>> +		index =3D gpio =3D=3D MIPI_RESET_1 ? HPD_PORT_A : HPD_PORT_B;
>> +
>> +		/* Disable HPD to set the pin to output, and set output value */
>> +		intel_de_rmw(dev_priv, SHOTPLUG_CTL_DDI,
>> +			     SHOTPLUG_CTL_DDI_HPD_ENABLE(index) |
>> +			     SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index),
>> +			     value ? SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index) : 0);
>
> This looks like it could race with hpd irq handling/setup. Assuming
> one of the pins could be used for DSI and other for eg. HDMI.

Right. Looks like it should be enough to wrap the above in
spin_lock_irq(&dev_priv->irq_lock).

AFAICT the DSI encoder having encoder->hpd_pin =3D=3D HPD_NONE covers not
clobbering SHOTPLUG_CTL_DDI_HPD_ENABLE(index) in irq setup *assuming*
the board design and VBT are sane, and the pin doesn't conflict with
some other encoder.

BR,
Jani.


>
>> +		break;
>> +	case MIPI_AVDD_EN_1:
>> +	case MIPI_AVDD_EN_2:
>> +		index =3D gpio =3D=3D MIPI_AVDD_EN_1 ? 0 : 1;
>> +
>> +		intel_de_rmw(dev_priv, PP_CONTROL(index), PANEL_POWER_ON,
>> +			     value ? PANEL_POWER_ON : 0);
>> +		break;
>> +	case MIPI_BKLT_EN_1:
>> +	case MIPI_BKLT_EN_2:
>> +		index =3D gpio =3D=3D MIPI_AVDD_EN_1 ? 0 : 1;
>> +
>> +		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
>> +			     value ? EDP_BLC_ENABLE : 0);
>> +		break;
>> +	case MIPI_AVEE_EN_1:
>> +	case MIPI_AVEE_EN_2:
>> +		index =3D gpio =3D=3D MIPI_AVEE_EN_1 ? 1 : 2;
>> +
>> +		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
>> +			     GPIO_CLOCK_VAL_OUT,
>> +			     GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT |
>> +			     GPIO_CLOCK_VAL_MASK | (value ? GPIO_CLOCK_VAL_OUT : 0));
>> +		break;
>> +	case MIPI_VIO_EN_1:
>> +	case MIPI_VIO_EN_2:
>> +		index =3D gpio =3D=3D MIPI_VIO_EN_1 ? 1 : 2;
>> +
>> +		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
>> +			     GPIO_DATA_VAL_OUT,
>> +			     GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT |
>> +			     GPIO_DATA_VAL_MASK | (value ? GPIO_DATA_VAL_OUT : 0));
>> +		break;
>> +	default:
>> +		MISSING_CASE(gpio);
>> +	}
>> +}
>> +
>>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *=
data)
>>  {
>>  	struct drm_device *dev =3D intel_dsi->base.base.dev;
>> @@ -384,8 +455,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *in=
tel_dsi, const u8 *data)
>>  	struct intel_connector *connector =3D intel_dsi->attached_connector;
>>  	u8 gpio_source, gpio_index =3D 0, gpio_number;
>>  	bool value;
>> -
>> -	drm_dbg_kms(&dev_priv->drm, "\n");
>> +	bool native =3D DISPLAY_VER(dev_priv) >=3D 11;
>>=20=20
>>  	if (connector->panel.vbt.dsi.seq_version >=3D 3)
>>  		gpio_index =3D *data++;
>> @@ -398,10 +468,18 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *=
intel_dsi, const u8 *data)
>>  	else
>>  		gpio_source =3D 0;
>>=20=20
>> +	if (connector->panel.vbt.dsi.seq_version >=3D 4 && *data & BIT(1))
>> +		native =3D false;
>> +
>>  	/* pull up/down */
>>  	value =3D *data++ & 1;
>>=20=20
>> -	if (DISPLAY_VER(dev_priv) >=3D 11)
>> +	drm_dbg_kms(&dev_priv->drm, "GPIO index %u, number %u, source %u, nati=
ve %s, set to %s\n",
>> +		    gpio_index, gpio_number, gpio_source, str_yes_no(native), str_on_=
off(value));
>> +
>> +	if (native)
>> +		icl_native_gpio_set_value(dev_priv, gpio_number, value);
>> +	else if (DISPLAY_VER(dev_priv) >=3D 11)
>>  		icl_exec_gpio(connector, gpio_source, gpio_index, value);
>>  	else if (IS_VALLEYVIEW(dev_priv))
>>  		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 2b7a63754e4d..7008d04a06b8 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -5965,6 +5965,7 @@
>>=20=20
>>  #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
>>  #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(=
hpd_pin) * 4))
>> +#define   SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(hpd_pin)		(0x4 << (_HPD_PIN_=
DDI(hpd_pin) * 4))
>>  #define   SHOTPLUG_CTL_DDI_HPD_STATUS_MASK(hpd_pin)		(0x3 << (_HPD_PIN_=
DDI(hpd_pin) * 4))
>>  #define   SHOTPLUG_CTL_DDI_HPD_NO_DETECT(hpd_pin)		(0x0 << (_HPD_PIN_DD=
I(hpd_pin) * 4))
>>  #define   SHOTPLUG_CTL_DDI_HPD_SHORT_DETECT(hpd_pin)		(0x1 << (_HPD_PIN=
_DDI(hpd_pin) * 4))
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
