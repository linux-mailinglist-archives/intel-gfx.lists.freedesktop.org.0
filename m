Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF1764C58F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F279E891D7;
	Wed, 14 Dec 2022 09:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60721886A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671008940; x=1702544940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JuBk6iOJYhpbCSGV1l8pWa2UAWRhw3TtMmwIBP9ZTY0=;
 b=lXzDc48mAwae57gde+Zb9dPL1nY/shiDOPG/TsxlgG4Bjpv4//YQh62u
 ZGOYrAr8HDJzgUJ+BKXlbvU/VSx+uDprMDUUn2HLqRTp0p3k5qwLbTKwB
 91BF3ydsQTiO4wqUkbPi9g5DBqPjNV9Ns0aH54eqiM859bJLgi43Hcora
 BLPaG8VhvBGoHS7u+ieJEC/W5euMv6vP7QiCmP6rrdil6uT7Ae9Dx1hnz
 vKj+hYuMX4WHs045OqckxFL+44PxYfD2vMbrVxfKeEddmmXTbIPjSU+Tm
 SgUcFoieSljv6jz1h4HurWeIN5S8Lowyy8UDm7KLHvzBC/shcOOyxF79o A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="317054604"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="317054604"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:08:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681458376"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681458376"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 01:08:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 14:37:51 +0530
Message-Id: <20221214090758.3040356-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/7] Enable HDCP2.x via GSC CS
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

Anshuman Gupta (2):
  drm/i915/hdcp: Keep cp fw agonstic naming convention
  drm/i915/hdcp: HDCP2.x Refactoring to agnotic cp f/w

Suraj Kandpal (5):
  drm/i915/gsc: Create GSC request submission mechanism
  drm/i915/hdcp: Refactor HDCP API structures
  drm/i915/hdcp: Fill wired_cmd_in structures at a single place
  drm/i915/mtl: Add function to send command to GSC CS
  drm/i915/mtl: Add HDCP GSC interface

 drivers/gpu/drm/i915/Makefile                 |   2 +
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 107 +--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 716 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  21 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     |  62 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   3 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h   |  42 +
 drivers/gpu/drm/i915/i915_hdcp_interface.c    | 216 ++++++
 drivers/misc/mei/hdcp/mei_hdcp.c              | 189 +----
 drivers/misc/mei/hdcp/mei_hdcp.h              | 354 ---------
 include/drm/i915_hdcp_interface.h             | 578 ++++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 -----
 15 files changed, 1736 insertions(+), 745 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
 create mode 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c
 create mode 100644 include/drm/i915_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

