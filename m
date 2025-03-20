Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FB9A6A8E9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 15:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FB110E630;
	Thu, 20 Mar 2025 14:46:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDLZ958T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBDFF10E639;
 Thu, 20 Mar 2025 14:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742481971; x=1774017971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bnW0oAYJ9AwD/jiWQcQ8ELv9l7Uruama3Nan+FpMCSw=;
 b=XDLZ958TJsHVLOx9nnvCjVFLrCvEVw7Qt3j2yZeQJZ9M2/9gnahfQh9R
 RBjy8bvrBglDc1F+ABKrvbUDvJR/sIGj2RCAKRr4/nT6mnOof2oWrSsqC
 xGeT9iUPtTZUw8N3Y9C+Xj6r2MsCJvd6vrm9mGtDnYqynRMyR+OXO3jiQ
 jkS4g0TJq9CROKg4/tlQ9rlWPgp/1s/ZJ8B/z1HSVcXJrwNRf0isHamW8
 SCwguSCRICG78UZU7LNHVhulgZ/eI6CXXNEnC6RatNkfIIEsF7MJg3H2C
 jdWq0f8I1cHqb3pKSRsqzn2h5ERraP6RwYcKlEq9ODoeVai79VvOXqbkU Q==;
X-CSE-ConnectionGUID: bzAAHargTVqK3Yoh9iCR9g==
X-CSE-MsgGUID: zr3SZyrQR+2SlmH966HGRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43599865"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43599865"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:10 -0700
X-CSE-ConnectionGUID: 545doXwnS6uSGnTQX4+tRQ==
X-CSE-MsgGUID: OVqxsFy7Raa+fQSlTnxJ0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="146326765"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 0/9] drm/i915/display: conversions to struct intel_display
Date: Thu, 20 Mar 2025 16:45:56 +0200
Message-Id: <cover.1742481923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Resend for CI.

Jani Nikula (9):
  drm/i915/color: prefer display->platform.<platform> checks
  drm/i915/connector: convert intel_connector.c to struct intel_display
  drm/i915/hotplug: convert intel_hotplug.[ch] to struct intel_display
  drm/i915/hotplug: convert hotplug debugfs to struct intel_display
  drm/i915/hotplug: convert hotplug irq handling to intel_de_*()
  drm/i915/hotplug: convert intel_hotplug_irq.[ch] to struct
    intel_display
  drm/i915/irq: convert intel_display_irq.[ch] interfaces to struct
    intel_display
  drm/i915/irq: convert rest of intel_display_irq.[ch] to struct
    intel_display
  drm/i915/display: rename I915_HAS_HOTPLUG() to HAS_HOTPLUG

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  24 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  16 +-
 .../gpu/drm/i915/display/intel_connector.c    |  45 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  10 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_device.h   |   2 +-
 .../drm/i915/display/intel_display_driver.c   |  16 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 742 +++++++++---------
 .../gpu/drm/i915/display/intel_display_irq.h  |  75 +-
 .../i915/display/intel_display_power_well.c   |  18 +-
 .../drm/i915/display/intel_display_reset.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  27 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 348 ++++----
 drivers/gpu/drm/i915/display/intel_hotplug.h  |  26 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 623 +++++++--------
 .../gpu/drm/i915/display/intel_hotplug_irq.h  |  28 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |   6 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  14 +-
 drivers/gpu/drm/i915/i915_irq.c               | 123 +--
 drivers/gpu/drm/xe/display/xe_display.c       |  38 +-
 25 files changed, 1118 insertions(+), 1086 deletions(-)

-- 
2.39.5

