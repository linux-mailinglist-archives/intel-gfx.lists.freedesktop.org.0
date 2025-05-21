Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51255ABF169
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 12:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E52D10E748;
	Wed, 21 May 2025 10:21:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clp0oQXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419F010E73E;
 Wed, 21 May 2025 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747822916; x=1779358916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Up/LlQ8chCze0OAKBrArS6sMNWTyLwCK88cZyScocRo=;
 b=clp0oQXRb84shlC3zFQvarwlKOrlSxl1fTjPUqYIwNM32RRLMQ7jpZMm
 aU7mzLfENElFxQGZTevOMetkbM2k7zb+XR3/rczJ5G/z3vAi5exBgeXaL
 M8ddCdQLrXpVoPK14DXkA5T85VozOWTvatlkC/JriOKGY9yJtiyEWyV15
 nLzSzjIeyMmrFYnxXvbAP738jxUGGH2YAFIDPJ6Ce+odChG+Ude/fc4qr
 SbFmRyi3tsAaINeLBs+ldTlEwcbyQreaUPQLgxIXg7akA4NWcxIoKuTY2
 ly36UkXg8mh/+ztpNJUwGSqN3kkX/oxPwJI9NE3rPCJ8ms2IQUceD5glD A==;
X-CSE-ConnectionGUID: 55j3u2hzT/CCwmfblaemAw==
X-CSE-MsgGUID: pGsOqPGJQBqYaLS4AkUf1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49853403"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49853403"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 03:21:55 -0700
X-CSE-ConnectionGUID: GbGUpxNRS62zH3f3aGyXdg==
X-CSE-MsgGUID: I1/FbnwwSZqErseq6IyjBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="141058927"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.174])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 03:21:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 0/3] drm/i915 & drm/xe: allocate struct intel_display
 dynamically
Date: Wed, 21 May 2025 13:21:45 +0300
Message-Id: <cover.1747822630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Allocate struct intel_display dynamically in
intel_display_device_probe(), and make i915->display and xe->display
opaque pointers to most of the non-display parts of the drivers.

The guts of struct intel_display is still accessed directly by some
non-display code, but with the explicit include of the
intel_display_core.h and other display headers, so it's much more
limited than before.

This should also give us a nice boost in incremental builds, as the
entire xe and i915 drivers don't need to be rebuilt when display headers
change.

BR,
Jani.


Jani Nikula (3):
  drm/i915/display: allocate struct intel_display dynamically
  drm/i915: stop including display/intel_display_{core,limits}.h from
    i915_drv.h
  drm/xe: stop including intel_display_{core,device}.h from
    xe_device_types.h

 drivers/gpu/drm/i915/display/intel_bios.c         |  1 +
 .../drm/i915/display/intel_display_conversion.c   |  1 +
 .../gpu/drm/i915/display/intel_display_device.c   | 10 +++++++++-
 .../gpu/drm/i915/display/intel_display_driver.c   |  1 +
 .../gpu/drm/i915/display/intel_display_reset.c    |  1 +
 drivers/gpu/drm/i915/display/intel_display_rpm.c  |  1 +
 drivers/gpu/drm/i915/display/intel_display_rps.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dpt.c          |  1 +
 drivers/gpu/drm/i915/display/intel_encoder.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c           |  1 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c        |  1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c       |  1 +
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c     |  1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c      |  1 +
 drivers/gpu/drm/i915/display/intel_opregion.c     |  1 +
 .../gpu/drm/i915/display/intel_plane_initial.c    |  1 +
 .../drm/i915/gem/selftests/i915_gem_client_blt.c  |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c             |  2 ++
 drivers/gpu/drm/i915/gvt/cmd_parser.c             |  1 +
 drivers/gpu/drm/i915/gvt/display.c                |  1 +
 drivers/gpu/drm/i915/gvt/edid.c                   |  1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c             |  1 +
 drivers/gpu/drm/i915/gvt/handlers.c               |  1 +
 drivers/gpu/drm/i915/i915_driver.c                | 15 +++++++++------
 drivers/gpu/drm/i915/i915_drv.h                   |  8 +++-----
 drivers/gpu/drm/i915/i915_irq.c                   |  1 +
 drivers/gpu/drm/i915/i915_switcheroo.c            |  2 ++
 drivers/gpu/drm/i915/intel_clock_gating.c         |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c       |  1 +
 drivers/gpu/drm/i915/intel_uncore.c               |  2 ++
 drivers/gpu/drm/i915/selftests/mock_gem_device.c  | 13 ++++++++++---
 drivers/gpu/drm/i915/soc/intel_dram.c             |  2 ++
 drivers/gpu/drm/i915/soc/intel_gmch.c             |  2 ++
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c       |  1 +
 drivers/gpu/drm/xe/display/xe_display.c           | 12 ++++++++----
 drivers/gpu/drm/xe/display/xe_display_rpm.c       |  1 +
 drivers/gpu/drm/xe/display/xe_display_wa.c        |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c            |  1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c     |  1 +
 drivers/gpu/drm/xe/display/xe_tdf.c               |  4 ++--
 drivers/gpu/drm/xe/xe_device_types.h              |  7 +------
 41 files changed, 81 insertions(+), 29 deletions(-)

-- 
2.39.5

