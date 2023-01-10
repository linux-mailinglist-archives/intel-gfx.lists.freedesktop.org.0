Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69978663835
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 05:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD7210E526;
	Tue, 10 Jan 2023 04:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9808F10E526
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 04:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673325390; x=1704861390;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pXWfTTJLu77DXWmfdf0N0L1fxJDJD37nz86rDyy3VcY=;
 b=N7ysv/HP3vJJbflAIfibHvKd/mvgFsVYdLWvaDAMfASV+H7GFE06lXu/
 s/D011jVIfXBagklJUDuOYMEGcHOMh8XER6fzUEioxdzcLCpGCBEYtbpt
 6bpPsuSZauQneGcYkyr9w9cTu7OPa9GaHh6a9CPxmm+MwAIeqLdr4SAX0
 k0xWT0lMGurYTF7mHMd6es7TN8QTT94ZYbSvu12xHp1SGhLVLlYZw69zV
 hAcklzek9TAAeK3BemPkzsOJBNl5oS1ewfptBZRK/bfMHItYQL/D2s01W
 EStIpmi4UOBWSXk/ywQMmNjR/wCdRnytHapMieUD43pS95jPMaMskidN7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="350279686"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="350279686"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 20:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650230548"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="650230548"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 09 Jan 2023 20:36:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 10:05:11 +0530
Message-Id: <20230110043517.1388837-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/7] Enable HDCP2.x via GSC CS
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

These patches enable HDCP2.x on machines MTL and above.
From MTL onwards CSME is spilt into GSC and CSC and now
we use GSC CS instead of MEI to talk to firmware to start
HDCP authentication

--v2
-Fixing some checkpatch changes which I forgot before sending
out the series

--v3
-Drop cp and fw to make naming more agnostic[Jani]
-Sort header[Jani]
-remove static inline function from i915_hdcp_interface[Jani]
-abstract DISPLAY_VER check[Jani]

--v4
-Remove stale comment P2 [Jani]
-Fix part where file rename looks like its removed in P2 and
added in P3 [Jani]
-Add bitmask definition for host session id[Alan]
-Seprating gsc load and heci cmd submission into different funcs[Alan]
-Create comman function to fill gsc_mtl_header[Alan]

--v5
-No need to make hdcp_message field null as we use kzalloc [Alan]
-use i915->drm instead of gt->i915->drm [Alan]

--v6
-Make each patch build individually [Jani]
-drop cp_fw stale commit subject [Jani]
-fix the date on license [Jani]
-revert back to orginal design where mei and gsc fill their own header

Anshuman Gupta (1):
  drm/i915/hdcp: Keep hdcp agonstic naming convention

Suraj Kandpal (5):
  drm/i915/gsc: Create GSC request submission mechanism
  i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
  drm/i915/hdcp: Refactor HDCP API structures
  drm/i915/mtl: Add function to send command to GSC CS
  drm/i915/mtl: Add HDCP GSC interface

 drivers/gpu/drm/i915/Makefile                 |   2 +
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 109 ++-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 831 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  21 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   1 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  51 ++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 102 +--
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 --------
 include/drm/i915_hdcp_interface.h             | 539 ++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 ----
 14 files changed, 1673 insertions(+), 637 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

