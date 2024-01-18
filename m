Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3628831C82
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 16:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D1D10E865;
	Thu, 18 Jan 2024 15:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1494B10E840;
 Thu, 18 Jan 2024 15:29:05 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-50e6ee8e911so15040268e87.1; 
 Thu, 18 Jan 2024 07:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705591683; x=1706196483; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rdxYJzDq4Da8pCPlFjpEuhHhusGcJ00bBpyFmY4XX24=;
 b=KplT7UNutsivACG8BDtr1nJqq+rS95bixYW+hyfQzDU+gdkXdoyj0rYDVLfoLz2s7q
 u5cA12BuD8N/Qrlc5AxtepZ/rBjYIOhYISQzmUYApelBCP0Dp3YCYEhZHzyprAR+GIiy
 D6jfmGOlBF8z2HtY0wMYh7+8MkXp820PXeMZI+1BN3AHqHErsrsdZMTulvAkPKAy4PoM
 bM25cVi6MpoEZ45fmsb5sQAjSZmTG0yBUBKcQYAlib7G/0Ozx4lN/cYlIO9jtbfysi4x
 pFWCOdfL3QEPlht8ycq/l4t5JThzXWGynu8t5u+E6Od4mJVZ06nJyV5y6jZ06+2878jg
 oWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705591683; x=1706196483;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rdxYJzDq4Da8pCPlFjpEuhHhusGcJ00bBpyFmY4XX24=;
 b=FZX/uxhSjB94TmcfYhYAmAj9wL5nbrZ9+OXAaGVCWAz34jTy8tgH+/GUGr3zfGBruA
 jXRgqOC6TzN4/cpSBhv+xaLM4taWoh+GcZNPkrQaWbsuAcns4ErF6BWq7tn2n2ownW/n
 2Fz4yfjlePK0aRoADOj1J79fje1TCvI8zumesuFKRttnV2Ohypwm6mRbh/Odu6j7gVZI
 eCDoZa2/OkyvyRU08toXbqlCwQLn+0xwOnSpMlKev/OrfsCGAwf081S8h01asp0OndPW
 kIH0NTj4y0fgDgunbYrFqS5CsFo278WQEVlUkmfcAQwoGEM1yB5C+YdRSHFQ5PP/f2dr
 uq6g==
X-Gm-Message-State: AOJu0YzUUUByBC3MOZ4XeUge7xXzB/LuoGawXvezNyOYsQbQ2bP/lKAn
 ttuWhKKIudgbRTImPf3qZrcy5zNUwBL7qRue53Ot7+oGaNvQYbxTxgWUt2TuyEHtbQ==
X-Google-Smtp-Source: AGHT+IG0IME4Vr9aJmRnfF4l2ACmhaMWB/vqxJylc6Adfb+4htP3DHli+h5K31iZET8f6C5wDX9tQA==
X-Received: by 2002:a19:f705:0:b0:50e:e1d4:44fe with SMTP id
 z5-20020a19f705000000b0050ee1d444femr555695lfe.1.1705591682895; 
 Thu, 18 Jan 2024 07:28:02 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:96ab:4869:ae6:2c8a])
 by smtp.gmail.com with ESMTPSA id
 z1-20020ac25de1000000b0050eea9541casm672737lfq.44.2024.01.18.07.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jan 2024 07:28:02 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Date: Thu, 18 Jan 2024 17:27:44 +0200
Message-Id: <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
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
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 722c84a56607..579badb8c69e 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -13,6 +13,16 @@
 
 #include <drm/ttm/ttm_bo.h>
 
+static bool is_compressed(const struct drm_framebuffer *fb)
+{
+	struct xe_bo *bo = intel_fb_obj(fb);
+	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
+	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
+	u16 pat_index_compressed = tile_to_xe(ggtt->tile)->pat.idx[XE_CACHE_WT];
+
+	return (bo->pat_index == pat_index_compressed);
+}
+
 static void
 write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
 		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
@@ -349,12 +359,19 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 {
 	struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
 	struct xe_bo *bo = intel_fb_obj(fb);
 	struct i915_vma *vma;
 
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
 
+	if (GRAPHICS_VER(xe) >= 20 && fb->modifier != I915_FORMAT_MOD_4_TILED &&
+	    is_compressed(fb)) {
+		drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
+		return -EINVAL;
+	}
+
 	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
-- 
2.25.1

