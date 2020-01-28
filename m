Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ABE14B026
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F926ECB1;
	Tue, 28 Jan 2020 07:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B116ECAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:14:51 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id b6so14747002wrq.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2FnqPtDH7eBa9pNMLQoYpP3th1q5HAisxsX8PIwSOow=;
 b=f0qkhYLsYaZ/+VX+P6kl1biCVKRx53J93ec43pRl8FwWOsFkk82N22DQK9XlKtntwT
 tQDJgYemueuAG0CcpxS/v4zRmXTcmy8jpFvME7QKGN01z9rwTYnJ2aFji/papYnWV5AP
 ck+/N/rERwdX5uzQFclPCyoMXsyGBe9S+jd1gL6WqTha/Y9tfYAi1OMskbYGqdLwMcml
 FqafvtCZw8/zs5UOE8pk9HjqAFTPP3WnUu9uFG6Fmcl7UO+Igc0t7yZCJ2woOH6O6N3a
 wRPmf6eQ5wBflGNkOJZbWMmNJ2Fped/EdWp6PD011G8+CvUaOnICegTkNcBVtXZIFek1
 UUnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2FnqPtDH7eBa9pNMLQoYpP3th1q5HAisxsX8PIwSOow=;
 b=Iq3LrktT0zR0OgLKIt70zkR47n3qVuTnw77ODqJfP7tO/h4DflkZEAtF6MU8BGt6QA
 XyjEuMPk7qkeYyl5i74Zx237+uHqXh8UKn2sx70XH6FE/XY+eWH2C4ZRtr93chtnNfQk
 uFFRGIi3nQ2z3ZLKqN/wnvxyZFCtNz2Cec0GEZ332ep1pNHFw++3atudyqR1WjUV8ZHp
 8yFEDO9V/9UC8MWYXu14yt1F/ZEe4kpTK53Wyf5ytQE2uKHlifOdA1x4i58NCj9TwwLY
 Xsu5A7mnbeOvodtz4/A/mwEwb1hO+3AdnsIsUCIt5QNrvYqgM7FWwDWEQWo4T/MfyvZm
 suuQ==
X-Gm-Message-State: APjAAAVC5qlizEX73kFt/mkGbcNT8fqyWh9i1MCNuIaP7RB/g+/+2MU2
 dKO/eFKPG6CiX+RcGOClB4c=
X-Google-Smtp-Source: APXvYqwBMFWjOMProFBm4KgYp61b8eTL+jaX9JbSfUp+o/5EqXUf7OGCi2KP9i40OTz+6R1wRgtABA==
X-Received: by 2002:adf:e692:: with SMTP id r18mr26768109wrm.413.1580195690093; 
 Mon, 27 Jan 2020 23:14:50 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:49 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:31 +0300
Message-Id: <20200128071437.9284-3-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/ggtt: use new drm logging macros
 in gt/intel_ggtt.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Manual conversion of the printk based logging macros to the new struct
drm_based logging macros in drm/i915/gt/intel_ggtt.c.
Also includes extracting the struct drm_i915_private device from various
intel types to use in the new macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index d938cf8db460..09f4aa37bf2d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -472,7 +472,8 @@ static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
 				   GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
 				   PIN_NOEVICT);
 	if (ret)
-		DRM_DEBUG_DRIVER("Failed to reserve top of GGTT for GuC\n");
+		drm_dbg(&ggtt->vm.i915->drm,
+			"Failed to reserve top of GGTT for GuC\n");
 
 	return ret;
 }
@@ -544,8 +545,9 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 
 	/* Clear any non-preallocated blocks */
 	drm_mm_for_each_hole(entry, &ggtt->vm.mm, hole_start, hole_end) {
-		DRM_DEBUG_KMS("clearing unused GTT space: [%lx, %lx]\n",
-			      hole_start, hole_end);
+		drm_dbg_kms(&ggtt->vm.i915->drm,
+			    "clearing unused GTT space: [%lx, %lx]\n",
+			    hole_start, hole_end);
 		ggtt->vm.clear_range(&ggtt->vm, hole_start,
 				     hole_end - hole_start);
 	}
@@ -1273,6 +1275,7 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
 		   struct drm_i915_gem_object *obj)
 {
 	unsigned int size = intel_rotation_info_size(rot_info);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct sg_table *st;
 	struct scatterlist *sg;
 	int ret = -ENOMEM;
@@ -1302,8 +1305,9 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
 	kfree(st);
 err_st_alloc:
 
-	DRM_DEBUG_DRIVER("Failed to create rotated mapping for object size %zu! (%ux%u tiles, %u pages)\n",
-			 obj->base.size, rot_info->plane[0].width, rot_info->plane[0].height, size);
+	drm_dbg(&i915->drm, "Failed to create rotated mapping for object size %zu! (%ux%u tiles, %u pages)\n",
+		obj->base.size, rot_info->plane[0].width,
+		rot_info->plane[0].height, size);
 
 	return ERR_PTR(ret);
 }
@@ -1355,6 +1359,7 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
 		  struct drm_i915_gem_object *obj)
 {
 	unsigned int size = intel_remapped_info_size(rem_info);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct sg_table *st;
 	struct scatterlist *sg;
 	int ret = -ENOMEM;
@@ -1386,8 +1391,9 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
 	kfree(st);
 err_st_alloc:
 
-	DRM_DEBUG_DRIVER("Failed to create remapped mapping for object size %zu! (%ux%u tiles, %u pages)\n",
-			 obj->base.size, rem_info->plane[0].width, rem_info->plane[0].height, size);
+	drm_dbg(&i915->drm, "Failed to create remapped mapping for object size %zu! (%ux%u tiles, %u pages)\n",
+		obj->base.size, rem_info->plane[0].width,
+		rem_info->plane[0].height, size);
 
 	return ERR_PTR(ret);
 }
@@ -1485,8 +1491,9 @@ i915_get_ggtt_vma_pages(struct i915_vma *vma)
 	if (IS_ERR(vma->pages)) {
 		ret = PTR_ERR(vma->pages);
 		vma->pages = NULL;
-		DRM_ERROR("Failed to get pages for VMA view type %u (%d)!\n",
-			  vma->ggtt_view.type, ret);
+		drm_err(&vma->vm->i915->drm,
+			"Failed to get pages for VMA view type %u (%d)!\n",
+			vma->ggtt_view.type, ret);
 	}
 	return ret;
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
