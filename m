Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCFCAC08FC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 11:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF3410ED7D;
	Thu, 22 May 2025 09:48:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qmd7IkuX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48A810ED7D;
 Thu, 22 May 2025 09:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747907332; x=1779443332;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7mjv2vo2d16LPHqmTEZ6nObbHC6UbvNkGM3q718s2ww=;
 b=Qmd7IkuXFhi/Bg8f4fQTaOeT6O32W5gWMA6G8I6QNDk6oadO7zzExMy7
 RrtAcdUZWDxN+B0H8nMPDgZJqplOcCB+crIrCbndU+eF2jpMuuKY2luCu
 B6240cyCP/Up3vCl93UEUNnCODwzywOsQG3EVVXOXQnyK9rokRPt2UhYR
 QdP0A7lgFyHxvMEdqdeRp24mIZ0TO+PIrTlHQYUJNsWO7hzzRmPVAn2AZ
 zTe+Ics34bRNbnro/4sfE6r1rUWPDsBKaQPwdgZJQq8hwIJHtraU9a7rn
 afhcHSR3jbHBkEd9ykVYzPgFpEGCClJut9j3uePBmikEpq3PgtnKqh5Ah g==;
X-CSE-ConnectionGUID: ZpE0FLimSKWquRHITlG5Pw==
X-CSE-MsgGUID: jxyBngmlRwaLoUXkqblt1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="50025548"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="50025548"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:48:51 -0700
X-CSE-ConnectionGUID: lJEVysBXSVulAMALddLkTg==
X-CSE-MsgGUID: oYvjD6kyRTegomkWcpv1eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141044297"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:48:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v2 0/3] drm/i915 & drm/xe: allocate struct intel_display
 dynamically
Date: Thu, 22 May 2025 12:48:41 +0300
Message-Id: <cover.1747907216.git.jani.nikula@intel.com>
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

v2 of [1], addressing an error path issue.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1747822630.git.jani.nikula@intel.com


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
 drivers/gpu/drm/xe/display/xe_display.c           |  8 +++++---
 drivers/gpu/drm/xe/display/xe_display_rpm.c       |  1 +
 drivers/gpu/drm/xe/display/xe_display_wa.c        |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c            |  1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c     |  1 +
 drivers/gpu/drm/xe/display/xe_tdf.c               |  4 ++--
 drivers/gpu/drm/xe/xe_device_types.h              |  7 +------
 41 files changed, 78 insertions(+), 28 deletions(-)

-- 
2.39.5

