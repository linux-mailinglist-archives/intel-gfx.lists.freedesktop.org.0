Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA48546652
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 14:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2ACB10ED7A;
	Fri, 10 Jun 2022 12:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C3110ED7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 12:12:11 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id s6so42484012lfo.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 05:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KT6cck/kWymIrCddjs6TpOEiyDjQDhp7iDeCminoD0Y=;
 b=Q16LdQm8tq93cln24rtq8oZyQ0NzVPQN2v3Tu9/8ZYe60xfYPsiv55fKTOqLn3ob7f
 4sYgFfrCiFIIuXWcHGyUoKvl9VnOX50wF5oDvHOkfV0+vPHoNZLx89kjrxNWo+8b3gIO
 Qr7WdaGa3/FW3CChPIl/PVDmUEkFuGdQIX2JhLIsn26dlw+W2XATVUhNO4YKj17BXP9L
 nCGfXPEJz73AXhlUgRhIl89y7PRI4NMXi0GrY1xV3euhig2lgntWqn/2ZZW62GDyTkJt
 dXf/lI/YWP6szSsgluFQXSC2DgLszbBA+dZuV5PlUHqsEK4cFpXD4C28O75PEix+cVgM
 ErBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KT6cck/kWymIrCddjs6TpOEiyDjQDhp7iDeCminoD0Y=;
 b=CuboPSBN/valbGf9TZfj8ZFaGwajJ0fcBlXupRbTmReT/RfL4MkMin0si0PZdXQyVu
 85N063flYhiHcKW0eZTOG7BXy4MCuPa9j6owgm8YDJ4mbgUE0TlYOMupCEr53M59QMUP
 lnfSAXGzpySUHUuLOnaoDZji5+IRBYakJlXWH9FXp8+FQX01nIC3aniBy/U6cNPID3Nq
 DTie10pJ9+bfmVs1Y3TaMcjUuyGATLLWZJvgsC9tKTRGfA3oFAxd9HhuKar486aJS3ud
 wuC7VTVaR9JUsvfNuIAj2Cj/PDR62Y1jM1qiIwSbXgnN4dzIXH/XZtjeqYF/rMCr9DYm
 YoiQ==
X-Gm-Message-State: AOAM5316n2XmgA4sh6nj49ZLhUsqKSD8t3nuc2jP0CQt9pq4quUUgBtL
 QKUhqMDJkcJ6K4cTWRhqOIuMvhHeKGJgaQ==
X-Google-Smtp-Source: ABdhPJwXBo1LMFU+UnUVYZlrbQaKtlAO9Ngyy5dMcDiT609Y4WpvL9BKfQEZ8Tpyg/PHofCuB+yHPQ==
X-Received: by 2002:a05:6512:1327:b0:478:e9b2:731d with SMTP id
 x39-20020a056512132700b00478e9b2731dmr37551724lfu.633.1654863129041; 
 Fri, 10 Jun 2022 05:12:09 -0700 (PDT)
Received: from localhost.localdomain (d547nd2hqr-rv74hs34-4.rev.dnainternet.fi.
 [2001:14bb:ce:36b1:d8cd:77dd:1de0:cfbe])
 by smtp.gmail.com with ESMTPSA id
 p4-20020a056512312400b0047255d211f7sm4673185lfd.294.2022.06.10.05.12.08
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jun 2022 05:12:08 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 15:12:04 +0300
Message-Id: <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Fix i915_vma_pin_iomap()
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

v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
               i915_gem_object_pin_map

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 33 ++++++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 0bffb70b3c5f..7753337ff9fb 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -551,13 +551,6 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	if (WARN_ON_ONCE(vma->obj->flags & I915_BO_ALLOC_GPU_ONLY))
 		return IOMEM_ERR_PTR(-EINVAL);
 
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
@@ -573,17 +566,30 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
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
+				i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
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
@@ -597,7 +603,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	i915_vma_set_ggtt_write(vma);
 
 	/* NB Access through the GTT requires the device to be awake. */
-	return ptr;
+	return page_mask_bits(ptr);
 
 err_unpin:
 	__i915_vma_unpin(vma);
@@ -615,6 +621,8 @@ void i915_vma_unpin_iomap(struct i915_vma *vma)
 {
 	GEM_BUG_ON(vma->iomap == NULL);
 
+	/* XXX We keep the mapping until __i915_vma_unbind()/evict() */
+
 	i915_vma_flush_writes(vma);
 
 	i915_vma_unpin_fence(vma);
@@ -1763,7 +1771,10 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
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

