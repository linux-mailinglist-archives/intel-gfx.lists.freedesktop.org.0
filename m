Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD65B7B6939
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 14:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493BF10E04E;
	Tue,  3 Oct 2023 12:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6BD10E04E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 12:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696336935; x=1727872935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aVXjOD1Li0ErthBVylagGwyzvbxaIq3U7+XfUfiLBPY=;
 b=msC64tsUCcWj/MX5hQ7zRtAb1Dlu98D0NWz+R7e6c+qusJtrCG3ZAN8z
 8opSbAxehQm9Ag+ZuMg4rL1dd/QIOErVWYFBUqPHlwRPvMtwXc7xasRWQ
 mtgKxVg3R+CDDHn+jXlociY2GZoQ15d7x1lbd4AN035URR8M/GGUzVBTq
 EOuF0p0xqWUIbuZiiYFvwnszGdxD3gRpLGM/inxey7l7IPXPlsDny+jQt
 eUmj4cUSX+BGozhdYtXpE2k1TfCdmUpCQgmFQTLA73FvV/w6A9NWmldE+
 KqXmqqqmielpi79cFzsyd1gZXlSLK+CPYVvtt3f58wo8w1WHaxqtq47s4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="385686740"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="385686740"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="786081338"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="786081338"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 15:42:06 +0300
Message-Id: <cover.1696336887.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: move display info related stuff
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue separation of display code from the rest.

Jani Nikula (4):
  drm/i915: convert INTEL_DISPLAY_ENABLED() into a function
  drm/i915: move display info related macros to display
  drm/i915: separate display runtime info init
  drm/i915: separate subplatform init and runtime feature init

 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
 .../drm/i915/display/intel_display_device.c   | 43 ++++++++++++++++++-
 .../drm/i915/display/intel_display_device.h   | 10 +++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_drv.h               | 14 ------
 drivers/gpu/drm/i915/intel_device_info.c      | 22 ----------
 14 files changed, 62 insertions(+), 46 deletions(-)

-- 
2.39.2

