Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83792C4644C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00CC10E37B;
	Mon, 10 Nov 2025 11:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kf3eykvn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB29A10E386;
 Mon, 10 Nov 2025 11:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762774225; x=1794310225;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DHxyAuTFSVCOr+dWMIlqkHQMGhJhIp/K6NpBBvJVGs0=;
 b=Kf3eykvnMLV07b16PPu9j6dbUZghdUFlA3LXmt+JnIpbBLioRigxz9wD
 50Er/vBj1LMLR1pMlf6S7Ufibnz3KomqzQPDH4dcHQf/B5buVnGzFvDU6
 ah3LWIrZmYfc6s5joWWjaQ4xJQvfZlK1cdFFv0ZRaMp86/q9IFBUFDH9S
 kokI69sWCbv6wjMmKL9csTCFq6uIwUl/vNmqcjDkekli986XreDIkPh4F
 aIioMIVEoUK43e4At8niO2nXM7w+1V2VvNp8z/XzB7WTHvGSSDnc/EWMn
 CpqS5wMxuOVynmrefvxvEGttG6CkmDsWvmBc+zHTv1PGOw+BrKDeFE6dK g==;
X-CSE-ConnectionGUID: pPdB0ztiQv6TijoCG+reWg==
X-CSE-MsgGUID: ru8otnlcQJm9TSsBYKFJEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="64910192"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="64910192"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:30:24 -0800
X-CSE-ConnectionGUID: ncNdq1x+S1q+YVLVgcMEmw==
X-CSE-MsgGUID: 4vTfD3A4Rjmz3fYVEgtfCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="187958584"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:30:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 tursulin@ursulin.net
Subject: Re: [PATCH 4/5] drm/i915/rps: make fence priority setting part of
 the rps interface
In-Reply-To: <aQ4q_CDWPdDcL_uA@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1762440096.git.jani.nikula@intel.com>
 <57ac8c205046b495624b2dd17c987189f67839ea.1762440096.git.jani.nikula@intel.com>
 <aQ4q_CDWPdDcL_uA@intel.com>
Date: Mon, 10 Nov 2025 13:30:20 +0200
Message-ID: <3c64de4eef86cdb0ded6b3d7b937c0fe4a4c0deb@intel.com>
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

On Fri, 07 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 06, 2025 at 04:43:12PM +0200, Jani Nikula wrote:
>> This is perhaps not ideal, but simplifies the interfaces, and allows us
>> to get rid of the compat header in xe.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_rps.c    |  2 ++
>>  drivers/gpu/drm/i915/display/intel_plane.c          |  6 +-----
>>  drivers/gpu/drm/i915/gt/intel_rps.c                 |  9 +++++++++
>>  .../xe/compat-i915-headers/gem/i915_gem_object.h    | 13 -------------
>>  include/drm/intel/display_parent_interface.h        |  1 +
>>  5 files changed, 13 insertions(+), 18 deletions(-)
>>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_=
object.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/=
gpu/drm/i915/display/intel_display_rps.c
>> index 44cb9dba0c19..a2d57671c419 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
>> @@ -48,6 +48,8 @@ void intel_display_rps_boost_after_vblank(struct drm_c=
rtc *crtc,
>>  	if (!display->parent->rps)
>>  		return;
>>=20=20
>> +	display->parent->rps->priority_display(fence);
>
> This is quite confusing now. This thing is about the scheduler
> and nothing to do with RPS boosting.
>
> If we were to mix these into one interface somehow then I don't think
> it should be called rps_something.

Yeah, I was on the, uh, fence about this.

A separate function at a higher level, because we don't seem to have
anything else to group this with? display->parent->priority_display()?

BR,
Jani.



>
> As a side note, there's also some kind of performance problem with this
> thing when using GUC submission. I first noticed the problem on DG2
> where GPU utilization was very low on simple workloads, and skipping
> this priority shuffling increases the performance considerably. Though
> even with this removed, GUC submissions is still very slow compared to
> execlists (when compared on TGL which still supports both submission
> paths). I haven't really had time to look into it in any great detail,
> but we might need to get rid of this thing for the GUC submission path.
> Though I suppose the interface changes don't really matter for that
> because the submission path checks would be on the i915 side anyway.
>
>> +
>>  	if (DISPLAY_VER(display) < 6)
>>  		return;
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/dr=
m/i915/display/intel_plane.c
>> index 505c776c0585..28ee9502b596 100644
>> --- a/drivers/gpu/drm/i915/display/intel_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
>> @@ -45,7 +45,6 @@
>>  #include <drm/drm_panic.h>
>>  #include <drm/drm_print.h>
>>=20=20
>> -#include "gem/i915_gem_object.h"
>>  #include "i9xx_plane_regs.h"
>>  #include "intel_cdclk.h"
>>  #include "intel_cursor.h"
>> @@ -1176,12 +1175,9 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>>  	if (ret < 0)
>>  		goto unpin_fb;
>>=20=20
>> -	if (new_plane_state->uapi.fence) {
>> -		i915_gem_fence_wait_priority_display(new_plane_state->uapi.fence);
>> -
>> +	if (new_plane_state->uapi.fence)
>>  		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
>>  						     new_plane_state->uapi.fence);
>> -	}
>>=20=20
>>  	/*
>>  	 * We declare pageflips to be interactive and so merit a small bias
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index 05b21de6c24b..1af39198e0c5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -2915,6 +2915,14 @@ bool i915_gpu_turbo_disable(void)
>>  }
>>  EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
>>=20=20
>> +static void priority_display(struct dma_fence *fence)
>> +{
>> +	if (!dma_fence_is_i915(fence))
>> +		return;
>> +
>> +	i915_gem_fence_wait_priority_display(fence);
>> +}
>> +
>>  static void boost(struct dma_fence *fence)
>>  {
>>  	struct i915_request *rq;
>> @@ -2948,6 +2956,7 @@ static void ilk_irq_handler(struct drm_device *drm)
>>  }
>>=20=20
>>  const struct intel_display_rps_interface i915_display_rps_interface =3D=
 {
>> +	.priority_display =3D priority_display,
>>  	.boost =3D boost,
>>  	.mark_interactive =3D mark_interactive,
>>  	.ilk_irq_handler =3D ilk_irq_handler,
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.=
h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
>> deleted file mode 100644
>> index 0548b2e0316f..000000000000
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
>> +++ /dev/null
>> @@ -1,13 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/* Copyright =C2=A9 2025 Intel Corporation */
>> -
>> -#ifndef __I915_GEM_OBJECT_H__
>> -#define __I915_GEM_OBJECT_H__
>> -
>> -struct dma_fence;
>> -
>> -static inline void i915_gem_fence_wait_priority_display(struct dma_fenc=
e *fence)
>> -{
>> -}
>> -
>> -#endif
>> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/=
intel/display_parent_interface.h
>> index 8920404545be..7614b35660c9 100644
>> --- a/include/drm/intel/display_parent_interface.h
>> +++ b/include/drm/intel/display_parent_interface.h
>> @@ -27,6 +27,7 @@ struct intel_display_rpm_interface {
>>  };
>>=20=20
>>  struct intel_display_rps_interface {
>> +	void (*priority_display)(struct dma_fence *fence);
>>  	void (*boost)(struct dma_fence *fence);
>>  	void (*mark_interactive)(struct drm_device *drm, bool interactive);
>>  	void (*ilk_irq_handler)(struct drm_device *drm);
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
