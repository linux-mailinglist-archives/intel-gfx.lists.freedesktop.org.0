Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16B563E6CB
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B3B10E520;
	Thu,  1 Dec 2022 00:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C45710E524
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 00:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856365; x=1701392365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KA5QAHPT9WP9+4vD5w62rVAkvo07OGuqi9++nL7BK9s=;
 b=YcLMI077/OyKaPLKsimJ5mLJlyyYK2w8lLRuy1+LEENTZzXRI3vLGWQk
 O44XMOPTIXJTTBoaUehmg4cvHkpGASxaAjCRLUNhVrFHTC70bGeOdgL3x
 CkVMhcsQo4GZ5kRki26uE/K8HPe8BenaRV/h4GijrKrZPk8Gf0efr1WcG
 GuvBLPGB6uhNvwxzCULv9r5MpPksinkM6y2UvKRqXv2IJ3GaZjUeOR+wK
 sVyBbbAllrMPBGe3ahfNEST31HaDpvcsrmfJbBFZ1lQp/aL/QNMaTMZ1b
 jALjRHoAbhLM2K5Vm6AAZf/4jSxK/0Bgw6Tvlf6t66r/PA7/XKmFe+y5Y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313180797"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313180797"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="769035757"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="769035757"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:13 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 16:59:07 -0800
Message-Id: <20221201005908.1097616-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
References: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
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

