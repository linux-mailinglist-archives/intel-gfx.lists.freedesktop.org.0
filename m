Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9A6996F76
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 17:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B105E10E773;
	Wed,  9 Oct 2024 15:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="enX2gail";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0ABD10E773;
 Wed,  9 Oct 2024 15:16:07 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id
 d2e1a72fcca58-71e05198d1dso2442412b3a.1; 
 Wed, 09 Oct 2024 08:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728486967; x=1729091767; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2Lsud1VSVKxL9o+8gozVVhLT4ZhXKNwGZ7gy58Dv9eE=;
 b=enX2gailpJn44luf+86PfzUblIN0tMQTRHyvy9V028/br+U9L/OXLisLIp0aA8a+Ic
 +FgQsmRZUOIRiFpItrb8muB0vwr276Ue2U+ocDwWj52Zu81yolyym2z1wOpLMbujR+F1
 ShVBVGYch0YZaj4/TZgycwP5aHgXKRx6dXRXuf8kJyfXpqPcjtOayOZKz1E3EUjJRSIT
 Q3LpDZh1+hS1jYXLyycrv79Kze7AkOTlCoYaxxKn7rzfGrcfrXY4s9VA8otWil5tlR71
 lMXKMO3OTf9OGaffB0AtiwWFADRkHJDHjDwylD7Mlnz3r67BFg/ivSTAFbyJoOWknjei
 /kRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728486967; x=1729091767;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2Lsud1VSVKxL9o+8gozVVhLT4ZhXKNwGZ7gy58Dv9eE=;
 b=ZIycatbSaosyFKiiXtsmLqkMGa04PE+WfJhgPq8eOwxqJkeqmzvWyyvSHFgzOTbq4n
 owfBPgsggaQ/bcWFsFewYTSrPgwEc+q80LzAbiXcN1dWhbjxlnSqHLClY7vYaJ31/RSW
 hK3f+DFpImiqqboGbfMvnucFh7Yna0RRdv/vi+0sOfzkgdvnZOv0yuFUefaT39qcDMBj
 Ka2oyH+geDy0l5ZoBDmw0vyGA/moW614dGPA3DXLie5akBVFrEFt2/citDnB3YPsjD+c
 pt3GeseIY+YQjTOs+qGdCi2WpS8m4De5AodhrcCCtTW9HZDo20ApREIzlzfs5VGmeKqu
 O14g==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7FXvOWJzUJZvp2KwE0Q4/YpLTEaoa+qYsLObzeP0nQR4SB2R3YYKR/9+OB10ZPwquZo+xO2y9Io4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxGTZ7aoaZmY3/lA1umj05zq24wn+EtsIX+GSn0x7L6TyRegAtV
 fFANuEvJsw86cCHYzdgIL7O89y2loFmNfIt9X4N8OvfmW7NkcOXN9OttXKgubqA=
X-Google-Smtp-Source: AGHT+IGaCcuuBHMwjOHoQ4Z+FPwoCpbVykFaBMsy0+hY6czd6caZmpfg0E4fbkisBuMuUNeyQW8T/Q==
X-Received: by 2002:a05:6a21:348b:b0:1d7:c3e2:4e18 with SMTP id
 adf61e73a8af0-1d8a3c867e4mr4319204637.46.1728486967089; 
 Wed, 09 Oct 2024 08:16:07 -0700 (PDT)
Received: from localhost ([134.134.139.73]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7e9f682c801sm8606529a12.39.2024.10.09.08.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2024 08:16:06 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/2] drm/xe/display: align framebuffers according to hw
 requirements
Date: Wed,  9 Oct 2024 18:19:47 +0300
Message-ID: <20241009151947.2240099-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
References: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
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

Align framebuffers in memory according to hw requirements instead of
default page size alignment.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 57 ++++++++++++++++----------
 1 file changed, 35 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 79dbbbe03c7f..761510ae0690 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -79,7 +79,8 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
 
 static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 			       const struct i915_gtt_view *view,
-			       struct i915_vma *vma)
+			       struct i915_vma *vma,
+			       u64 physical_alignment)
 {
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
@@ -99,23 +100,29 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 				 XE_PAGE_SIZE);
 
 	if (IS_DGFX(xe))
-		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
-					   ttm_bo_type_kernel,
-					   XE_BO_FLAG_VRAM0 |
-					   XE_BO_FLAG_GGTT |
-					   XE_BO_FLAG_PAGETABLE);
+		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
+						      dpt_size, ~0ull,
+						      ttm_bo_type_kernel,
+						      XE_BO_FLAG_VRAM0 |
+						      XE_BO_FLAG_GGTT |
+						      XE_BO_FLAG_PAGETABLE,
+						      physical_alignment);
 	else
-		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
-					   ttm_bo_type_kernel,
-					   XE_BO_FLAG_STOLEN |
-					   XE_BO_FLAG_GGTT |
-					   XE_BO_FLAG_PAGETABLE);
+		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
+						      dpt_size,  ~0ull,
+						      ttm_bo_type_kernel,
+						      XE_BO_FLAG_STOLEN |
+						      XE_BO_FLAG_GGTT |
+						      XE_BO_FLAG_PAGETABLE,
+						      physical_alignment);
 	if (IS_ERR(dpt))
-		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
-					   ttm_bo_type_kernel,
-					   XE_BO_FLAG_SYSTEM |
-					   XE_BO_FLAG_GGTT |
-					   XE_BO_FLAG_PAGETABLE);
+		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
+						      dpt_size,  ~0ull,
+						      ttm_bo_type_kernel,
+						      XE_BO_FLAG_SYSTEM |
+						      XE_BO_FLAG_GGTT |
+						      XE_BO_FLAG_PAGETABLE,
+						      physical_alignment);
 	if (IS_ERR(dpt))
 		return PTR_ERR(dpt);
 
@@ -184,7 +191,8 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 
 static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 				const struct i915_gtt_view *view,
-				struct i915_vma *vma)
+				struct i915_vma *vma,
+				u64 physical_alignment)
 {
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct xe_bo *bo = gem_to_xe_bo(obj);
@@ -266,7 +274,8 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 }
 
 static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
-					const struct i915_gtt_view *view)
+					const struct i915_gtt_view *view,
+					u64 physical_alignment)
 {
 	struct drm_device *dev = fb->base.dev;
 	struct xe_device *xe = to_xe_device(dev);
@@ -315,9 +324,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 
 	vma->bo = bo;
 	if (intel_fb_uses_dpt(&fb->base))
-		ret = __xe_pin_fb_vma_dpt(fb, view, vma);
+		ret = __xe_pin_fb_vma_dpt(fb, view, vma, physical_alignment);
 	else
-		ret = __xe_pin_fb_vma_ggtt(fb, view, vma);
+		ret = __xe_pin_fb_vma_ggtt(fb, view, vma,  physical_alignment);
 	if (ret)
 		goto err_unpin;
 
@@ -358,7 +367,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 {
 	*out_flags = 0;
 
-	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view);
+	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, phys_alignment);
 }
 
 void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
@@ -372,11 +381,15 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 	struct drm_gem_object *obj = intel_fb_bo(fb);
 	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct i915_vma *vma;
+	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	u64 phys_alignment = plane->min_alignment(plane, fb, 0);
 
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_SCANOUT));
 
-	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
+	vma = __xe_pin_fb_vma(intel_fb, &plane_state->view.gtt, phys_alignment);
+
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-- 
2.45.2

