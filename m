Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A0E6F704A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 18:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E81E10E17D;
	Thu,  4 May 2023 16:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C9C10E17D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 16:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683219457; x=1714755457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Aar85e83HoN4wkGNXxqzhIHs09HI3gUNnlbij8qUi2U=;
 b=FXiP6qLR14qpm7BCRKICVp1EXYHwm2RDKcdFhvEgLfZQMBGddftaLyTg
 OCVRfzrTOv+oRgRIFR1bxB7BcF+yYv4liM5Pf57C7YcJjDbbprUfU1qBa
 iAuSoOoNIP0caOPQa7tlgDc6GH14kKjC/3krreNssY5K2HhPYJdprYek9
 1SkO5UX6QypD+pisgQ8R/PLAf/EvdCRMuzPWVWzT99pdnG2voOgEYvMF8
 tR2dtggib7bsPIRpY0albaz5GysYi+7Tl7TxaPLOL2Z0hDvBzbcivd8JX
 06Jojzuycag3nid/5G8LDfSXR4zzpRQsJXzBCrGOGUkKZwRf92bUpx4Ti Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="352013391"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="352013391"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="729881134"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="729881134"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 19:57:28 +0300
Message-Id: <cover.1683219362.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: hotplug and display irq
 refactoring
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move hotplug and display irq handling to their respective files under
display/.

This is a start, with mostly just code movement. Further work clarifying
the borders between these files as well as renames is to be expected.

BR,
Jani.


Jani Nikula (3):
  drm/i915/irq: relocate gmbus and dp aux irq handlers
  drm/i915/irq: split out hotplug irq handling
  drm/i915/irq: split out display irq handling

 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |    2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |    2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 1677 ++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |   79 +
 .../i915/display/intel_display_power_well.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |    5 +
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |    3 +
 .../drm/i915/display/intel_fifo_underrun.c    |    2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |    5 +
 drivers/gpu/drm/i915/display/intel_gmbus.h    |    2 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |    1 +
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 1442 +++++++
 .../gpu/drm/i915/display/intel_hotplug_irq.h  |   35 +
 drivers/gpu/drm/i915/display/intel_tv.c       |    2 +-
 .../drm/i915/display/skl_universal_plane.c    |    2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |    1 +
 drivers/gpu/drm/i915/i915_irq.c               | 3638 ++---------------
 drivers/gpu/drm/i915/i915_irq.h               |   46 +-
 21 files changed, 3528 insertions(+), 3421 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_irq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_irq.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_hotplug_irq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hotplug_irq.h

-- 
2.39.2

