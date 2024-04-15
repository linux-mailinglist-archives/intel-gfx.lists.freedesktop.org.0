Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB598A4A15
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DCA1122E7;
	Mon, 15 Apr 2024 08:14:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EptOWvCh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1641122D4;
 Mon, 15 Apr 2024 08:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168880; x=1744704880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PJYVSVyC765GHMQTeOFgNFERqPl0c6m+q0Prx2W45Uo=;
 b=EptOWvCh8UvZ97edxSzVh57jPI7Joct4WXOJLsGtsqf3iN3novGNH7ws
 IP7RU6wDYnsuoPA64M070Ay8F7rUqPL4IfsH5pc3c2rjsXL9shVyM0QuU
 6ddp2YH48Sqsxx7IDyCMFMBMggqExiCPxSMZFtezz8wpsLWf6YLMuCJfI
 ObIT+7afJJLr4vOUbQz7jaQKRdJobXLUNDHK5vwHx9iBjT5vAjfZzi2nf
 CiQYmpUO0r0c9XiecIWu9q9Mr7NlWFFL7OU/IzLOzNHz7MLcE7C7n1u/L
 wdkvJ2Uln2UCSB1YWZ79VkR9RA9cnpApSOqF5h9ZNHmDnWD2TWV4nM+Am g==;
X-CSE-ConnectionGUID: o1OfRUlDQYSZb9fZpp2w/g==
X-CSE-MsgGUID: MNVCQvkRTkuBylaxNKTmzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096438"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096438"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:40 -0700
X-CSE-ConnectionGUID: WP686xniRKmiguWQmXaxww==
X-CSE-MsgGUID: CNBIlvSWSGyHj6LqIBEjgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400509"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:38 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 19/21] drm/xe/device: implement transient flush
Date: Mon, 15 Apr 2024 13:44:21 +0530
Message-Id: <20240415081423.495834-20-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

CC: Matt Roper <matthew.d.roper@intel.com>
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
index 8fe811ea404a..65719a712807 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -318,6 +318,9 @@
 
 #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
 
+#define XE2_TDF_CTRL				XE_REG(0xb418)
+#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
+
 #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
 #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
 #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index d85a2ba0a057..22e6422c7b8e 100644
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
+		 * timeout. Currently we just assume the worst case, i.e. 64us,
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

