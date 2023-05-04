Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F3B6F690B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 12:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2393610E424;
	Thu,  4 May 2023 10:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E57C310E425
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 10:28:21 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-4eed764a10cso355579e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 May 2023 03:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683196099; x=1685788099;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+MlPGmqnMWjfVdndrwJb0nfPY3ABmvvSgvtmgY2NyW4=;
 b=VcCZXAWmbPxw1w0X5HzZnHS8fPHW0lzpLmwPRDJtKCvXIqFXczuC5j+HK8ABSZznoc
 FSUj5B7NkxUtXfyyQJ+V8JsoZaDnFji5PRTsf7IDD0CCoBXv1oWnoEpF2MAhmPxrRirp
 llNcHdeyQvdcP6vW04GXpKNwTCOyGTY9fQ0sRubtNJ8uPLhPG8fMKrq2+IqQxb3n0moJ
 XmfG/ZNHTaC5QIBSA4i/llzILH/0kltpzLfWHSn6ZgQN4oQ/efeGLHOWcW2jKBtwMb47
 kMnl5oad2+7j1pMM5uvWsg8qsds7uxldkLeJmOm4MOukAS6AVym7nuw9Bi6mPPBKtK1h
 yBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683196099; x=1685788099;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+MlPGmqnMWjfVdndrwJb0nfPY3ABmvvSgvtmgY2NyW4=;
 b=lbK7DqYRyYmguQwnRCS8bX5NJpu4ZNqDbFS1mh543vgYEKqTfSPP9sofUE5xy/sxsL
 jmskLz0UVl45yAdtXSg7et7vVvHlCO5TOaX4ATRVRZSgQb2lC0l4vEGpbk2B7ZtEVs7k
 HBc0QGlHQIePPgRszwZ0sQSYvw/FPJ1JPKwnD4bdKXrwiPdJzhyNGMFtDljGZiEOReKh
 hpj7m3Q8abSZZMfpSZDOSiVNcdhuhaE15fuV+JME9OuO9+iHzUurSpH1+0ao6YIqhCZu
 jOP2e9uhfQNgAALFoOjYz1JZeFkN0pPNbFbUFjTPrtVYgx9+7dejymW+ub++VkXAMj8o
 8g+A==
X-Gm-Message-State: AC+VfDwSScIfd3Ju2yoRAt/GtITMyPxYIA6Hvfq1x9Jriu60u6xd+1uX
 4hm8u079MqLdqahikNsj/KFy+6ZopPNaZyLU
X-Google-Smtp-Source: ACHHUZ58ponsiVXQRAJsHoovsj0avl2NPVlQMJboDM3gTVGYBKmjeG0TJe2bc2izg7MPJQYp7VZa7g==
X-Received: by 2002:a19:a402:0:b0:4f1:44c0:a921 with SMTP id
 q2-20020a19a402000000b004f144c0a921mr366534lfc.55.1683196099106; 
 Thu, 04 May 2023 03:28:19 -0700 (PDT)
Received: from localhost.localdomain ([2001:998:22:0:60cb:8180:a416:f400])
 by smtp.gmail.com with ESMTPSA id
 v25-20020a056512049900b004eff32d6a21sm5097416lfq.121.2023.05.04.03.28.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 May 2023 03:28:18 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 13:28:03 +0300
Message-Id: <20230504102805.18645-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/mtl: Add MTL for remapping CCS FBs
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

From: Clint Taylor <clinton.a.taylor@intel.com>

    Add support for remapping CCS FBs on MTL to remove the restriction
    of the power-of-two sized stride and the 2MB surface offset alignment
    for these FBs.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e5f637897b5e..c004f08fcfe1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1190,7 +1190,8 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 
-	return IS_ALDERLAKE_P(i915) && intel_fb_uses_dpt(&fb->base);
+	return (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
+		intel_fb_uses_dpt(&fb->base);
 }
 
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
@@ -1326,9 +1327,10 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
 			  unsigned int tile_width,
 			  unsigned int src_stride_tiles, unsigned int dst_stride_tiles)
 {
+	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	unsigned int stride_tiles;
 
-	if (IS_ALDERLAKE_P(to_i915(fb->base.dev)))
+	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 		stride_tiles = src_stride_tiles;
 	else
 		stride_tiles = dst_stride_tiles;
@@ -1522,7 +1524,8 @@ static void intel_fb_view_init(struct drm_i915_private *i915, struct intel_fb_vi
 	memset(view, 0, sizeof(*view));
 	view->gtt.type = view_type;
 
-	if (view_type == I915_GTT_VIEW_REMAPPED && IS_ALDERLAKE_P(i915))
+	if (view_type == I915_GTT_VIEW_REMAPPED &&
+	    (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14))
 		view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
 }
 
-- 
2.25.1

