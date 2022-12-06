Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DEA644FD1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 00:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6078410E039;
	Tue,  6 Dec 2022 23:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6208610E039
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 23:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670370566; x=1701906566;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nqzak87yhVKCxe1iDB8MA8S/PC1X05upKMAKgh+EBiw=;
 b=GoGAuxfLR+Xpg33lhTM5kyEF4TN+/Ov4cJALh1h1VwxDWVbsKywoL2GR
 Mk25EV6dk3dbDxp/yhQtW+F8n0To76qrf7/sWIArf1tBzGfVem68eNbL3
 mwzq9K6QeS9WpaacNJJs7SsKeqCTX+gwQgPOgh9zZOpDAxeJBDNxKJHnh
 0hmDrCSNSdNpqrTIqfWRUfIKZEQF2Zw5BA3PYDzSLKYYYw/yihPep7MU3
 JuDQA1+yoRqcFGjyrTCHaDH/YOrC2tgaTQb/Lh2Vojk9xH/uZuC/i5Vp2
 XPx2CpxhI6zYC6R4OZXNAZnPNfm15Xae4AbwB91EsUy3aZ0stmDM64hvT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="403034070"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="403034070"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 15:49:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="752846436"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="752846436"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 15:49:23 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 00:49:08 +0100
Message-Id: <20221206234908.2339645-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: ensure CSB FIFOs after GuC reset
 do not have odd entries
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CSB FIFOs stores 64-bit Context Status Buffers used by GuC firmware. They
are accessed by 32-bit register. Reads must occur in pairs to obtain
a single 64-bit CSB entry. The second read pops the CSB entry off the FIFO.
In case GuC reset happens between the reads, FIFO must be read once, to
recover proper behaviour.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7351
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c      | 25 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h | 13 +++++++++++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 24736ebee17c28..8e64b9024e3258 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -721,6 +721,30 @@ bool intel_has_reset_engine(const struct intel_gt *gt)
 	return INTEL_INFO(gt->i915)->has_reset_engine;
 }
 
+static void recover_csb_fifos(struct intel_gt *gt)
+{
+	const struct {
+		u32 bit;
+		i915_reg_t csb;
+	} csb_map[] = {
+		{ .bit = GUC_CSB_READ_FLAG_RCS, .csb = GUC_CS_CSB },
+		{ .bit = GUC_CSB_READ_FLAG_VCS, .csb = GUC_VCS_CSB },
+		{ .bit = GUC_CSB_READ_FLAG_VECS, .csb = GUC_VECS_CSB },
+		{ .bit = GUC_CSB_READ_FLAG_BCS, .csb = GUC_BCS_CSB },
+		{ .bit = GUC_CSB_READ_FLAG_CCS, .csb = GUC_CCS_CSB },
+	};
+	u32 dbg;
+
+	if (!intel_uc_uses_guc_submission(&gt->uc))
+		return;
+
+	dbg = intel_uncore_read(gt->uncore, GUCINT_DEBUG2);
+	for (int i = 0; i < ARRAY_SIZE(csb_map); ++i) {
+		if (dbg & csb_map[i].bit)
+			intel_uncore_read(gt->uncore, csb_map[i].csb);
+	}
+}
+
 int intel_reset_guc(struct intel_gt *gt)
 {
 	u32 guc_domain =
@@ -731,6 +755,7 @@ int intel_reset_guc(struct intel_gt *gt)
 
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	ret = gen6_hw_domain_reset(gt, guc_domain);
+	recover_csb_fifos(gt);
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
index 9915de32e894e1..beeb7fbff99453 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
@@ -154,4 +154,17 @@ struct guc_doorbell_info {
 #define GUC_INTR_SW_INT_1		BIT(1)
 #define GUC_INTR_SW_INT_0		BIT(0)
 
+#define GUCINT_DEBUG2			_MMIO(0xC5A4)
+#define   GUC_CSB_READ_FLAG_CCS		BIT(16)
+#define   GUC_CSB_READ_FLAG_BCS		BIT(3)
+#define   GUC_CSB_READ_FLAG_VECS	BIT(2)
+#define   GUC_CSB_READ_FLAG_VCS		BIT(1)
+#define   GUC_CSB_READ_FLAG_RCS		BIT(0)
+
+#define GUC_CS_CSB			_MMIO(0xC5B0)
+#define GUC_BCS_CSB			_MMIO(0xC5B4)
+#define GUC_VCS_CSB			_MMIO(0xC5B8)
+#define GUC_VECS_CSB			_MMIO(0xC5BC)
+#define GUC_CCS_CSB			_MMIO(0xC5E0)
+
 #endif
-- 
2.34.1

