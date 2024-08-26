Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31F595F698
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710AC10E231;
	Mon, 26 Aug 2024 16:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cOS6laNR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5007910E22F;
 Mon, 26 Aug 2024 16:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689896; x=1756225896;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hDD0d3AMw3x0RTHLK7qiiNnpiF+Uk2KurYzSRcNUAjQ=;
 b=cOS6laNRnpenRrVI+Wew1KkJUt6EvK9JXBHath/npfhOn9d4pmB3YtF/
 NAB6cm9y+LtVxUFBZWz4WgQ1QIdiuT3uIoOumRdN0A2GMiXi712r2lIl0
 +PLpo2+NxUBmTrpZnKq2nDMsu9Us+MZDTNdMqqOgzDDzG8aw6AYwaXAKU
 KQZuJu/NFXUbzQ3WxXFQWS7+Xmvfi2cHAggvx1/9LWFoVO83WZTVQi3Pw
 joBVKscClpGRkPJPJhY0V+KDGBo25jBpeqz6107KC5CEf3Q5cfIZ5qTRG
 i5Beu+N7nqDuBrEZq4onAVEM5b7fj698A9hlrXs3pN+kmuGSuGXUvvGxq Q==;
X-CSE-ConnectionGUID: 4QMBQ/BWSRmMXeG4ZalejA==
X-CSE-MsgGUID: vMnTMcjZSP2qeWYrNUdHjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22991466"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22991466"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:36 -0700
X-CSE-ConnectionGUID: KdK61eKvSUq9NhH6gMo6PQ==
X-CSE-MsgGUID: tIwpKtyWSweBcolp0x20qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62529047"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/7] drm/i915/display: intel_display_types.h cleanup
Date: Mon, 26 Aug 2024 19:31:13 +0300
Message-Id: <cover.1724689818.git.jani.nikula@intel.com>
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

Reduce the size and deps of intel_display_types.h.

Jani Nikula (7):
  drm/i915/wm: move struct intel_watermark_params to i9xx_wm.c
  drm/i915/hdcp: split out intel_hdcp_shim.h for struct intel_hdcp_shim
  drm/i915/display: include drm/drm_probe_helper.h where needed
  drm/i915/display: include drm/drm_vblank.h where needed
  drm/i915/display: include media/cec-notifier.h and linux/debugfs.h
    where needed
  drm/i915/fb: hide the guts of intel_fb_obj()
  drm/i915/display: drop extra includes from intel_display_types.h

 drivers/gpu/drm/i915/display/i9xx_wm.c        |   9 ++
 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_alpm.c     |   2 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
 drivers/gpu/drm/i915/display/intel_bios.c     |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   2 +
 .../drm/i915/display/intel_display_types.h    | 143 +-----------------
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |   1 +
 .../drm/i915/display/intel_dp_link_training.c |   2 +
 drivers/gpu/drm/i915/display/intel_drrs.c     |   2 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_fb.c       |   6 +
 drivers/gpu/drm/i915/display/intel_fb.h       |   2 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |   1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   1 +
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   1 +
 .../gpu/drm/i915/display/intel_hdcp_shim.h    | 137 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   3 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 .../drm/i915/display/intel_modeset_setup.c    |   1 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |   2 +
 drivers/gpu/drm/i915/display/intel_wm.c       |   2 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 drivers/gpu/drm/xe/display/xe_display.c       |   1 +
 37 files changed, 205 insertions(+), 141 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_shim.h

-- 
2.39.2

