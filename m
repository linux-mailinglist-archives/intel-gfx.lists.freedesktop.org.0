Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B229BBB97
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B06F10E093;
	Mon,  4 Nov 2024 17:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uuwun7YN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D17610E093;
 Mon,  4 Nov 2024 17:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740776; x=1762276776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uvSOWSAK1bCOCXzN+K61JDoViYrn7JQ4sGHDi6igsIc=;
 b=Uuwun7YNK+KulIaY5/UofJoudEq7ZTfZqYK7mxkBbK9WU6AOOs/XBIUS
 KhBs55rG0/I2chUqoaw6tRWZ4+oZW41mWxo22fwFVpnKXpa3cB0G5uTRp
 /rDORZejgRoBorEsIAH0IkttjD2iJNQ0W+HKo0J0m6J4gUc+NNUnAGn4m
 pQ/nX2aIlin8r6KkO7Gri0ya/vrwQ+ayZmIROhP/iRaG3d2MGwCQUt5hY
 0FOwMgAR2fVoPwOflXlt08fzeTjZAzOzD9r/Ot4CMW7n0J0NRvw3CObCw
 9pqLUlpZa6WGB5QsX+pv86gvXmRqyI+k0RuAcABX9N8IffUYWwlqCfHLF w==;
X-CSE-ConnectionGUID: CZnNTu8ES8aJZtWp97j+Bg==
X-CSE-MsgGUID: DqzGj2imQ4OB4Tv0ejrUAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563736"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563736"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:19:35 -0800
X-CSE-ConnectionGUID: SJ1ZM0nKSWGmtrog/LaGWQ==
X-CSE-MsgGUID: g5rZpimFTLO+mlUMDOgKqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88289953"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:19:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/15] drm/i915/display: convert display feature helpers to
 struct intel_display
Date: Mon,  4 Nov 2024 19:19:14 +0200
Message-Id: <cover.1730740629.git.jani.nikula@intel.com>
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

Add display->platform.dgfx and display->platform->mobile platform groups
to replace IS_DGFX() and IS_MOBILE() respectively. Convert all the HAS_*
display feature check helpers to struct intel_display.

This unblocks a lot of further code conversion to struct intel_display.

BR,
Jani.


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
 drivers/gpu/drm/i915/display/intel_ddi.c      |  26 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_device.c   | 274 ++++++++++--------
 .../drm/i915/display/intel_display_device.h   | 153 +++++-----
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
 drivers/gpu/drm/i915/display/skl_watermark.c  | 101 ++++---
 drivers/gpu/drm/i915/i915_driver.c            |   8 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  12 +-
 26 files changed, 389 insertions(+), 309 deletions(-)

-- 
2.39.5

