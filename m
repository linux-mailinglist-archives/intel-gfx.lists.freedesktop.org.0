Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5616B91D6A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 17:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729A710E4BF;
	Mon, 22 Sep 2025 15:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jT/HLJHd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDA710E48A;
 Mon, 22 Sep 2025 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758553402; x=1790089402;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HrVDWW4SYqIvDgRkpfxKP+v8FDFStK/PQZwYDa8290I=;
 b=jT/HLJHdK9qQlzfE8Rfj8kFjSL/g/1Rb6ziihZcZRj95bmH5lzuWNPMY
 wRqZpyOJnVH9sFlxW5g6W9zpLWBS0gb0QX7ZmWsi9kHJCk2P/qh760UmP
 t95geFva7Ai0tNjgd4YqgsDvkMRCEPcylRF7vmrkhMqDwOGmmciC9iuF6
 gGjtgAZpYGPoZKAR3pyWR6YTAKR3rXcWfj/f1Iylh4C97WMLDyqvpv50P
 tIwaLO7KOFtv0NFkcuVNMdJhTBjt7O+exd6jbIOZYC3fV2K9xhIdktsX2
 d9wzdpHXnGNxE0Fmy16sagDScUchinf/bpV5jkj0hLCNW3dTtVwcSPd3Q Q==;
X-CSE-ConnectionGUID: rR15J58gQ1afGS5MPIjr7Q==
X-CSE-MsgGUID: ec9SrhRDRzy93ouBkhh+zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71922177"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71922177"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 08:03:22 -0700
X-CSE-ConnectionGUID: HtV+4WjXTfqWfrnmShiqTA==
X-CSE-MsgGUID: j44Nhc8cQ+ODWhvKJuinvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180511462"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 22 Sep 2025 08:03:20 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
Date: Mon, 22 Sep 2025 20:33:15 +0530
Message-ID: <20250922150317.2334680-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
References: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To form the WCL platform as a subplatform of PTL in definition,
WCL pci ids are splited into saparate group from PTL.
So update the pciidlist struct to cover all the pci ids.

v2:
- Squash wcl description in single patch for display and xe.(jani,gustavo)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 drivers/gpu/drm/xe/xe_pci.c                         | 1 +
 include/drm/intel/pciids.h                          | 5 ++++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a002bc6ce7b0..a9a36176096f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1482,6 +1482,7 @@ static const struct {
 	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
+	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 77bee811a150..3f42b91efa28 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -376,6 +376,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
+	INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index da6301a6fcea..69d4ae92d822 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -877,7 +877,10 @@
 	MACRO__(0xB08F, ## __VA_ARGS__), \
 	MACRO__(0xB090, ## __VA_ARGS__), \
 	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0B0, ## __VA_ARGS__), \
+	MACRO__(0xB0B0, ## __VA_ARGS__)
+
+/* WCL */
+#define INTEL_WCL_IDS(MACRO__, ...) \
 	MACRO__(0xFD80, ## __VA_ARGS__), \
 	MACRO__(0xFD81, ## __VA_ARGS__)
 
-- 
2.51.0

