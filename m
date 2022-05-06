Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF3D51D88C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 15:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D78611217A;
	Fri,  6 May 2022 13:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32FA112176
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 13:11:13 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id v12so9957427wrv.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 May 2022 06:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7X0+c5X4D2RU5wNoX3avM3Po6F4OpThOgwRy6Ib0igE=;
 b=OQ2SF8x7bj9b82fbGn2NyYzHatBHx1CMpxh1vIwQqVuGEf7puAxMtseya2MKHics7Y
 A2rGmcF7SKV11GD1uBZpv2H69EyNIuIaViwWVUq4yBkb5bSGMClSDl9vclpLyieZH1/U
 TmpfbZFLuHLakGF6oXdOmLp535SpcxSILVsjqwzoAWIfc/W9d1+9A/EdFYkCaYWN7Ra0
 6dlHdH1AKahqc2dCHlE87+CZs1FNjfNgV+bCDlrbXM/z4LRp9+SRNlpMtdDozxf0r6EK
 hZL0fyO9C7Dz/2g0HWVAK4gQcZeYJm62+yjqsU6uj+qz8KNSCcWNzFR2nLZ12PqkUDhp
 vgzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7X0+c5X4D2RU5wNoX3avM3Po6F4OpThOgwRy6Ib0igE=;
 b=Ov6gr2+v550pDvhkxwtd9LzOZMjoRIDqEOnw7MpLH7G0jweP99Un1mPqEpHt6TjwjO
 i0+dfB9DmUMPgjrrgAsNq84KDMdGNqRS4sSA9aL5Ogc/BEO70B15isgcerDwTJginWuH
 JY2KkPRHk2To9/98LbWChf4UhoG7uxjDrZFSqIY3ZxZBygASUltULGSbNcIjPHPSpn+T
 VzqBqvkt86OcKiaR0MOmsHC2pp0hWJBx2W5KIVO1TzCfS+h/h43JtcI3u9biNE7vLrOU
 0Klbtpec9iaJ34eakj+9yib8hFkyNWFGDMkRcyTi5xdGQ8tWdvsc0SubmzqYArUqSIrj
 qj6Q==
X-Gm-Message-State: AOAM5316prs9doJF6W/Am2q5DAOp2h/qZMUd2L7ssFezNVkkD8WyQVN4
 pvJricAbLUnKCF+a50JAvXUoClXm9xU8Og==
X-Google-Smtp-Source: ABdhPJzoOMcZOcl6gZv5vbD6GVj3tFBmPOA5dCUUmc3i/akj8GyFsVZSXYl2JqBWJPQCtagGkfyzMA==
X-Received: by 2002:adf:de83:0:b0:20a:cbb5:903a with SMTP id
 w3-20020adfde83000000b0020acbb5903amr2641507wrl.544.1651842671976; 
 Fri, 06 May 2022 06:11:11 -0700 (PDT)
Received: from jheikkil-mobl.home (77-105-100-22.lpok.fi. [77.105.100.22])
 by smtp.gmail.com with ESMTPSA id
 l1-20020a1ced01000000b003942a244f4fsm8769551wmh.40.2022.05.06.06.11.11
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 06:11:11 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 16:11:08 +0300
Message-Id: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add smem fallback
 allocation for dpt
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

Add fallback smem allocation for dpt if stolen memory allocation failed.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index fb0e7e79e0cd..10008699656e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -10,6 +10,7 @@
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
+#include "gem/i915_gem_internal.h"
 
 struct i915_dpt {
 	struct i915_address_space vm;
@@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 	void __iomem *iomem;
 	struct i915_gem_ww_ctx ww;
 	int err;
+	u64 pin_flags = 0;
+
+	if (!i915_gem_object_is_lmem(dpt->obj))
+		pin_flags |= PIN_MAPPABLE;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	atomic_inc(&i915->gpu_error.pending_fb_pin);
@@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 			continue;
 
 		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
-						  HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
+						  pin_flags);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			continue;
@@ -248,10 +253,13 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
 
-	if (HAS_LMEM(i915))
-		dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
-	else
+	dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
+	if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
+		drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");
+		dpt_obj = i915_gem_object_create_internal(i915, size);
+	}
 	if (IS_ERR(dpt_obj))
 		return ERR_CAST(dpt_obj);
 
-- 
2.25.1

