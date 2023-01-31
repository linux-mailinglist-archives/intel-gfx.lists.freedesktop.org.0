Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFB4682471
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 07:34:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED07310E0E1;
	Tue, 31 Jan 2023 06:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B15810E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675146885; x=1706682885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g+XBqChQjL21X7t/qmvj8WzkPFxby3a78ykte+N6qIE=;
 b=KkNBeTetUIbTbgvBiELpUZbh26o4yaJQlMBxMz2k0Kj/08Acsr9TZ19g
 8qMVXsO5owUwbp2O7lZfTZ3QkH9qI8NkeDZRDzTklgxEZiwButZiPsedP
 4itqdSNXY5gehM4pitFX33kpmx5CzVQ3N9OusHKccRVVTfQ4e6ET4JnJ7
 YlPBZxNzDu0Yawsu8BSl+Z3k7jOF0EYQ7qsUk1GIhVHmoy8GmmlaPiawW
 kvrRmC/pZhCH0gxHoB7SQwzH10dne4Bn1qPdqc+X9x6r/GIlSz1EMLVoY
 IS3pzZVKCnSWRr9WaB9OoKMhZEERdT3Ndni/50hFykcvUuoX7+kXyBCQL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390126609"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="390126609"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 22:34:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="838248007"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="838248007"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 30 Jan 2023 22:34:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 12:03:36 +0530
Message-Id: <20230131063342.2811275-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 0/6] Enable HDCP2.x via GSC CS
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

Anshuman Gupta (1):
  drm/i915/hdcp: Keep hdcp agonstic naming convention

Suraj Kandpal (5):
  drm/i915/gsc: Create GSC request submission mechanism
  i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
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
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   1 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  61 ++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 105 ++-
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 --------
 include/drm/i915_hdcp_interface.h             | 539 ++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 ----
 14 files changed, 1694 insertions(+), 639 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

