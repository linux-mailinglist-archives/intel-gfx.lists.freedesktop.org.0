Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C05C583653
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55ED510E448;
	Thu, 28 Jul 2022 01:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D54710E640
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vWUkSUJ8cVAIjOdwSDrWhXpCLnMZ5dsv7fCN3W4MT+o=;
 b=gNB7FMwOtRzl73tuTgsjNOCaySr9+4TyYGSeHyklg+K5Y5NdxCySt7S5
 BHRYqIxa7R9ANdrpvXoMEQ9UngzGtlyfNFph63/C24LwVgtnFelpM80jF
 5wjCpid/QVWkBbctBe6EOI6wMRoePjAHDHZinn0O1pZzOasLaYGIr3zRt
 UFhJc5Hfd7B+uErurHZ7puBWjiN+BnrI0nlYLzW3xms68YrEItrUvDkf5
 +/4Pg5GkwC3y3ITHXDChuYl6dP565Wvuc1hZd2AbLv1mX4BXEMOc4y/+Y
 ah/zRGj3/GvlTSm3ApQPwIAM+erNAZTcXkX4ILbuW9i3iwDuZH28ZM2uR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693653"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693653"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456967"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:02 -0700
Message-Id: <20220728013420.3750388-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/23] drm/i915/mtl: Define engine context
 layouts
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

From: Matt Roper <matthew.d.roper@intel.com>

The part of the media and blitter engine contexts that we care about for
setting up an initial state are the same on MTL as they were on on DG2
(and PVC), so we need to update the driver conditions to re-use the DG2
context table.

For render/compute engines, the part of the context images are nearly
the same, although the layout had a very slight change --- one POSH
register was removed and the placement of some LRI/noops adjusted
slightly to compensate.

Bspec: 46261, 46260, 45585
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 47 ++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index eec73c66406c..d3833cbaabcb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -606,6 +606,49 @@ static const u8 dg2_rcs_offsets[] = {
 	END
 };
 
+static const u8 mtl_rcs_offsets[] = {
+       NOP(1),
+       LRI(15, POSTED),
+       REG16(0x244),
+       REG(0x034),
+       REG(0x030),
+       REG(0x038),
+       REG(0x03c),
+       REG(0x168),
+       REG(0x140),
+       REG(0x110),
+       REG(0x1c0),
+       REG(0x1c4),
+       REG(0x1c8),
+       REG(0x180),
+       REG16(0x2b4),
+       REG(0x120),
+       REG(0x124),
+
+       NOP(1),
+       LRI(9, POSTED),
+       REG16(0x3a8),
+       REG16(0x28c),
+       REG16(0x288),
+       REG16(0x284),
+       REG16(0x280),
+       REG16(0x27c),
+       REG16(0x278),
+       REG16(0x274),
+       REG16(0x270),
+
+       NOP(2),
+       LRI(2, POSTED),
+       REG16(0x5a8),
+       REG16(0x5ac),
+
+       NOP(6),
+       LRI(1, 0),
+       REG(0x0c8),
+
+       END
+};
+
 #undef END
 #undef REG16
 #undef REG
@@ -624,7 +667,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 		   !intel_engine_has_relative_mmio(engine));
 
 	if (engine->flags & I915_ENGINE_HAS_RCS_REG_STATE) {
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70))
+			return mtl_rcs_offsets;
+		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			return dg2_rcs_offsets;
 		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
 			return xehp_rcs_offsets;
-- 
2.25.1

