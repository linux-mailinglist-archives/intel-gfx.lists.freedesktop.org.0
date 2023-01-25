Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E058F67B272
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 13:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4AC10E7B7;
	Wed, 25 Jan 2023 12:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7897E10E7B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 12:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674648902; x=1706184902;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EXvA7z8FEepH2SAkh5keuOD4e+ucGO4zU+qOSFYIOZc=;
 b=eYkYByrjzpgJz1VPl131oeKN62n5o9mfE8ZIohX2uIPYOdsInPniVHkp
 Oo9nVgzr/LoMe3lYETLYRW1AW08JBwb9Z7AZDchK0bw548+6SGmWEDyP1
 UHGq9kKL3yYugAYZP8bM4uZPtc5pPQ4EtwnBxyB/b1e6CgsKS1HjnOlrW
 BUgW9Xn0Y2JGHs03iw4XOfKpZIKBpjeZseA/y14ssbg5QLL8lpjBMhqx0
 7aFod76Z4Y6Bzv9QGErbESXH/WS6fDxele80MXayds/5+nTakXoDr9rW+
 E43Wt446cPM2WPUHxxDlwt3UQNONgttkzaJ7QLRrb5qVSKkTK1ajaM5nb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="314444340"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="314444340"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 04:15:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="991247173"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="991247173"
Received: from ericnguy-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.123])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 04:15:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y8bgndYojVvvfq7P@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230116164644.1752009-1-jani.nikula@intel.com>
 <Y8bgndYojVvvfq7P@intel.com>
Date: Wed, 25 Jan 2023 14:14:57 +0200
Message-ID: <87mt666cam.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: add
 intel_display_limits.h for key enums
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

On Tue, 17 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Jan 16, 2023 at 06:46:44PM +0200, Jani Nikula wrote:
>> Move a handful of key enums to a new file intel_display_limits.h. These
>> are the enum types, and the MAX/NUM enumerations within them, that are
>> used in other headers. Otherwise, there's no common theme between them.
>>=20
>> Replace intel_display.h include with intel_display_limit.h where
>> relevant, and add the intel_display.h include directly in the .c files
>> where needed.
>>=20
>> Since intel_display.h is used almost everywhere in display/, include it
>> from intel_display_types.h to avoid massive changes across the
>> board. There are very few files that would need intel_display_types.h
>> but not intel_display.h so this is neglible, and further cleanup between
>> these headers can be left for the future.
>>=20
>> Overall this change drops the direct and indirect dependencies on
>> intel_display.h from about 300 to about 100 compilation units, because
>> we can drop the include from i915_drv.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, pushed to din with Ville's IRC ack.

BR,
Jani.


