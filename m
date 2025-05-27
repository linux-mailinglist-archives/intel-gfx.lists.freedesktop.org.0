Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F23AC4AB8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 10:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B35110E3F0;
	Tue, 27 May 2025 08:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNpSZXSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E0A10E3E4;
 Tue, 27 May 2025 08:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748335897; x=1779871897;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Ppv963sTB3VoID99+jeLTYQQkKn9wCXJIHOHWUDaNmU=;
 b=BNpSZXSUH4dZqzn1vdSg2As+pd4vjw4PC9q3JNHq56l7JgqFXwIpJvJy
 AsXTEFvq67ZgcYA6l3YqqEOD1JMU+LGR0WI+M1HF+Ii+6hfoqw6E9HVeh
 VkeQu5q/6sHe4qWDfvWLY86Z624YCv8elCrRrFvAMEqSAZWpiEQUkLeGX
 o5z5YlIuYqZl+EfBJM/iMfUAo4uePyZhG2UlzkMhi78oD5SbVAWNOb4J0
 wOzdwiIfd+T9Hpafp69qsTc1KU9TRaOF5gRJJyvvnoB2n6S2/IIM8A0v7
 hnc5iRwWdPrrHQz2yV/rE9R1YJgNl24I27VBUYRrWTLqQQ9J7BvGx4G90 A==;
X-CSE-ConnectionGUID: 56AMhQg1TpyKNtjaWQOIsg==
X-CSE-MsgGUID: QS00WbKJSc6HWYbYuo7BGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="72847586"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="72847586"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:51:36 -0700
X-CSE-ConnectionGUID: QuCnKXMfQnKtuLRN1O80yg==
X-CSE-MsgGUID: U0Itp2w/SqisznPA3qqdRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="142643710"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:51:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com, "Borah, Chaitanya
 Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH v2 0/3] drm/i915 & drm/xe: allocate struct intel_display
 dynamically
In-Reply-To: <cover.1747907216.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1747907216.git.jani.nikula@intel.com>
Date: Tue, 27 May 2025 11:51:31 +0300
Message-ID: <c3ac86e2a757d0f9f2f4b7c980d1c37809e18ef0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 22 May 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> v2 of [1], addressing an error path issue.

Thanks for the acks and reviews, pushed to drm-intel-next.

BR,
Jani.


>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/cover.1747822630.git.jani.nikula@intel.com
>
>
> Jani Nikula (3):
>   drm/i915/display: allocate struct intel_display dynamically
>   drm/i915: stop including display/intel_display_{core,limits}.h from
>     i915_drv.h
>   drm/xe: stop including intel_display_{core,device}.h from
>     xe_device_types.h
>
>  drivers/gpu/drm/i915/display/intel_bios.c         |  1 +
>  .../drm/i915/display/intel_display_conversion.c   |  1 +
>  .../gpu/drm/i915/display/intel_display_device.c   | 10 +++++++++-
>  .../gpu/drm/i915/display/intel_display_driver.c   |  1 +
>  .../gpu/drm/i915/display/intel_display_reset.c    |  1 +
>  drivers/gpu/drm/i915/display/intel_display_rpm.c  |  1 +
>  drivers/gpu/drm/i915/display/intel_display_rps.c  |  1 +
>  drivers/gpu/drm/i915/display/intel_dpt.c          |  1 +
>  drivers/gpu/drm/i915/display/intel_encoder.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c           |  1 +
>  drivers/gpu/drm/i915/display/intel_fb_bo.c        |  1 +
>  drivers/gpu/drm/i915/display/intel_fb_pin.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_hotplug.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_opregion.c     |  1 +
>  .../gpu/drm/i915/display/intel_plane_initial.c    |  1 +
>  .../drm/i915/gem/selftests/i915_gem_client_blt.c  |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c             |  2 ++
>  drivers/gpu/drm/i915/gvt/cmd_parser.c             |  1 +
>  drivers/gpu/drm/i915/gvt/display.c                |  1 +
>  drivers/gpu/drm/i915/gvt/edid.c                   |  1 +
>  drivers/gpu/drm/i915/gvt/fb_decoder.c             |  1 +
>  drivers/gpu/drm/i915/gvt/handlers.c               |  1 +
>  drivers/gpu/drm/i915/i915_driver.c                | 15 +++++++++------
>  drivers/gpu/drm/i915/i915_drv.h                   |  8 +++-----
>  drivers/gpu/drm/i915/i915_irq.c                   |  1 +
>  drivers/gpu/drm/i915/i915_switcheroo.c            |  2 ++
>  drivers/gpu/drm/i915/intel_clock_gating.c         |  1 +
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c       |  1 +
>  drivers/gpu/drm/i915/intel_uncore.c               |  2 ++
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c  | 13 ++++++++++---
>  drivers/gpu/drm/i915/soc/intel_dram.c             |  2 ++
>  drivers/gpu/drm/i915/soc/intel_gmch.c             |  2 ++
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c       |  1 +
>  drivers/gpu/drm/xe/display/xe_display.c           |  8 +++++---
>  drivers/gpu/drm/xe/display/xe_display_rpm.c       |  1 +
>  drivers/gpu/drm/xe/display/xe_display_wa.c        |  2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c            |  1 +
>  drivers/gpu/drm/xe/display/xe_plane_initial.c     |  1 +
>  drivers/gpu/drm/xe/display/xe_tdf.c               |  4 ++--
>  drivers/gpu/drm/xe/xe_device_types.h              |  7 +------
>  41 files changed, 78 insertions(+), 28 deletions(-)

-- 
Jani Nikula, Intel
