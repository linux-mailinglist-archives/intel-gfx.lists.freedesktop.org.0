Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F148C80E707
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 10:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A17610E59E;
	Tue, 12 Dec 2023 09:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9D010E59E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 09:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702371899; x=1733907899;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rWs/+wamAechGrZ714ViQMK61VVTxPUqSu+1MVtXQc0=;
 b=Jvm6C7iEU/Mzbuv79DY8SnPvowNgMs5Wtj52CDwc2WMuJiPkxm/OUKt7
 Z8Jwhf/ayjuLc0IFHTaV5j1O0aLeIZ6/cDhv7S7AnKLsNcInwwmhmSbSX
 v3Ipj6M5LahWGtms0iyMiDs3bQ1LcAKJlS6gkHEZUzQlXGtGRHdULt50W
 RQAytZgrAXiHW84TwNK7k1jj5pUAbuY1ZStkJ4JF2JVmOAGUfG374kWPI
 cpO1siDytrhoJXsoqIxhEpz7VzKNmjg08PZJt65bQkQMDSQQB9981dAuS
 CyT3BNQWWXRtrJhiQU7FASp0Fuoml7JRZVdSVltEIEy1iW0rycACpB0gy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="1926626"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; 
   d="scan'208";a="1926626"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 01:04:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="17629621"
Received: from ggilardi-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.49.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 01:04:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Garg, Nemesa"
 <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
In-Reply-To: <DS0PR11MB8740AD290181E2A926B1F177BA8EA@DS0PR11MB8740.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-2-nemesa.garg@intel.com>
 <DS0PR11MB8740AD290181E2A926B1F177BA8EA@DS0PR11MB8740.namprd11.prod.outlook.com>
Date: Tue, 12 Dec 2023 11:04:54 +0200
Message-ID: <87y1dzx03t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 12 Dec 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of N=
emesa
>> Garg
>> Sent: Friday, October 27, 2023 3:24 PM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for darskscr=
een
>> detection
>>=20
>> Darkscreen detection checks if all the pixels of the frame are less then=
 or equal
>> to the comparision value. The comparision value is set to 256 i.e black.=
 So upon
>> getting black pixels from the pipe, the dark screen detect bit is set an=
d an error
>> message will be printed.
>>=20
>> v2: Addressed review comments (Jani)
>>=20
>> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |  1 +
>>  .../gpu/drm/i915/display/intel_darkscreen.c   | 87 +++++++++++++++++++
>>  .../gpu/drm/i915/display/intel_darkscreen.h   | 26 ++++++
>>  .../drm/i915/display/intel_display_types.h    |  2 +
>>  drivers/gpu/drm/i915/i915_reg.h               |  8 ++
>>  5 files changed, 124 insertions(+)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 88b2bb005014..538d5a42f9e3 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -254,6 +254,7 @@ i915-y +=3D \
>>  	display/intel_crtc.o \
>>  	display/intel_crtc_state_dump.o \
>>  	display/intel_cursor.o \
>> +	display/intel_darkscreen.o \
>>  	display/intel_display.o \
>>  	display/intel_display_driver.o \
>>  	display/intel_display_irq.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c
>> b/drivers/gpu/drm/i915/display/intel_darkscreen.c
>> new file mode 100644
>> index 000000000000..0be719c76c4e
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
>> @@ -0,0 +1,87 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright =C3=82=C2=A9 2023 Intel Corporation
>> + *
>> + */
>> +
>> +#include "i915_reg.h"
>> +#include "intel_de.h"
>> +#include "intel_display_types.h"
>> +
>> +#define COLOR_DEPTH_6BPC 6
>> +#define COLOR_DEPTH_8BPC 8
>> +#define COLOR_DEPTH_10BPC 10
>> +#define COLOR_DEPTH_12BPC 12
>> +
>> +#define COMPARE_VALUE_6_BPC 4
>> +#define COMPARE_VALUE_8_BPC 16
>> +#define COMPARE_VALUE_10_BPC 64
>> +#define COMPARE_VALUE_12_BPC 256
>> +
>> +#define COMPARE_VALUE_CALCULATION_FACTOR 12
>> +
>> +/*
>> + * Checks the color format and compute the comapre value based on bpc.
>> + */
> Can we have this in proper kernel doc format?

IMO it's not necessary for rather simple internal functions like this.

But please use the imperative mood ("check", not "checks") and fix the
typos though.