>
>>=20
>> ---
>>=20
>> N.b. intel_display_limits.h is not a great name. I was hoping it was
>> only needed for the MAX/NUM enumerations such as I915_MAX_PIPES but
>> there are a number of headers that use the types for struct members as
>> well. intel_display_enums.h sounds too generic too. Suggestions?
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.h       |   2 +-
>>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   2 +-
>>  drivers/gpu/drm/i915/display/intel_display.h  | 115 +---------------
>>  .../gpu/drm/i915/display/intel_display_core.h |   2 +-
>>  .../drm/i915/display/intel_display_limits.h   | 124 ++++++++++++++++++
>>  .../i915/display/intel_display_power_map.c    |   1 +
>>  .../drm/i915/display/intel_display_types.h    |   1 +
>>  drivers/gpu/drm/i915/display/intel_dvo_dev.h  |   2 +-
>>  drivers/gpu/drm/i915/display/skl_watermark.h  |   2 +-
>>  drivers/gpu/drm/i915/gem/i915_gem_create.c    |   1 +
>>  drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   1 +
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |   1 +
>>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   1 +
>>  drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
>>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
>>  drivers/gpu/drm/i915/gvt/display.c            |   1 +
>>  drivers/gpu/drm/i915/gvt/fb_decoder.h         |   2 +-
>>  drivers/gpu/drm/i915/i915_drv.h               |   2 +-
>>  drivers/gpu/drm/i915/i915_pci.c               |   1 +
>>  drivers/gpu/drm/i915/i915_vma.c               |   1 +
>>  drivers/gpu/drm/i915/intel_device_info.c      |   1 +
>>  drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
>>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>>  drivers/gpu/drm/i915/intel_pm.c               |   1 +
>>  drivers/gpu/drm/i915/intel_pm_types.h         |   2 +-
>>  drivers/gpu/drm/i915/vlv_sideband.c           |   1 +
>>  26 files changed, 149 insertions(+), 123 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_limits.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i=
915/display/intel_bw.h
>> index cb7ee3a24a58..f20292143745 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
>> @@ -8,7 +8,7 @@
>>=20=20
>>  #include <drm/drm_atomic.h>
>>=20=20
>> -#include "intel_display.h"
>> +#include "intel_display_limits.h"
>>  #include "intel_display_power.h"
>>  #include "intel_global_state.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/dr=
m/i915/display/intel_cdclk.h
>> index c674879a84a5..51e2f6a11ce4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -8,7 +8,7 @@
>>=20=20
>>  #include <linux/types.h>
>>=20=20
>> -#include "intel_display.h"
>> +#include "intel_display_limits.h"
>>  #include "intel_global_state.h"
>>=20=20
>>  struct drm_i915_private;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/=
drm/i915/display/intel_display.h
>> index ef73730f32b0..cb6f520cc575 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -28,6 +28,7 @@
>>  #include <drm/drm_util.h>
>>=20=20
>>  #include "i915_reg_defs.h"
>> +#include "intel_display_limits.h"
>>=20=20
>>  enum drm_scaling_filter;
>>  struct dpll;
>> @@ -62,51 +63,9 @@ struct intel_remapped_info;
>>  struct intel_rotation_info;
>>  struct pci_dev;
>>=20=20
>> -/*
>> - * Keep the pipe enum values fixed: the code assumes that PIPE_A=3D0, t=
he
>> - * rest have consecutive values and match the enum values of transcoders
>> - * with a 1:1 transcoder -> pipe mapping.
>> - */
>> -enum pipe {
>> -	INVALID_PIPE =3D -1,
>> -
>> -	PIPE_A =3D 0,
>> -	PIPE_B,
>> -	PIPE_C,
>> -	PIPE_D,
>> -	_PIPE_EDP,
>> -
>> -	I915_MAX_PIPES =3D _PIPE_EDP
>> -};
>>=20=20
>>  #define pipe_name(p) ((p) + 'A')
>>=20=20
>> -enum transcoder {
>> -	INVALID_TRANSCODER =3D -1,
>> -	/*
>> -	 * The following transcoders have a 1:1 transcoder -> pipe mapping,
>> -	 * keep their values fixed: the code assumes that TRANSCODER_A=3D0, the
>> -	 * rest have consecutive values and match the enum values of the pipes
>> -	 * they map to.
>> -	 */
>> -	TRANSCODER_A =3D PIPE_A,
>> -	TRANSCODER_B =3D PIPE_B,
>> -	TRANSCODER_C =3D PIPE_C,
>> -	TRANSCODER_D =3D PIPE_D,
>> -
>> -	/*
>> -	 * The following transcoders can map to any pipe, their enum value
>> -	 * doesn't need to stay fixed.
>> -	 */
>> -	TRANSCODER_EDP,
>> -	TRANSCODER_DSI_0,
>> -	TRANSCODER_DSI_1,
>> -	TRANSCODER_DSI_A =3D TRANSCODER_DSI_0,	/* legacy DSI */
>> -	TRANSCODER_DSI_C =3D TRANSCODER_DSI_1,	/* legacy DSI */
>> -
>> -	I915_MAX_TRANSCODERS
>> -};
>> -
>>  static inline const char *transcoder_name(enum transcoder transcoder)
>>  {
>>  	switch (transcoder) {
>> @@ -147,29 +106,6 @@ enum i9xx_plane_id {
>>  #define plane_name(p) ((p) + 'A')
>>  #define sprite_name(p, s) ((p) * RUNTIME_INFO(dev_priv)->num_sprites[(p=
)] + (s) + 'A')
>>=20=20
>> -/*
>> - * Per-pipe plane identifier.
>> - * I915_MAX_PLANES in the enum below is the maximum (across all platfor=
ms)
>> - * number of planes per CRTC.  Not all platforms really have this many =
planes,
>> - * which means some arrays of size I915_MAX_PLANES may have unused entr=
ies
>> - * between the topmost sprite plane and the cursor plane.
>> - *
>> - * This is expected to be passed to various register macros
>> - * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
>> - */
>> -enum plane_id {
>> -	PLANE_PRIMARY,
>> -	PLANE_SPRITE0,
>> -	PLANE_SPRITE1,
>> -	PLANE_SPRITE2,
>> -	PLANE_SPRITE3,
>> -	PLANE_SPRITE4,
>> -	PLANE_SPRITE5,
>> -	PLANE_CURSOR,
>> -
>> -	I915_MAX_PLANES,
>> -};
>> -
>>  #define for_each_plane_id_on_crtc(__crtc, __p) \
>>  	for ((__p) =3D PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
>>  		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
>> @@ -182,34 +118,6 @@ enum plane_id {
>>  	for_each_dbuf_slice((__dev_priv), (__slice)) \
>>  		for_each_if((__mask) & BIT(__slice))
>>=20=20
>> -enum port {
>> -	PORT_NONE =3D -1,
>> -
>> -	PORT_A =3D 0,
>> -	PORT_B,
>> -	PORT_C,
>> -	PORT_D,
>> -	PORT_E,
>> -	PORT_F,
>> -	PORT_G,
>> -	PORT_H,
>> -	PORT_I,
>> -
>> -	/* tgl+ */
>> -	PORT_TC1 =3D PORT_D,
>> -	PORT_TC2,
>> -	PORT_TC3,
>> -	PORT_TC4,
>> -	PORT_TC5,
>> -	PORT_TC6,
>> -
>> -	/* XE_LPD repositions D/E offsets and bitfields */
>> -	PORT_D_XELPD =3D PORT_TC5,
>> -	PORT_E_XELPD,
>> -
>> -	I915_MAX_PORTS
>> -};
>> -
>>  #define port_name(p) ((p) + 'A')
>>=20=20
>>  /*
>> @@ -312,27 +220,6 @@ enum phy_fia {
>>  	FIA3,
>>  };
>>=20=20
>> -enum hpd_pin {
>> -	HPD_NONE =3D 0,
>> -	HPD_TV =3D HPD_NONE,     /* TV is known to be unreliable */
>> -	HPD_CRT,
>> -	HPD_SDVO_B,
>> -	HPD_SDVO_C,
>> -	HPD_PORT_A,
>> -	HPD_PORT_B,
>> -	HPD_PORT_C,
>> -	HPD_PORT_D,
>> -	HPD_PORT_E,
>> -	HPD_PORT_TC1,
>> -	HPD_PORT_TC2,
>> -	HPD_PORT_TC3,
>> -	HPD_PORT_TC4,
>> -	HPD_PORT_TC5,
>> -	HPD_PORT_TC6,
>> -
>> -	HPD_NUM_PINS
>> -};
>> -
>>  #define for_each_hpd_pin(__pin) \
>>  	for ((__pin) =3D (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers=
/gpu/drm/i915/display/intel_display_core.h
>> index 57ddce3ba02b..1d5d9d56fb3f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -17,7 +17,7 @@
>>  #include <drm/drm_modeset_lock.h>
>>=20=20
>>  #include "intel_cdclk.h"
>> -#include "intel_display.h"
>> +#include "intel_display_limits.h"
>>  #include "intel_display_power.h"
>>  #include "intel_dmc.h"
>>  #include "intel_dpll_mgr.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drive=
rs/gpu/drm/i915/display/intel_display_limits.h
>> new file mode 100644
>> index 000000000000..5126d0b5ae5d
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
>> @@ -0,0 +1,124 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_DISPLAY_LIMITS_H__
>> +#define __INTEL_DISPLAY_LIMITS_H__
>> +
>> +/*
>> + * Keep the pipe enum values fixed: the code assumes that PIPE_A=3D0, t=
he
>> + * rest have consecutive values and match the enum values of transcoders
>> + * with a 1:1 transcoder -> pipe mapping.
>> + */
>> +enum pipe {
>> +	INVALID_PIPE =3D -1,
>> +
>> +	PIPE_A =3D 0,
>> +	PIPE_B,
>> +	PIPE_C,
>> +	PIPE_D,
>> +	_PIPE_EDP,
>> +
>> +	I915_MAX_PIPES =3D _PIPE_EDP
>> +};
>> +
>> +enum transcoder {
>> +	INVALID_TRANSCODER =3D -1,
>> +	/*
>> +	 * The following transcoders have a 1:1 transcoder -> pipe mapping,
>> +	 * keep their values fixed: the code assumes that TRANSCODER_A=3D0, the
>> +	 * rest have consecutive values and match the enum values of the pipes
>> +	 * they map to.
>> +	 */
>> +	TRANSCODER_A =3D PIPE_A,
>> +	TRANSCODER_B =3D PIPE_B,
>> +	TRANSCODER_C =3D PIPE_C,
>> +	TRANSCODER_D =3D PIPE_D,
>> +
>> +	/*
>> +	 * The following transcoders can map to any pipe, their enum value
>> +	 * doesn't need to stay fixed.
>> +	 */
>> +	TRANSCODER_EDP,
>> +	TRANSCODER_DSI_0,
>> +	TRANSCODER_DSI_1,
>> +	TRANSCODER_DSI_A =3D TRANSCODER_DSI_0,	/* legacy DSI */
>> +	TRANSCODER_DSI_C =3D TRANSCODER_DSI_1,	/* legacy DSI */
>> +
>> +	I915_MAX_TRANSCODERS
>> +};
>> +
>> +/*
>> + * Per-pipe plane identifier.
>> + * I915_MAX_PLANES in the enum below is the maximum (across all platfor=
ms)
>> + * number of planes per CRTC.  Not all platforms really have this many =
planes,
>> + * which means some arrays of size I915_MAX_PLANES may have unused entr=
ies
>> + * between the topmost sprite plane and the cursor plane.
>> + *
>> + * This is expected to be passed to various register macros
>> + * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
>> + */
>> +enum plane_id {
>> +	PLANE_PRIMARY,
>> +	PLANE_SPRITE0,
>> +	PLANE_SPRITE1,
>> +	PLANE_SPRITE2,
>> +	PLANE_SPRITE3,
>> +	PLANE_SPRITE4,
>> +	PLANE_SPRITE5,
>> +	PLANE_CURSOR,
>> +
>> +	I915_MAX_PLANES,
>> +};
>> +
>> +enum port {
>> +	PORT_NONE =3D -1,
>> +
>> +	PORT_A =3D 0,
>> +	PORT_B,
>> +	PORT_C,
>> +	PORT_D,
>> +	PORT_E,
>> +	PORT_F,
>> +	PORT_G,
>> +	PORT_H,
>> +	PORT_I,
>> +
>> +	/* tgl+ */
>> +	PORT_TC1 =3D PORT_D,
>> +	PORT_TC2,
>> +	PORT_TC3,
>> +	PORT_TC4,
>> +	PORT_TC5,
>> +	PORT_TC6,
>> +
>> +	/* XE_LPD repositions D/E offsets and bitfields */
>> +	PORT_D_XELPD =3D PORT_TC5,
>> +	PORT_E_XELPD,
>> +
>> +	I915_MAX_PORTS
>> +};
>> +
>> +enum hpd_pin {
>> +	HPD_NONE =3D 0,
>> +	HPD_TV =3D HPD_NONE,     /* TV is known to be unreliable */
>> +	HPD_CRT,
>> +	HPD_SDVO_B,
>> +	HPD_SDVO_C,
>> +	HPD_PORT_A,
>> +	HPD_PORT_B,
>> +	HPD_PORT_C,
>> +	HPD_PORT_D,
>> +	HPD_PORT_E,
>> +	HPD_PORT_TC1,
>> +	HPD_PORT_TC2,
>> +	HPD_PORT_TC3,
>> +	HPD_PORT_TC4,
>> +	HPD_PORT_TC5,
>> +	HPD_PORT_TC6,
>> +
>> +	HPD_NUM_PINS
>> +};
>> +
>> +#endif /* __INTEL_DISPLAY_LIMITS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_map.c
>> index f5d66ca85b19..6645eb1911d8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> @@ -10,6 +10,7 @@
>>=20=20
>>  #include "intel_display_power_map.h"
>>  #include "intel_display_power_well.h"
>> +#include "intel_display_types.h"
>>=20=20
>>  #define __LIST_INLINE_ELEMS(__elem_type, ...) \
>>  	((__elem_type[]) { __VA_ARGS__ })
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 32e8b2fc3cc6..8f3d5d02e207 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -50,6 +50,7 @@
>>  #include "i915_vma_types.h"
>>  #include "intel_bios.h"
>>  #include "intel_display.h"
>> +#include "intel_display_limits.h"
>>  #include "intel_display_power.h"
>>  #include "intel_dpll_mgr.h"
>>  #include "intel_pm_types.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/=
drm/i915/display/intel_dvo_dev.h
>> index ea8eb7dcee38..f7e98e1c6470 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
>> @@ -25,7 +25,7 @@
>>=20=20
>>  #include "i915_reg_defs.h"
>>=20=20
>> -#include "intel_display.h"
>> +#include "intel_display_limits.h"
>>=20=20
>>  enum drm_connector_status;
>>  struct drm_display_mode;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/=
drm/i915/display/skl_watermark.h
>> index 7a5a4e67cd73..37954c472070 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -8,7 +8,7 @@
>>=20=20
>>  #include <linux/types.h>
>>=20=20
>> -#include "intel_display.h"
>> +#include "intel_display_limits.h"
>>  #include "intel_global_state.h"
>>  #include "intel_pm_types.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_create.c
>> index 005a7f842784..e76c9703680e 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> @@ -5,6 +5,7 @@
>>=20=20
>>  #include <drm/drm_fourcc.h>
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "gem/i915_gem_ioctls.h"
>>  #include "gem/i915_gem_lmem.h"
>>  #include "gem/i915_gem_region.h"
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_domain.c
>> index 9969e687ad85..497de40b8e68 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> @@ -4,6 +4,7 @@
>>   * Copyright =C2=A9 2014-2016 Intel Corporation
>>   */
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "display/intel_frontbuffer.h"
>>  #include "gt/intel_gt.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915=
/gt/intel_ggtt.c
>> index 0c7fe360f873..b2f3f49f418f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -12,6 +12,7 @@
>>  #include <drm/i915_drm.h>
>>  #include <drm/intel-gtt.h>
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "gem/i915_gem_lmem.h"
>>=20=20
>>  #include "intel_ggtt_gmch.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/=
drm/i915/gt/intel_ggtt_fencing.c
>> index 7ac8ed13e1fe..37d0b0fe791d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
>> @@ -5,6 +5,7 @@
>>=20=20
>>  #include <linux/highmem.h>
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>>  #include "i915_scatterlist.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index 9ad3bc7201cb..f5d7b5126433 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -7,6 +7,7 @@
>>=20=20
>>  #include <drm/i915_drm.h>
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "i915_drv.h"
>>  #include "i915_irq.h"
>>  #include "intel_breadcrumbs.h"
>> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i91=
5/gvt/cmd_parser.c
>> index 0ebf5fbf0e39..3c4ae1da0d41 100644
>> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> @@ -49,6 +49,7 @@
>>  #include "i915_pvinfo.h"
>>  #include "trace.h"
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "gem/i915_gem_context.h"
>>  #include "gem/i915_gem_pm.h"
>>  #include "gt/intel_context.h"
>> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/g=
vt/display.c
>> index c033249e73f4..4d898b14de93 100644
>> --- a/drivers/gpu/drm/i915/gvt/display.c
>> +++ b/drivers/gpu/drm/i915/gvt/display.c
>> @@ -36,6 +36,7 @@
>>  #include "i915_reg.h"
>>  #include "gvt.h"
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "display/intel_dpio_phy.h"
>>=20=20
>>  static int get_edp_pipe(struct intel_vgpu *vgpu)
>> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.h b/drivers/gpu/drm/i91=
5/gvt/fb_decoder.h
>> index 0daa3931aef7..4eff44194439 100644
>> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.h
>> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.h
>> @@ -38,7 +38,7 @@
>>=20=20
>>  #include <linux/types.h>
>>=20=20
>> -#include "display/intel_display.h"
>> +#include "display/intel_display_limits.h"
>>=20=20
>>  struct intel_vgpu;
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 48fd82722f12..aa7901bf484f 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -36,7 +36,7 @@
>>=20=20
>>  #include <drm/ttm/ttm_device.h>
>>=20=20
>> -#include "display/intel_display.h"
>> +#include "display/intel_display_limits.h"
>>  #include "display/intel_display_core.h"
>>=20=20
>>  #include "gem/i915_gem_context_types.h"
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index bc1af7e8f398..c69637bf0ad7 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -26,6 +26,7 @@
>>  #include <drm/drm_drv.h>
>>  #include <drm/i915_pciids.h>
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "gt/intel_gt_regs.h"
>>  #include "gt/intel_sa_media.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915=
_vma.c
>> index 5272e2be990e..f51fd9fd4c89 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -26,6 +26,7 @@
>>  #include <linux/dma-fence-array.h>
>>  #include <drm/drm_gem.h>
>>=20=20
>> +#include "display/intel_display.h"
>>  #include "display/intel_frontbuffer.h"
>>  #include "gem/i915_gem_lmem.h"
>>  #include "gem/i915_gem_tiling.h"
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/=
i915/intel_device_info.c
>> index 05e90d09b208..98769e5f2c3d 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -29,6 +29,7 @@
>>=20=20
>>  #include "display/intel_cdclk.h"
>>  #include "display/intel_de.h"
>> +#include "display/intel_display.h"
>>  #include "gt/intel_gt_regs.h"
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/=
i915/intel_device_info.h
>> index d588e5fd2eea..80bda653d61b 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -29,7 +29,7 @@
>>=20=20
>>  #include "intel_step.h"
>>=20=20
>> -#include "display/intel_display.h"
>> +#include "display/intel_display_limits.h"
>>=20=20
>>  #include "gt/intel_engine_types.h"
>>  #include "gt/intel_context_types.h"
>> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/d=
rm/i915/intel_gvt_mmio_table.c
>> index ce6b3c3b636a..1f4805aa2b08 100644
>> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>> @@ -5,6 +5,7 @@
>>=20=20
>>  #include "display/intel_audio_regs.h"
>>  #include "display/intel_backlight_regs.h"
>> +#include "display/intel_display_types.h"
>>  #include "display/intel_dmc_regs.h"
>>  #include "display/intel_dpio_phy.h"
>>  #include "display/vlv_dsi_pll_regs.h"
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index 73c88b1c9545..3fc65bd12cc1 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -26,6 +26,7 @@
>>   */
>>=20=20
>>  #include "display/intel_de.h"
>> +#include "display/intel_display.h"
>>  #include "display/intel_display_trace.h"
>>  #include "display/skl_watermark.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/intel_pm_types.h b/drivers/gpu/drm/i91=
5/intel_pm_types.h
>> index 211632f58751..93152537b420 100644
>> --- a/drivers/gpu/drm/i915/intel_pm_types.h
>> +++ b/drivers/gpu/drm/i915/intel_pm_types.h
>> @@ -8,7 +8,7 @@
>>=20=20
>>  #include <linux/types.h>
>>=20=20
>> -#include "display/intel_display.h"
>> +#include "display/intel_display_limits.h"
>>=20=20
>>  enum intel_ddb_partitioning {
>>  	INTEL_DDB_PART_1_2,
>> diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/=
vlv_sideband.c
>> index 6eea6e1a99c0..b98dec3ad817 100644
>> --- a/drivers/gpu/drm/i915/vlv_sideband.c
>> +++ b/drivers/gpu/drm/i915/vlv_sideband.c
>> @@ -9,6 +9,7 @@
>>  #include "vlv_sideband.h"
>>=20=20
>>  #include "display/intel_dpio_phy.h"
>> +#include "display/intel_display_types.h"
>>=20=20
>>  /*
>>   * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
>> --=20
>> 2.34.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
