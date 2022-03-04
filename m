Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576C84CD1BB
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 10:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8003D10E4B2;
	Fri,  4 Mar 2022 09:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627AD10E4B2
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646387733; x=1677923733;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=o7+BybGJKIZD2MymjvTnEKuONobkkYC0uqrAIE1v6cg=;
 b=aG0ExMRVUGFYS9lnSoS8hYDspGC2DfEE+boDO6rlHc7TtWEpbZhaXrry
 AuSelafTUiUQW0rtfrj+jSZmTOGAWiEcFVZrJyaxbKgn4FVXqRPtST+JA
 LXGGB3LFnW22ZZfiAT4CnIL2m+gRTHEGosDcgoaNuO6UREJpSbiGSWyBv
 O21GdwhP3qGiuPK7O1fDrCSA86qFF8aTSe0c6YbMeIHWfqnOpuwPM/2aZ
 Uq9tNK8S5VneqCFEdVabSVt+OJm81Pbd3z8vc7cg/zxpvuoG7J9mKD2Cs
 +WeiPtsuxsB3F2A4J47IGkdDNOMrgBh2rF82pKg4aDmt2ppcVtVWEN1un w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="252768735"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="252768735"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 01:55:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="494284075"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 01:55:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YiEiVwpBWPL1km0N@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220303181931.1661767-1-jani.nikula@intel.com>
 <20220303181931.1661767-4-jani.nikula@intel.com>
 <YiEiVwpBWPL1km0N@intel.com>
Date: Fri, 04 Mar 2022 11:55:29 +0200
Message-ID: <87k0da3uum.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gmbus: alloc intel_gmbus
 dynamically
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

