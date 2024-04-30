Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3816E8B7E90
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5372F112D90;
	Tue, 30 Apr 2024 17:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4FstbIf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FFD112D7D;
 Tue, 30 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498222; x=1746034222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9xYhLgg1rFIkfkuVL2s5K84bbt2YwGwVG9jv59E62ug=;
 b=F4FstbIfTPr2LOeO6KKXAw/c29SPyaF3yVCSoKSGQ4v1CWP/GsAaIf8u
 r+SenwpPf77Hd9SeU9wh7IJPHzMgLxS5vhtODmoS7ruGYT0F9X3RR5q+9
 vjOeICuuXj3Xl7k8p9XvXEKLFngXyRAOjWRfOmD3pSoui/eGgs6GE0n8K
 9ZYwsTktOduSjN/8l2LjnYGUrgfg6Vh0v4Bd2cqwUxoNlqYPlBHP/6qis
 FK2csH74FNbWZS1mySZmshzrphfSD4Zfkn47iUiU376scBpfYfEcLgpKe
 W5l2abnT/fUqp09+dn5lAVxn1hJXaflyDYGxselynwypUTUVV0kYIpj3Y g==;
X-CSE-ConnectionGUID: 6KetHMXvSKaVc8EFzEw4QQ==
X-CSE-MsgGUID: 7NQYJdU6RpmKa51MTMgEjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27742004"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27742004"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
X-CSE-ConnectionGUID: nWBpdZ/XQL6nUx03VFvnbA==
X-CSE-MsgGUID: Q3OI64O5RwSQau0y6k2GPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617862"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:22 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 17/19] drm/xe/device: implement transient flush
Date: Tue, 30 Apr 2024 10:28:48 -0700
Message-Id: <20240430172850.1881525-18-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

v2: rebase(RK)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Co-developed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 ++
 drivers/gpu/drm/xe/xe_device.c       | 49 ++++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_device.h       |  1 +
 3 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index 83847f2da72a..b4f1a3264e8c 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -334,6 +334,9 @@
 
 #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
 
+#define XE2_TDF_CTRL				XE_REG(0xb418)
+#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
+
 #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
 #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
 #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index b61f8356e23e..05c28314b748 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -719,6 +719,55 @@ void xe_device_wmb(struct xe_device *xe)
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
index 82317580f4bf..f2a78b6a9bff 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -173,5 +173,6 @@ static inline bool xe_device_wedged(struct xe_device *xe)
 }
 
 void xe_device_declare_wedged(struct xe_device *xe);
+void xe_device_td_flush(struct xe_device *xe);
 
 #endif
-- 
2.34.1

