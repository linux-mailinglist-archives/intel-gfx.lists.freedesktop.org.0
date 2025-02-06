Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEEBA2B1B7
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A9610E306;
	Thu,  6 Feb 2025 18:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HKzKpSDc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A873410E306;
 Thu,  6 Feb 2025 18:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868136; x=1770404136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QZiMO8h/rUOCe2LOAGLqbtEiZeCIolQ6ZMd9ZJqb810=;
 b=HKzKpSDcRBRV4lJGIDSxT2uK44aqsWB9wQUglYWBB4qKmfmNd0BUJ20o
 alkxUJbrYP1MqebfTraHGb6zZUzM1e6rG2eQbPMQUJ/tg82mjzLtTJct4
 5O2MKhHaeyjpd1SbckC7ZmA9ZMrx2D+Yvrts4Cr5l5d2o7fkN9dM0sULh
 WHCF2ZlXH6SPgAOGqDWGjpG7b6RYomLMWdj1PgiaGbeeqSRhNCOvuu+B0
 AVz1hQfhTpU7KvmIssYqZ5GR3N+aoC/fLm9XpKccSLNbAB8d7EmRqlWNa
 5QWqH66JxZOo0YtocYi0BOBi3L7litff+Zehuvmr32jUgn6RG9FMJ41Ij A==;
X-CSE-ConnectionGUID: p8TptosCR7aii3ik9I/E7w==
X-CSE-MsgGUID: EnBaeEyRR7i4w/7Sj0IhaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395029"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395029"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:55:36 -0800
X-CSE-ConnectionGUID: NjScquuARI6Re0Ti/i6mYg==
X-CSE-MsgGUID: 1XVDlYw+RAOkDCgHMNqD9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499523"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:55:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:55:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/12] drm/i915: intel_display conversions and some debug
 improvements 
Date: Thu,  6 Feb 2025 20:55:21 +0200
Message-ID: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
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

v2: One new patch to deal with the VT-d fallout, and the rest
    has been rebased/slightly updated due to various othert changes

Ville Syrjälä (12):
  drm/i915: Pass intel_display to intel_scanout_needs_vtd_wa()
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
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 272 +++++------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |   6 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  24 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_cmtg.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  67 +--
 drivers/gpu/drm/i915/display/intel_crtc.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   | 180 ++++----
 drivers/gpu/drm/i915/display/intel_cursor.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  13 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  63 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  80 ++--
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   5 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  10 +-
 .../drm/i915/display/intel_display_power.c    |  85 ++--
 .../drm/i915/display/intel_display_power.h    |  54 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  55 ++-
 drivers/gpu/drm/i915/display/intel_fb.c       | 255 ++++++-----
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
 drivers/gpu/drm/i915/display/intel_sprite.c   | 120 +++--
 drivers/gpu/drm/i915/display/intel_sprite.h   |   6 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  78 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   5 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  13 +-
 .../drm/i915/display/skl_universal_plane.c    | 426 +++++++++---------
 .../drm/i915/display/skl_universal_plane.h    |   8 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   5 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   6 +-
 drivers/gpu/drm/xe/display/intel_fb_bo.c      |   7 +-
 52 files changed, 1044 insertions(+), 1009 deletions(-)

-- 
2.45.3

