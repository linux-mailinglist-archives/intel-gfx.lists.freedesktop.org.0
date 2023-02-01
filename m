Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBFC68627C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 10:09:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4898110E2D3;
	Wed,  1 Feb 2023 09:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E5C10E2D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 09:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675242550; x=1706778550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XxmPFoaqCBlDmQDO9Qmi3bUR00yIkpYkjcZLnNaNL0U=;
 b=HP9VuSzF6C0PRpAixUvD9HlUqzp4IJ+KnYtwvVJlJJPvdWRSExBnP5Oz
 Jyp54nsK/2ro8SOECxpBUoAzg9cUY+nGJ7oTbVOOSqW7DA4POZEupWyDt
 y/OWDm0hN4P8r6QbfH98UWRgkkiBw1mQVWQ4AqkC9taLaAJDwoVK6HPfo
 /FaZqccW6iaICHSIi4UEXynnVSrbehl1qeyNm3QWE5HEEw8YeiSGRp4sR
 0XBlWF53MVsZDKLZlmWMEAcdvg66hTGRFuozq2VTr0bdS1mhOYGoW1rAj
 VmSfNjUm5LSK1B3j8UvIujCj8Q+1EdvaVaa9VFDZAVFEixYUq9AEe05tf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="328103292"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="328103292"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 01:09:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="910263727"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="910263727"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 01 Feb 2023 01:09:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Feb 2023 14:38:00 +0530
Message-Id: <20230201090806.3008619-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 0/6] Enable HDCP2.x via GSC CS
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
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 829 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  26 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   1 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  61 ++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 105 ++-
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 --------
 include/drm/i915_hdcp_interface.h             | 539 ++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 ----
 14 files changed, 1692 insertions(+), 639 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

