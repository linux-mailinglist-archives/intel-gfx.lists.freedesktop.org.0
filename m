Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 713596AD7B2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 07:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B752310E087;
	Tue,  7 Mar 2023 06:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87C610E087
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 06:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678172088; x=1709708088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ktvQJCXrLuEOHM8tkFvpdrK7WH3uOGH7dcMWPxCRbGo=;
 b=kp3ZENrdIfJ8DODEfwFv1E0CLoNq9kA2n5AjltvjqIhPlU75XvdHF6xv
 O4HlhYS4041Bmrizwf5F+e9Vz5yGPhGeut0XQCZYv3ANrAukQzCU/QrdG
 RsMowh6JXxsDVGFlIZCYCSNXpb6Y+AfDgAGlzwJe/aE1BbWy+f385fEy0
 87BgazX9CZjMeqkX8CLRPYh7ql3IQ/X6m74IkMXjHNuTJvDn8kJKHm/Rl
 SHlnJbDIHCMEUxwk2oI6UF8ZTJTFBpHZPQG6Vvna+oUiZueJqm6ddYORj
 H2r+rcF0xErtgNvn+JS4pI6mbwMY3aF+gft4gg6MSMEMxNwaEOzT+xGoC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="319609501"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="319609501"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 22:54:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786579563"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="786579563"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 22:54:45 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 12:23:50 +0530
Message-Id: <20230307065356.181278-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 0/6] Enable HDCP2.x via GSC CS
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

--v7
-remove RB by Ankit

--v8
-change design to allocate and deallocate hdcp_message only at
enablement and disabling of hdcp [Alan]
-fix few formatting issue [Ankit]
-fix stale comments [Ankit]

--v9
-move allocation dealloc of hdcp messgae to init and teardown [Alan]
-remove obj from hdcp message , use i915_vma_unpin_and_release [Alan]
-remove return statement from intel_hdcp_gsc_fini [Ankit]

--v10
-remove unnecessary i915_vma_unpin [Alan]

--v11
-commit message and header fix [Uma]
-comment style fix [Uma]
-add line gap [Uma]

Anshuman Gupta (1):
  drm/i915/hdcp: Use generic names for HDCP helpers and structs

Suraj Kandpal (5):
  drm/i915/gsc: Create GSC request submission mechanism
  drm/i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
  drm/i915/hdcp: Refactor HDCP API structures
  drm/i915/mtl: Add function to send command to GSC CS
  drm/i915/mtl: Add HDCP GSC interface

 drivers/gpu/drm/i915/Makefile                 |   2 +
 .../gpu/drm/i915/display/intel_display_core.h |   8 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 109 ++-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 831 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  26 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  61 ++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 105 ++-
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 --------
 include/drm/i915_hdcp_interface.h             | 539 ++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 ----
 13 files changed, 1693 insertions(+), 639 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

