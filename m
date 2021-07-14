Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 707413C7CB9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE69F6E1B6;
	Wed, 14 Jul 2021 03:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB8F6E167
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="295923564"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="295923564"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031543"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:18 -0700
Message-Id: <20210714031540.3539704-29-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 28/50] drm/i915/dg2: Add new LRI reg offsets
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
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

New LRI register offsets were introduced for DG2, this patch adds
those extra registers, and create new register table for setting offsets
to compare with HW generated context image - especially for gt_lrc test.
Also updates general purpose register with scratch offset for DG2, in
order to use it for live_lrc_fixed selftest.

Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 85 ++++++++++++++++++++++++++++-
 1 file changed, 83 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c3f5bec8ae15..1b7e75e4c011 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -226,6 +226,40 @@ static const u8 gen12_xcs_offsets[] = {
 	END
 };
 
+static const u8 dg2_xcs_offsets[] = {
+	NOP(1),
+	LRI(15, POSTED),
+	REG16(0x244),
+	REG(0x034),
+	REG(0x030),
+	REG(0x038),
+	REG(0x03c),
+	REG(0x168),
+	REG(0x140),
+	REG(0x110),
+	REG(0x1c0),
+	REG(0x1c4),
+	REG(0x1c8),
+	REG(0x180),
+	REG16(0x2b4),
+	REG(0x120),
+	REG(0x124),
+
+	NOP(1),
+	LRI(9, POSTED),
+	REG16(0x3a8),
+	REG16(0x28c),
+	REG16(0x288),
+	REG16(0x284),
+	REG16(0x280),
+	REG16(0x27c),
+	REG16(0x278),
+	REG16(0x274),
+	REG16(0x270),
+
+	END
+};
+
 static const u8 gen8_rcs_offsets[] = {
 	NOP(1),
 	LRI(14, POSTED),
@@ -525,6 +559,49 @@ static const u8 xehp_rcs_offsets[] = {
 	END
 };
 
+static const u8 dg2_rcs_offsets[] = {
+	NOP(1),
+	LRI(15, POSTED),
+	REG16(0x244),
+	REG(0x034),
+	REG(0x030),
+	REG(0x038),
+	REG(0x03c),
+	REG(0x168),
+	REG(0x140),
+	REG(0x110),
+	REG(0x1c0),
+	REG(0x1c4),
+	REG(0x1c8),
+	REG(0x180),
+	REG16(0x2b4),
+	REG(0x120),
+	REG(0x124),
+
+	NOP(1),
+	LRI(9, POSTED),
+	REG16(0x3a8),
+	REG16(0x28c),
+	REG16(0x288),
+	REG16(0x284),
+	REG16(0x280),
+	REG16(0x27c),
+	REG16(0x278),
+	REG16(0x274),
+	REG16(0x270),
+
+	LRI(3, POSTED),
+	REG(0x1b0),
+	REG16(0x5a8),
+	REG16(0x5ac),
+
+	NOP(6),
+	LRI(1, 0),
+	REG(0x0c8),
+
+	END
+};
+
 #undef END
 #undef REG16
 #undef REG
@@ -543,7 +620,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 		   !intel_engine_has_relative_mmio(engine));
 
 	if (engine->class == RENDER_CLASS) {
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+			return dg2_rcs_offsets;
+		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
 			return xehp_rcs_offsets;
 		else if (GRAPHICS_VER(engine->i915) >= 12)
 			return gen12_rcs_offsets;
@@ -554,7 +633,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 		else
 			return gen8_rcs_offsets;
 	} else {
-		if (GRAPHICS_VER(engine->i915) >= 12)
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+			return dg2_xcs_offsets;
+		else if (GRAPHICS_VER(engine->i915) >= 12)
 			return gen12_xcs_offsets;
 		else if (GRAPHICS_VER(engine->i915) >= 9)
 			return gen9_xcs_offsets;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
