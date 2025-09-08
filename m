Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0932FB48E61
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7B810E51B;
	Mon,  8 Sep 2025 12:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sxgo4tc8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06C010E518;
 Mon,  8 Sep 2025 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757336264; x=1788872264;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=OXuJ3HzZ/cpcoVttFgF+rJ2Nz/AQ4kI9TdW6dWMePlw=;
 b=Sxgo4tc886Ypr8etfGKW2an6fbNj/10a1t4mPgNBkNb4Vo4K218RKwWP
 rUGZjGWplX06iPqszWUroYi5twv9zj5ApznxHnpk1DOvfvpC3TRJIdsPj
 sk1LgVjSeO9QUW/D1ClbZ3XlhaYBAolq0Cq/ECfCpK2Hxhuw3yTEWNZyK
 etblte7iWQMtdFp8+6SKRwjDjUWzxaKsR8meYWkWn5eKw3JVO10hhsjna
 fdJBDGQ0Rk8Ep96pxeIuWz48pSZRQwQH+R1J1IoyEA4ayDkJiwQyEIyiy
 WxMKG8QLOYjtDCXn/YHyoyOKDyOuT0YFSItvPgbG32WmI94AwvhcGX7kO A==;
X-CSE-ConnectionGUID: axBBWnS1Txiy3oaEtaiyZg==
X-CSE-MsgGUID: 6gw3WusBQZmKCy6eraaU5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59544521"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59544521"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:57:44 -0700
X-CSE-ConnectionGUID: ub3NbPQcTAKl5jirWTCcDw==
X-CSE-MsgGUID: O1DHuVaNSrGB7/FEjXoe7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="173576749"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:57:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/{i915,xe}/fbdev: deduplicate fbdev creation
In-Reply-To: <aLmkqiiyMu77TFxx@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756931441.git.jani.nikula@intel.com>
 <a233292c243fc3ad85c637665ffe2b62815cd63c.1756931441.git.jani.nikula@intel.com>
 <aLmkqiiyMu77TFxx@intel.com>
Date: Mon, 08 Sep 2025 15:57:39 +0300
Message-ID: <203d868fb6258d6d8fbb8d3318fdbd2e3371374f@intel.com>
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

