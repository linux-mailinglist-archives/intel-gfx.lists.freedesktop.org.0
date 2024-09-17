Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A79297B2AE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CC610E4A1;
	Tue, 17 Sep 2024 16:14:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VIQZDGK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3393810E495;
 Tue, 17 Sep 2024 16:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589651; x=1758125651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=76jDZ/9qXA1W3CpnSfcYgmlwRqDwfU8lr68bV7kK2bo=;
 b=VIQZDGK+/y+0Gaee25OHUAiSSkSszJUc6tVHlaREmDjIYNW8NkL4RZcz
 RQcE3oEVaRIOJ3SszDrLRtU7Zwm50LBE0vk5t9KfFYy7IUB6CEw1AiIAc
 0HA2KunW+fTWOUUtQBhutjqrGPpsEbyNzeIKm68CGs//QXtsajSFeoFAz
 De8Qem7xTez2YOgCLAngN1qyxWYiOBqmUqeECNToERtsFtekdM8Uf44y6
 v6Uo1yptfQVlPsh/FgyRgOLyS66RQmc1j6zmXL+6+z4pMbtOrw1gsC+Ol
 YTYs6GwpsU5wdu2C9jb5pYgo8TFTrjzkvDFxnL52LAFvCYmTRKDTw/kN7 A==;
X-CSE-ConnectionGUID: 2K6OOH0hR5K/+oyUENsufg==
X-CSE-MsgGUID: bGJCykxuTTKbRqLE6pxqOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990160"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990160"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:10 -0700
X-CSE-ConnectionGUID: TYB7wffMRRminURAp5bJ6g==
X-CSE-MsgGUID: SUvlWpZWSlitwisHlt6Byg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69348754"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 00/22] drm/i915 & drm/xe: kill off -Ddrm_i915_gem_object=xe_bo
Date: Tue, 17 Sep 2024 19:13:39 +0300
Message-Id: <cover.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The xe Makefile defines -Ddrm_i915_gem_object=xe_bo to build i915
display for xe. This lengthy series removes that hack.

This is based on two ideas:

1) Always use struct drm_gem_object instead of struct
   drm_i915_gem_object or xe_bo in code that gets built for both i915
   and xe.

2) Add intel_bo_*() abstraction functions for things that need i915 and
   xe specific implementations. There's one shared intel_bo.h in i915
   display, and separate intel_bo.c in i915 and xe. Also these functions
   operate on struct drm_gem_object.

The rest is just gradual conversion and cleanup.

There'll still be some code remaining in i915 display that gets only
built for i915, and continues to use struct drm_i915_gem_object. Maybe
we'll want to continue the conversion with them too.

The most important end result is that there's no longer confusion what
struct drm_i915_gem_object actually means. It means just that, you can't
accidentally use it in xe code, and it's never xe_bo anymore.


BR,
Jani.

Jani Nikula (22):
  drm/i915/display: start a buffer object abstraction layer
  drm/i915/display: convert intel_atomic_plane.c to struct
    drm_gem_object
  drm/i915/fb: convert parts of intel_fb.c to struct drm_gem_object
  drm/i915/fbdev: convert intel_fbdev.c to struct drm_gem_object
  drm/i915/display: convert skl_universal_plane.c to struct
    drm_gem_object
  drm/i915/fb: convert intel_framebuffer_init() to struct drm_gem_object
  drm/i915/fb: convert intel_fb_bo_lookup_valid_bo() to struct
    drm_gem_object
  drm/i915/fb: convert intel_fb_bo_framebuffer_init() to struct
    drm_i915_gem_object
  drm/i915/fb: convert intel_fb_bo_framebuffer_fini() to struct
    drm_i915_gem_object
  drm/xe/display: use correct bo type in intel_fbdev_fb_alloc()
  drm/i915/fb: convert intel_framebuffer_create() to struct
    drm_gem_object
  drm/xe/display: stop using intel_fb_obj() in xe_fb_pin.c
  drm/i915/display: add intel_bo_read_from_page() and use it
  drm/i915/display: add intel_bo_get/set_frontbuffer() and use them
  drm/i915/frontbuffer: convert intel_frontbuffer_get() to struct
    drm_gem_object
  drm/i915/frontbuffer: convert frontbuffer->obj to struct
    drm_gem_object
  drm/i915/display: add intel_bo_describe() and use it
  drm/i915/fb: remove intel_fb_obj()
  drm/i915/display: clean up some gem/ includes
  drm/xe/compat: remove a bunch of compat gem headers
  drm/xe: remove a number of superfluous compat macros
  drm/xe: eradicate -Ddrm_i915_gem_object=xe_bo

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  7 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c | 12 +--
 drivers/gpu/drm/i915/display/intel_bo.c       | 59 +++++++++++++
 drivers/gpu/drm/i915/display/intel_bo.h       | 27 ++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 -
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++-
 drivers/gpu/drm/i915/display/intel_display.h  |  4 -
 .../drm/i915/display/intel_display_debugfs.c  |  6 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 56 ++++++-------
 drivers/gpu/drm/i915/display/intel_fb.h       |  8 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c    |  9 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.h    | 10 +--
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 14 ++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 28 +++----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 63 +++++++-------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  5 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  5 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  4 +-
 drivers/gpu/drm/xe/Makefile                   |  2 +-
 .../compat-i915-headers/gem/i915_gem_lmem.h   |  1 -
 .../compat-i915-headers/gem/i915_gem_mman.h   | 17 ----
 .../compat-i915-headers/gem/i915_gem_object.h | 64 --------------
 .../gem/i915_gem_object_frontbuffer.h         | 12 ---
 .../gem/i915_gem_object_types.h               | 11 ---
 .../drm/xe/compat-i915-headers/i915_debugfs.h | 14 ----
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
 .../xe/compat-i915-headers/pxp/intel_pxp.h    | 10 +--
 drivers/gpu/drm/xe/display/intel_bo.c         | 84 +++++++++++++++++++
 drivers/gpu/drm/xe/display/intel_fb_bo.c      | 19 +++--
 drivers/gpu/drm/xe/display/intel_fb_bo.h      | 24 ------
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 12 +--
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 12 ++-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
 drivers/gpu/drm/xe/xe_bo.h                    |  2 -
 drivers/gpu/drm/xe/xe_bo_types.h              |  3 -
 43 files changed, 341 insertions(+), 303 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_bo.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_lmem.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_mman.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_frontbuffer.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_debugfs.h
 create mode 100644 drivers/gpu/drm/xe/display/intel_bo.c
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fb_bo.h

-- 
2.39.2

