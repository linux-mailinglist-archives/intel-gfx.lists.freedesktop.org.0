Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D0D9723F6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 22:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795F810E6B2;
	Mon,  9 Sep 2024 20:53:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HizPCuHQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A450110E6B2;
 Mon,  9 Sep 2024 20:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725915188; x=1757451188;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=D2eSP2nm5n0Lzuby9pVBr9xxryBZulwz8gySRKlV5vI=;
 b=HizPCuHQZzayskWiuEzAcpFBw7P+9VPcZvRhi1tfps1EmW7Sk3sM8GSE
 Vo4I7D+mId71J3HSIFEW6GfF6NDGdT7fRIZ3YRSOD3hy/uxvQ5TSTHZCP
 ZWuei1eEgeJPVS4DcG6KQGmh+rxe/OTKXw6BMX7sVIsGHARrCdwRpeYgm
 uYVYb1imP0vMSd2s/Ig4eYtvaKO/E/qlKK1WaUQVUERdYcbY8oTmcZypu
 Qxxr+Y71w+g/tekCywFm8lQChZM+P5LyE2mwRNiu3PTZ3/im5CNOrV5nY
 u0pKCjAaNqf8zgpAweFpS+wEuNlKqEGolAsjA9MmOxu27veBeTYvTo7I1 A==;
X-CSE-ConnectionGUID: AJioUcmzSpG0GoEejB1OJA==
X-CSE-MsgGUID: 9aBsRk/ZQeiKzf275+ZS+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24452057"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24452057"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:53:07 -0700
X-CSE-ConnectionGUID: 5vuhY8iUR7mc6KpypWqlpQ==
X-CSE-MsgGUID: yKbjfrFQTtiZ6RmuGfZ3/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="104253088"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:53:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/4] drm/i915/display: add intel_display_snapshot
 abstraction
In-Reply-To: <Zt9aRgtEhZWhPRq2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725888718.git.jani.nikula@intel.com>
 <12b4ec2eea2a52ab59a6b2f02cad41ed6ce29f19.1725888718.git.jani.nikula@intel.com>
 <Zt9aRgtEhZWhPRq2@intel.com>
Date: Mon, 09 Sep 2024 23:53:02 +0300
Message-ID: <87jzfklfbl.fsf@intel.com>
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