On Thu, 04 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 03, 2025 at 11:32:04PM +0300, Jani Nikula wrote:
>> With the bo creation helper in place, we can lift
>> intel_framebuffer_create() part to common code.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 31 ++++++++++++++--
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 29 ---------------
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 --
>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 35 -------------------
>>  4 files changed, 28 insertions(+), 69 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/dr=
m/i915/display/intel_fbdev.c
>> index 5ac66fb88fcf..d7131de5c7ac 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -227,13 +227,38 @@ __intel_fbdev_fb_alloc(struct intel_display *displ=
ay,
>>  		       struct drm_fb_helper_surface_size *sizes)
>>  {
>>  	struct drm_mode_fb_cmd2 mode_cmd =3D {};
>> -	struct intel_framebuffer *fb;
>> +	struct drm_framebuffer *fb;
>> +	struct drm_gem_object *obj;
>> +	int size;
>>=20=20
>>  	intel_fbdev_fill_mode_cmd(sizes, &mode_cmd);
>>=20=20
>> -	fb =3D intel_fbdev_fb_alloc(display->drm, &mode_cmd);
>> +	size =3D mode_cmd.pitches[0] * mode_cmd.height;
>> +	size =3D PAGE_ALIGN(size);
>> +
>> +	obj =3D intel_fbdev_fb_bo_create(display->drm, size);
>> +	if (IS_ERR(obj)) {
>> +		fb =3D ERR_CAST(obj);
>> +		goto err;
>
> This use of goto doesn't make much sense to me in this function.

Fair, probably an artefact of umpteen rebases and refactors of trying to
make this series make more sense...

BR,
Jani.

>
>> +	}
>> +
>> +	fb =3D intel_framebuffer_create(obj,
>> +				      drm_get_format_info(display->drm,
>> +							  mode_cmd.pixel_format,
>> +							  mode_cmd.modifier[0]),
>> +				      &mode_cmd);
>> +	if (IS_ERR(fb)) {
>> +		intel_fbdev_fb_bo_destroy(obj);
>> +		goto err;
>> +	}
>> +
>> +	drm_gem_object_put(obj);
>> +
>> +	return to_intel_framebuffer(fb);
>> +
>> +err:
>> +	return ERR_CAST(fb);
>>=20=20
>> -	return fb;
>>  }
>>=20=20
>>  int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.c
>> index 6b70823ce5ef..1ac62a064936 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> @@ -10,7 +10,6 @@
>>  #include "i915_drv.h"
>>  #include "intel_display_core.h"
>>  #include "intel_display_types.h"
>> -#include "intel_fb.h"
>>  #include "intel_fbdev_fb.h"
>>=20=20
>>  u32 intel_fbdev_fb_pitch_align(u32 stride)
>> @@ -56,34 +55,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object =
*obj)
>>  	/* nop? */
>>  }
>>=20=20
>> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>> -					       struct drm_mode_fb_cmd2 *mode_cmd)
>> -{
>> -	struct drm_framebuffer *fb;
>> -	struct drm_gem_object *obj;
>> -	int size;
>> -
>> -	size =3D mode_cmd->pitches[0] * mode_cmd->height;
>> -	size =3D PAGE_ALIGN(size);
>> -
>> -	obj =3D intel_fbdev_fb_bo_create(drm, size);
>> -	if (IS_ERR(obj)) {
>> -		fb =3D ERR_CAST(obj);
>> -		goto err;
>> -	}
>> -
>> -	fb =3D intel_framebuffer_create(obj,
>> -				      drm_get_format_info(drm,
>> -							  mode_cmd->pixel_format,
>> -							  mode_cmd->modifier[0]),
>> -				      mode_cmd);
>> -	drm_gem_object_put(obj);
>> -
>> -	return to_intel_framebuffer(fb);
>> -err:
>> -	return ERR_CAST(fb);
>> -}
>> -
>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_i=
nfo *info,
>>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.h
>> index 6d6f316834df..bb0ce3a85ff9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>> @@ -18,8 +18,6 @@ struct intel_display;
>>  u32 intel_fbdev_fb_pitch_align(u32 stride);
>>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm,=
 int size);
>>  void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>> -					       struct drm_mode_fb_cmd2 *mode_cmd);
>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_i=
nfo *info,
>>  			     struct drm_gem_object *obj, struct i915_vma *vma);
>>=20=20
>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/d=
rm/xe/display/intel_fbdev_fb.c
>> index 9a5cf50ea7de..2e8490a8cdb1 100644
>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> @@ -7,7 +7,6 @@
>>=20=20
>>  #include "intel_display_core.h"
>>  #include "intel_display_types.h"
>> -#include "intel_fb.h"
>>  #include "intel_fbdev_fb.h"
>>  #include "xe_bo.h"
>>  #include "xe_ttm_stolen_mgr.h"
>> @@ -59,40 +58,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object =
*obj)
>>  	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
>>  }
>>=20=20
>> -struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>> -					       struct drm_mode_fb_cmd2 *mode_cmd)
>> -{
>> -	struct drm_framebuffer *fb;
>> -	struct drm_gem_object *obj;
>> -	int size;
>> -
>> -	size =3D mode_cmd->pitches[0] * mode_cmd->height;
>> -	size =3D PAGE_ALIGN(size);
>> -
>> -	obj =3D intel_fbdev_fb_bo_create(drm, size);
>> -	if (IS_ERR(obj)) {
>> -		fb =3D ERR_CAST(obj);
>> -		goto err;
>> -	}
>> -
>> -	fb =3D intel_framebuffer_create(obj,
>> -				      drm_get_format_info(drm,
>> -							  mode_cmd->pixel_format,
>> -							  mode_cmd->modifier[0]),
>> -				      mode_cmd);
>> -	if (IS_ERR(fb)) {
>> -		intel_fbdev_fb_bo_destroy(obj);
>> -		goto err;
>> -	}
>> -
>> -	drm_gem_object_put(obj);
>> -
>> -	return to_intel_framebuffer(fb);
>> -
>> -err:
>> -	return ERR_CAST(fb);
>> -}
>> -
>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_i=
nfo *info,
>>  			     struct drm_gem_object *_obj, struct i915_vma *vma)
>>  {
>> --=20
>> 2.47.2

--=20
Jani Nikula, Intel
