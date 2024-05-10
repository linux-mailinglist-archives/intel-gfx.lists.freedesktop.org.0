Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DD78C20EC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5FE10E791;
	Fri, 10 May 2024 09:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrYaZSGP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB7310E724;
 Fri, 10 May 2024 09:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333353; x=1746869353;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jOlGr0f07G7nohP2bQvUoPkQdT1zw/VTSHnpfs13NtI=;
 b=IrYaZSGPhDYj4mHg0iJgRotCP6u/hnQOqa6JqQ5PoTyrRI6Di6dG9X9h
 wrrhm3XBh75BOKvImdlwWlhCgkwyBekjOJ+5zpOYD72fO8Nxl2uV3xK99
 C9Ea9Q4Xt6H6HFsoYtSSWEIco3GR1gAHcF+wRL65Ka4LubF2jRoA6bw8z
 xB7YodX0/4TryvN6/dvx2q+mykhSRcr92g7sXTTRZHQnNstHbOywTpEvC
 bSFbs1c/UyAHiPGhHzgdsfinw0JpDTZB5XhYUBjeRnkSKqlqOEYyBjzPZ
 xaVK5IW8Zr1TXYIo77D74E9yE+M4ILWpleFA9APIIGZqHTz5xzI19eADT g==;
X-CSE-ConnectionGUID: qicKNE1GRTWDmbgu6Z8YSw==
X-CSE-MsgGUID: 1QZ47nhMTumPJJmlNrFYow==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11184724"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11184724"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:29:13 -0700
X-CSE-ConnectionGUID: Pm2bPyxXS8ieN44SkxnrkA==
X-CSE-MsgGUID: Xif+8oVrRQyFEUvg/IFn5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34333187"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:29:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Lucas
 De Marchi <lucas.demarchi@intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH] drm/xe: Nuke xe's copy of intel_fbdev_fb.h
In-Reply-To: <ZjvYFkUbsP_hXOG4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506183331.7720-1-ville.syrjala@linux.intel.com>
 <87msp2knor.fsf@intel.com> <ZjvYFkUbsP_hXOG4@intel.com>
Date: Fri, 10 May 2024 12:29:06 +0300
Message-ID: <87ttj6hv6l.fsf@intel.com>
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

On Wed, 08 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 07, 2024 at 11:53:40AM +0300, Jani Nikula wrote:
>> On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > For some reason xe and i915 each have an identical (fortunately)
>> > copy of intel_fbdev_fb.h. The xe copy actually only gets included
>> > by xe's intel_fbdev_fb.c, and the i915 copy by everyone else,
>> > include intel_fbdev.c which is the actual caller of the
>> > functions declared in the header.
>> >
>> > This means the xe and i915 headers are free to define/declare
>> > completely incompatible things and the build would still succeed
>> > as long as the symbol names match.
>> >
>> > That is not a good thing, so let's nuke xe's copy of the header
>> > so that everyone will use the same header, and be forced to
>> > agree on the same API/ABI.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> Thanks.
>
> I was going to push this to drm-xe-next, but I should actually
> push it to drm-intel-next since I'll be massaging this stuff
> there.

Yeah, things often run more smoothly if we merge xe/display/ changes via
drm-intel-next. It can take a while to merge stuff to drm-next and
backmerge to respective drivers to sync it all up.

BR,
Jani.


>
> xe maintainers, ack for merging via drm-intel-next?
>
>>=20
>> > ---
>> >  drivers/gpu/drm/xe/display/intel_fbdev_fb.h | 21 ---------------------
>> >  1 file changed, 21 deletions(-)
>> >  delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.h
>> >
>> > diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h b/drivers/gpu=
/drm/xe/display/intel_fbdev_fb.h
>> > deleted file mode 100644
>> > index ea186772e0bb..000000000000
>> > --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h
>> > +++ /dev/null
>> > @@ -1,21 +0,0 @@
>> > -/* SPDX-License-Identifier: MIT */
>> > -/*
>> > - * Copyright =C2=A9 2023 Intel Corporation
>> > - */
>> > -
>> > -#ifndef __INTEL_FBDEV_FB_H__
>> > -#define __INTEL_FBDEV_FB_H__
>> > -
>> > -struct drm_fb_helper;
>> > -struct drm_fb_helper_surface_size;
>> > -struct drm_i915_gem_object;
>> > -struct drm_i915_private;
>> > -struct fb_info;
>> > -struct i915_vma;
>> > -
>> > -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *he=
lper,
>> > -			 struct drm_fb_helper_surface_size *sizes);
>> > -int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb=
_info *info,
>> > -			      struct drm_i915_gem_object *obj, struct i915_vma *vma);
>> > -
>> > -#endif
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
