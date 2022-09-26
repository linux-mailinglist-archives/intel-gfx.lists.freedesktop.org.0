Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A235EB36B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 23:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A3110E7C0;
	Mon, 26 Sep 2022 21:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E142C10E7C0;
 Mon, 26 Sep 2022 21:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664228678; x=1695764678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f+fooFLs+n5fUzoy0wdubLeIzarXddjJg5fpuDA+lpg=;
 b=Hav4lB29Fy/+J2JrhIx6J8IegktQY/DxPG8pwfk6w3YRhBwf2zcCRS5c
 Q07uybXIX5mWanr+IkbEnoYA3Gmt6HnFpugbpmv6xOZYjRsvIMpEEKgfV
 D9WP1hW/7SJfTF7mxJ0ZPWGg8CpPgGAVm3498xS6trBxoNCLy1BG/1+vl
 pwwEo9RUWxgt5UhGv8yljVxV3czPzzgX3Lp4JhCztEoFgkSvrdQ71nssM
 vk3f9x9T1bta3L0lm7H/a0UcR7vOpRKk1m/C1rDsxxFdv8et8uD0qTJyn
 bsmf5M4Tnuvil6ftmQ4RAxRuR8qVidjVjm+dl+WwTIr+DPCd6OI/xFOiY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="362981135"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="362981135"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 14:44:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="866298088"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="866298088"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 14:44:26 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 14:43:55 -0700
Message-Id: <20220926214355.2250357-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220916014648.1310346-4-radhakrishna.sripada@intel.com>
References: <20220916014648.1310346-4-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4.1] drm/i915/mtl: Define engine context layouts
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
Cc: lucas.demarchi@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

The part of the media and blitter engine contexts that we care about for
setting up an initial state on MTL are nearly similar to DG2 (and PVC).
The difference being PRT_BB_STATE being replaced with NOP.

For render/compute engines, the part of the context images are nearly
the same, although the layout had a very slight change --- one POSH
register was removed and the placement of some LRI/noops adjusted
slightly to compensate.

v2:
 - Dg2, mtl xcs offsets slightly vary. Use a separate offsets array(Bala)
 - Add missing nop in xcs offsets(Bala)
v3:
 - Fix the spacing for nop in xcs offset(MattR)
v4:
 - Fix rcs register offset(MattR)
v4.1:
 - Fix commit message(Lucas)

Bspec: 46261, 46260, 45585
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Licas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 84 ++++++++++++++++++++++++++++-
 1 file changed, 82 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 82d899f170fb..e84ef3859934 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -264,6 +264,39 @@ static const u8 dg2_xcs_offsets[] = {
 	END
 };
 
+static const u8 mtl_xcs_offsets[] = {
+	NOP(1),
+	LRI(13, POSTED),
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
+	NOP(4),
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
@@ -606,6 +639,49 @@ static const u8 dg2_rcs_offsets[] = {
 	END
 };
 
+static const u8 mtl_rcs_offsets[] = {
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
+	NOP(2),
+	LRI(2, POSTED),
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
@@ -624,7 +700,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 		   !intel_engine_has_relative_mmio(engine));
 
 	if (engine->flags & I915_ENGINE_HAS_RCS_REG_STATE) {
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70))
+			return mtl_rcs_offsets;
+		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			return dg2_rcs_offsets;
 		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
 			return xehp_rcs_offsets;
@@ -637,7 +715,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 		else
 			return gen8_rcs_offsets;
 	} else {
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70))
+			return mtl_xcs_offsets;
+		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			return dg2_xcs_offsets;
 		else if (GRAPHICS_VER(engine->i915) >= 12)
 			return gen12_xcs_offsets;
-- 
2.34.1

