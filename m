Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9C797BC4B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 14:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A0F10E58E;
	Wed, 18 Sep 2024 12:34:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/93vq+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B5310E58E;
 Wed, 18 Sep 2024 12:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726662891; x=1758198891;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1fO0zEJdsJ9GjfNqIZCofpTkr6EaBJsW2Sl8ZSyhmxc=;
 b=V/93vq+8k21Y0mJZy03QZiBK80UpENz9ltO/0J4alFyWIJZL6RlCYKme
 f+OgQfZDlXyjWIl7IFcaJq2kjKXaOnAIrN1qM1g5OShrlpdrWIiNpzF8r
 YH8V7ggjpZvCTNSyLxy4d45CFwEuO0AaVhnwWkWLTlIVdVEIxBmRS/lws
 SnIXLnA5G6oAWMQKYnAc3jKSeZi1h43mLUPJLsUy3RcoNjCnayiFnwOLp
 YquQ5i/1C4wC0jAWe0uQcjOPnf7tZ5wqYMPgvMb7I+RihikbPX02Vyz+5
 Q5SHM3pZBBujfMjnVDhwNkHbfsuuQcfcwyszaYBa7hp8eCDLsMqBj2OyA g==;
X-CSE-ConnectionGUID: y4guCDcWTVCmcr52cmnHgQ==
X-CSE-MsgGUID: lTgZd00oSUW3Uv2kUUggEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="43090425"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="43090425"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:34:51 -0700
X-CSE-ConnectionGUID: uNwog8V4Sz++l4AYfhRAZg==
X-CSE-MsgGUID: 6aeqwr01RN+EgunpD0ES3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="74108630"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:34:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 00/22] drm/i915 & drm/xe: kill off
 -Ddrm_i915_gem_object=xe_bo
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726589119.git.jani.nikula@intel.com>
Date: Wed, 18 Sep 2024 15:34:45 +0300
Message-ID: <87jzf9b0nu.fsf@intel.com>
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

On Tue, 17 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> The xe Makefile defines -Ddrm_i915_gem_object=xe_bo to build i915
> display for xe. This lengthy series removes that hack.
>
> This is based on two ideas:
>
> 1) Always use struct drm_gem_object instead of struct
>    drm_i915_gem_object or xe_bo in code that gets built for both i915
>    and xe.
>
> 2) Add intel_bo_*() abstraction functions for things that need i915 and
>    xe specific implementations. There's one shared intel_bo.h in i915
>    display, and separate intel_bo.c in i915 and xe. Also these functions
>    operate on struct drm_gem_object.
>
> The rest is just gradual conversion and cleanup.
>
> There'll still be some code remaining in i915 display that gets only
> built for i915, and continues to use struct drm_i915_gem_object. Maybe
> we'll want to continue the conversion with them too.
>
> The most important end result is that there's no longer confusion what
> struct drm_i915_gem_object actually means. It means just that, you can't
> accidentally use it in xe code, and it's never xe_bo anymore.

Rodrigo, Lucas, ack for merging this via drm-intel-next?

BR,
Jani.


>
>
> BR,
> Jani.
>
> Jani Nikula (22):
>   drm/i915/display: start a buffer object abstraction layer
>   drm/i915/display: convert intel_atomic_plane.c to struct
>     drm_gem_object
>   drm/i915/fb: convert parts of intel_fb.c to struct drm_gem_object
>   drm/i915/fbdev: convert intel_fbdev.c to struct drm_gem_object
>   drm/i915/display: convert skl_universal_plane.c to struct
>     drm_gem_object
>   drm/i915/fb: convert intel_framebuffer_init() to struct drm_gem_object
>   drm/i915/fb: convert intel_fb_bo_lookup_valid_bo() to struct
>     drm_gem_object
>   drm/i915/fb: convert intel_fb_bo_framebuffer_init() to struct
>     drm_i915_gem_object
>   drm/i915/fb: convert intel_fb_bo_framebuffer_fini() to struct
>     drm_i915_gem_object
>   drm/xe/display: use correct bo type in intel_fbdev_fb_alloc()
>   drm/i915/fb: convert intel_framebuffer_create() to struct
>     drm_gem_object
>   drm/xe/display: stop using intel_fb_obj() in xe_fb_pin.c
>   drm/i915/display: add intel_bo_read_from_page() and use it
>   drm/i915/display: add intel_bo_get/set_frontbuffer() and use them
>   drm/i915/frontbuffer: convert intel_frontbuffer_get() to struct
>     drm_gem_object
>   drm/i915/frontbuffer: convert frontbuffer->obj to struct
>     drm_gem_object
>   drm/i915/display: add intel_bo_describe() and use it
>   drm/i915/fb: remove intel_fb_obj()
>   drm/i915/display: clean up some gem/ includes
>   drm/xe/compat: remove a bunch of compat gem headers
>   drm/xe: remove a number of superfluous compat macros
>   drm/xe: eradicate -Ddrm_i915_gem_object=xe_bo
>
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  7 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 12 +--
>  drivers/gpu/drm/i915/display/intel_bo.c       | 59 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_bo.h       | 27 ++++++
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  2 -
>  drivers/gpu/drm/i915/display/intel_display.c  | 12 ++-
>  drivers/gpu/drm/i915/display/intel_display.h  |  4 -
>  .../drm/i915/display/intel_display_debugfs.c  |  6 +-
>  drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 56 ++++++-------
>  drivers/gpu/drm/i915/display/intel_fb.h       |  8 +-
>  drivers/gpu/drm/i915/display/intel_fb_bo.c    |  9 +-
>  drivers/gpu/drm/i915/display/intel_fb_bo.h    | 10 +--
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 14 ++--
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 28 +++----
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +-
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 63 +++++++-------
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  5 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
>  .../drm/i915/display/intel_plane_initial.c    |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    |  5 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          |  4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.h          |  4 +-
>  drivers/gpu/drm/xe/Makefile                   |  2 +-
>  .../compat-i915-headers/gem/i915_gem_lmem.h   |  1 -
>  .../compat-i915-headers/gem/i915_gem_mman.h   | 17 ----
>  .../compat-i915-headers/gem/i915_gem_object.h | 64 --------------
>  .../gem/i915_gem_object_frontbuffer.h         | 12 ---
>  .../gem/i915_gem_object_types.h               | 11 ---
>  .../drm/xe/compat-i915-headers/i915_debugfs.h | 14 ----
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
>  .../xe/compat-i915-headers/pxp/intel_pxp.h    | 10 +--
>  drivers/gpu/drm/xe/display/intel_bo.c         | 84 +++++++++++++++++++
>  drivers/gpu/drm/xe/display/intel_fb_bo.c      | 19 +++--
>  drivers/gpu/drm/xe/display/intel_fb_bo.h      | 24 ------
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 12 +--
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        | 12 ++-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
>  drivers/gpu/drm/xe/xe_bo.h                    |  2 -
>  drivers/gpu/drm/xe/xe_bo_types.h              |  3 -
>  43 files changed, 341 insertions(+), 303 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_bo.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_bo.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_lmem.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_mman.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_frontbuffer.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_debugfs.h
>  create mode 100644 drivers/gpu/drm/xe/display/intel_bo.c
>  delete mode 100644 drivers/gpu/drm/xe/display/intel_fb_bo.h

-- 
Jani Nikula, Intel
