Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNAnDdeAsmmfNAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 10:01:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E6126F519
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 10:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447ED10E9ED;
	Thu, 12 Mar 2026 09:01:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EfGaV9j5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9186F10E9D4;
 Thu, 12 Mar 2026 09:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773306063; x=1804842063;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=J0w2nq05hWxsP+XB9rTTAYF7/1q2i1uAZfmztoI1V2Q=;
 b=EfGaV9j5/tRqL8lJJWHoMhTdMzUeZrxIawaoVR+2e0aZ9qxC+qJsJgzH
 XLAklbC3S/uZk8bemz+tLIciuTnb+TQ7c+88AH8JcBcLiHRcCsCi6t7Ns
 ZfTLs5KOROU3cLyegG/u26Eb9gHk8LyVegHRv36C5sGQ9cZfs4a/Vcwwk
 H3O/SPddAg0L/j4/5EpGV2U5C12xO1N8qduLZfMni8gOemjv/gqJkEW6F
 E1I21LoFUZAFTIhWqiHzmRZS6dm2tekLurzx5m1JHquGaXmBafAB317C9
 5+VudkFEPVzIsEP5/E0Sr+zxbpZUP6mIllyCjEYLWiSrzrhATnDbL3S79 g==;
X-CSE-ConnectionGUID: 760JzNmpSKGQDLPipc7wSA==
X-CSE-MsgGUID: kyYx3fLRQ7mj/LIS6HqcSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78241831"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="78241831"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 02:01:03 -0700
X-CSE-ConnectionGUID: be2WscRwT8WfRyT91/XrVg==
X-CSE-MsgGUID: IDlbcPHpSwCdeaR9iCZpxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="225207352"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.126])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 02:01:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/5] drm/{i915,
 xe}: move framebuffer bo to parent interface
In-Reply-To: <DM3PPF208195D8D01AE643B28731FE6CFDAE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1773238670.git.jani.nikula@intel.com>
 <848d32a44bf844cba3d66e44ba9f20bea4a8352d.1773238670.git.jani.nikula@intel.com>
 <DM3PPF208195D8D01AE643B28731FE6CFDAE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Thu, 12 Mar 2026 11:00:57 +0200
Message-ID: <67ef5d21f50f0d9cba26fca7b197d37fbbd4877d@intel.com>
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
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RBL_SEM_FAIL(0.00)[131.252.210.177:query timed out];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.957];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[jani.nikula.intel.com:query timed out,suraj.kandpal.intel.com:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B5E6126F519
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH 5/5] drm/{i915,xe}: move framebuffer bo to parent interf=
ace
>>=20
>> Add .framebuffer_init, .framebuffer_fini and .framebuffer_lookup to the =
bo
>> parent interface. While they're about framebuffers, they're specifically=
 about
>> framebuffer objects, so the bo interface is a good enough fit, and there=
's no
>> need to add another interface struct.
>
> Maybe it can also be mentioned that since we move all the functions from
> Intel_fb_bo to i915_bo.c we can safely remove it.

Sure.

