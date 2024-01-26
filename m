Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC5783E3AC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 22:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7DC10FEB1;
	Fri, 26 Jan 2024 21:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286DF10FEAD;
 Fri, 26 Jan 2024 21:09:33 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-51021b25396so935161e87.3; 
 Fri, 26 Jan 2024 13:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706303311; x=1706908111; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NhARzpUN4NMOG19a9sc1Be2bMGCGo4IYQc5mki6n3pE=;
 b=ImrHQ2AloOsn2e+XQCsGUkX1d9l38JadAUU7BTM1MjXk9++rbwImwRlH2yQuRaEgUg
 2LJTXpYorY8lQE4zY1mptcCrTFhnq8VT4g7klTZaCk3u8rx9+wUPU3CAID5bZ5VfTGAg
 HljPiKP7dSVK8L2zS38c2YyQNHFqqyqR5nw8hepPasF1zDmhV+X3rX+HdWlJCeSKSJJd
 6lECmeMY/RAnfzanUKfb9d4Wmk7YxiAn2oHEo9KIodxB8tZD6WQLx7zrab4nvU8qLKrP
 qbR8BktswFGtYT7bvORiTr7i16JV01GXMN3ztM5QJlLkf7ZZ1LJzGRnzxTjCsdxB73EJ
 63OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706303311; x=1706908111;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NhARzpUN4NMOG19a9sc1Be2bMGCGo4IYQc5mki6n3pE=;
 b=H4wMB4pXvqvs/q0NuPSzcgzkcoku4rIWIJO9jwPfL4S96U+d7bnalta5qh+5e1q/6o
 ygJHcq13/JbEqGgJKWjGN42NZPZZ1Yii7jih+IATTCDWL8MaTkNrh7OcsNNVjIUNDNYU
 +sLCKdzxidrf048rXQxK1VG0EzGBeQu8J3UZJhsHfzDjn/k6uY5CjnvzO3hPxPXOhWZ8
 t3f/hbEBMFKNb1eoXqW46Nl8m38FYExhDttPEUuCTLRQtwya2kRYoer2SzcfGZiaqR3G
 sWxpYbnPzrBugVSmtS/N32cBHDLO7bFKLyXlQ32jFE/fUD05oe4NPv/8xtEomQiwUVKl
 y+Fg==
X-Gm-Message-State: AOJu0YzlT7GVMHUeqp5yQoZEzNkTzyhD7a2VDMsBEPZeOSD/YKOa3XNa
 tYrChrDAtrsEnkBm3XnIduuHkk5rxQIE9VVnQLxIEI/mVx6bzujWfr9sETF1i7M=
X-Google-Smtp-Source: AGHT+IFlznCfD3T6v0nxdiXxWbV8c9RJUA6JiqFpdxXA8D3hERWpfPXe3Ilu56n0Ofg+E5hzYnzcrg==
X-Received: by 2002:a05:6512:3083:b0:510:1bbd:c295 with SMTP id
 z3-20020a056512308300b005101bbdc295mr183718lfd.37.1706303310890; 
 Fri, 26 Jan 2024 13:08:30 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 t3-20020a192d43000000b00510218debaasm290479lft.35.2024.01.26.13.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 13:08:30 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/5] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Date: Fri, 26 Jan 2024 23:08:06 +0200
Message-Id: <20240126210807.320671-5-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
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
from using compressed memory. Store pin time pat index to xe_bo.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 722c84a56607..b2930a226f54 100644
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
@@ -349,12 +358,22 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 {
 	struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
 	struct xe_bo *bo = intel_fb_obj(fb);
 	struct i915_vma *vma;
 
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
 
+	if (GRAPHICS_VER(xe) >= 20) {
+		if (fb->modifier != I915_FORMAT_MOD_4_TILED &&
+		    is_compressed(fb)) {
+			drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
+			return -EINVAL;
+		}
+		bo->pat_index_scanout = bo->pat_index;
+	}
+
 	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
-- 
2.25.1

