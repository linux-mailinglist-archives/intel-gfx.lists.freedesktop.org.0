Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F054DBAA1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 23:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1BCE10E659;
	Wed, 16 Mar 2022 22:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32F010E659
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 22:23:13 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id r22so5017812ljd.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 15:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N01QyUZyVRyVrO2CepkY6+caLXtyPuBAT+z3X4ujV4c=;
 b=YG7AbZeaQWw83TP1v5LG0ZApdNqTqT+Gerk5rbvsKU5ucRZgWRresINeVeuRH48++l
 gA+ul73jEI1xDcBeL3MjY6xpCFm6nVUZHpH4IwMAoimuEpdHQe26pYr0eKJfKhLTXX9s
 ugvcTKPhfhAsWTHPRnz8ruRdIz4ryfVkKPRdNWsqteU/0xqZs2yQwO7KpHkXFpK2eNlg
 ORpSYqImRiRQnK+meZ8GTKAID0s+7Jjm0y9MKuFOczMA1oZiPP08jllTD7DehZuIZwAS
 1PrSwV3UuHByLjsCa/qiaGiDnd9V0vgkdO1uaUS61HTjTdARItKsaFK6Az5LKUt2aXFt
 XrYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N01QyUZyVRyVrO2CepkY6+caLXtyPuBAT+z3X4ujV4c=;
 b=OOLmD374tWKD/a/cgrEVVE2WjVGWj4UjtnoZ5/2YFGeSDrkSjklDJmgwu7mZXfeKfC
 F8vJJOY3Ur1YgOw1ip2QcGARiH6MGGe5nhRZCqRM31pc5kCu33QAVRWqPEuNzqGDHhn+
 6KWkUuSanKAVcnswbjc9QGodfQxHOMBSdJbojC+tS6oeICoOaA65talvSpLY4PnBfrcj
 wyVkiYIfH5Czv7ep77iaDxwjf0squudCt7eVcmky8p4JMxZsoOZPUlGQ92A8XAGzpFW+
 lXAbBw6+CBnp16cJwraxF9Df3itM9VcXhQNNP6QEdKV7rlNH6KVGoCZuIq98Fli4i3w4
 Xigg==
X-Gm-Message-State: AOAM531+5N5P7ZTb1ImjsXmJ8cSU2qD2iRy96F+2blfkVZSbcubq4KxH
 Xj+YQ2jAt6ZYP2D7S5hxNPwQu7jx++6XHO+s
X-Google-Smtp-Source: ABdhPJzOXTLBph/yjey7mFAOkBEij5z7VEE5Hlu5wWD0xWqydGSI2DC/2Dew8gjRmMVhFzCYSaWNMA==
X-Received: by 2002:a2e:6808:0:b0:249:1738:5cd0 with SMTP id
 c8-20020a2e6808000000b0024917385cd0mr1081886lja.174.1647469390977; 
 Wed, 16 Mar 2022 15:23:10 -0700 (PDT)
Received: from localhost.localdomain ([213.216.209.156])
 by smtp.gmail.com with ESMTPSA id
 n13-20020a056512388d00b00443d9064160sm276204lft.125.2022.03.16.15.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 15:23:10 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 00:23:07 +0200
Message-Id: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add smem fallback allocation
 for dpt
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

Add fallback smem allocation for dpt if stolen memory
allocation failed.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index fb0e7e79e0cd..c8b66433d4db 100644
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
+	if (i915_gem_object_is_stolen(dpt->obj))
+		pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
 
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
@@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
 
-	if (HAS_LMEM(i915))
-		dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
-	else
+	dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
+	if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
+		drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
+			    fb->base.base.id);
+
+		dpt_obj = i915_gem_object_create_internal(i915, size);
+	}
 	if (IS_ERR(dpt_obj))
 		return ERR_CAST(dpt_obj);
 
-- 
2.28.0

