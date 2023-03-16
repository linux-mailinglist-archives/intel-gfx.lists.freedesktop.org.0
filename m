Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAD66BCAD6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 10:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D257610E048;
	Thu, 16 Mar 2023 09:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8906F10E048
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 09:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678959014; x=1710495014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r88v6CTZfnpaPEzwsm2AdMVc32CHkREIPVZFOUMaVrs=;
 b=H2InfImigzFpU4LgqX4yiKdA5jNRY+05peU/b+XgZ63Cx4e41BbWjo06
 icsoQ/D+vbdvrxV5c3SEyJ3lBIZmfNg02op07Nec501rcwhNcOkSDO1f8
 qX9fR1SH05SQmI1ML8NPrivmTA2yTXYNE/YZBg9YwDuKyaK0W7ObUrfky
 +uZaMXdVv/8+qx1ZJxZDhwxf7xzRxGQm2JGk1i1293A9khIJw/eouJy1a
 wEPBZidtSVMEJ+swt/lQ/0Xltk3NUeaJe9FzQuHlvfhu1dBRiIL7D5Qvm
 pz3kpKgEzDyxlRVAH6JKLj0vG5haP+UE4rnVHP4/Mg7bLEH5/czPqWTlb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="317587583"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="317587583"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="853942279"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="853942279"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2023 02:30:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 14:59:21 +0530
Message-Id: <20230316092927.668980-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 0/6] Enable HDCP2.x via GSC CS
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

--v12
-rename comp to arbiter [Uma]



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
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 158 ++--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 831 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  26 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  61 ++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 105 ++-
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 --------
 include/drm/i915_hdcp_interface.h             | 539 ++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 ----
 13 files changed, 1718 insertions(+), 663 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

