Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D83B70CACE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 22:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F7510E28C;
	Mon, 22 May 2023 20:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82CA310E270;
 Mon, 22 May 2023 20:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684787006; x=1716323006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=by5pJCcI9Iax9KM1SJfCXNp3MPf5n4d7AZVvla192HA=;
 b=LFAixBDjgW9dRKbWAjkMdWr6GBe8rR9FE20Se7vcddWZSf4egRSsaSjH
 LAPP1E3zcC9qbbPHg3dHwo9if3gp7TTBNBKjwkSIStgv2QWhZrFBVQil0
 r+qWPLLfSFBY0K+l53oCeT2A8HuxcyfvKaPg8VPHLjxP6lDD+y+TgGwLg
 zuFa4dY2Z5/xcN6XwaG7O57QNxX4pK8gxYWy5+/bmkJgUK52fsnchHgk5
 LY6b7WDW0zg1YRHncckCHlA26oPSpVk5+lv4Xl2iIZ5CWESbTB3Iz6/MC
 8A7U7CjDtC7Kgj9NMgE7JKdn2LEkdycWGCbmmhbfqYpiGuhg0uzvom/gR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="337620392"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="337620392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 13:23:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="681087953"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="681087953"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 13:23:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 May 2023 13:23:08 -0700
Message-Id: <20230522202314.3939499-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] i915: Move display
 identification/probing under display/
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since i915's display code will soon be shared by two DRM drivers (i915
and Xe), it makes sense for the display code itself to be responsible
for recognizing the platform it's running on rather than relying on the
making the top-level DRM driver handle this.  This also becomes more
important for all platforms MTL and beyond where we're not really
supposed to identify platform behavior by PCI device ID anymore, but
rather by the hardware IP version reported by the device through the
GMD_ID register.

This series creates a more well-defined split between display and
non-display deviceinfo/runtimeinfo and then moves the definition of the
display-specific feature flags under the display/ code.  Finally, it
switches MTL (and all future platforms), to select the display feature
flags based on the hardware's GMD_ID identification.

v2:
 - Move DISPLAY_INFO() definition one patch earlier.  (Andrzej)
 - Rename display's runtime default structure to __runtime_defaults to
   make it more clear what the purpose is.  (Andrzej)
 - Simplify copy of runtime defaults to per-device runtime data.
   (Andrzej)
 - Fix uninitialized ptr use on error path during device probe. (lkp)
 - Add extra patch moving display-specific feature test macros to
   display/intel_display_device.h

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>

Matt Roper (5):
  drm/i915/display: Move display device info to header under display/
  drm/i915: Convert INTEL_INFO()->display to a pointer
  drm/i915/display: Move display runtime info to display structure
  drm/i915/display: Make display responsible for probing its own IP
  drm/i915/display: Handle GMD_ID identification in display code
  drm/i915/display: Move feature test macros to intel_display_device.h

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_color.c    |  31 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  10 +-
 .../drm/i915/display/intel_display_device.c   | 764 ++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   | 129 +++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_reg_defs.h |  14 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_hti.c      |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |  17 +-
 drivers/gpu/drm/i915/i915_drv.h               |  65 +-
 drivers/gpu/drm/i915/i915_pci.c               | 382 +--------
 drivers/gpu/drm/i915/i915_reg.h               |  33 -
 drivers/gpu/drm/i915/intel_device_info.c      | 113 +--
 drivers/gpu/drm/i915/intel_device_info.h      |  67 +-
 drivers/gpu/drm/i915/intel_step.c             |   8 +-
 23 files changed, 1030 insertions(+), 641 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.h

-- 
2.40.0

