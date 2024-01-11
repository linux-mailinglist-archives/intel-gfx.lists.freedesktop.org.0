Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2422B82B3E8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817A110E06C;
	Thu, 11 Jan 2024 17:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2888710E06C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993689; x=1736529689;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PGRvj2NJ/qYhcazEgF1ZjELUZ5qpO1OvUcoDLpWnHKs=;
 b=Z6aXfVI0avNdcvE3/P3kwMDfpItXUbbbRsn9vPA36styJLRrQBMPj3yQ
 XvxSB7UKGjZ9A9HFoxwP+jCT7BXcVsOvH3TbJVLZhrtghgyermTVGWzfD
 pHg3dsi/NrSsGSdrgbD5pE6YVB4VhaePyqDunwytZ58W1I8xfabPPmrvm
 85yWooComW4pmMlkFMq4TR3ArnbOcA6ivhdTtOLBYI4Snr+wQfVR7u7s4
 Q2rTQBjw9x8r4WeDHMYEJAHUTGt7R13CkXRGkkJsRGOtwH9BbnSXGivrx
 UA+lI5nIXcTObbn7k2wYJruV5So7dy2PPh/7ESa0Zm58Z8X+uC+VyzHr+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5657711"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
   d="scan'208";a="5657711"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="853030578"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="853030578"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915/opregion: better abstractions
Date: Thu, 11 Jan 2024 19:21:13 +0200
Message-Id: <cover.1704992868.git.jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Here's some opregion refactoring and abstraction inspired by
Radhakrishna's series [1]. This is basically what I want to see done
first.

The next step would be to move VBT firmware loading from
intel_opregion_setup() to intel_bios_setup(). This probably involves
keeping a copy of the VBT around in i915->display.vbt, maybe add vbt and
vbt_size members there. This can be used to fix the i915_vbt debugfs
file to actually reflect the VBT wherever it came from.


BR,
Jani.


[1] https://patchwork.freedesktop.org/series/128341/


Jani Nikula (6):
  drm/i915/bios: move i915_vbt debugfs to intel_bios.c
  drm/i915/opregion: move i915_opregion debugfs to intel_opregion.c
  drm/i915/opregion: abstract getting the opregion VBT
  drm/i915/opregion: abstract ASLE presence check
  drm/i915/gvt: use local INTEL_GVT_OPREGION_SIZE
  drm/i915/opregion: make struct intel_opregion opaque

 drivers/gpu/drm/i915/display/intel_bios.c     |  33 +++-
 drivers/gpu/drm/i915/display/intel_bios.h     |   2 +
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_debugfs.c  |  26 +--
 .../gpu/drm/i915/display/intel_display_irq.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_opregion.c | 176 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.h |  47 +++--
 drivers/gpu/drm/i915/gvt/kvmgt.c              |   2 +-
 8 files changed, 187 insertions(+), 108 deletions(-)

-- 
2.39.2

