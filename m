Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEDB842D06
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:38:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BE51134A6;
	Tue, 30 Jan 2024 19:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4EC1134E4;
 Tue, 30 Jan 2024 19:38:09 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-5100cb238bcso7920089e87.3; 
 Tue, 30 Jan 2024 11:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706643427; x=1707248227; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eSRHuBol9STNc0CUQ1W+HEfksc5fCCWLKNHB2VgEpCQ=;
 b=TYM5VjyS4auJGebIkYodR/IQrnlNVpwIYEbsOkoF4hGKCGIWyagKFiKorcUah0qzDG
 bPyjBoGuHXTFM2BMtRVF0Y80pnOzt978/KIotU95NiOjQxy1MzzUg+Rn8xdebEAk2DMl
 qiDLg7h/Fif+vApu3fGP+RpSPZsZD8oQAvXeFqZokMh5HpbhtT6WZks0bf9G+SVlcXTh
 ETuBL0l1WiI+y/GXyOZ/gB1/si2QG32dIOvfC5IWnLYbzB4Jx1f2J1F1bfnvzYdD0VAv
 Enj6s77cUycIRTMdKKwZTKNB7p9V5emoG2ShiY+mMi1OPHHz9kHfbPeY7SD5Eyw4iR7j
 9+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706643427; x=1707248227;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eSRHuBol9STNc0CUQ1W+HEfksc5fCCWLKNHB2VgEpCQ=;
 b=JsNEqeM+N1oNDPRGu5J9XlcWk6u6CYXEltK2tj362hSWFhGtFIcApRKkOsz1zH4V0h
 Xvc/NZQIXTd2uHsGgqKASuJI/5lAGMVvslxPXmTCNPj/MbDqBDz0FUcgqugW2Ym6TcOl
 N7/YVN7MeNGMbU4ct9FSNvbDO0e6BVQaN36X4Z6hStC/K5g06YAoOJINYp6yoZrwOQvX
 /bdVZ06UOjJOuAsYor6UOkjQ5aXLQfi3Rbel3q1O0rFVoyld3V6mmtmGSj24COknlsxb
 yxWX3NUHqD9AyBEaRr+kKguQC/gRDJ01+7iF9vpAvXSvnVnK/d9uzw85rprSa/yVLiF7
 Vw0w==
X-Gm-Message-State: AOJu0YxDDaTMjERLfGQt+u2H+1Q2i16p0W4A/DWIRfGCBTTovCczwL7E
 23f+E1tWvS0zcj6nSev4sIJbXdC0Kl7Ql9XfJcHC182oWxTKkQHfVZpUg+ST840=
X-Google-Smtp-Source: AGHT+IE1rYq2mQrwt/gyxPjy8dG9LC1ehJ5u4ziW3QcI18pIyUp4eKP5acm7i7NtsC1RwH7YTHWeVQ==
X-Received: by 2002:ac2:4a79:0:b0:510:247a:d5a7 with SMTP id
 q25-20020ac24a79000000b00510247ad5a7mr5690101lfp.36.1706643427520; 
 Tue, 30 Jan 2024 11:37:07 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 w30-20020a05651204de00b00510187749besm1558863lfq.80.2024.01.30.11.37.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 11:37:07 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Date: Tue, 30 Jan 2024 21:36:51 +0200
Message-Id: <20240130193652.374270-4-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Display engine support ccs only with tile4, prevent other modifiers
from using compressed memory.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 722c84a56607..fab0871f0cdf 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -10,9 +10,18 @@
 #include "intel_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_gt.h"
+#include "xe_pat.h"
 
 #include <drm/ttm/ttm_bo.h>
 
+static bool is_compressed(const struct drm_framebuffer *fb)
+{
+	struct xe_bo *bo = intel_fb_obj(fb);
+	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
+
+	return xe_pat_index_has_compression(xe, bo->pat_index);
+}
+
 static void
 write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
 		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
@@ -283,6 +292,17 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
 	if (ret)
 		goto err;
 
+	if (GRAPHICS_VER(xe) >= 20) {
+		if (fb->base.modifier != I915_FORMAT_MOD_4_TILED &&
+		    is_compressed(&fb->base)) {
+			drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
+			ttm_bo_unreserve(&bo->ttm);
+			ret = -EINVAL;
+			goto err;
+		}
+		bo->has_sealed_pat_index = true;
+	}
+
 	if (IS_DGFX(xe))
 		ret = xe_bo_migrate(bo, XE_PL_VRAM0);
 	else
@@ -308,6 +328,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
 	ttm_bo_unpin(&bo->ttm);
 	ttm_bo_unreserve(&bo->ttm);
 err:
+	bo->has_sealed_pat_index = false;
 	kfree(vma);
 	return ERR_PTR(ret);
 }
@@ -323,6 +344,8 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 		 vma->bo->ggtt_node.start != vma->node.start)
 		xe_ggtt_remove_node(ggtt, &vma->node);
 
+	vma->bo->has_sealed_pat_index = false;
+
 	ttm_bo_reserve(&vma->bo->ttm, false, false, NULL);
 	ttm_bo_unpin(&vma->bo->ttm);
 	ttm_bo_unreserve(&vma->bo->ttm);
-- 
2.25.1

