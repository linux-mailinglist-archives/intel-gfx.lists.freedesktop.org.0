Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F2166674C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934EA10E842;
	Wed, 11 Jan 2023 23:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B611310E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481375; x=1705017375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9GDlP8Sc3SUymk9YKzNteEdxBMuUq0q6vRFLRcKS+14=;
 b=PUPz2RZC2O1t/s7mciIKFWAe34RzXHo6AL6NAD6mlcCy5v3pcjqg7o1S
 U6nD2G6TDJcjTXgbs5rdD9Xs3GYgmMX+HeK3ZfqjhDsIxUOIGxH0x6/yD
 Zq4XrUHdY702v1lHGtMwZTh7qK1XZ2mw0qMiCrPS9iI7EbXjffuIAXCTr
 m98449TYI4nrgTF4kro5NJq/hc7dyJSl+bJaDCTY8a9JkSfgDGeq8yH8g
 Nc9v/XjUCYrYk5QYGeN8UxZRlXxdWascujYHkgBraDXrS9D0rAqJtLAmd
 cObE7iQoFW87fLGIEEGsSNToPeimOaW+D2SFbiQgobyKhfxAqR8l6GmqG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090895"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090895"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486365"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486365"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:23 -0800
Message-Id: <20230111235531.3353815-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 1/9] drm/i915/mtl: Fix bcs default
 context
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

From: Lucas De Marchi <lucas.demarchi@intel.com>

Commit 0d0e7d1eea9e ("drm/i915/mtl: Define engine context layouts")
added the engine context for Meteor Lake. In a second revision of the
patch it was believed the xcs offsets were wrong due to a tagging
issue in the spec. The first version was actually correct, as shown
by the intel_lrc_live_selftests/live_lrc_layout test:

	i915: Running gt_lrc
	i915: Running intel_lrc_live_selftests/live_lrc_layout
	bcs0: LRI command mismatch at dword 1, expected 1108101d found 11081019
	[drm:drm_helper_probe_single_connector_modes [drm_kms_helper]] [CONNECTOR:236:DP-1] disconnected
	bcs0: HW register image:
	[0000] 00000000 1108101d 00022244 ffff0008 00022034 00000088 00022030 00000088
	...
	bcs0: SW register image:
	[0000] 00000000 11081019 00022244 00090009 00022034 00000000 00022030 00000000

The difference in the 2 additional dwords (0x1d vs 0x19) are the offsets
 0x120 / 0x124 that are indeed part of the context image.

Bspec: 45585

Fixes: 0d0e7d1eea9e ("drm/i915/mtl: Define engine context layouts")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 37 +----------------------------
 1 file changed, 1 insertion(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7771a19008c6..bbeeb6dde7ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -288,39 +288,6 @@ static const u8 dg2_xcs_offsets[] = {
 	END
 };
 
-static const u8 mtl_xcs_offsets[] = {
-	NOP(1),
-	LRI(13, POSTED),
-	REG16(0x244),
-	REG(0x034),
-	REG(0x030),
-	REG(0x038),
-	REG(0x03c),
-	REG(0x168),
-	REG(0x140),
-	REG(0x110),
-	REG(0x1c0),
-	REG(0x1c4),
-	REG(0x1c8),
-	REG(0x180),
-	REG16(0x2b4),
-	NOP(4),
-
-	NOP(1),
-	LRI(9, POSTED),
-	REG16(0x3a8),
-	REG16(0x28c),
-	REG16(0x288),
-	REG16(0x284),
-	REG16(0x280),
-	REG16(0x27c),
-	REG16(0x278),
-	REG16(0x274),
-	REG16(0x270),
-
-	END
-};
-
 static const u8 gen8_rcs_offsets[] = {
 	NOP(1),
 	LRI(14, POSTED),
@@ -739,9 +706,7 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 		else
 			return gen8_rcs_offsets;
 	} else {
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70))
-			return mtl_xcs_offsets;
-		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			return dg2_xcs_offsets;
 		else if (GRAPHICS_VER(engine->i915) >= 12)
 			return gen12_xcs_offsets;
-- 
2.34.1

