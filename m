Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2579C1105
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDFB10E8EA;
	Thu,  7 Nov 2024 21:36:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQfp31la";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B7F10E8E8;
 Thu,  7 Nov 2024 21:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015416; x=1762551416;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8n17Xo9pBl1fHzCv6l7reI4pfx43MHckPEXSQN8oX6g=;
 b=BQfp31laQIr1CwHAQpqDporMT7R8dWdOjRItbLcAe+KogGtLnCGlUnGU
 ZMiiovGWcPfJkqMo776KQd6VXnD45XWUx8iHBZFAV5icfFoMBRXa6rD9g
 7THKYTMt4gg6Nx8gQ/4Gqwt3nNorrBWClkQLn9b+2t5/8FJwgMA4QFlyr
 nxhEaQ6tfsmUCSsZTqYERUpt70gdF3s5fchA61ImCOyZJ5bRc8b0rnCUp
 TBuciGPwXZRCr08OmC6WJ9nHRt7OpLAg43/uTIxmmxcJbjwuMoJr7Ugvc
 1VRDlzbaUDT39JjtKBG5BkfDU4/a1WvC+BCo/goJ/4T/OiQrpiNa3s907 Q==;
X-CSE-ConnectionGUID: yms8vGEKQ9O5M8ZOX3m7xg==
X-CSE-MsgGUID: 7pV81zEiTGiupkyyYxBMrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41504411"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="41504411"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:36:56 -0800
X-CSE-ConnectionGUID: Av6DscrKSHuSxgWfb2iLOA==
X-CSE-MsgGUID: goIdJ2TgTd6w3CgUnGfaVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85171072"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:36:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI v2 v2 00/15] drm/i915/display: convert display feature helpers to
 struct intel_display
Date: Thu,  7 Nov 2024 23:36:34 +0200
Message-Id: <cover.1731015333.git.jani.nikula@intel.com>
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

v2 of [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1730740629.git.jani.nikula@intel.com

Jani Nikula (15):
  drm/i915/display: identify discrete graphics
  drm/i915/display: convert HAS_D12_PLANE_MINIMIZATION() to struct
    intel_display
  drm/i915/display: convert HAS_4TILE() to struct intel_display
  drm/i915/display: convert HAS_DOUBLE_BUFFERED_M_N() to struct
    intel_display
  drm/i915/display: convert HAS_DP20() to struct intel_display
  drm/i915/display: convert HAS_GMBUS_BURST_READ() to struct
    intel_display
  drm/i915/display: convert HAS_IPS() to struct intel_display
  drm/i915/display: convert HAS_MBUS_JOINING() to struct intel_display
  drm/i915/display: convert HAS_SAGV() to struct intel_display
  drm/i915/display: convert HAS_HW_SAGV_WM() to struct intel_display
  drm/i915/display: convert HAS_ULTRAJOINER() to struct intel_display
  drm/i915/display: rename i915 parameter to __display in feature
    helpers
  drm/i915/display: convert display device identification to struct
    intel_display
  drm/i915/display: pass struct pci_dev * to
    intel_display_device_probe()
  drm/i915/display: add mobile platform group

 drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  28 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_device.c   | 274 ++++++++++--------
 .../drm/i915/display/intel_display_device.h   | 155 +++++-----
 .../gpu/drm/i915/display/intel_display_irq.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |  25 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 108 ++++---
 drivers/gpu/drm/i915/i915_driver.c            |   8 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  12 +-
 26 files changed, 394 insertions(+), 315 deletions(-)

-- 
2.39.5

