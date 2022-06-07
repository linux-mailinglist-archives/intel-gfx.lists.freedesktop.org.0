Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D07DE53FBC3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 12:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E4B11286C;
	Tue,  7 Jun 2022 10:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A48911BA20
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 10:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654598755; x=1686134755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l5mLAemnIJibQiLGBfSUuNHySOSdZebsPhBFg2rEbjc=;
 b=Y07/P9HVT81jCPzGCw9b6G/d42IyzBb9zANFF9NGW99qI8lRpID6rmef
 iqO6rBy37wwycMfWPM3xj7N2wKbfnoF6rJfvWyt18FGgvMvt1/xnnvIFc
 6OTAs+RInqQAoZ3nIzEawZoDi7z7RYGHJnZhrZHWhbb/fq5civy2N2BDT
 iKvBgcJ3RzthPMA7Nvg2ChxsQ5mTUR0a0NY4RtyLRF0lfrFAVbvEuVre/
 +eMNLvVZW040z/YF7Kcqj4HShIX2Ow71HgdELh8NNAQRDH0nGgTFt5uxH
 kWdU8ks3/nVZRI3pvCZIwQ9lBSacX5V/O/qhEqGdCjMTgpbx+/PPMdlBM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="256553697"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="256553697"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 03:45:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="647976234"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 03:45:53 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 16:15:42 +0530
Message-Id: <20220607104542.8559-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <=20220606060324.1618-1-anshuman.gupta@intel.com>
References: <=20220606060324.1618-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add Wa_14015795083
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

i915 must disable Render DOP clock gating globally.

v2:
- Addressed cosmetic review comments.

Bspec: 52621
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 6aa1ceaa8d27..c8129a351731 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -631,6 +631,7 @@
 
 #define GEN7_MISCCPCTL				_MMIO(0x9424)
 #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
+#define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE	REG_BIT(1)
 #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
 #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
 #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6e875d4f5f65..1e7ca3863f20 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1486,6 +1486,9 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * performance guide section.
 	 */
 	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
+
+	/* Wa_14015795083 */
+	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 }
 
 static void
-- 
2.26.2

