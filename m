Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1B865AD43
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 06:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAA710E149;
	Mon,  2 Jan 2023 05:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1337E10E149
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 05:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672638123; x=1704174123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WxOLStS+GQflmKUtCl4SyOoufZUkicslKQL2VYFy744=;
 b=DmBnYAcIGyWPayESovvZVCO91si5Y3YIl+2AwYzm/vk3iTeEif/ZnPUA
 7nc6l1aed4ExtxMd+b8ziryVzAnW9Anlynp1jIFno9CFWgMQHEjfddXWe
 PaBlmsWUARQ2b3pwgA41lv39DtJoZJ/gON1iciWGeGNuoxeqGqz4JAQUH
 1oOUyHHf1JP/YPdU5cK4txpCSWv1EZkYQ6U8KtkUA4zKeJSUjy5n0Sffx
 sJrj9dHmK4alf6NWAUdk8kp9PSgFMgEN4RpIN8HDJb/qUdw3Clspw/Er4
 8tDfpdscVg2lrbQcbpjg/1P2j+VFcfuIRG6UAQJZZQ/edocOi0jf2l1Ru Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="301124334"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="301124334"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 21:42:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="828472804"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="828472804"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 01 Jan 2023 21:42:00 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:10:40 +0530
Message-Id: <20230102054047.124624-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/7] Enable HDCP2.x via GSC CS
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

Anshuman Gupta (1):
  drm/i915/hdcp: Keep cp fw agonstic naming convention

Suraj Kandpal (6):
  drm/i915/gsc: Create GSC request submission mechanism
  i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
  drm/i915/hdcp: Refactor HDCP API structures
  drm/i915/hdcp: Fill wired_cmd_in structures at a single place
  drm/i915/mtl: Add function to send command to GSC CS
  drm/i915/mtl: Add HDCP GSC interface

 drivers/gpu/drm/i915/Makefile                 |   3 +
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 107 +--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 711 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  21 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   1 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  51 ++
 drivers/gpu/drm/i915/i915_hdcp_interface.c    | 216 ++++++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 189 +----
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 ---------
 include/drm/i915_hdcp_interface.h             | 578 ++++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 -----
 15 files changed, 1789 insertions(+), 742 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

