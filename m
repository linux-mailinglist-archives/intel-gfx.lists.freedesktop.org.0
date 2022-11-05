Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8140961A66B
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 01:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB1F10E0B6;
	Sat,  5 Nov 2022 00:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD2F10E0B6
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 00:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667608360; x=1699144360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a3E/xiujTq7YUOa+Ll6Fsca8OZnnTA5wahISsnHL8VY=;
 b=Ek8tjck4NQYHrbcn95/VC14GY/Ue2Mcj0NqJrcBhvdtSprkI8TnKN61G
 o9/WZR/QG5zfcFxKkB4x+B6BC6Z8PQfGGEhPxlo/Ais9wdZTaVpsYCe1f
 p50w57Dftf2Xa/m/f9oUGf/qZ1g2Vhpqs0u6pmg7qelGm6JJhSIhCethf
 2oNWxxStVcQyqB03Aa4Rex1WZeR4ystGoZyYItfvcBbGCxmsA0T4gI+Di
 9uXtuL/duuIGEMVpXFqktuiDjUBx6IFALb/acoDF9qcd7cyR+6M+iEvjT
 uJ7EI+x7POZv9MdIgOqrXxzev+aOBt19FBQMw8XJDPtK9MS3Kg82iryCL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="308814628"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="308814628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:32:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="698838658"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="698838658"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:32:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Nov 2022 17:32:34 -0700
Message-Id: <20221105003235.1717908-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] i915/uncore: Acquire fw before loop in
 intel_uncore_read64_2x32
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

PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
32 bit registers are read in a loop, there is a latency involved between
getting the GT timestamp and the CPU timestamp. As part of the
resolution, refactor intel_uncore_read64_2x32 to acquire forcewake and
uncore lock prior to reading upper and lower regs.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.h | 44 ++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 5449146a0624..e9e38490815d 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -382,20 +382,6 @@ __uncore_write(write_notrace, 32, l, false)
  */
 __uncore_read(read64, 64, q, true)
 
-static inline u64
-intel_uncore_read64_2x32(struct intel_uncore *uncore,
-			 i915_reg_t lower_reg, i915_reg_t upper_reg)
-{
-	u32 upper, lower, old_upper, loop = 0;
-	upper = intel_uncore_read(uncore, upper_reg);
-	do {
-		old_upper = upper;
-		lower = intel_uncore_read(uncore, lower_reg);
-		upper = intel_uncore_read(uncore, upper_reg);
-	} while (upper != old_upper && loop++ < 2);
-	return (u64)upper << 32 | lower;
-}
-
 #define intel_uncore_posting_read(...) ((void)intel_uncore_read_notrace(__VA_ARGS__))
 #define intel_uncore_posting_read16(...) ((void)intel_uncore_read16_notrace(__VA_ARGS__))
 
@@ -455,6 +441,36 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
 		intel_uncore_write_fw(uncore, reg, val);
 }
 
+static inline u64
+intel_uncore_read64_2x32(struct intel_uncore *uncore,
+			 i915_reg_t lower_reg, i915_reg_t upper_reg)
+{
+	u32 upper, lower, old_upper, loop = 0;
+	enum forcewake_domains fw_domains;
+	unsigned long flags;
+
+	fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
+						    FW_REG_READ);
+
+	fw_domains |= intel_uncore_forcewake_for_reg(uncore, upper_reg,
+						    FW_REG_READ);
+
+	spin_lock_irqsave(&uncore->lock, flags);
+	intel_uncore_forcewake_get__locked(uncore, fw_domains);
+
+	upper = intel_uncore_read_fw(uncore, upper_reg);
+	do {
+		old_upper = upper;
+		lower = intel_uncore_read_fw(uncore, lower_reg);
+		upper = intel_uncore_read_fw(uncore, upper_reg);
+	} while (upper != old_upper && loop++ < 2);
+
+	intel_uncore_forcewake_put__locked(uncore, fw_domains);
+	spin_unlock_irqrestore(&uncore->lock, flags);
+
+	return (u64)upper << 32 | lower;
+}
+
 static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 						i915_reg_t reg, u32 val,
 						u32 mask, u32 expected_val)
-- 
2.36.1

