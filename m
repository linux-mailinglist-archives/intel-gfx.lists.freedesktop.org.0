Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D738896D45
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE381129CD;
	Wed,  3 Apr 2024 10:52:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hK0NHzhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AB91129C2;
 Wed,  3 Apr 2024 10:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141555; x=1743677555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XzM5UF6YYf5RgeSb5OXg6mZsXe5Bm8PF0BssgnAmlrM=;
 b=hK0NHzhXFJRfAgqpvau8u7nOcvheVUzWLpmXD1KNQg9zyF6Ntz7qsIct
 CkYsvnAHxSJkWV/F4clOZU/o8pdfqRKzlsLaumtU9YT5F92SyiXtKQMQx
 ePooAK2vL2Y5ytPdWlNtImWqe+1J9CRfBF5lPPg3EtpP/kujHGye5BlMX
 i1ukQVHby2vxBjtWijpvJShlyl57pOhX5EYBgbAiN2kiFf7ZgzvwRZArS
 LJb3vrGnxb7J6Ki0pJnVD3MTC6e7l5dV0Mp8Wis59LcYFPQGIjO67OTSs
 F2E/nCkAoq+bIR6hGRbAR9PE4nSXu+52vGa2NUjC8VL/D9/Zu+3ofgrzr Q==;
X-CSE-ConnectionGUID: aAmoaatBR+G4A8g7o6lA0w==
X-CSE-MsgGUID: h6X5yrFMSViXDjXSUzbEtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212273"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212273"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:52:02 -0700
X-CSE-ConnectionGUID: GDjd+km9QWS5v/bTzLnsag==
X-CSE-MsgGUID: M4G44AKiRBSSS3/BN3Dmww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493452"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:59 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 23/25] drm/xe/device: implement transient flush
Date: Wed,  3 Apr 2024 16:21:21 +0530
Message-Id: <20240403105123.1327669-24-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 ++
 drivers/gpu/drm/xe/xe_device.c       | 49 ++++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_device.h       |  2 ++
 3 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index d5b21f03beaa..9c6549830e24 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -305,6 +305,9 @@
 
 #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
 
+#define XE2_TDF_CTRL				XE_REG(0xb418)
+#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
+
 #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
 #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
 #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 01bd5ccf05ca..66182220e663 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -641,6 +641,55 @@ void xe_device_wmb(struct xe_device *xe)
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
+		xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
+
+		xe_mmio_write32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST);
+		/*
+		 * FIXME: We can likely do better here with our choice of
+		 * timeout.  Currently we just assume the worst case, but really
+		 * we should make this dependent on how much actual L3 there is
+		 * for this system. Recomendation is to allow ~64us in the worst
+		 * case for 8M of L3 (assumes all entries are transient and need
+		 * to be flushed).
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

