Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FC46FDBA4
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AFF10E1F7;
	Wed, 10 May 2023 10:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E897910E1F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714655; x=1715250655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VyQ5AzjBhKJozgbx7OsrL3bMpJIeAR9zGZBWwX3AEIs=;
 b=DvbIOVxj8ZzLr2Tv8OW5etbcc3xZtNQlFOUYv7o+wvTHQ7UtBU6qH++J
 VhMlnBfyxnQqWq2PRdxIVJNvdsSpCML9Ek7lx8vmZK1i+X9+Z3MBiWKJv
 g782UDQEkgPKi0TTAdM68DigbXgg3i8KMc5TSgTLdoylTxCht2WioRa6G
 MTf85wojCDpT5W2Yh+6G1VdsDzvWsaN21gbgeNaimQd00J+koyGuQhgCM
 rH7qmCmvwBFAehyX3FeLctT9CuRE3zm84xUAstco3JXVM1xg1AuHRYwTp
 msWrD7VuCXwJdl3FnDKFptxFDPgAUeqJR0IIooCiFtYIwZMUQtuhttwUZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214389"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214389"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796686"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796686"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:17 +0300
Message-Id: <20230510103131.1618266-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/14] drm/i915/tc: Add a workaround for an
 IOM/TCSS firmware hang issue
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v4 of [1], addressing the review comments from Ville, Vinod and
Jani. Patch 13/14 also fixes an issue canceling the link reset work
synchronously during system suspend and driver cleanup.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20230503231048.432368-1-imre.deak@intel.com/

Imre Deak (14):
  drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
  drm/i915: Add helpers to reference/unreference a DPLL for a CRTC
  drm/i915: Make the CRTC state consistent during sanitize-disabling
  drm/i915: Update connector atomic state before crtc sanitize-disabling
  drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()
  drm/i915: Factor out set_encoder_for_connector()
  drm/i915: Add support for disabling any CRTCs during HW
    readout/sanitization
  drm/i915/dp: Add link training debug and error printing helpers
  drm/i915/dp: Convert link training error to debug message on
    disconnected sink
  drm/i915/dp: Prevent link training fallback on disconnected port
  drm/i915/dp: Factor out intel_dp_get_active_pipes()
  drm/i915: Factor out a helper for handling atomic modeset locks/state
  drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks
    held
  drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the
    sink disconnects

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  68 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   1 +
 .../drm/i915/display/intel_display_types.h    |  12 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  20 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
 .../drm/i915/display/intel_dp_link_training.c | 376 ++++++------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  58 ++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 +
 .../gpu/drm/i915/display/intel_modeset_lock.c |  50 +++
 .../gpu/drm/i915/display/intel_modeset_lock.h |  33 ++
 .../drm/i915/display/intel_modeset_setup.c    | 318 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 156 +++++++-
 drivers/gpu/drm/i915/display/intel_tc.h       |   5 +-
 drivers/gpu/drm/i915/i915_driver.c            |   8 +
 16 files changed, 776 insertions(+), 350 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.h

-- 
2.37.2

