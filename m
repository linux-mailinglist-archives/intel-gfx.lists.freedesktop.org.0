Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9610C70785F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 05:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE7410E4DA;
	Thu, 18 May 2023 03:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692E910E4D3;
 Thu, 18 May 2023 03:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684379890; x=1715915890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v+PBqJleqjwbtIoVAjLBnQesRvz9M/+LYwXldRp1+x4=;
 b=ZhKjHe0UiiZ92NUsTyx0Ku3INob2bEddsIijShTSsOHzLbH0PjmI/LWf
 PeVqVv51JCYr0Z20FgdW7i//fCyIT45R3E1SZhVM/sq5jwEq4jNy54iIP
 YO/IV9+DUQN26ySJjHs+3n0tWSvaHdjjMNrtHb2KjVagbNCRPYJVgA/8u
 uwOufG1NhEF8/sVp9bCrighL7NgB8nSepCHgu8SZehQ4Pckw2zCAEQqjc
 snziGeJ3HZfeSUsFT4ZWKmL2Lktr9nk8ZUwiD+vqDM9orXLSuemnPmeuo
 GiFkIruV73+E7Gio6mSypE1OZNvKXlxvhFsbX86E/eULRSlAQe24e75Zp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="341348737"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="341348737"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="652472422"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="652472422"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 20:17:59 -0700
Message-Id: <20230518031804.3133486-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] i915: Move display identification/probing
 under display/
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
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
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


Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Matt Roper (5):
  drm/i915/display: Move display device info to header under display/
  drm/i915: Convert INTEL_INFO()->display to a pointer
  drm/i915/display: Move display runtime info to display structure
  drm/i915/display: Make display responsible for probing its own IP
  drm/i915/display: Handle GMD_ID identification in display code

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_color.c    |  30 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  10 +-
 .../drm/i915/display/intel_display_device.c   | 746 ++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |  89 +++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_reg_defs.h |  14 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_hti.c      |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |  10 +-
 drivers/gpu/drm/i915/i915_drv.h               |  45 +-
 drivers/gpu/drm/i915/i915_pci.c               | 382 +--------
 drivers/gpu/drm/i915/i915_reg.h               |  33 -
 drivers/gpu/drm/i915/intel_device_info.c      | 121 +--
 drivers/gpu/drm/i915/intel_device_info.h      |  67 +-
 drivers/gpu/drm/i915/intel_step.c             |   8 +-
 23 files changed, 995 insertions(+), 598 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.h

-- 
2.40.0

