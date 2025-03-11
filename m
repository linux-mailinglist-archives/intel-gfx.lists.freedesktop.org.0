Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B66A5CCFA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E0F10E64A;
	Tue, 11 Mar 2025 18:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OB3//hIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866E410E644;
 Tue, 11 Mar 2025 18:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716049; x=1773252049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CwPrJHCEYfstR2/YxeT5EqkoqUwNhnQcQqBjQsP0M30=;
 b=OB3//hIGMVSq4K2xJvcrj+xXADLxAWXQ+oEMpb++iDDKz/kRNxvlTWwb
 y/tckqNDJOt/meuONocC7D6v/0SsWYjZWWCbChzSHKKQn+dQ+dQXdBunC
 JhLmFxUnBFoVLShvfCGUGjHk7VPuvC9uqN0w84w8TCYzWKE+fV7amfQ+o
 SSwPyJIzw/qnh0SXbFKrqQ9+YARvrjT4kfjSlWv54tr+PiBgoV4UhpDr/
 YfZzf2pCeTjLbTQrV2H0I4MrR1Q54DB9+hm7SKvb/cSUt/wijiH41tIQE
 +Ifd3bfy+0NT3hfXit94c7qHw384mGJgZSmfhv3ocY1iHyR4dkjIUwIqM Q==;
X-CSE-ConnectionGUID: es0kacMVQECte2fsySW1tA==
X-CSE-MsgGUID: EQ9FXp9WQrGv8J0PJy28Cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42805756"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42805756"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:00:49 -0700
X-CSE-ConnectionGUID: b7oUizZuTzC5jJsRlMrcyQ==
X-CSE-MsgGUID: 5HfRzzMyRrCpBb67m8p+Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125457043"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:00:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/9] drm/i915/display: conversions to struct intel_display
Date: Tue, 11 Mar 2025 20:00:34 +0200
Message-Id: <cover.1741715981.git.jani.nikula@intel.com>
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

Primarily convert all hotplug and irq code to struct intel_display, and
then some.

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