>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                |  1 -
>>  drivers/gpu/drm/i915/display/intel_bo.c      | 21 +++++
>>  drivers/gpu/drm/i915/display/intel_bo.h      |  9 ++
>>  drivers/gpu/drm/i915/display/intel_fb.c      | 12 +--
>>  drivers/gpu/drm/i915/display/intel_fb_bo.c   | 99 --------------------
>>  drivers/gpu/drm/i915/display/intel_fb_bo.h   | 25 -----
>>  drivers/gpu/drm/i915/i915_bo.c               | 92 ++++++++++++++++++
>>  drivers/gpu/drm/xe/Makefile                  |  1 -
>>  drivers/gpu/drm/xe/display/intel_fb_bo.c     | 91 ------------------
>>  drivers/gpu/drm/xe/display/xe_display_bo.c   | 84 +++++++++++++++++
>>  include/drm/intel/display_parent_interface.h |  6 ++
>>  11 files changed, 218 insertions(+), 223 deletions(-)  delete mode 1006=
44
>> drivers/gpu/drm/i915/display/intel_fb_bo.c
>>  delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h
>>  delete mode 100644 drivers/gpu/drm/xe/display/intel_fb_bo.c
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 425933fb26a5..be976a90c5a6 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -278,7 +278,6 @@ i915-y +=3D \
>>  	display/intel_drrs.o \
>>  	display/intel_dsb.o \
>>  	display/intel_fb.o \
>> -	display/intel_fb_bo.o \
>>  	display/intel_fb_pin.o \
>>  	display/intel_fbc.o \
>>  	display/intel_fdi.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c
>> b/drivers/gpu/drm/i915/display/intel_bo.c
>> index e356ab4e0640..3b82d38a0504 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
>> @@ -64,3 +64,24 @@ void intel_bo_describe(struct seq_file *m, struct
>> drm_gem_object *obj)
>>  	if (display->parent->bo->describe)
>>  		display->parent->bo->describe(m, obj);  }
>> +
>> +int intel_bo_framebuffer_init(struct drm_gem_object *obj, struct
>> +drm_mode_fb_cmd2 *mode_cmd) {
>> +	struct intel_display *display =3D to_intel_display(obj->dev);
>> +
>> +	return display->parent->bo->framebuffer_init(obj, mode_cmd); }
>> +
>> +void intel_bo_framebuffer_fini(struct drm_gem_object *obj) {
>> +	struct intel_display *display =3D to_intel_display(obj->dev);
>> +
>> +	display->parent->bo->framebuffer_fini(obj);
>
> Should we be making this optional . This will help avoid creating dummy f=
unctions
> for fini like you have done previously.

I have this gnawing feeling that it should not be a dummy function in
the first place. I haven't actually looked into the bottom of it. That's
why I ended up keeping the dummy.

BR,
Jani.


>
> Regards,
> Suraj Kandpal
>
>> +}
>> +
>> +struct drm_gem_object *intel_bo_framebuffer_lookup(struct intel_display
>> *display,
>> +						   struct drm_file *filp,
>> +						   const struct
>> drm_mode_fb_cmd2 *user_mode_cmd) {
>> +	return display->parent->bo->framebuffer_lookup(display->drm, filp,
>> +user_mode_cmd); }
>> diff --git a/drivers/gpu/drm/i915/display/intel_bo.h
>> b/drivers/gpu/drm/i915/display/intel_bo.h
>> index 40390ed92ceb..aec188c706c2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bo.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bo.h
>> @@ -6,8 +6,11 @@
>>=20
>>  #include <linux/types.h>
>>=20
>> +struct drm_file;
>>  struct drm_gem_object;
>> +struct drm_mode_fb_cmd2;
>>  struct drm_scanout_buffer;
>> +struct intel_display;
>>  struct intel_framebuffer;
>>  struct seq_file;
>>  struct vm_area_struct;
>> @@ -22,4 +25,10 @@ int intel_bo_read_from_page(struct drm_gem_object
>> *obj, u64 offset, void *dst, i
>>=20
>>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
>>=20
>> +void intel_bo_framebuffer_fini(struct drm_gem_object *obj); int
>> +intel_bo_framebuffer_init(struct drm_gem_object *obj, struct
>> +drm_mode_fb_cmd2 *mode_cmd); struct drm_gem_object
>> *intel_bo_framebuffer_lookup(struct intel_display *display,
>> +						   struct drm_file *filp,
>> +						   const struct
>> drm_mode_fb_cmd2 *user_mode_cmd);
>> +
>>  #endif /* __INTEL_BO__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
>> b/drivers/gpu/drm/i915/display/intel_fb.c
>> index 49c6ca9d94c6..5768619f840f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -17,7 +17,6 @@
>>  #include "intel_display_types.h"
>>  #include "intel_display_utils.h"
>>  #include "intel_fb.h"
>> -#include "intel_fb_bo.h"
>>  #include "intel_frontbuffer.h"
>>  #include "intel_parent.h"
>>  #include "intel_plane.h"
>> @@ -2111,7 +2110,7 @@ static void intel_user_framebuffer_destroy(struct
>> drm_framebuffer *fb)
>>  	if (intel_fb_uses_dpt(fb))
>>  		intel_parent_dpt_destroy(display, intel_fb->dpt);
>>=20
>> -	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
>> +	intel_bo_framebuffer_fini(intel_fb_bo(fb));
>>=20
>>  	intel_parent_frontbuffer_put(display, intel_fb->frontbuffer);
>>=20
>> @@ -2222,7 +2221,7 @@ int intel_framebuffer_init(struct intel_framebuffer
>> *intel_fb,
>>=20
>>  	/*
>>  	 * intel_parent_frontbuffer_get() must be done before
>> -	 * intel_fb_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
>> +	 * intel_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
>>  	 */
>>  	intel_fb->frontbuffer =3D intel_parent_frontbuffer_get(display, obj);
>>  	if (!intel_fb->frontbuffer) {
>> @@ -2230,7 +2229,7 @@ int intel_framebuffer_init(struct intel_framebuffer
>> *intel_fb,
>>  		goto err_free_panic;
>>  	}
>>=20
>> -	ret =3D intel_fb_bo_framebuffer_init(obj, mode_cmd);
>> +	ret =3D intel_bo_framebuffer_init(obj, mode_cmd);
>>  	if (ret)
>>  		goto err_frontbuffer_put;
>>=20
>> @@ -2333,7 +2332,7 @@ int intel_framebuffer_init(struct intel_framebuffer
>> *intel_fb,
>>  	if (intel_fb_uses_dpt(fb))
>>  		intel_parent_dpt_destroy(display, intel_fb->dpt);
>>  err_bo_framebuffer_fini:
>> -	intel_fb_bo_framebuffer_fini(obj);
>> +	intel_bo_framebuffer_fini(obj);
>>  err_frontbuffer_put:
>>  	intel_parent_frontbuffer_put(display, intel_fb->frontbuffer);
>>  err_free_panic:
>> @@ -2348,11 +2347,12 @@ intel_user_framebuffer_create(struct
>> drm_device *dev,
>>  			      const struct drm_format_info *info,
>>  			      const struct drm_mode_fb_cmd2
>> *user_mode_cmd)  {
>> +	struct intel_display *display =3D to_intel_display(dev);
>>  	struct drm_framebuffer *fb;
>>  	struct drm_gem_object *obj;
>>  	struct drm_mode_fb_cmd2 mode_cmd =3D *user_mode_cmd;
>>=20
>> -	obj =3D intel_fb_bo_lookup_valid_bo(dev, filp, &mode_cmd);
>> +	obj =3D intel_bo_framebuffer_lookup(display, filp, &mode_cmd);
>>  	if (IS_ERR(obj))
>>  		return ERR_CAST(obj);
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c
>> b/drivers/gpu/drm/i915/display/intel_fb_bo.c
>> deleted file mode 100644
>> index a4d49ef450d9..000000000000
>> --- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
>> +++ /dev/null
>> @@ -1,99 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/*
>> - * Copyright =C2=A9 2021 Intel Corporation
>> - */
>> -
>> -#include <drm/drm_framebuffer.h>
>> -#include <drm/drm_print.h>
>> -
>> -#include "gem/i915_gem_object.h"
>> -
>> -#include "i915_drv.h"
>> -#include "intel_fb.h"
>> -#include "intel_fb_bo.h"
>> -
>> -void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj) -{
>> -	/* Nothing to do for i915 */
>> -}
>> -
>> -int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
>> -				 struct drm_mode_fb_cmd2 *mode_cmd)
>> -{
>> -	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
>> -	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>> -	unsigned int tiling, stride;
>> -
>> -	i915_gem_object_lock(obj, NULL);
>> -	tiling =3D i915_gem_object_get_tiling(obj);
>> -	stride =3D i915_gem_object_get_stride(obj);
>> -	i915_gem_object_unlock(obj);
>> -
>> -	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
>> -		/*
>> -		 * If there's a fence, enforce that
>> -		 * the fb modifier and tiling mode match.
>> -		 */
>> -		if (tiling !=3D I915_TILING_NONE &&
>> -		    tiling !=3D intel_fb_modifier_to_tiling(mode_cmd-
>> >modifier[0])) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "tiling_mode doesn't match fb modifier\n");
>> -			return -EINVAL;
>> -		}
>> -	} else {
>> -		if (tiling =3D=3D I915_TILING_X) {
>> -			mode_cmd->modifier[0] =3D
>> I915_FORMAT_MOD_X_TILED;
>> -		} else if (tiling =3D=3D I915_TILING_Y) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "No Y tiling for legacy addfb\n");
>> -			return -EINVAL;
>> -		}
>> -	}
>> -
>> -	/*
>> -	 * gen2/3 display engine uses the fence if present,
>> -	 * so the tiling mode must match the fb modifier exactly.
>> -	 */
>> -	if (GRAPHICS_VER(i915) < 4 &&
>> -	    tiling !=3D intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "tiling_mode must match fb modifier exactly on
>> gen2/3\n");
>> -		return -EINVAL;
>> -	}
>> -
>> -	/*
>> -	 * If there's a fence, enforce that
>> -	 * the fb pitch and fence stride match.
>> -	 */
>> -	if (tiling !=3D I915_TILING_NONE && mode_cmd->pitches[0] !=3D stride) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "pitch (%d) must match tiling stride (%d)\n",
>> -			    mode_cmd->pitches[0], stride);
>> -		return -EINVAL;
>> -	}
>> -
>> -	return 0;
>> -}
>> -
>> -struct drm_gem_object *
>> -intel_fb_bo_lookup_valid_bo(struct drm_device *drm,
>> -			    struct drm_file *filp,
>> -			    const struct drm_mode_fb_cmd2 *mode_cmd)
>> -{
>> -	struct drm_i915_private *i915 =3D to_i915(drm);
>> -	struct drm_i915_gem_object *obj;
>> -
>> -	obj =3D i915_gem_object_lookup(filp, mode_cmd->handles[0]);
>> -	if (!obj)
>> -		return ERR_PTR(-ENOENT);
>> -
>> -	/* object is backed with LMEM for discrete */
>> -	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj,
>> INTEL_REGION_LMEM_0)) {
>> -		/* object is "remote", not in local memory */
>> -		i915_gem_object_put(obj);
>> -		drm_dbg_kms(&i915->drm, "framebuffer must reside in local
>> memory\n");
>> -		return ERR_PTR(-EREMOTE);
>> -	}
>> -
>> -	return intel_bo_to_drm_bo(obj);
>> -}
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h
>> b/drivers/gpu/drm/i915/display/intel_fb_bo.h
>> deleted file mode 100644
>> index d775773c6c03..000000000000
>> --- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
>> +++ /dev/null
>> @@ -1,25 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/*
>> - * Copyright =C2=A9 2021 Intel Corporation
>> - */
>> -
>> -#ifndef __INTEL_FB_BO_H__
>> -#define __INTEL_FB_BO_H__
>> -
>> -struct drm_device;
>> -struct drm_file;
>> -struct drm_framebuffer;
>> -struct drm_gem_object;
>> -struct drm_mode_fb_cmd2;
>> -
>> -void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
>> -
>> -int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
>> -				 struct drm_mode_fb_cmd2 *mode_cmd);
>> -
>> -struct drm_gem_object *
>> -intel_fb_bo_lookup_valid_bo(struct drm_device *drm,
>> -			    struct drm_file *filp,
>> -			    const struct drm_mode_fb_cmd2
>> *user_mode_cmd);
>> -
>> -#endif
>> diff --git a/drivers/gpu/drm/i915/i915_bo.c
>> b/drivers/gpu/drm/i915/i915_bo.c index 04fc0e3b7ef6..1789f7cab05c
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_bo.c
>> +++ b/drivers/gpu/drm/i915/i915_bo.c
>> @@ -2,8 +2,10 @@
>>  /* Copyright =C2=A9 2024 Intel Corporation */
>>=20
>>  #include <drm/drm_panic.h>
>> +#include <drm/drm_print.h>
>>  #include <drm/intel/display_parent_interface.h>
>>=20
>> +#include "display/intel_fb.h"
>>  #include "gem/i915_gem_mman.h"
>>  #include "gem/i915_gem_object.h"
>>  #include "gem/i915_gem_object_frontbuffer.h"
>> @@ -11,6 +13,7 @@
>>=20
>>  #include "i915_bo.h"
>>  #include "i915_debugfs.h"
>> +#include "i915_drv.h"
>>=20
>>  static bool i915_bo_is_tiled(struct drm_gem_object *obj)  { @@ -52,6 +5=
5,92
>> @@ static void i915_bo_describe(struct seq_file *m, struct drm_gem_object
>> *obj)
>>  	i915_debugfs_describe_obj(m, to_intel_bo(obj));  }
>>=20
>> +static int i915_bo_framebuffer_init(struct drm_gem_object *_obj,
>> +				    struct drm_mode_fb_cmd2 *mode_cmd) {
>> +	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
>> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>> +	unsigned int tiling, stride;
>> +
>> +	i915_gem_object_lock(obj, NULL);
>> +	tiling =3D i915_gem_object_get_tiling(obj);
>> +	stride =3D i915_gem_object_get_stride(obj);
>> +	i915_gem_object_unlock(obj);
>> +
>> +	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
>> +		/*
>> +		 * If there's a fence, enforce that
>> +		 * the fb modifier and tiling mode match.
>> +		 */
>> +		if (tiling !=3D I915_TILING_NONE &&
>> +		    tiling !=3D intel_fb_modifier_to_tiling(mode_cmd-
>> >modifier[0])) {
>> +			drm_dbg_kms(&i915->drm,
>> +				    "tiling_mode doesn't match fb modifier\n");
>> +			return -EINVAL;
>> +		}
>> +	} else {
>> +		if (tiling =3D=3D I915_TILING_X) {
>> +			mode_cmd->modifier[0] =3D
>> I915_FORMAT_MOD_X_TILED;
>> +		} else if (tiling =3D=3D I915_TILING_Y) {
>> +			drm_dbg_kms(&i915->drm,
>> +				    "No Y tiling for legacy addfb\n");
>> +			return -EINVAL;
>> +		}
>> +	}
>> +
>> +	/*
>> +	 * gen2/3 display engine uses the fence if present,
>> +	 * so the tiling mode must match the fb modifier exactly.
>> +	 */
>> +	if (GRAPHICS_VER(i915) < 4 &&
>> +	    tiling !=3D intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "tiling_mode must match fb modifier exactly on
>> gen2/3\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	/*
>> +	 * If there's a fence, enforce that
>> +	 * the fb pitch and fence stride match.
>> +	 */
>> +	if (tiling !=3D I915_TILING_NONE && mode_cmd->pitches[0] !=3D stride) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "pitch (%d) must match tiling stride (%d)\n",
>> +			    mode_cmd->pitches[0], stride);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void i915_bo_framebuffer_fini(struct drm_gem_object *obj) {
>> +	/* Nothing to do for i915 */
>> +}
>> +
>> +static struct drm_gem_object *
>> +i915_bo_framebuffer_lookup(struct drm_device *drm,
>> +			   struct drm_file *filp,
>> +			   const struct drm_mode_fb_cmd2 *mode_cmd) {
>> +	struct drm_i915_private *i915 =3D to_i915(drm);
>> +	struct drm_i915_gem_object *obj;
>> +
>> +	obj =3D i915_gem_object_lookup(filp, mode_cmd->handles[0]);
>> +	if (!obj)
>> +		return ERR_PTR(-ENOENT);
>> +
>> +	/* object is backed with LMEM for discrete */
>> +	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj,
>> INTEL_REGION_LMEM_0)) {
>> +		/* object is "remote", not in local memory */
>> +		i915_gem_object_put(obj);
>> +		drm_dbg_kms(&i915->drm, "framebuffer must reside in local
>> memory\n");
>> +		return ERR_PTR(-EREMOTE);
>> +	}
>> +
>> +	return intel_bo_to_drm_bo(obj);
>> +}
>> +
>>  const struct intel_display_bo_interface i915_display_bo_interface =3D {
>>  	.is_tiled =3D i915_bo_is_tiled,
>>  	.is_userptr =3D i915_bo_is_userptr,
>> @@ -61,4 +150,7 @@ const struct intel_display_bo_interface
>> i915_display_bo_interface =3D {
>>  	.fb_mmap =3D i915_bo_fb_mmap,
>>  	.read_from_page =3D i915_bo_read_from_page,
>>  	.describe =3D i915_bo_describe,
>> +	.framebuffer_init =3D i915_bo_framebuffer_init,
>> +	.framebuffer_fini =3D i915_bo_framebuffer_fini,
>> +	.framebuffer_lookup =3D i915_bo_framebuffer_lookup,
>>  };
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index b16ed1ce2a85..dab979287a96 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -211,7 +211,6 @@ $(obj)/i915-display/%.o:
>> $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
>>=20
>>  # Display code specific to xe
>>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>> -	display/intel_fb_bo.o \
>>  	display/intel_fbdev_fb.o \
>>  	display/xe_display.o \
>>  	display/xe_display_bo.o \
>> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> b/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> deleted file mode 100644
>> index db8b1a27b4de..000000000000
>> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
>> +++ /dev/null
>> @@ -1,91 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/*
>> - * Copyright =C2=A9 2021 Intel Corporation
>> - */
>> -
>> -#include <drm/drm_modeset_helper.h>
>> -#include <drm/ttm/ttm_bo.h>
>> -
>> -#include "intel_display_types.h"
>> -#include "intel_fb.h"
>> -#include "intel_fb_bo.h"
>> -#include "xe_bo.h"
>> -
>> -void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj) -{
>> -	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>> -
>> -	if (bo->flags & XE_BO_FLAG_PINNED) {
>> -		/* Unpin our kernel fb first */
>> -		xe_bo_lock(bo, false);
>> -		xe_bo_unpin(bo);
>> -		xe_bo_unlock(bo);
>> -	}
>> -	xe_bo_put(bo);
>> -}
>> -
>> -int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
>> -				 struct drm_mode_fb_cmd2 *mode_cmd)
>> -{
>> -	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>> -	struct xe_device *xe =3D to_xe_device(bo->ttm.base.dev);
>> -	int ret;
>> -
>> -	/*
>> -	 * Some modifiers require physical alignment of 64KiB VRAM pages;
>> -	 * require that the BO in those cases is created correctly.
>> -	 */
>> -	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd-
>> >modifier[0]) &&
>> -			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
>> -		return -EINVAL;
>> -
>> -	xe_bo_get(bo);
>> -
>> -	ret =3D ttm_bo_reserve(&bo->ttm, true, false, NULL);
>> -	if (ret)
>> -		goto err;
>> -
>> -	if (!(bo->flags & XE_BO_FLAG_SCANOUT)) {
>> -		/*
>> -		 * XE_BO_FLAG_SCANOUT should ideally be set at creation,
>> or is
>> -		 * automatically set when creating FB. We cannot change
>> caching
>> -		 * mode when the bo is VM_BINDed, so we can only set
>> -		 * coherency with display when unbound.
>> -		 */
>> -		if (XE_IOCTL_DBG(xe, xe_bo_is_vm_bound(bo))) {
>> -			ttm_bo_unreserve(&bo->ttm);
>> -			ret =3D -EINVAL;
>> -			goto err;
>> -		}
>> -		bo->flags |=3D XE_BO_FLAG_SCANOUT;
>> -	}
>> -	ttm_bo_unreserve(&bo->ttm);
>> -	return 0;
>> -
>> -err:
>> -	xe_bo_put(bo);
>> -	return ret;
>> -}
>> -
>> -struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_device
>> *drm,
>> -						   struct drm_file *filp,
>> -						   const struct
>> drm_mode_fb_cmd2 *mode_cmd)
>> -{
>> -	struct xe_device *xe =3D to_xe_device(drm);
>> -	struct xe_bo *bo;
>> -	struct drm_gem_object *gem =3D drm_gem_object_lookup(filp,
>> mode_cmd->handles[0]);
>> -
>> -	if (!gem)
>> -		return ERR_PTR(-ENOENT);
>> -
>> -	bo =3D gem_to_xe_bo(gem);
>> -	/* Require vram placement or dma-buf import */
>> -	if (IS_DGFX(xe) &&
>> -	    !xe_bo_can_migrate(bo, XE_PL_VRAM0) &&
>> -	    bo->ttm.type !=3D ttm_bo_type_sg) {
>> -		drm_gem_object_put(gem);
>> -		return ERR_PTR(-EREMOTE);
>> -	}
>> -
>> -	return gem;
>> -}
>> diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c
>> b/drivers/gpu/drm/xe/display/xe_display_bo.c
>> index a53ba3f247ec..a689f71e7b14 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display_bo.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
>> @@ -4,6 +4,7 @@
>>  #include <drm/drm_gem.h>
>>  #include <drm/intel/display_parent_interface.h>
>>=20
>> +#include "intel_fb.h"
>>  #include "xe_bo.h"
>>  #include "xe_display_bo.h"
>>  #include "xe_pxp.h"
>> @@ -20,9 +21,92 @@ static int xe_display_bo_read_from_page(struct
>> drm_gem_object *obj, u64 offset,
>>  	return xe_bo_read(bo, offset, dst, size);  }
>>=20
>> +static int xe_display_bo_framebuffer_init(struct drm_gem_object *obj,
>> +					  struct drm_mode_fb_cmd2
>> *mode_cmd) {
>> +	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>> +	struct xe_device *xe =3D to_xe_device(bo->ttm.base.dev);
>> +	int ret;
>> +
>> +	/*
>> +	 * Some modifiers require physical alignment of 64KiB VRAM pages;
>> +	 * require that the BO in those cases is created correctly.
>> +	 */
>> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd-
>> >modifier[0]) &&
>> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
>> +		return -EINVAL;
>> +
>> +	xe_bo_get(bo);
>> +
>> +	ret =3D ttm_bo_reserve(&bo->ttm, true, false, NULL);
>> +	if (ret)
>> +		goto err;
>> +
>> +	if (!(bo->flags & XE_BO_FLAG_SCANOUT)) {
>> +		/*
>> +		 * XE_BO_FLAG_SCANOUT should ideally be set at creation,
>> or is
>> +		 * automatically set when creating FB. We cannot change
>> caching
>> +		 * mode when the bo is VM_BINDed, so we can only set
>> +		 * coherency with display when unbound.
>> +		 */
>> +		if (XE_IOCTL_DBG(xe, xe_bo_is_vm_bound(bo))) {
>> +			ttm_bo_unreserve(&bo->ttm);
>> +			ret =3D -EINVAL;
>> +			goto err;
>> +		}
>> +		bo->flags |=3D XE_BO_FLAG_SCANOUT;
>> +	}
>> +	ttm_bo_unreserve(&bo->ttm);
>> +	return 0;
>> +
>> +err:
>> +	xe_bo_put(bo);
>> +	return ret;
>> +}
>> +
>> +static void xe_display_bo_framebuffer_fini(struct drm_gem_object *obj)
>> +{
>> +	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>> +
>> +	if (bo->flags & XE_BO_FLAG_PINNED) {
>> +		/* Unpin our kernel fb first */
>> +		xe_bo_lock(bo, false);
>> +		xe_bo_unpin(bo);
>> +		xe_bo_unlock(bo);
>> +	}
>> +	xe_bo_put(bo);
>> +}
>> +
>> +static struct drm_gem_object *
>> +xe_display_bo_framebuffer_lookup(struct drm_device *drm,
>> +				 struct drm_file *filp,
>> +				 const struct drm_mode_fb_cmd2
>> *mode_cmd) {
>> +	struct xe_device *xe =3D to_xe_device(drm);
>> +	struct xe_bo *bo;
>> +	struct drm_gem_object *gem =3D drm_gem_object_lookup(filp,
>> +mode_cmd->handles[0]);
>> +
>> +	if (!gem)
>> +		return ERR_PTR(-ENOENT);
>> +
>> +	bo =3D gem_to_xe_bo(gem);
>> +	/* Require vram placement or dma-buf import */
>> +	if (IS_DGFX(xe) &&
>> +	    !xe_bo_can_migrate(bo, XE_PL_VRAM0) &&
>> +	    bo->ttm.type !=3D ttm_bo_type_sg) {
>> +		drm_gem_object_put(gem);
>> +		return ERR_PTR(-EREMOTE);
>> +	}
>> +
>> +	return gem;
>> +}
>> +
>>  const struct intel_display_bo_interface xe_display_bo_interface =3D {
>>  	.is_protected =3D xe_display_bo_is_protected,
>>  	.key_check =3D xe_pxp_obj_key_check,
>>  	.fb_mmap =3D drm_gem_prime_mmap,
>>  	.read_from_page =3D xe_display_bo_read_from_page,
>> +	.framebuffer_init =3D xe_display_bo_framebuffer_init,
>> +	.framebuffer_fini =3D xe_display_bo_framebuffer_fini,
>> +	.framebuffer_lookup =3D xe_display_bo_framebuffer_lookup,
>>  };
>> diff --git a/include/drm/intel/display_parent_interface.h
>> b/include/drm/intel/display_parent_interface.h
>> index 2b53d12b0e0a..97ec94a2e749 100644
>> --- a/include/drm/intel/display_parent_interface.h
>> +++ b/include/drm/intel/display_parent_interface.h
>> @@ -12,6 +12,7 @@ struct drm_device;
>>  struct drm_file;
>>  struct drm_framebuffer;
>>  struct drm_gem_object;
>> +struct drm_mode_fb_cmd2;
>>  struct drm_plane_state;
>>  struct drm_scanout_buffer;
>>  struct i915_vma;
>> @@ -37,6 +38,11 @@ struct intel_display_bo_interface {
>>  	int (*fb_mmap)(struct drm_gem_object *obj, struct vm_area_struct
>> *vma);
>>  	int (*read_from_page)(struct drm_gem_object *obj, u64 offset, void
>> *dst, int size);
>>  	void (*describe)(struct seq_file *m, struct drm_gem_object *obj); /*
>> Optional */
>> +	int (*framebuffer_init)(struct drm_gem_object *obj, struct
>> drm_mode_fb_cmd2 *mode_cmd);
>> +	void (*framebuffer_fini)(struct drm_gem_object *obj);
>> +	struct drm_gem_object *(*framebuffer_lookup)(struct drm_device
>> *drm,
>> +						     struct drm_file *filp,
>> +						     const struct
>> drm_mode_fb_cmd2 *user_mode_cmd);
>>  };
>>=20
>>  struct intel_display_dpt_interface {
>> --
>> 2.47.3
>

--=20
Jani Nikula, Intel
