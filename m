Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2842BBECF5
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 19:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2622C10E43D;
	Mon,  6 Oct 2025 17:27:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzLQz7kq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88EF610E43C;
 Mon,  6 Oct 2025 17:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759771666; x=1791307666;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ls4POkLn04KSl8m99lAK0mOOOrI0VrrK1myxQizULTc=;
 b=IzLQz7kqbLJkGkT4yqpaBaXl3q+/ardNjs0NvfzXTRLKB3wCaf5X2j0c
 ySyVfuZP6+m356RJPoOaiaT/+tDxte2iWEVdheUIa/zlRg2T1GGYf2Cd+
 J10cagKXUDJ8Wmszs+x5/0VwTNrLmm2yfUIlDfZR7bqYlZJegcDkumAUz
 p7DiGRrLDbN02Cr+DJqnfxl9FxpIjaosoCUPHrwgwa4AY92OCsI3Opnwy
 zxbMDEmUlGN9uMhhc1AUx5ilBi+hHrJ9ki1zo/H3bitcvgsmO4+pJBajp
 s4zIr++3rtF2aMSVauORxZLc/LKjr9+zvVC+VuBreGgvF1C/kQ5LaqkXa g==;
X-CSE-ConnectionGUID: 8H9X8xISR+2PgCeDoO6JYg==
X-CSE-MsgGUID: 65WiFL6yTcy2eEiC6meRSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61658312"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="61658312"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 10:27:45 -0700
X-CSE-ConnectionGUID: NQkgCukjSZiPFknHhiTi3A==
X-CSE-MsgGUID: 8zFfax2ASiKWdEENiLYFDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="217017064"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.162])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 10:27:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/10] drm/i915/frontbuffer: Fix the intel_frontbuffer
 lifetime mess
In-Reply-To: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
Date: Mon, 06 Oct 2025 20:27:39 +0300
Message-ID: <4f71d84a7250045fcb16f0784f712cb0a8da84c6@intel.com>
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

On Mon, 06 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The attempted piecemeal intel_frontbuffer split between
> i915 and xe is not good. Redo it with a bigger shovel.

Thanks so much for doing this. I've eyeballed the code a bunch of times,
but was never really able to figure out what to do.

Acked-by: Jani Nikula <jani.nikula@intel.com>

on the whole thing. I'll also try and have a closer look for a proper
R-b.

> Ville Syrj=C3=A4l=C3=A4 (10):
>   drm/i915/overlay: Drop the DIRTYFB flush
>   drm/i915/overlay: Switchj to intel_frontbuffer_flip()
>   drm/i915/frontbuffer: Nuke intel_frontbuffer_flip_{prepare,complete}()
>   drm/i915/frontbuffer: Turn intel_bo_flush_if_display() into a
>     frontbuffer operation
>   drm/i915/frontbuffer: Handle the dirtyfb cache flush inside
>     intel_frontbuffer_flush()
>   drm/i915/frontbuffef: Split fb_tracking.lock into two
>   drm/i915/frontbuffer: Extract intel_frontbuffer_ref()
>   drm/i915/frontbuffer: Add intel_frontbuffer::display
>   drm/i915/frontbuffer: Fix intel_frontbuffer lifetime handling
>   drm/i915/gem:
>     s/i915_gem_object_get_frontbuffer/i915_gem_object_frontbuffer_lookup/
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_bo.c       |  40 +++--
>  drivers/gpu/drm/i915/display/intel_bo.h       |   8 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   5 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   3 -
>  drivers/gpu/drm/i915/display/intel_fb.c       |   1 -
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 149 +++---------------
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  18 +--
>  drivers/gpu/drm/i915/display/intel_overlay.c  |   6 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  16 +-
>  .../i915/gem/i915_gem_object_frontbuffer.c    | 103 ++++++++++++
>  .../i915/gem/i915_gem_object_frontbuffer.h    |  56 +++----
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_gem.c               |   2 +
>  drivers/gpu/drm/i915/i915_vma.c               |   8 +-
>  .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   2 -
>  drivers/gpu/drm/xe/display/intel_bo.c         |  60 +++++--
>  18 files changed, 258 insertions(+), 224 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c

--=20
Jani Nikula, Intel
