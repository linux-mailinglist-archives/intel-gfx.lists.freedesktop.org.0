Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 824DF4BA041
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 13:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA02810EB91;
	Thu, 17 Feb 2022 12:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA6710EB91
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 12:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645101391; x=1676637391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NAupmyJD4w6ld9qJpb0jWwMvt+mxFfjMk05nrmnBwcc=;
 b=KitAu6VQx4SF+hRrBgwM/QRbodNlSj7cJO9C0ZVMOse2AFF+f44OPmR4
 JhlSKfDyn7oVKsIL3njJoH73RLwg8XerzUqZCuca2gMGJcEMF5oI7zVyO
 HwZRGggeEiC4H641HAr/nIiQFUBWh8TeG4d29GYJ/9YB9l+P12HKcHmOM
 YN0tZuK0wtC2t0bmA/a5GNrXgO7W42elhhrgH0mwDtq1ZBKvGPxbw3tA1
 bnTQtad7BprZh84ixvxw/A6z4hunkXUnxZhRjaanh1xGOtK2Zx5QJa9Dx
 bfKNWzOKSTx9pA5HZOijCUCSJEJjmQBaRs+zzNm043f0+a3nbYHmkv2X2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="314131658"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="314131658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 04:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="589365274"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 17 Feb 2022 04:36:28 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 18:02:23 +0530
Message-Id: <20220217123223.748184-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: use get_reset_domain() helper
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We dont need to implement reset_domain in intel_engine
_setup(), but can be done as a helper. Implemented as
engine->reset_domain = get_reset_domain().

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 74 +++++++++++++----------
 1 file changed, 42 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e53008b4dd05..e855c801ba28 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -293,6 +293,46 @@ static void nop_irq_handler(struct intel_engine_cs *engine, u16 iir)
 	GEM_DEBUG_WARN_ON(iir);
 }
 
+static u32 get_reset_domain(u8 ver, enum intel_engine_id id)
+{
+	u32 reset_domain;
+
+	if (ver >= 11) {
+		static const u32 engine_reset_domains[] = {
+			[RCS0]  = GEN11_GRDOM_RENDER,
+			[BCS0]  = GEN11_GRDOM_BLT,
+			[VCS0]  = GEN11_GRDOM_MEDIA,
+			[VCS1]  = GEN11_GRDOM_MEDIA2,
+			[VCS2]  = GEN11_GRDOM_MEDIA3,
+			[VCS3]  = GEN11_GRDOM_MEDIA4,
+			[VCS4]  = GEN11_GRDOM_MEDIA5,
+			[VCS5]  = GEN11_GRDOM_MEDIA6,
+			[VCS6]  = GEN11_GRDOM_MEDIA7,
+			[VCS7]  = GEN11_GRDOM_MEDIA8,
+			[VECS0] = GEN11_GRDOM_VECS,
+			[VECS1] = GEN11_GRDOM_VECS2,
+			[VECS2] = GEN11_GRDOM_VECS3,
+			[VECS3] = GEN11_GRDOM_VECS4,
+		};
+		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
+			   !engine_reset_domains[id]);
+		reset_domain = engine_reset_domains[id];
+	} else {
+		static const u32 engine_reset_domains[] = {
+			[RCS0]  = GEN6_GRDOM_RENDER,
+			[BCS0]  = GEN6_GRDOM_BLT,
+			[VCS0]  = GEN6_GRDOM_MEDIA,
+			[VCS1]  = GEN8_GRDOM_MEDIA2,
+			[VECS0] = GEN6_GRDOM_VECS,
+		};
+		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
+			   !engine_reset_domains[id]);
+		reset_domain = engine_reset_domains[id];
+	}
+
+	return reset_domain;
+}
+
 static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
 			      u8 logical_instance)
 {
@@ -328,38 +368,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
 	engine->id = id;
 	engine->legacy_idx = INVALID_ENGINE;
 	engine->mask = BIT(id);
-	if (GRAPHICS_VER(gt->i915) >= 11) {
-		static const u32 engine_reset_domains[] = {
-			[RCS0]  = GEN11_GRDOM_RENDER,
-			[BCS0]  = GEN11_GRDOM_BLT,
-			[VCS0]  = GEN11_GRDOM_MEDIA,
-			[VCS1]  = GEN11_GRDOM_MEDIA2,
-			[VCS2]  = GEN11_GRDOM_MEDIA3,
-			[VCS3]  = GEN11_GRDOM_MEDIA4,
-			[VCS4]  = GEN11_GRDOM_MEDIA5,
-			[VCS5]  = GEN11_GRDOM_MEDIA6,
-			[VCS6]  = GEN11_GRDOM_MEDIA7,
-			[VCS7]  = GEN11_GRDOM_MEDIA8,
-			[VECS0] = GEN11_GRDOM_VECS,
-			[VECS1] = GEN11_GRDOM_VECS2,
-			[VECS2] = GEN11_GRDOM_VECS3,
-			[VECS3] = GEN11_GRDOM_VECS4,
-		};
-		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
-			   !engine_reset_domains[id]);
-		engine->reset_domain = engine_reset_domains[id];
-	} else {
-		static const u32 engine_reset_domains[] = {
-			[RCS0]  = GEN6_GRDOM_RENDER,
-			[BCS0]  = GEN6_GRDOM_BLT,
-			[VCS0]  = GEN6_GRDOM_MEDIA,
-			[VCS1]  = GEN8_GRDOM_MEDIA2,
-			[VECS0] = GEN6_GRDOM_VECS,
-		};
-		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
-			   !engine_reset_domains[id]);
-		engine->reset_domain = engine_reset_domains[id];
-	}
+	engine->reset_domain = get_reset_domain(GRAPHICS_VER(gt->i915),
+						id);
 	engine->i915 = i915;
 	engine->gt = gt;
 	engine->uncore = gt->uncore;
-- 
2.34.1

