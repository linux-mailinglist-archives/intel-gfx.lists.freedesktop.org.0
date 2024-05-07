Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61A88BDD82
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 10:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412AB10EE8A;
	Tue,  7 May 2024 08:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UfKjnoRk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A622410EE8A;
 Tue,  7 May 2024 08:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715072025; x=1746608025;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3xSgeoUt3m335vs1T5H4Son3zpu/jhpJBDPuFx8yENI=;
 b=UfKjnoRk5eA8NwEaZNy2/6iW4hshrhCKBkw7XFiB2KieZjaYOFrbxDil
 EfwhcGW2YHC66h8wu6/SPVWg+H/kW9t9H5daszNJLq+kIegFSkec7um7P
 xtA+fY5A3gB+1qjFrcv6Nc0ssgKfeiw0pB3ZTuS5FdaEsIPyChAWkXXBM
 Jz63DwgHyiShDPZifmXMB5UW1uxCPoFe9DrwiWz9llGfKcbRdz9p/SJ9t
 On1mEcP72qBViM13mt96Mrnl6lDU3k2NX4XziWBxtURm5vIPLG6UviY/5
 IRJ8mVRvSjfWyJw5MpxWw8KdCKARQy7/qTtonKajuVNNIWUhmslsew8xZ g==;
X-CSE-ConnectionGUID: R4WSfnhITHipXtYxn0gzhA==
X-CSE-MsgGUID: 5f9u4jc8QKuir6kUV8Xmxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="13804651"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="13804651"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 01:53:44 -0700
X-CSE-ConnectionGUID: HdKGJCrsQ1SM6JmclflXDQ==
X-CSE-MsgGUID: UzThCO6ZTy67A+hytmfOsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28416487"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 01:53:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe: Nuke xe's copy of intel_fbdev_fb.h
In-Reply-To: <20240506183331.7720-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506183331.7720-1-ville.syrjala@linux.intel.com>
Date: Tue, 07 May 2024 11:53:40 +0300
Message-ID: <87msp2knor.fsf@intel.com>
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

On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> For some reason xe and i915 each have an identical (fortunately)
> copy of intel_fbdev_fb.h. The xe copy actually only gets included
> by xe's intel_fbdev_fb.c, and the i915 copy by everyone else,
> include intel_fbdev.c which is the actual caller of the
> functions declared in the header.
>
> This means the xe and i915 headers are free to define/declare
> completely incompatible things and the build would still succeed
> as long as the symbol names match.
>
> That is not a good thing, so let's nuke xe's copy of the header
> so that everyone will use the same header, and be forced to
> agree on the same API/ABI.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.h | 21 ---------------------
>  1 file changed, 21 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.h
>
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h b/drivers/gpu/dr=
m/xe/display/intel_fbdev_fb.h
> deleted file mode 100644
> index ea186772e0bb..000000000000
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#ifndef __INTEL_FBDEV_FB_H__
> -#define __INTEL_FBDEV_FB_H__
> -
> -struct drm_fb_helper;
> -struct drm_fb_helper_surface_size;
> -struct drm_i915_gem_object;
> -struct drm_i915_private;
> -struct fb_info;
> -struct i915_vma;
> -
> -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helpe=
r,
> -			 struct drm_fb_helper_surface_size *sizes);
> -int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_in=
fo *info,
> -			      struct drm_i915_gem_object *obj, struct i915_vma *vma);
> -
> -#endif

--=20
Jani Nikula, Intel
