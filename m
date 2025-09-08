Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB94B49532
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 18:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0641210E56A;
	Mon,  8 Sep 2025 16:27:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhOBJMku";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F57910E56A;
 Mon,  8 Sep 2025 16:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757348868; x=1788884868;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kk+d4C21i4Odk8WNXJxAAsjgQON2yuupusjPpVZRt9w=;
 b=lhOBJMkuz3+rdsVdeRBERMKGvtmEV9LGov6+ZReLYHVM1vAaivmKNW5x
 5mAVpSxCoA4+6kDTQ8N6g3xOrOQQztXz/dJVsg6oYl6oMCZz8jopFTqcb
 BcmKSkXCWoJj9Ft4GvuiJ9Y4bZN5P9op4c0y0/P2xgrd+xG8l44i8kaM6
 xAVlRGkTBKHdZDPWXTZpGBkrKKJyMqa0xm+Ubak5iIj2XCwKgxqIakmFO
 m4RiSndHYJZXW1oPUEZa5w0VM/um3fbye1MIuV7/jJntpfeqqE7fk4WPt
 JsYqzqYhYFLbqYzADix7lW/pwocmqcUAHyMU7/cuBTPNY+bcquHgBNT0i Q==;
X-CSE-ConnectionGUID: D5VChXmYSyqBzBck0tp3iw==
X-CSE-MsgGUID: b1iKBeXHSY6qMq5SulDx/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="71032659"
X-IronPort-AV: E=Sophos;i="6.18,249,1751266800"; d="scan'208";a="71032659"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 09:27:47 -0700
X-CSE-ConnectionGUID: 6iqf7wptSauha62e/kwLzQ==
X-CSE-MsgGUID: vYijp1prS6Ce9796NT2F6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,249,1751266800"; d="scan'208";a="196475344"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 09:27:44 -0700
Date: Mon, 8 Sep 2025 19:27:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <aL8D_dRE5nslOAUi@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
 <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 08, 2025 at 06:10:56PM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2025-09-08 kl. 16:19, skrev Lucas De Marchi:
> > On Mon, Sep 08, 2025 at 03:55:18PM +0300, Jani Nikula wrote:
> >> On Fri, 05 Sep 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >>> On Wed, Sep 03, 2025 at 11:31:59PM +0300, Jani Nikula wrote:
> >>>> Add new helper intel_fbdev_fb_pitch_align() in preparation for further
> >>>> refactoring. The alignment is different for i915 and xe.
> >>>>
> >>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>>> ---
> >>>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 8 ++++++--
> >>>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +++
> >>>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 8 ++++++--
> >>>>  3 files changed, 15 insertions(+), 4 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >>>> index 9c557917d781..d1c03d7b9bdc 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >>>> @@ -13,6 +13,11 @@
> >>>>  #include "intel_fb.h"
> >>>>  #include "intel_fbdev_fb.h"
> >>>>
> >>>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
> >>>> +{
> >>>> +    return ALIGN(stride, 64);
> >>>> +}
> >>>> +
> >>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> >>>>                             struct drm_fb_helper_surface_size *sizes)
> >>>>  {
> >>>> @@ -30,8 +35,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> >>>>      mode_cmd.width = sizes->surface_width;
> >>>>      mode_cmd.height = sizes->surface_height;
> >>>>
> >>>> -    mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
> >>>> -                    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
> >>>> +    mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
> >>>>      mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
> >>>>                                sizes->surface_depth);
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> >>>> index 668ae355f5e5..caeb543d5efc 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> >>>> @@ -6,6 +6,8 @@
> >>>>  #ifndef __INTEL_FBDEV_FB_H__
> >>>>  #define __INTEL_FBDEV_FB_H__
> >>>>
> >>>> +#include <linux/types.h>
> >>>> +
> >>>>  struct drm_device;
> >>>>  struct drm_fb_helper_surface_size;
> >>>>  struct drm_gem_object;
> >>>> @@ -13,6 +15,7 @@ struct fb_info;
> >>>>  struct i915_vma;
> >>>>  struct intel_display;
> >>>>
> >>>> +u32 intel_fbdev_fb_pitch_align(u32 stride);
> >>>>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
> >>>>                             struct drm_fb_helper_surface_size *sizes);
> >>>>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> >>>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >>>> index bafca1059a40..fd2c40020eea 100644
> >>>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >>>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >>>> @@ -15,6 +15,11 @@
> >>>>
> >>>>  #include <generated/xe_wa_oob.h>
> >>>>
> >>>> +u32 intel_fbdev_fb_pitch_align(u32 stride)
> >>>> +{
> >>>> +    return ALIGN(stride, XE_PAGE_SIZE);
> >>>
> >>> I think someone needs to explain what the heck this extra alignment
> >>> is trying to achieve? I suspect it just needs to get nuked.
> >>
> >> That would indeed be great, and allow even further cleanup. I'm just
> >> trying to find the common parts here, and not so much dig into every
> >> little detail that differs.
> >>
> >> I did git blame this while writing the patch, and it's all in the big xe
> >> driver enabling commit. I'm not sure where it comes from.
> >>
> >> Cc: Maarten, any ideas?
> > 
> > It doesn't help much, but https://lore.kernel.org/intel-xe/20231114110056.2423853-5-jouni.hogander@intel.com/
> > was the first time this align got added.
> > 
> > Adding some people to Cc.
> > 
> > Lucas De Marchi
> 
> If I really recall correctly, it was to ensure size was a multiple of 4k and dumb bo allocation would not fail.
> This was at the very start of xe enabling.
> 
> i915 bo alloc allows any size, xe is much stricter. If it works with the hack removed and the bo gets 64k aligned 
> on discrete, then this probably can be dropped.

It's aligning stride, not the size. So doesn't make sense. The only
time you need page alignment for stride is for remapping, which is
handled correctly by i915 in the dumb bo codepath and not handled at all
by xe as usual.

I suspect what we really should do for the fbdev allocation is to use
the dump bo code, and make sure that code works the same way for i915
and xe.

-- 
Ville Syrjälä
Intel
