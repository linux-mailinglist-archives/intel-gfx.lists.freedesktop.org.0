Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EE9653C41
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 07:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FFC10E049;
	Thu, 22 Dec 2022 06:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B3D10E049
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 06:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671691495; x=1703227495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+O0PoAfF/Z4c14O5Gzo0kiJpWizwMoMVup9UkPgE20s=;
 b=XApY2tXVT774VBBPJLqh00vHTl9LrKKzYa0vmwuc/ELvRhTjt2dK/e4H
 slI5NwlX7f4F0Sv4gPQyKZNuBT4LgdNWXP+M4ADlENRnYbDbpC4rWRr3w
 GSuz/BSgAVjo9GFcZeqNeYpksF9rajOE1Ab7w5WkQP93zo8Mjvab3IH+c
 4F8itFKLi5lkYl3jaU2lcQ+XndwAXdtD3QGEYB2ff/f6Fwt5MWruImEHO
 wVMLrnVntT55Aj04+nQJiyNl8Cdgya1ztYBNUvVjS/RaG2INdf+onYT3A
 x4UggijYCb5OC/QlrbrvDGKizlFDbgTpYE0Y/ro2UkNi9iqTLdWczw9iI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="300397432"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="300397432"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 22:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="715052075"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="715052075"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 22:44:53 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 12:13:48 +0530
Message-Id: <20221222064355.3642557-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/7] Enable HDCP2.x via GSC CS
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
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 715 ++++++++++++++++++
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
 15 files changed, 1793 insertions(+), 742 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
 create mode 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

