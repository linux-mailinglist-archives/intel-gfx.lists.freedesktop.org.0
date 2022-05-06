Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CF551D88D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 15:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1083811217D;
	Fri,  6 May 2022 13:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE46112179
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 13:11:14 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id k2so9975779wrd.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 May 2022 06:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=PoWrmb14+umfaTXUFOYTh10BM2aQ55bYDFeH9VrAbb0=;
 b=LCFqhtBeWX5W4YlGSBaoOAztNAMqh56SdLBvla60mJecNWm9gS0mYMoLt8nSU980cy
 AE7th+fx0ISzNrW+eSbn95+Wg6+jh/eXVgdUhdHQ6b1diWIeyFYYOYmT8pVDopWHbdpu
 1F60eaXEmigNBLJjNR90crIXy4BwqyxiqXVCuOdnOcFrEAxeJ94DxQydbWz9WFGG1isw
 p7TRnVnbCrYWbkMbfpdtJ9gKwX4tmNcHVY+kzLgEC3pkiMtGdohdVGaogGx/Jp2L4Qbd
 qW587j4V9GSjlJVRnZw4A+VYhxw5kRf73aDQUj5Po0BTokUkjxqKb0MuArmMgKpf+4J6
 yk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PoWrmb14+umfaTXUFOYTh10BM2aQ55bYDFeH9VrAbb0=;
 b=57ZapDHmT06HW+jeGVFiGwTHhTREZ20Cxf4IAAyNN6bQqwvSaodu5aMnv7qs4vcPDJ
 /uNfcRMlhoeYnwNtDT3PGTtw8KeRrn32UCHLBe+qBXJL1BF0EiTsuDZlxEn9BxqxLGhf
 f6q/n5cAUM010CBvPb9eJXCtIT5QCMTIybuAmhrBg7ymHHmHvsiHNmffnNgFxWy0l7Tf
 IdPedImniIM9DQJYjCJjGlqzhKEJXiByWl4/1QSnyhYRgOrOUsRqcRTSLYJ+mnnl2ffL
 Jr9UnFtHgSlg4RS/JTHvM1wlc7goj/Ot7aZihXDHnD9v/x7FuqvFtas77IvyGHkHdypd
 Wl8w==
X-Gm-Message-State: AOAM533Fbc4PZ9zGTRSG0gXVDl/uG3G/zRM4VnMcJO79ZT7mPLBWNeKS
 QG1AuFasrAkCGyMyt1QPeXWMUoCsd+aXBA==
X-Google-Smtp-Source: ABdhPJzoUbYX8nb3my+NZiKRn4ca+Sb3MjSRWyTLLs/1wPNutofFyDLSOVFb8lMPLlQ2NamGYp86oA==
X-Received: by 2002:a5d:510a:0:b0:20c:4452:3161 with SMTP id
 s10-20020a5d510a000000b0020c44523161mr2704976wrt.31.1651842672984; 
 Fri, 06 May 2022 06:11:12 -0700 (PDT)
Received: from jheikkil-mobl.home (77-105-100-22.lpok.fi. [77.105.100.22])
 by smtp.gmail.com with ESMTPSA id
 l1-20020a1ced01000000b003942a244f4fsm8769551wmh.40.2022.05.06.06.11.12
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 06:11:12 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 16:11:09 +0300
Message-Id: <20220506131109.20942-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Fix i915_vma_pin_iomap()
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

From: CQ Tang <cq.tang@intel.com>

Display might allocate a smem object and call
i915_vma_pin_iomap(), the existing code will fail.

This fix was suggested by Chris P Wilson, that we pin
the smem with i915_gem_object_pin_map_unlocked().

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 34 ++++++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 162e8d83691b..8ce016ef3dba 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -550,13 +550,6 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	if (WARN_ON_ONCE(vma->obj->flags & I915_BO_ALLOC_GPU_ONLY))
 		return IO_ERR_PTR(-EINVAL);
 
-	if (!i915_gem_object_is_lmem(vma->obj)) {
-		if (GEM_WARN_ON(!i915_vma_is_map_and_fenceable(vma))) {
-			err = -ENODEV;
-			goto err;
-		}
-	}
-
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 	GEM_BUG_ON(!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND));
 	GEM_BUG_ON(i915_vma_verify_bind_complete(vma));
@@ -572,17 +565,31 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 		if (i915_gem_object_is_lmem(vma->obj))
 			ptr = i915_gem_object_lmem_io_map(vma->obj, 0,
 							  vma->obj->base.size);
-		else
+		else if (i915_vma_is_map_and_fenceable(vma))
 			ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
 						vma->node.start,
 						vma->node.size);
+		else {
+			ptr = (void __iomem *)
+				i915_gem_object_pin_map_unlocked(vma->obj,
+								I915_MAP_WC);
+			if (IS_ERR(ptr)) {
+				err = PTR_ERR(ptr);
+				goto err;
+			}
+			ptr = page_pack_bits(ptr, 1);
+		}
+
 		if (ptr == NULL) {
 			err = -ENOMEM;
 			goto err;
 		}
 
 		if (unlikely(cmpxchg(&vma->iomap, NULL, ptr))) {
-			io_mapping_unmap(ptr);
+			if (page_unmask_bits(ptr))
+				__i915_gem_object_release_map(vma->obj);
+			else
+				io_mapping_unmap(ptr);
 			ptr = vma->iomap;
 		}
 	}
@@ -596,7 +603,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	i915_vma_set_ggtt_write(vma);
 
 	/* NB Access through the GTT requires the device to be awake. */
-	return ptr;
+	return page_mask_bits(ptr);
 
 err_unpin:
 	__i915_vma_unpin(vma);
@@ -614,6 +621,8 @@ void i915_vma_unpin_iomap(struct i915_vma *vma)
 {
 	GEM_BUG_ON(vma->iomap == NULL);
 
+	/* XXX We keep the mapping until __i915_vma_unbind()/evict() */
+
 	i915_vma_flush_writes(vma);
 
 	i915_vma_unpin_fence(vma);
@@ -1761,7 +1770,10 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
 	if (vma->iomap == NULL)
 		return;
 
-	io_mapping_unmap(vma->iomap);
+	if (page_unmask_bits(vma->iomap))
+		__i915_gem_object_release_map(vma->obj);
+	else
+		io_mapping_unmap(vma->iomap);
 	vma->iomap = NULL;
 }
 
-- 
2.25.1

