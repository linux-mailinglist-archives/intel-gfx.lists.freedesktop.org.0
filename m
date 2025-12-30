Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1103DCE9D72
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 14:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3C310E7E7;
	Tue, 30 Dec 2025 13:59:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7bWV4wW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FAF10E273;
 Tue, 30 Dec 2025 13:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767103178; x=1798639178;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vqZI+yASsgtG4ZYIEWW0jQIcNj5n0kN751pIXAwgNPU=;
 b=E7bWV4wWjIXNflhOAfesGiNwyWBQAkqutCHU4MPrdlI746/2xoilS4oh
 0dAiVaCNiua1LqTy/AE2Sc4/S4ijCNqD50vOcm96/nKTYhje7F1qDDhMp
 3ASqpPv7603fcggP+lGb6wQpERuu1MLiiPzI1ESSP6d8yN7P8MJeLGBgi
 5mn7vZF2V4sbTNQd8KmDjuBCAqDh79WYtc7+EqlSoGBF77wv0l9WK+BaG
 GJdmZVGUmf2Hv2ANSonYAh2YdudLopR5tLesRMq+iu4nKz5rj5+pYbZDd
 y/f+MUm7qZHUilxDeYEYKjFnoXD9jnpde4KJJXeCGj7ghZ5NkMS/w0BB7 A==;
X-CSE-ConnectionGUID: Yp6I0kRaSM2aUS26CIQ4Ww==
X-CSE-MsgGUID: 4DDQZif7SvG0jBn+jlvz1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="86269586"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="86269586"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 05:59:37 -0800
X-CSE-ConnectionGUID: G9B9fLujRrqIVMM/TJGpfw==
X-CSE-MsgGUID: DMDyLB1KRfKo0ERLunjNIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="205700494"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.171])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 05:59:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/3] drm/xe: remove compat i915_drv.h and
 -Ddrm_i915_private=xe_device hack
In-Reply-To: <20251229172318.GH1180203@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1767009044.git.jani.nikula@intel.com>
 <8d2da5404439ed334d7682922b599f36eeb60e9d.1767009044.git.jani.nikula@intel.com>
 <20251229172318.GH1180203@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 30 Dec 2025 15:59:33 +0200
Message-ID: <5b3d9ac4e919ac69d35232251f1b8181b7276e9b@intel.com>
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

On Mon, 29 Dec 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Mon, Dec 29, 2025 at 01:54:44PM +0200, Jani Nikula wrote:
>> The xe display build no longer needs the compat i915_drv.h or the ugly
>> -Ddrm_i915_private=3Dxe_device hack. Remove them, with great pleasure.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> There's still a comment referring to this aliasing in xe_device_types.h
> (above the intel_uncore substruct) that should probably be removed too
> now that the alias is gone.  Otherwise,

I already looked at it, but Ville's going to nuke the whole uncore
member from xe_device soonish, along with the whole comment, so decided
to just let it be. That okay with you?

> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
> Great cleanup to close out the year!

Indeed, thanks a lot for the review!

> Side question that I stumbled over by accident while reviewing this ---
> did we really never implement DPT for Xe?  And everything is still
> working?  It looks like even the chicken bits to disable use of DPT have
> been removed in modern platforms, so I'm surprised that things aren't
> blowing up if we aren't following the bspec's requirement that all tiled
> framebuffers use DPT.  Am I overlooking something here?

It's... different. See xe_fb_pin.c for example. I don't claim to have an
in depth understanding.

BR,
Jani.



>
>
> Matt
>
>> ---
>>  drivers/gpu/drm/xe/Makefile                   |  3 +--
>>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 22 -------------------
>>  2 files changed, 1 insertion(+), 24 deletions(-)
>>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>=20
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 3315f93a35b2..2b20c79d7ec9 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -200,8 +200,7 @@ endif
>>  # i915 Display compat #defines and #includes
>>  subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>  	-I$(src)/compat-i915-headers \
>> -	-I$(srctree)/drivers/gpu/drm/i915/display/ \
>> -	-Ddrm_i915_private=3Dxe_device
>> +	-I$(srctree)/drivers/gpu/drm/i915/display/
>>=20=20
>>  # Rule to build display code shared with i915
>>  $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FO=
RCE
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers=
/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> deleted file mode 100644
>> index 04d1925f9a19..000000000000
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ /dev/null
>> @@ -1,22 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/*
>> - * Copyright =C2=A9 2023 Intel Corporation
>> - */
>> -#ifndef _XE_I915_DRV_H_
>> -#define _XE_I915_DRV_H_
>> -
>> -/*
>> - * "Adaptation header" to allow i915 display to also build for xe drive=
r.
>> - * TODO: refactor i915 and xe so this can cease to exist
>> - */
>> -
>> -#include <drm/drm_drv.h>
>> -
>> -#include "xe_device_types.h"
>> -
>> -static inline struct drm_i915_private *to_i915(const struct drm_device =
*dev)
>> -{
>> -	return container_of(dev, struct drm_i915_private, drm);
>> -}
>> -
>> -#endif
>> --=20
>> 2.47.3
>>=20

--=20
Jani Nikula, Intel
