Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22119648C9D
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 04:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E8010E095;
	Sat, 10 Dec 2022 03:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D035110E063
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Dec 2022 03:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670641281; x=1702177281;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=twCOOzvTl9h4scH3pgXQhg635DAnZfTrii418m6SRpc=;
 b=L/o4DcWCqi27720imOn+r2UtX0HdhvNHL8635wfbJWbbDqyC1LwdPCav
 eQM4Xcn5kc77pIDQQ6/fZI/vZKvMWcGYM0QP2g8hzPnw2riCHlVFYAkx0
 z1tIcY6FM0kc1ri0Ydav7jCOJRW/cO9WhyAV+HYBxepDBVL/5ZdfOt6Lf
 ZPJru+0ToaDGBn1Cjm2VrWq/XP5GJB58p8E7S4SXo+5DLjhsb4GeXUoK8
 lKVbzFLs7q1/Uoe6FAa3Oz7Qi/XGNBY5GGzi5nXhQr8XAlyS272cf8ZTe
 +e2nv7KoOy5qlE6heanKKAx+7J5Qc0zLPZBHSxa+bATXxt8oGZXYs97Lr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="379800536"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="379800536"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="597914726"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="597914726"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 19:01:15 -0800
Message-Id: <20221210030116.1777214-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/mtl: Update OA mux whitelist
 for MTL
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

0x20cc (WAIT_FOR_RC6_EXIT on other platforms) is repurposed on MTL. Use
a separate mux table to verify oa configs passed by user.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1a8618a787d6..41f6c0923ba5 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4322,6 +4322,17 @@ static const struct i915_range gen12_oa_mux_regs[] = {
 	{}
 };
 
+/*
+ * Ref: 14010536224:
+ * 0x20cc is repurposed on MTL, so use a separate array for MTL.
+ */
+static const struct i915_range mtl_oa_mux_regs[] = {
+	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
+	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
+	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
+	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
+};
+
 static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
 	return reg_in_range_table(addr, gen7_oa_b_counters);
@@ -4365,7 +4376,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen12_oa_mux_regs);
+	if (IS_METEORLAKE(perf->i915))
+		return reg_in_range_table(addr, mtl_oa_mux_regs);
+	else
+		return reg_in_range_table(addr, gen12_oa_mux_regs);
 }
 
 static u32 mask_reg_value(u32 reg, u32 val)
-- 
2.38.1