On Thu, 03 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Mar 03, 2022 at 08:19:30PM +0200, Jani Nikula wrote:
>> Allocate the individual intel_gmbus structs dynamically. This lets us
>> hide struct intel_gmbus inside intel_gmbus.c completely. Also use the
>> cleanup function on the error path to avoid duplication.
>>=20
>> Leave #include <linux/i2c.h> in i915_drv.h for now, as it pulls in a
>> bunch of implicit dependencies.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_gmbus.c | 42 +++++++++++++++-------
>>  drivers/gpu/drm/i915/i915_drv.h            | 14 ++------
>>  2 files changed, 31 insertions(+), 25 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/dr=
m/i915/display/intel_gmbus.c
>> index fd908e524875..2bb3494b93e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -38,6 +38,16 @@
>>  #include "intel_display_types.h"
>>  #include "intel_gmbus.h"
>>=20=20
>> +struct intel_gmbus {
>> +	struct i2c_adapter adapter;
>> +#define GMBUS_FORCE_BIT_RETRY (1U << 31)
>> +	u32 force_bit;
>> +	u32 reg0;
>> +	i915_reg_t gpio_reg;
>> +	struct i2c_algo_bit_data bit_algo;
>> +	struct drm_i915_private *dev_priv;
>> +};
>> +
>>  struct gmbus_pin {
>>  	const char *name;
>>  	enum i915_gpio gpio;
>> @@ -881,7 +891,11 @@ int intel_gmbus_setup(struct drm_i915_private *dev_=
priv)
>>  		if (!gmbus_pin)
>>  			continue;
>>=20=20
>> -		bus =3D &dev_priv->gmbus[pin];
>> +		bus =3D kzalloc(sizeof(*bus), GFP_KERNEL);
>> +		if (!bus) {
>> +			ret =3D -ENOMEM;
>> +			goto err;
>> +		}
>>=20=20
>>  		bus->adapter.owner =3D THIS_MODULE;
>>  		bus->adapter.class =3D I2C_CLASS_DDC;
>> @@ -911,8 +925,12 @@ int intel_gmbus_setup(struct drm_i915_private *dev_=
priv)
>>  		intel_gpio_setup(bus, GPIO(gmbus_pin->gpio));
>>=20=20
>>  		ret =3D i2c_add_adapter(&bus->adapter);
>> -		if (ret)
>> +		if (ret) {
>> +			kfree(bus);
>>  			goto err;
>> +		}
>> +
>> +		dev_priv->gmbus[pin] =3D bus;
>>  	}
>>=20=20
>>  	intel_gmbus_reset(dev_priv);
>> @@ -920,24 +938,19 @@ int intel_gmbus_setup(struct drm_i915_private *dev=
_priv)
>>  	return 0;
>>=20=20
>>  err:
>> -	while (pin--) {
>> -		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
>> -			continue;
>> +	intel_gmbus_teardown(dev_priv);
>>=20=20
>> -		bus =3D &dev_priv->gmbus[pin];
>> -		i2c_del_adapter(&bus->adapter);
>> -	}
>>  	return ret;
>>  }
>>=20=20
>>  struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *de=
v_priv,
>>  					    unsigned int pin)
>>  {
>> -	if (drm_WARN_ON(&dev_priv->drm,
>> -			!intel_gmbus_is_valid_pin(dev_priv, pin)))
>> +	if (drm_WARN_ON(&dev_priv->drm, pin >=3D ARRAY_SIZE(dev_priv->gmbus) ||
>> +			!dev_priv->gmbus[pin]))
>>  		return NULL;
>>=20=20
>> -	return &dev_priv->gmbus[pin].adapter;
>> +	return &dev_priv->gmbus[pin]->adapter;
>>  }
>>=20=20
>>  void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
>> @@ -969,10 +982,13 @@ void intel_gmbus_teardown(struct drm_i915_private =
*dev_priv)
>>  	unsigned int pin;
>>=20=20
>>  	for (pin =3D 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
>> -		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
>> +		bus =3D dev_priv->gmbus[pin];
>
> nit: Would like the 'bus' variable to be declared inside the loop.
> Same for intel_gmbus_setup().

Thanks for the review, pushed to din. I'll follow up with a few
cleanups.

BR,
Jani.


>
>> +		if (!bus)
>>  			continue;
>>=20=20
>> -		bus =3D &dev_priv->gmbus[pin];
>>  		i2c_del_adapter(&bus->adapter);
>> +
>> +		kfree(bus);
>> +		dev_priv->gmbus[pin] =3D NULL;
>
> I see we don't actually check intel_gmbus_setup() return value at all so
> intel_gmbus_teardown() can get called twice. So this NULLing is essential
> should intel_gmbus_setup() ever fail.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>>  	}
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 457bc1993d19..869a2bda347b 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -35,7 +35,6 @@
>>  #include <asm/hypervisor.h>
>>=20=20
>>  #include <linux/i2c.h>
>> -#include <linux/i2c-algo-bit.h>
>>  #include <linux/intel-iommu.h>
>>  #include <linux/pm_qos.h>
>>=20=20
>> @@ -99,6 +98,7 @@ struct intel_dpll_funcs;
>>  struct intel_encoder;
>>  struct intel_fbdev;
>>  struct intel_fdi_funcs;
>> +struct intel_gmbus;
>>  struct intel_hotplug_funcs;
>>  struct intel_initial_plane_config;
>>  struct intel_limit;
>> @@ -231,16 +231,6 @@ struct i915_drrs {
>>  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
>>  #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
>>=20=20
>> -struct intel_gmbus {
>> -	struct i2c_adapter adapter;
>> -#define GMBUS_FORCE_BIT_RETRY (1U << 31)
>> -	u32 force_bit;
>> -	u32 reg0;
>> -	i915_reg_t gpio_reg;
>> -	struct i2c_algo_bit_data bit_algo;
>> -	struct drm_i915_private *dev_priv;
>> -};
>> -
>>  struct i915_suspend_saved_registers {
>>  	u32 saveDSPARB;
>>  	u32 saveSWF0[16];
>> @@ -510,7 +500,7 @@ struct drm_i915_private {
>>=20=20
>>  	struct intel_dmc dmc;
>>=20=20
>> -	struct intel_gmbus gmbus[GMBUS_NUM_PINS];
>> +	struct intel_gmbus *gmbus[GMBUS_NUM_PINS];
>>=20=20
>>  	/** gmbus_mutex protects against concurrent usage of the single hw gmb=
us
>>  	 * controller on different i2c buses. */
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
