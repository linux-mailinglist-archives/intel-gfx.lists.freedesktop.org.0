Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F218A9C3C0C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB90C10E466;
	Mon, 11 Nov 2024 10:34:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kBMF/QOx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31ABA10E2FD;
 Mon, 11 Nov 2024 10:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321250; x=1762857250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qm49Rw2VwAx8uTdFq9x1I1EDBmp4C6GBntrl/anThgM=;
 b=kBMF/QOxd4RHYfBNrBxC1wkd3rB7h6ebx1MqFxRyrXO79qMsJgw2B815
 AgwE8CFwbVkn4wm15DzvFZIbIiTEXXdIHG3035qT0aNxbbGkNvGrJXysg
 hvyB8mJgkbMswGF+qrEWgS3Tru3VUScCvaZ+3V2CzMhOX8cqFrH7opc+C
 Jfzh1+yE+tKjaRHVZCR7MJCo7LdxGvTtyEZOZja3uYq6kDpVc2yW9V4JC
 smjUNkuC1Rjc8vBMPyZ1+vY27UqN/+PQoxObS3BA7YCp49u8JjUX+EqDA
 VlvSzRwVeN6Bek+L5JpsEb7tcjuTo/qBkyIg3hVG41Ml515vNke2oSg4j Q==;
X-CSE-ConnectionGUID: 25BU6qT3QYqsHPOJTJhT8A==
X-CSE-MsgGUID: sHIDKAgaRo6mNP8l+vIrcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="31343988"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="31343988"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:09 -0800
X-CSE-ConnectionGUID: F7Ix/2uLR/K0SYKatOqEzw==
X-CSE-MsgGUID: SB/SOfJ/R2K9RFw4hdQ3Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="87196281"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI v3 00/15] drm/i915/display: convert display feature helpers to
 struct intel_display
Date: Mon, 11 Nov 2024 12:33:49 +0200
Message-Id: <cover.1731321183.git.jani.nikula@intel.com>
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

Another rebase, v3 of [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1731015333.git.jani.nikula@intel.com

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
 .../drm/i915/display/intel_display_device.h   | 157 +++++-----
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
 26 files changed, 395 insertions(+), 316 deletions(-)

-- 
2.39.5

