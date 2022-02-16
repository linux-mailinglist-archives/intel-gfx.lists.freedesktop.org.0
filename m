Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 429754B8F68
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DED10E85B;
	Wed, 16 Feb 2022 17:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D4A210E6F9;
 Wed, 16 Feb 2022 17:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033255; x=1676569255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kPxbzz4ZHr64bk6gDJGDgxIV5MUmEImCAO6P25w57CQ=;
 b=YV0Ru9P5aRF/IpODFviwgTG/d8o9cPyLySGzmscpWgeGg3iJwm/4SoYk
 pSzE/pqgHStRM+xim2s/eOwYz9gWqDa43Uj0TjO8rsS9qHfllPE03Skgn
 GiJGIluViTKzVYFxVnUCxLdk7DpFBXwOGHTnKPOigkVCJUn7hn56qpg+9
 LbMp9IV+PdAcsC6ZpzHljUoyd+/5/Bn0Zc24gXkvEsZfWAJxeu4tmsoac
 YjfMoo9G7s+0veHDB5n06clG0fTezZ+F9P+0xcl9cR8UXvsEM1KYEv017
 HPTORFd3yJzI+OStZWv8fhF2OEF8lNz6Y/KSAHEM+0JiGsYQKeWuxg4BH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="230641943"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="230641943"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:40:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="540226639"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:40:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 16 Feb 2022 09:41:37 -0800
Message-Id: <20220216174147.3073235-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220216174147.3073235-1-lucas.demarchi@intel.com>
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/16] drm/i915/guc: Convert golden context
 init to iosys_map
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now the map is saved during creation, so use it to initialize the
golden context, reading from shmem and writing to either system or IO
memory.

v2: Do not use a map iterator: add an offset to keep track of
destination

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 26 ++++++++++------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index b645df7d46b6..5c52bee516cf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -512,18 +512,16 @@ static struct intel_engine_cs *find_engine_state(struct intel_gt *gt, u8 engine_
 
 static void guc_init_golden_context(struct intel_guc *guc)
 {
-	struct __guc_ads_blob *blob = guc->ads_blob;
 	struct intel_engine_cs *engine;
 	struct intel_gt *gt = guc_to_gt(guc);
-	u32 addr_ggtt, offset;
-	u32 total_size = 0, alloc_size, real_size;
+	unsigned long offset;
+	u32 addr_ggtt, total_size = 0, alloc_size, real_size;
 	u8 engine_class, guc_class;
-	u8 *ptr;
 
 	if (!intel_uc_uses_guc_submission(&gt->uc))
 		return;
 
-	GEM_BUG_ON(!blob);
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));
 
 	/*
 	 * Go back and fill in the golden context data now that it is
@@ -531,15 +529,13 @@ static void guc_init_golden_context(struct intel_guc *guc)
 	 */
 	offset = guc_ads_golden_ctxt_offset(guc);
 	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
-	ptr = ((u8 *)blob) + offset;
 
 	for (engine_class = 0; engine_class <= MAX_ENGINE_CLASS; ++engine_class) {
 		if (engine_class == OTHER_CLASS)
 			continue;
 
 		guc_class = engine_class_to_guc_class(engine_class);
-
-		if (!blob->system_info.engine_enabled_masks[guc_class])
+		if (!ads_blob_read(guc, system_info.engine_enabled_masks[guc_class]))
 			continue;
 
 		real_size = intel_engine_context_size(gt, engine_class);
@@ -550,18 +546,20 @@ static void guc_init_golden_context(struct intel_guc *guc)
 		if (!engine) {
 			drm_err(&gt->i915->drm, "No engine state recorded for class %d!\n",
 				engine_class);
-			blob->ads.eng_state_size[guc_class] = 0;
-			blob->ads.golden_context_lrca[guc_class] = 0;
+			ads_blob_write(guc, ads.eng_state_size[guc_class], 0);
+			ads_blob_write(guc, ads.golden_context_lrca[guc_class], 0);
 			continue;
 		}
 
-		GEM_BUG_ON(blob->ads.eng_state_size[guc_class] !=
+		GEM_BUG_ON(ads_blob_read(guc, ads.eng_state_size[guc_class]) !=
 			   real_size - LRC_SKIP_SIZE);
-		GEM_BUG_ON(blob->ads.golden_context_lrca[guc_class] != addr_ggtt);
+		GEM_BUG_ON(ads_blob_read(guc, ads.golden_context_lrca[guc_class]) != addr_ggtt);
+
 		addr_ggtt += alloc_size;
 
-		shmem_read(engine->default_state, 0, ptr, real_size);
-		ptr += alloc_size;
+		shmem_read_to_iosys_map(engine->default_state, 0, &guc->ads_map,
+					offset, real_size);
+		offset += alloc_size;
 	}
 
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
-- 
2.35.1

