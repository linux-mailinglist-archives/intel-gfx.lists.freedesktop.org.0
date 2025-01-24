Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2989AA1BA5B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB89910E9DB;
	Fri, 24 Jan 2025 16:30:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m6lD7iaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2157A10E9D8;
 Fri, 24 Jan 2025 16:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736244; x=1769272244;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MfYNUH/iENBFXfwSeqtC5331cB0CJlnmkodnZgLm0oA=;
 b=m6lD7iaYXsQ/+SNLNPN+3NVPj3fn/ro+ES42JoHqyfHl1T6RsGQvtbVY
 mDU+U9BjsS0NzrbQOpyIARwiSBniRTonxt2hgzhmXcTYWEIgOgfCehz/3
 X6oPNoGIwwyb88rIwZ/b61k2AbVLORcGHLl3BNDn5vB0RzJKgkQZ9Be9o
 /wHqwvKRAcfS3hDQr5WbZCYAAQk8OLdEMGYPaa7W9l8vCAausLkuQ1pfD
 uQfYeNeopOFtgwnGLXzAzdJalr1V9CXrArEio2GOp2UldwWLVYZvi3EsU
 cvGE4RTfidG2q9suVSYTpTT0QXNtILUXWdpW1RgIz96R9k23O7WckW88g A==;
X-CSE-ConnectionGUID: gdBiSjjWS06Rt56gtr2Xvw==
X-CSE-MsgGUID: Zf/PebdyQYao1RVPbEza8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200425"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200425"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:30:43 -0800
X-CSE-ConnectionGUID: FIDu3K33RoShFhG8OKVr1w==
X-CSE-MsgGUID: +ApSZQwsQY+siTypHCVhJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925902"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:30:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/11] drm/i915: intel_display conversions and some debug
 improvements
Date: Fri, 24 Jan 2025 18:30:29 +0200
Message-ID: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Convert a bunch of stuff over to struct intel_display, and
finish off with a few debug print improvements.

Ville Syrjälä (11):
  drm/i915: Decouple i915_gem_dumb_create() from the display a bit
  drm/i915: Decouple intel_fb_bo.h interfaces from driver specific types
  drm/i915: Convert intel_crtc.c to struct intel_display
  drm/i915: Convert intel_fb.c to struct intel_display
  drm/i915: Convert intel_display_power_{get,put}*() to intel_display
  drm/i915: Convert i9xx_plane.c to struct intel_display
  drm/i915: Finish intel_sprite.c struct intel_display conversion
  drm/i915: Convert intel_cursor.c to struct intel_display
  drm/i915: Convert skl_univeral_plane.c to struct intel_display
  drm/i915: Use DRM_RECT_FMT & co. for plane debugs
  drm/i915: Pimp plane debugs

 drivers/gpu/drm/i915/display/g4x_dp.c         |   9 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   8 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 262 +++++------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |   6 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  24 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  65 +--
 drivers/gpu/drm/i915/display/intel_crtc.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   | 174 ++++----
 drivers/gpu/drm/i915/display/intel_cursor.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  13 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  63 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  74 +--
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |   5 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  10 +-
 .../drm/i915/display/intel_display_power.c    |  85 ++--
 .../drm/i915/display/intel_display_power.h    |  54 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  55 ++-
 drivers/gpu/drm/i915/display/intel_fb.c       | 249 ++++++-----
 drivers/gpu/drm/i915/display/intel_fb.h       |  11 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c    |  18 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
 .../drm/i915/display/intel_modeset_setup.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   5 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  18 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 110 ++---
 drivers/gpu/drm/i915/display/intel_sprite.h   |   6 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  78 ++--
  drivers/gpu/drm/i915/display/intel_vdsc.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   5 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  13 +-
 .../drm/i915/display/skl_universal_plane.c    | 422 +++++++++---------
 .../drm/i915/display/skl_universal_plane.h    |   8 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   5 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   6 +-
 drivers/gpu/drm/xe/display/intel_fb_bo.c      |   7 +-
 51 files changed, 1019 insertions(+), 985 deletions(-)

-- 
2.45.3