>
>> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state) {
>> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> +	u32 comparevalue;
>> +
>> +	if (!crtc->dark_screen.enable)
>> +		return;
>> +
>> +	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
>> +		return;
> Better to have an error print saying not supported.
>
> Thanks and Regards,
> Arun R Murthy
> -------------------
>> +
>> +	switch (crtc_state->pipe_bpp / 3) {
>> +	case COLOR_DEPTH_6BPC:
>> +		comparevalue =3D COMPARE_VALUE_6_BPC;
>> +		break;
>> +	case COLOR_DEPTH_8BPC:
>> +		comparevalue =3D COMPARE_VALUE_8_BPC;
>> +		break;
>> +	case COLOR_DEPTH_10BPC:
>> +		comparevalue =3D COMPARE_VALUE_10_BPC;
>> +		break;
>> +	case COLOR_DEPTH_12BPC:
>> +		comparevalue =3D COMPARE_VALUE_12_BPC;
>> +		break;
>> +	default:
>> +		drm_dbg(&dev_priv->drm,
>> +			"Bpc value is incorrect:%d\n",
>> +			crtc_state->pipe_bpp / 3);
>> +		return;
>> +	}
>> +
>> +	comparevalue =3D comparevalue <<
>> +		(COMPARE_VALUE_CALCULATION_FACTOR - crtc_state-
>> >pipe_bpp / 3);
>> +
>> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
>> +		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
>> +		       DARK_SCREEN_DONE |
>> DARK_SCREEN_COMPARE_VAL(comparevalue));
>> +
>> +	intel_de_wait_for_set(dev_priv,
>> +			      DARK_SCREEN(crtc->config->cpu_transcoder),
>> DARK_SCREEN_DONE,
>> +1);
>> +
>> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config-
>> >cpu_transcoder)) &
>> +			  DARK_SCREEN_DETECT) {
>> +		drm_err(&dev_priv->drm,
>> +			"Dark Screen detected:%c\n",
>> +			pipe_name(crtc->pipe));
>> +	}
>> +
>> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder),
>> 1, DARK_SCREEN_DETECT |
>> +		     DARK_SCREEN_DONE);
>> +}
>> +
>> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state) {
>> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> +
>> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0); }
>> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h
>> b/drivers/gpu/drm/i915/display/intel_darkscreen.h
>> new file mode 100644
>> index 000000000000..366e43499fc4
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
>> @@ -0,0 +1,26 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C3=82=C2=A9 2023 Intel Corporation
>> + *
>> + */
>> +
>> +#ifndef __INTEL_DARKSCREEN_H__
>> +#define __INTEL_DARKSCREEN_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_crtc_state;
>> +struct intel_crtc;
>> +
>> +struct intel_darkscreen {
>> +	bool enable;
>> +};
>> +
>> +#ifdef CONFIG_DEBUG_FS
>> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state);
>> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state);
>> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
>> +
>> +#endif
>> +
>> +#endif /* __INTEL_DARKSCREEN_H_ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 65ea37fe8cff..bd0306e9318f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -49,6 +49,7 @@
>>  #include "i915_vma.h"
>>  #include "i915_vma_types.h"
>>  #include "intel_bios.h"
>> +#include "intel_darkscreen.h"
>>  #include "intel_display.h"
>>  #include "intel_display_limits.h"
>>  #include "intel_display_power.h"
>> @@ -1517,6 +1518,7 @@ struct intel_crtc {
>>=20
>>  #ifdef CONFIG_DEBUG_FS
>>  	struct intel_pipe_crc pipe_crc;
>> +	struct intel_darkscreen dark_screen;
>>  #endif
>>  };
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> b/drivers/gpu/drm/i915/i915_reg.h index 135e8d8dbdf0..a9f7b80a56cf
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2097,6 +2097,14 @@
>>  #define   TRANS_PUSH_EN			REG_BIT(31)
>>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>>=20
>> +#define _DARK_SCREEN_PIPE_A		0x60120
>> +#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans,
>> _DARK_SCREEN_PIPE_A)
>> +#define   DARK_SCREEN_ENABLE		REG_BIT(31)
>> +#define   DARK_SCREEN_DETECT		REG_BIT(29)
>> +#define   DARK_SCREEN_DONE		REG_BIT(28)
>> +#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
>> +#define DARK_SCREEN_COMPARE_VAL(x)
>> 	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
>> +
>>  /* VGA port control */
>>  #define ADPA			_MMIO(0x61100)
>>  #define PCH_ADPA                _MMIO(0xe1100)
>> --
>> 2.25.1
>

--=20
Jani Nikula, Intel
