Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5FF8AC464
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F250B1127FB;
	Mon, 22 Apr 2024 06:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftkK9Yq8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60160112801;
 Mon, 22 Apr 2024 06:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768042; x=1745304042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SYhu4NzE3duXJKzaG8hh38tSAZI1b9CW/hkyxI6t4GM=;
 b=ftkK9Yq8TwVwBgkAAxZOrvQdOQMe4mNLi7tyTYcsIHAeQ31uPNuUOg8J
 +RxQ0r8R+5x6HtxuKWe964epE6jyQuT00Bg7AVJ2d0k/OUXG42ezs6zpj
 0bCOZqvFPeLPy9c2AOBfQv5j2UCZ/qUl9b1K+Z4vd/cXlW/amyI8yqi6d
 iMiO6GVyhrlncYlIsBiAUuFelexXhNCEWKRKqY1+GKkNnDhOPfpnNyu7z
 c7RYGdg6lc9wQukjA85YocCjVIfjAFsftp5DWx7hHKYnAnQpM3w0uURxN
 h0McqN1JydWt+zovFA2y4W4XxMMdPnsbqf1oRw4T9J6fQ0k7OyCCYhHeV Q==;
X-CSE-ConnectionGUID: teJnXCGCRDSVrjcpngPRgg==
X-CSE-MsgGUID: PgmipBymRcO+Wq4BzlOaEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208670"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208670"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:42 -0700
X-CSE-ConnectionGUID: n95JUVS0S/eK1iSTkTxklA==
X-CSE-MsgGUID: m1hHtM9dRRy3FuofPkUJTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896591"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:39 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 17/19] drm/xe/device: implement transient flush
Date: Mon, 22 Apr 2024 12:10:36 +0530
Message-Id: <20240422064038.1451579-18-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

From: Nirmoy Das <nirmoy.das@intel.com>

Display surfaces can be tagged as transient by mapping it using one of
the various L3:XD PAT index modes on Xe2. The expectation is that KMD
needs to request transient data flush at the start of flip sequence to
ensure all transient data in L3 cache is flushed to memory. Add a
routine for this which we can then call from the display code.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Co-developed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 ++
 drivers/gpu/drm/xe/xe_device.c       | 49 ++++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_device.h       |  2 ++
 3 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index 94445810ccc9..26fb4943c79e 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -321,6 +321,9 @@
 
 #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
 
+#define XE2_TDF_CTRL				XE_REG(0xb418)
+#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
+
 #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
 #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
 #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index d85a2ba0a057..752fa16551f6 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -717,6 +717,55 @@ void xe_device_wmb(struct xe_device *xe)
 		xe_mmio_write32(gt, SOFTWARE_FLAGS_SPR33, 0);
 }
 
+/**
+ * xe_device_td_flush() - Flush transient L3 cache entries
+ * @xe: The device
+ *
+ * Display engine has direct access to memory and is never coherent with L3/L4
+ * caches (or CPU caches), however KMD is responsible for specifically flushing
+ * transient L3 GPU cache entries prior to the flip sequence to ensure scanout
+ * can happen from such a surface without seeing corruption.
+ *
+ * Display surfaces can be tagged as transient by mapping it using one of the
+ * various L3:XD PAT index modes on Xe2.
+ *
+ * Note: On non-discrete xe2 platforms, like LNL, the entire L3 cache is flushed
+ * at the end of each submission via PIPE_CONTROL for compute/render, since SA
+ * Media is not coherent with L3 and we want to support render-vs-media
+ * usescases. For other engines like copy/blt the HW internally forces uncached
+ * behaviour, hence why we can skip the TDF on such platforms.
+ */
+void xe_device_td_flush(struct xe_device *xe)
+{
+	struct xe_gt *gt;
+	u8 id;
+
+	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
+		return;
+
+	for_each_gt(gt, xe, id) {
+		if (xe_gt_is_media_type(gt))
+			continue;
+
+		if (xe_force_wake_get(gt_to_fw(gt), XE_FW_GT))
+			return;
+
+		xe_mmio_write32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST);
+		/*
+		 * FIXME: We can likely do better here with our choice of
+		 * timeout. Currently we just assume the worst case, i.e. 150us,
+		 * which is believed to be sufficient to cover the worst case
+		 * scenario on current platforms if all cache entries are
+		 * transient and need to be flushed..
+		 */
+		if (xe_mmio_wait32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST, 0,
+				   150, NULL, false))
+			xe_gt_err_once(gt, "TD flush timeout\n");
+
+		xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
+	}
+}
+
 u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
 {
 	return xe_device_has_flat_ccs(xe) ?
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index d413bc2c6be5..d3430f4b820a 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -176,4 +176,6 @@ void xe_device_snapshot_print(struct xe_device *xe, struct drm_printer *p);
 u64 xe_device_canonicalize_addr(struct xe_device *xe, u64 address);
 u64 xe_device_uncanonicalize_addr(struct xe_device *xe, u64 address);
 
+void xe_device_td_flush(struct xe_device *xe);
+
 #endif
-- 
2.25.1