On Mon, 09 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Sep 09, 2024 at 04:32:57PM +0300, Jani Nikula wrote:
>> The error state capture still handles display info at a too detailed
>> level. Start abstracting the whole display snapshot capture and printing
>> at a higher level. Move overlay to display snapshot first.
>>=20
>> Use the same nomenclature and style as in xe devcoredump, in preparation
>> for perhaps some day bolting the snapshots there as well.
>>=20
>> v3: Fix build harder for CONFIG_DRM_I915_CAPTURE_ERROR=3Dn
>>=20
>> v2: Fix build for CONFIG_DRM_I915_CAPTURE_ERROR=3Dn (kernel test robot)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |  1 +
>>  .../drm/i915/display/intel_display_snapshot.c | 42 +++++++++++++++++++
>>  .../drm/i915/display/intel_display_snapshot.h | 16 +++++++
>>  drivers/gpu/drm/i915/display/intel_overlay.c  | 16 ++++---
>>  drivers/gpu/drm/i915/display/intel_overlay.h  | 25 +++++++----
>>  drivers/gpu/drm/i915/i915_gpu_error.c         | 12 +++---
>>  drivers/gpu/drm/i915/i915_gpu_error.h         |  6 +--
>>  7 files changed, 94 insertions(+), 24 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index c63fa2133ccb..9fcd9e09bc0b 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -242,6 +242,7 @@ i915-y +=3D \
>>  	display/intel_display_power_well.o \
>>  	display/intel_display_reset.o \
>>  	display/intel_display_rps.o \
>> +	display/intel_display_snapshot.o \
>>  	display/intel_display_wa.o \
>>  	display/intel_dmc.o \
>>  	display/intel_dmc_wl.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/dri=
vers/gpu/drm/i915/display/intel_display_snapshot.c
>> new file mode 100644
>> index 000000000000..78b019dcd41d
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
>> @@ -0,0 +1,42 @@
>> +// SPDX-License-Identifier: MIT
>> +/* Copyright =C2=A9 2024 Intel Corporation */
>> +
>> +#include <linux/slab.h>
>> +
>> +#include "intel_display_snapshot.h"
>> +#include "intel_overlay.h"
>> +
>> +struct intel_display_snapshot {
>> +	struct intel_overlay_snapshot *overlay;
>> +};
>> +
>> +struct intel_display_snapshot *intel_display_snapshot_capture(struct in=
tel_display *display)
>> +{
>> +	struct intel_display_snapshot *snapshot;
>> +
>> +	snapshot =3D kzalloc(sizeof(*snapshot), GFP_ATOMIC);
>> +	if (!snapshot)
>> +		return NULL;
>> +
>> +	snapshot->overlay =3D intel_overlay_snapshot_capture(display);
>> +
>> +	return snapshot;
>> +}
>> +
>> +void intel_display_snapshot_print(const struct intel_display_snapshot *=
snapshot,
>> +				  struct drm_printer *p)
>> +{
>> +	if (!snapshot)
>> +		return;
>> +
>> +	intel_overlay_snapshot_print(snapshot->overlay, p);
>> +}
>> +
>> +void intel_display_snapshot_free(struct intel_display_snapshot *snapsho=
t)
>> +{
>> +	if (!snapshot)
>> +		return;
>> +
>> +	kfree(snapshot->overlay);
>> +	kfree(snapshot);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.h b/dri=
vers/gpu/drm/i915/display/intel_display_snapshot.h
>> new file mode 100644
>> index 000000000000..7ed27cdea644
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
>> @@ -0,0 +1,16 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2024 Intel Corporation */
>> +
>> +#ifndef __INTEL_DISPLAY_SNAPSHOT_H__
>> +#define __INTEL_DISPLAY_SNAPSHOT_H__
>> +
>> +struct drm_printer;
>> +struct intel_display;
>> +struct intel_display_snapshot;
>> +
>> +struct intel_display_snapshot *intel_display_snapshot_capture(struct in=
tel_display *display);
>> +void intel_display_snapshot_print(const struct intel_display_snapshot *=
snapshot,
>> +				  struct drm_printer *p);
>> +void intel_display_snapshot_free(struct intel_display_snapshot *snapsho=
t);
>> +
>> +#endif /* __INTEL_DISPLAY_SNAPSHOT_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/=
drm/i915/display/intel_overlay.c
>> index 06b1122ec13e..b89541458765 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>> @@ -1457,18 +1457,19 @@ void intel_overlay_cleanup(struct drm_i915_priva=
te *dev_priv)
>>=20=20
>>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>>=20=20
>> -struct intel_overlay_error_state {
>> +struct intel_overlay_snapshot {
>>  	struct overlay_registers regs;
>>  	unsigned long base;
>>  	u32 dovsta;
>>  	u32 isr;
>>  };
>>=20=20
>> -struct intel_overlay_error_state *
>> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>> +struct intel_overlay_snapshot *
>> +intel_overlay_snapshot_capture(struct intel_display *display)
>>  {
>> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>>  	struct intel_overlay *overlay =3D dev_priv->display.overlay;
>> -	struct intel_overlay_error_state *error;
>> +	struct intel_overlay_snapshot *error;
>>=20=20
>>  	if (!overlay || !overlay->active)
>>  		return NULL;
>> @@ -1487,9 +1488,12 @@ intel_overlay_capture_error_state(struct drm_i915=
_private *dev_priv)
>>  }
>>=20=20
>>  void
>> -intel_overlay_print_error_state(struct drm_printer *p,
>> -				struct intel_overlay_error_state *error)
>> +intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
>> +			     struct drm_printer *p)
>>  {
>> +	if (!error)
>> +		return;
>> +
>>  	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
>>  		   error->dovsta, error->isr);
>>  	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/=
drm/i915/display/intel_overlay.h
>> index f28a09c062d0..eafac24d1de8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
>> @@ -6,12 +6,15 @@
>>  #ifndef __INTEL_OVERLAY_H__
>>  #define __INTEL_OVERLAY_H__
>>=20=20
>> +#include <linux/types.h>
>
> so, that was it?
> I cannot spot any other difference between the v3 and v2.
> But I also cannot correlate this to the reported errors.

I'm not sure if the test robot actually tested v2, it just sent the same
results for gcc and clang. But I found this myself when trying locally
with CONFIG_DRM_I915_CAPTURE_ERROR=3Dn. It's needed for returning NULL in
the stub...

BR,
Jani.

>
>> +
>>  struct drm_device;
>>  struct drm_file;
>>  struct drm_i915_private;
>>  struct drm_printer;
>> +struct intel_display;
>>  struct intel_overlay;
>> -struct intel_overlay_error_state;
>> +struct intel_overlay_snapshot;
>>=20=20
>>  #ifdef I915
>>  void intel_overlay_setup(struct drm_i915_private *dev_priv);
>> @@ -22,10 +25,6 @@ int intel_overlay_put_image_ioctl(struct drm_device *=
dev, void *data,
>>  int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>>  			      struct drm_file *file_priv);
>>  void intel_overlay_reset(struct drm_i915_private *dev_priv);
>> -struct intel_overlay_error_state *
>> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
>> -void intel_overlay_print_error_state(struct drm_printer *p,
>> -				     struct intel_overlay_error_state *error);
>>  #else
>>  static inline void intel_overlay_setup(struct drm_i915_private *dev_pri=
v)
>>  {
>> @@ -50,13 +49,21 @@ static inline int intel_overlay_attrs_ioctl(struct d=
rm_device *dev, void *data,
>>  static inline void intel_overlay_reset(struct drm_i915_private *dev_pri=
v)
>>  {
>>  }
>> -static inline struct intel_overlay_error_state *
>> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>> +#endif
>> +
>> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) && defined(I915)
>> +struct intel_overlay_snapshot *
>> +intel_overlay_snapshot_capture(struct intel_display *display);
>> +void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *=
error,
>> +				  struct drm_printer *p);
>> +#else
>> +static inline struct intel_overlay_snapshot *
>> +intel_overlay_snapshot_capture(struct intel_display *display)
>>  {
>>  	return NULL;
>>  }
>> -static inline void intel_overlay_print_error_state(struct drm_printer *=
p,
>> -						   struct intel_overlay_error_state *error)
>> +static inline void intel_overlay_snapshot_print(const struct intel_over=
lay_snapshot *error,
>> +						struct drm_printer *p)
>>  {
>>  }
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i91=
5/i915_gpu_error.c
>> index f23769ccf050..b047b24a90d5 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -40,8 +40,8 @@
>>  #include <drm/drm_cache.h>
>>  #include <drm/drm_print.h>
>>=20=20
>> +#include "display/intel_display_snapshot.h"
>>  #include "display/intel_dmc.h"
>> -#include "display/intel_overlay.h"
>>=20=20
>>  #include "gem/i915_gem_context.h"
>>  #include "gem/i915_gem_lmem.h"
>> @@ -905,11 +905,10 @@ static void __err_print_to_sgl(struct drm_i915_err=
or_state_buf *m,
>>  		err_print_gt_info(m, error->gt);
>>  	}
>>=20=20
>> -	if (error->overlay)
>> -		intel_overlay_print_error_state(&p, error->overlay);
>> -
>>  	err_print_capabilities(m, error);
>>  	err_print_params(m, &error->params);
>> +
>> +	intel_display_snapshot_print(error->display_snapshot, &p);
>>  }
>>=20=20
>>  static int err_print_to_sgl(struct i915_gpu_coredump *error)
>> @@ -1077,7 +1076,7 @@ void __i915_gpu_coredump_free(struct kref *error_r=
ef)
>>  		cleanup_gt(gt);
>>  	}
>>=20=20
>> -	kfree(error->overlay);
>> +	intel_display_snapshot_free(error->display_snapshot);
>>=20=20
>>  	cleanup_params(error);
>>=20=20
>> @@ -2097,6 +2096,7 @@ static struct i915_gpu_coredump *
>>  __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mas=
k, u32 dump_flags)
>>  {
>>  	struct drm_i915_private *i915 =3D gt->i915;
>> +	struct intel_display *display =3D &i915->display;
>>  	struct i915_gpu_coredump *error;
>>=20=20
>>  	/* Check if GPU capture has been disabled */
>> @@ -2138,7 +2138,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_eng=
ine_mask_t engine_mask, u32 du
>>  		error->simulated |=3D error->gt->simulated;
>>  	}
>>=20=20
>> -	error->overlay =3D intel_overlay_capture_error_state(i915);
>> +	error->display_snapshot =3D intel_display_snapshot_capture(display);
>>=20=20
>>  	return error;
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i91=
5/i915_gpu_error.h
>> index 7c255bb1c319..1a11942d7800 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>> @@ -31,7 +31,7 @@
>>  struct drm_i915_private;
>>  struct i915_vma_compress;
>>  struct intel_engine_capture_vma;
>> -struct intel_overlay_error_state;
>> +struct intel_display_snapshot;
>>=20=20
>>  struct i915_vma_coredump {
>>  	struct i915_vma_coredump *next;
>> @@ -218,9 +218,9 @@ struct i915_gpu_coredump {
>>  	struct i915_params params;
>>  	struct intel_display_params display_params;
>>=20=20
>> -	struct intel_overlay_error_state *overlay;
>> -
>>  	struct scatterlist *sgl, *fit;
>> +
>> +	struct intel_display_snapshot *display_snapshot;
>>  };
>>=20=20
>>  struct i915_gpu_error {
>> --=20
>> 2.39.2
>>=20

--=20
Jani Nikula, Intel
