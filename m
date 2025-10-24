Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C59EC051CD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 10:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF5C10E0DB;
	Fri, 24 Oct 2025 08:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ciEJ8QwF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144A010E0DB;
 Fri, 24 Oct 2025 08:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761295382; x=1792831382;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LACkC+L6J9O+hWVwPvWofIf+pqpRxLY3HZylSVRsaZQ=;
 b=ciEJ8QwFCMo4mScbf8nV/L37dDzG9UwClo2J5dx+ZTK2Ed087Fzqw8CB
 YK3lpHElp/pbLvv3TeNLUFnr9/EqnNbCP0RImXTcx1VrFdnuaBKPhpTkq
 OEhPgQEsp9HsdVAn/vwZR5Sg/DiaNMHVy3BaCxLPsB5NG72qpacheHjQN
 6l/PVaaTGXTA8amfxS16/5B6+uwFpuflNpICvtrC2Whir2vgYVExpwfED
 mbbuxIo7krcRukBh/LUiwfSUW9FFEacd0AzYo6ae7hJkJhXSEgPU/BrBv
 KlAFXrMFNtTJQIzicr5ob0QPruO7PlGFdtBARqpPZimBEwcYDXJ3snZgt Q==;
X-CSE-ConnectionGUID: +ionEYoPRnulo30a5/sJtg==
X-CSE-MsgGUID: eFx6YdqSRMGBvC6305LjiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63178858"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63178858"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 01:43:02 -0700
X-CSE-ConnectionGUID: 5mUcvLfDTKWMqHEA78JhEg==
X-CSE-MsgGUID: eDZlIxTsTTSsE21hMleSyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="215302231"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 01:42:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Maarten Lankhorst
 <maarten@lankhorst.se>
Subject: Re: [PATCH v2] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
In-Reply-To: <aPkEHv4iCGjYi2AC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022161054.708388-1-jani.nikula@intel.com>
 <aPkEHv4iCGjYi2AC@intel.com>
Date: Fri, 24 Oct 2025 11:42:57 +0300
Message-ID: <64b17e1cfe060e4d2d4fa51019129bd54f277857@intel.com>
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

On Wed, 22 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 22, 2025 at 07:10:54PM +0300, Jani Nikula wrote:
>> For reasons still unknown, xe appears to require a stride alignment of
>> XE_PAGE_SIZE, and using 64 leads to sporadic failures. Go back to having
>> separate stride alignment for i915 and xe, until the issue is root
>> caused.
>>=20
>> v2: Add FIXME comment, reference issue with Link (Ville)
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> Cc: Maarten Lankhorst <maarten@lankhorst.se>
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220
>> Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignmen=
t as i915")
>> Link: https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383=
.1756931441.git.jani.nikula@intel.com
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

Now Someone(tm) only needs to get at the bottom of this.


BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  5 +++++
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  3 +++
>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 11 +++++++++++
>>  4 files changed, 20 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/dr=
m/i915/display/intel_fbdev.c
>> index 51d3d87caf43..d5c001761aa0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -218,7 +218,7 @@ static void intel_fbdev_fill_mode_cmd(struct drm_fb_=
helper_surface_size *sizes,
>>  	mode_cmd->width =3D sizes->surface_width;
>>  	mode_cmd->height =3D sizes->surface_height;
>>=20=20
>> -	mode_cmd->pitches[0] =3D ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->s=
urface_bpp, 8), 64);
>> +	mode_cmd->pitches[0] =3D intel_fbdev_fb_pitch_align(mode_cmd->width * =
DIV_ROUND_UP(sizes->surface_bpp, 8));
>>  	mode_cmd->pixel_format =3D drm_mode_legacy_fb_format(sizes->surface_bp=
p,
>>  							   sizes->surface_depth);
>>  	mode_cmd->modifier[0] =3D DRM_FORMAT_MOD_LINEAR;
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.c
>> index 56b145841473..0838fdd37254 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> @@ -10,6 +10,11 @@
>>  #include "i915_drv.h"
>>  #include "intel_fbdev_fb.h"
>>=20=20
>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
>> +{
>> +	return ALIGN(stride, 64);
>> +}
>> +
>>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm,=
 int size)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(drm);
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.h
>> index 1fa44ed28543..fd0b3775dc1f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>> @@ -6,12 +6,15 @@
>>  #ifndef __INTEL_FBDEV_FB_H__
>>  #define __INTEL_FBDEV_FB_H__
>>=20=20
>> +#include <linux/types.h>
>> +
>>  struct drm_device;
>>  struct drm_gem_object;
>>  struct drm_mode_fb_cmd2;
>>  struct fb_info;
>>  struct i915_vma;
>>=20=20
>> +u32 intel_fbdev_fb_pitch_align(u32 stride);
>>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm,=
 int size);
>>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>>  int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *in=
fo,
>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/d=
rm/xe/display/intel_fbdev_fb.c
>> index af72f7305e5a..7ad76022cb14 100644
>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> @@ -12,6 +12,17 @@
>>=20=20
>>  #include <generated/xe_device_wa_oob.h>
>>=20=20
>> +/*
>> + * FIXME: There shouldn't be any reason to have XE_PAGE_SIZE stride
>> + * alignment. The same 64 as i915 uses should be fine, and we shouldn't=
 need to
>> + * have driver specific values. However, dropping the stride alignment =
to 64
>> + * leads to underflowing the bo pin count in the atomic cleanup work.
>> + */
>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
>> +{
>> +	return ALIGN(stride, XE_PAGE_SIZE);
>> +}
>> +
>>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm,=
 int size)
>>  {
>>  	struct xe_device *xe =3D to_xe_device(drm);
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
