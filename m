Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FBDA5CB92
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887FD10E316;
	Tue, 11 Mar 2025 17:06:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dxoCd6Tz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC93E10E29C;
 Tue, 11 Mar 2025 17:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712781; x=1773248781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/gtI1ViO4Kn9jAZ7UZDBUlThZDHROnv7no2u4Wi3HFM=;
 b=dxoCd6TzdC9vVnvEomr717sbhv1D+KIFX5zeXvcsSChzwyQLPGAJcFLd
 S4bsTOq9cxhWV/7vYjDzswWJFKy52OTKLop2v6rWImisj5jyn/jzs9+VW
 OLjU36+ptyUBEB2teHVLMw+46Qg2YDVNq6LGcxJRFKdPPwUyjeLr4yWv/
 E83UPei7twmoQsjzm2FnzLS+gr7WKOu0fms+uF7PMKWXxGZzj7ifsicPh
 hkd3nq+NQMil113v0LqU2Jq5ibU8VM0XjCJWj5Wnpzsxs4CrLB+Likkdn
 AbAaHv0dQUP+6hOtPSnOu60EXwZsJl7fe0cwkcO6IcMXaQJ+YnITkJAxV Q==;
X-CSE-ConnectionGUID: 9ncxOoe0SNy1a79aUb577w==
X-CSE-MsgGUID: dbdsJGJDSa2Rc9Wk4n/Rpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547701"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547701"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:20 -0700
X-CSE-ConnectionGUID: O7ineGAAS8yPwQhBi6gGZg==
X-CSE-MsgGUID: QQrCD/XwTnOgxwK2ZQmuyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889087"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 0/7] drm/i915: make i915->display opaque pointer
Date: Tue, 11 Mar 2025 19:06:07 +0200
Message-Id: <cover.1741712601.git.jani.nikula@intel.com>
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

A rough idea what making struct intel_display opaque towards i915 and xe
core code looks like.

This is by no means ready, and patch 4 is still way too big. We need to
do more regular struct drm_i915_private to struct intel_display
conversions before this is feasible.

But we're getting closer.

BR,
Jani.

Jani Nikula (7):
  drm/i915/hdmi: remove inline to_i915()
  drm/i915/hotplug: use container_of() to get struct intel_display
  drm/i915: convert i915 and xe display members into pointers
  drm/i915: scripted conversion to i915->display pointer
  drm/i915: allocate struct intel_display dynamically
  drm/i915: stop including display/intel_display_core.h from i915_drv.h
  drm/xe: drop intel_display_core/device.h include from
    xe_device_types.h

 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   1 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 223 +++++++++---------
 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |  88 +++----
 .../gpu/drm/i915/display/intel_connector.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  34 +--
 .../i915/display/intel_display_conversion.c   |   3 +-
 .../drm/i915/display/intel_display_driver.c   |   1 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 150 ++++++------
 .../drm/i915/display/intel_display_reset.c    |   1 +
 .../gpu/drm/i915/display/intel_display_rps.c  |   1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  52 ++--
 drivers/gpu/drm/i915/display/intel_dpt.c      |   3 +-
 .../gpu/drm/i915/display/intel_dpt_common.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +-
 .../gpu/drm/i915/display/intel_dsb_buffer.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dsi.c      |   3 +-
 .../i915/display/intel_dsi_dcs_backlight.c    |   1 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_encoder.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |   1 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c    |   1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |   1 +
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  35 +--
 .../gpu/drm/i915/display/intel_global_state.c |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   3 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 150 ++++++------
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  98 ++++----
 drivers/gpu/drm/i915/display/intel_lvds.c     |  10 +-
 .../drm/i915/display/intel_modeset_setup.c    |  20 +-
 .../drm/i915/display/intel_modeset_verify.c   |   1 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |   8 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  12 +-
 .../drm/i915/display/intel_plane_initial.c    |   1 +
 .../gpu/drm/i915/display/intel_sprite_uapi.c  |   1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   2 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  61 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  |  98 ++++----
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   6 +-
 .../i915/gem/i915_gem_object_frontbuffer.h    |   2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   5 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   4 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   7 +-
 drivers/gpu/drm/i915/gvt/display.c            |  11 +-
 drivers/gpu/drm/i915/gvt/edid.c               |   1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   7 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  13 +-
 drivers/gpu/drm/i915/i915_driver.c            |  56 +++--
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +-
 drivers/gpu/drm/i915/i915_irq.c               |   5 +-
 drivers/gpu/drm/i915/i915_switcheroo.c        |   1 +
 drivers/gpu/drm/i915/intel_clock_gating.c     |   3 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 drivers/gpu/drm/i915/intel_uncore.c           |   1 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c         |   1 +
 drivers/gpu/drm/i915/soc/intel_gmch.c         |   1 +
 drivers/gpu/drm/i915/soc/intel_pch.c          |   1 +
 drivers/gpu/drm/xe/display/xe_display.c       |  48 ++--
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |   5 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |   3 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   1 +
 drivers/gpu/drm/xe/display/xe_tdf.c           |   1 +
 drivers/gpu/drm/xe/xe_device_types.h          |   4 +-
 78 files changed, 693 insertions(+), 634 deletions(-)

-- 
2.39.5

