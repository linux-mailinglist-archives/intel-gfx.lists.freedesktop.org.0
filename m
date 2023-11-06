Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AB97E2D25
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 20:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36A510E043;
	Mon,  6 Nov 2023 19:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F376910E043
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 19:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699300006; x=1730836006;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dq65a3YDWaJn0t1U2IyU4sn6b/AdtVL+1I2gPKIbzTY=;
 b=A2whpoqN+OjhuNZBGk/cGedCc+eRgmMkps3lE08Or/tR811C8gtmSWOv
 X5po4RU0F/RNrk9ClPt2fH5hUmb0IakGNvhajqHoSf38fKJVeXMv6eLl3
 u0xpynMzZ5BYTAZarLLseWzx9/7qm3xUGNmJ1oz/l96NQJpuwwII+xWsW
 x8QvZ0fvHwPa0rkHFYArlGg0oraNcuCmLyLDKGWVjiB4zQKzG7jXMGm6w
 BokSwwOGFTmjcQjOV9++5t3YganC2P1zhu5T/Hj0s8BNrtUWPsrGXQBZv
 Z0gRskq9sAvMKSHWRwifA+CtK92fS0vRKoVwGqFpV/m3F7WmlNkDWglH/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="393247626"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="393247626"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 11:46:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="791554284"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="791554284"
Received: from elyang-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.92.96.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 11:46:44 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 16:46:27 -0300
Message-ID: <20231106194627.144435-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/xelpmp: Add Wa_16021867713
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

This workaround applies to all steppings of Xe_LPM+. Implement the KMD
part.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index c0c8c12edea1..7060ce4fe058 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -260,6 +260,9 @@
 #define VDBOX_CGCTL3F10(base)			_MMIO((base) + 0x3f10)
 #define   IECPUNIT_CLKGATE_DIS			REG_BIT(22)
 
+#define VDBOX_CGCTL3F1C(base)			_MMIO((base) + 0x3f1c)
+#define   MFXPIPE_CLKGATE_DIS			REG_BIT(3)
+
 #define VDBOX_CGCTL3F18(base)			_MMIO((base) + 0x3f18)
 #define   ALNUNIT_CLKGATE_DIS			REG_BIT(13)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 12859b8d2092..63205edfea50 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1662,9 +1662,23 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	debug_dump_steering(gt);
 }
 
+static void
+wa_16021867713(struct intel_gt *gt, struct i915_wa_list *wal)
+{
+	struct intel_engine_cs *engine;
+	int id;
+
+	for_each_engine(engine, gt, id)
+		if (engine->class == VIDEO_DECODE_CLASS)
+			wa_write_or(wal, VDBOX_CGCTL3F1C(engine->mmio_base),
+				    MFXPIPE_CLKGATE_DIS);
+}
+
 static void
 xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
+	wa_16021867713(gt, wal);
+
 	/*
 	 * Wa_14018778641
 	 * Wa_18018781329
-- 
2.42.0

