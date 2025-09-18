Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B59B7DB60
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A95510E82E;
	Wed, 17 Sep 2025 12:33:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LunbBdUB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002A810E82E;
 Wed, 17 Sep 2025 12:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758112417; x=1789648417;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=W1VW7txLPlR5Ou5B6y4F/3Bf/kqC/2oun6Khf4tzC24=;
 b=LunbBdUBjfCw9E0/T95hGJ0DpvCz5oAJ9nbvxJweg1BXG5yGinpYwXlu
 dD8UGa1MRZxX0ZenpzDgT3MRMvfqrPnMgU9l6q/Ds6ng+WKQWWbfuORei
 4VmOBlW7MtGHgqbOamBEAoSCMWesPBrHLpbSc0F2aHavWUq5elZ5yABPE
 jiAWbTb8VD30zXUDu4j69NcoQ4h66y+2w4MfkBvB3KArDAUhWo9C+R8u3
 IcTwASAHDVIeT59g01ctuXA50Wc/ctQQFVKiJ9q9lO9FuDmhf4qQflYVs
 ijEpBYJQEWCSLY4wKO96uin4Ytc6l+gmDFugFo6DITa2HA212rV11ztlw Q==;
X-CSE-ConnectionGUID: SFWLIcrhTaGYXU8BRvD2LA==
X-CSE-MsgGUID: GStFGCxkStqHLY8U19oP/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71841522"
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="71841522"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 05:33:37 -0700
X-CSE-ConnectionGUID: EydyNTHZSdOmoSW/rpeg7Q==
X-CSE-MsgGUID: VSE31eJ/S5iuQ1tHouk/2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="174835473"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 05:33:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/{i915,xe}/fbdev: add intel_fbdev_fb_bo_destroy()
In-Reply-To: <aLmkNu6AJ6LGVt6q@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756931441.git.jani.nikula@intel.com>
 <52acac7760e8bc440ad9539aaa89b8cb3b5c23dc.1756931441.git.jani.nikula@intel.com>
 <aLmkNu6AJ6LGVt6q@intel.com>
Date: Wed, 17 Sep 2025 15:33:31 +0300
Message-ID: <4e4d1bc04de69092cdb3ecc16bda81764d2b9b16@intel.com>
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
> On Wed, Sep 03, 2025 at 11:32:03PM +0300, Jani Nikula wrote:
>> xe does xe_bo_unpin_map_no_vm() on the failure path. Add a common helper
>> to enable further refactoring.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
>>  3 files changed, 12 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.c
>> index 3837973b0d25..6b70823ce5ef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> @@ -51,6 +51,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struc=
t drm_device *drm, int size
>>  	return &obj->base;
>>  }
>>=20=20
>> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>> +{
>> +	/* nop? */
>
> gem_object_put() is what destroys the bo on i915, so I think you're
> introducing a leak in the next patch with this nop implementation.
>
> xe seems to be riddled with footguns here since it conflates
> creation+pinning+whatever in the same thing (and I guess it
> doesn't know how to clean all that up when the last reference
> to the object disappears?) and you have to use that horribly
> misnamed function instead...

Hmm, can we just slap i915_gem_object_put(obj) in there?

The i915 variant of intel_fbdev_fb_alloc() ignores errors from
intel_framebuffer_create() and just unconditionally does
i915_gem_object_put() afterwards:

	fb =3D intel_framebuffer_create(intel_bo_to_drm_bo(obj),
				      drm_get_format_info(display->drm,
							  mode_cmd.pixel_format,
							  mode_cmd.modifier[0]),
				      &mode_cmd);
	i915_gem_object_put(obj);

	return to_intel_framebuffer(fb);

Presumably the refcounts are handled correctly either way.

It's just a bit fishy that the potential error pointer from
intel_framebuffer_create() goes through to_intel_framebuffer() to the
caller.

BR,
Jani.


>
>> +}
>> +
>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>  					       struct drm_mode_fb_cmd2 *mode_cmd)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.h
>> index b10c4635bf46..6d6f316834df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
>> @@ -17,6 +17,7 @@ struct intel_display;
>>=20=20
>>  u32 intel_fbdev_fb_pitch_align(u32 stride);
>>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm,=
 int size);
>> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>  					       struct drm_mode_fb_cmd2 *mode_cmd);
>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_i=
nfo *info,
>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/d=
rm/xe/display/intel_fbdev_fb.c
>> index 9a5d14d5781a..9a5cf50ea7de 100644
>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> @@ -54,6 +54,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struc=
t drm_device *drm, int size
>>  	return &obj->ttm.base;
>>  }
>>=20=20
>> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>> +{
>> +	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
>> +}
>> +
>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
>>  					       struct drm_mode_fb_cmd2 *mode_cmd)
>>  {
>> @@ -76,7 +81,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct =
drm_device *drm,
>>  							  mode_cmd->modifier[0]),
>>  				      mode_cmd);
>>  	if (IS_ERR(fb)) {
>> -		xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
>> +		intel_fbdev_fb_bo_destroy(obj);
>>  		goto err;
>>  	}
>>=20=20
>> --=20
>> 2.47.2

--=20
Jani Nikula, Intel
