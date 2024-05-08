Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1464F8C0546
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 21:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A561112954;
	Wed,  8 May 2024 19:53:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+XjIsBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1718410FA66;
 Wed,  8 May 2024 19:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715197979; x=1746733979;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Tzm1qKauiy8RtEvAqiYTEOjZR2bwNJmDrX7Uf+muXrM=;
 b=A+XjIsBI23s1WDRgS5UJkX0uLmpU3kTMCpQRlBwOiKLZbWlxh5OprLYH
 2iFgoXOD9ZUqAri/tHfio+irjTlQPBxY7eoAwRGsw5VGPBMmD7zTfBPkO
 QJMaXW6hVg/vn3g3Deb1Ch4e0K3IlPZpX5mlzaHA3QaFvf5CIyeDASeIz
 yAITY0AWef/ubJP2CcBb8WDkM3ZInNAkGZpMVE58Te5Xh9aaFDkF8IW9c
 Fg72OZafXKAbGs85Quiqd2Zv0Foy/kbxJaQusWMDekOpWFaZtLWqCZ8hD
 a/lN/Etp9/PFno2oYTE9ae6Xav/wEVmnF1zgd7yvn84AObmKkxoxs0zCh g==;
X-CSE-ConnectionGUID: 23rjcyugTiS7IKEkYGg7fw==
X-CSE-MsgGUID: RoWsyEMFS4aGVASo7cVeVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="28597867"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28597867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 12:52:58 -0700
X-CSE-ConnectionGUID: +pkBIK0LQAa54+tdXNwQDg==
X-CSE-MsgGUID: ZThHZHmbSNqegf1f13SE7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28938153"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 May 2024 12:52:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 May 2024 22:52:54 +0300
Date: Wed, 8 May 2024 22:52:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH] drm/xe: Nuke xe's copy of intel_fbdev_fb.h
Message-ID: <ZjvYFkUbsP_hXOG4@intel.com>
References: <20240506183331.7720-1-ville.syrjala@linux.intel.com>
 <87msp2knor.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87msp2knor.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Tue, May 07, 2024 at 11:53:40AM +0300, Jani Nikula wrote:
> On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > For some reason xe and i915 each have an identical (fortunately)
> > copy of intel_fbdev_fb.h. The xe copy actually only gets included
> > by xe's intel_fbdev_fb.c, and the i915 copy by everyone else,
> > include intel_fbdev.c which is the actual caller of the
> > functions declared in the header.
> >
> > This means the xe and i915 headers are free to define/declare
> > completely incompatible things and the build would still succeed
> > as long as the symbol names match.
> >
> > That is not a good thing, so let's nuke xe's copy of the header
> > so that everyone will use the same header, and be forced to
> > agree on the same API/ABI.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

I was going to push this to drm-xe-next, but I should actually
push it to drm-intel-next since I'll be massaging this stuff
there.

xe maintainers, ack for merging via drm-intel-next?

> 
> > ---
> >  drivers/gpu/drm/xe/display/intel_fbdev_fb.h | 21 ---------------------
> >  1 file changed, 21 deletions(-)
> >  delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.h
> >
> > diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h b/drivers/gpu/drm/xe/display/intel_fbdev_fb.h
> > deleted file mode 100644
> > index ea186772e0bb..000000000000
> > --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h
> > +++ /dev/null
> > @@ -1,21 +0,0 @@
> > -/* SPDX-License-Identifier: MIT */
> > -/*
> > - * Copyright © 2023 Intel Corporation
> > - */
> > -
> > -#ifndef __INTEL_FBDEV_FB_H__
> > -#define __INTEL_FBDEV_FB_H__
> > -
> > -struct drm_fb_helper;
> > -struct drm_fb_helper_surface_size;
> > -struct drm_i915_gem_object;
> > -struct drm_i915_private;
> > -struct fb_info;
> > -struct i915_vma;
> > -
> > -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > -			 struct drm_fb_helper_surface_size *sizes);
> > -int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
> > -			      struct drm_i915_gem_object *obj, struct i915_vma *vma);
> > -
> > -#endif
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
