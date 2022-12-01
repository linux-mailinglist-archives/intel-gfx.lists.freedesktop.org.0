Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B75D63E6E4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8D610E526;
	Thu,  1 Dec 2022 01:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A332810E51E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 01:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856737; x=1701392737;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KA5QAHPT9WP9+4vD5w62rVAkvo07OGuqi9++nL7BK9s=;
 b=oD4GZI57m+O3jT+XbQjBgrOLWOPuOxmXWtJtI6kPW6bOTI0d70FYmsiN
 Nj6oKotszVx1NK5oDyKKo6lEWFJCFntNH5HtczTtOaLIio9orhzNtYYpy
 W0gjw5186tGh9bgxQgrdGX5BlmHgG5h2LPww2zkhN5hpOGzAWMIzVd3uW
 D1/5+yjBDKsGt3WR1rY8OB6e8GetnW+gfBS96CtFJBYiy0o4+BXxUCdg9
 RksPsGiRILXjnuz9BO9caxbx24Mu8/jat82RH4gDc5rHmUD8TpJ9exYsb
 a7IVnV/vxfoMMlOgJxq+bSUx5bfgSzhgce7ri6Ye/SsBAr5kOE1WHHaOr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="377718680"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="377718680"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973322677"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973322677"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 17:05:34 -0800
Message-Id: <20221201010535.1097741-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Update OA mux whitelist
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
---
 drivers/gpu/drm/i915/i915_perf.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8ed9af571de9..8369ae4b850d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4318,6 +4318,17 @@ static const struct i915_range gen12_oa_mux_regs[] = {
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
@@ -4361,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 
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
2.36.1

