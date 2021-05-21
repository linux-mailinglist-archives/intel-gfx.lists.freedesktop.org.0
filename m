Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5342D38C2C9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C366F604;
	Fri, 21 May 2021 09:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9924F6F5F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:13 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id 62so9686038wmb.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tjLxHP9MRkvoQ1DS1KFKpemlH7rDi6kA4aqwWK4QoRM=;
 b=DlyIQrqFPqMf2bhLp8SFYBuIB8wo8en9IhviksjOCcNo2qhucRevKI+YrpetCIrdFS
 SWxaC+rxQfdxs9NHAnCBSly80bDD/8NKqnhVkeAn2N4xCZ/DRuZiYqyvzBO1GyH1mjpd
 sZPDOTAdEzHwfObiBIr0f7iyduNm0mN6FdMB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tjLxHP9MRkvoQ1DS1KFKpemlH7rDi6kA4aqwWK4QoRM=;
 b=lpRnY3fZuf0o8IXpCfEnZXN43TzwJ4gXD1GOhT0etF30c/hHegVrUnTBYYHrDvIP0Q
 boKn5Bkv+Q8LynYlfACQPVgWT/hU0P3nDX+jM4t2mZvb8OPDjE3Sf2dFP2Wmmz0r9taP
 fLVAGkOPTlHLZb3+EhPfCU2sxkuqPQiPTLedx+gi26S4mxIqh6z3MetmoRgONCk9lI33
 NOeM1WmgNkkkXWswfgT4oBge4w0drpqBL+SEwzo+EAfgS7KNqPVpDPbilHqnIJ+66+Ao
 rVOpZeGni70DE7mQa40x75JXAdmQa7sCaiyMbWfpe9WolFAyUjECTtqzuA7AnZciYT5c
 Rz9w==
X-Gm-Message-State: AOAM532KprdoTLjP0pSXweYEYZdFQV3PwTSKhQDCSIOWPVfsnzUhnYaS
 2ovIGJbv5EaDZT6L/ItNgeEfEg==
X-Google-Smtp-Source: ABdhPJyyVD/5cCB6pXlCMZq+DsMv0QZoHc8PXZc/ynxOQKw4d/sMHW9S1XroDojy3NR1n4b1PGjlTg==
X-Received: by 2002:a1c:4e11:: with SMTP id g17mr8258417wmh.185.1621588212304; 
 Fri, 21 May 2021 02:10:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:56 +0200
Message-Id: <20210521090959.1663703-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/11] drm/vram-helpers: Create
 DRM_GEM_VRAM_PLANE_HELPER_FUNCS
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Tian Tao <tiantao6@hisilicon.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like we have for the shadow helpers too, and roll it out to drivers.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Tian Tao <tiantao6@hisilicon.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/ast/ast_mode.c                 |  3 +--
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c |  3 +--
 drivers/gpu/drm/vboxvideo/vbox_mode.c          |  3 +--
 include/drm/drm_gem_vram_helper.h              | 12 ++++++++++++
 4 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index 36d9575aa27b..20557d2c2fae 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -612,8 +612,7 @@ ast_primary_plane_helper_atomic_disable(struct drm_plane *plane,
 }
 
 static const struct drm_plane_helper_funcs ast_primary_plane_helper_funcs = {
-	.prepare_fb = drm_gem_vram_plane_helper_prepare_fb,
-	.cleanup_fb = drm_gem_vram_plane_helper_cleanup_fb,
+	DRM_GEM_VRAM_PLANE_HELPER_FUNCS,
 	.atomic_check = ast_primary_plane_helper_atomic_check,
 	.atomic_update = ast_primary_plane_helper_atomic_update,
 	.atomic_disable = ast_primary_plane_helper_atomic_disable,
diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
index 29b8332b2bca..ccf80e369b4b 100644
--- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
+++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c
@@ -158,8 +158,7 @@ static const struct drm_plane_funcs hibmc_plane_funcs = {
 };
 
 static const struct drm_plane_helper_funcs hibmc_plane_helper_funcs = {
-	.prepare_fb	= drm_gem_vram_plane_helper_prepare_fb,
-	.cleanup_fb	= drm_gem_vram_plane_helper_cleanup_fb,
+	DRM_GEM_VRAM_PLANE_HELPER_FUNCS,
 	.atomic_check = hibmc_plane_atomic_check,
 	.atomic_update = hibmc_plane_atomic_update,
 };
diff --git a/drivers/gpu/drm/vboxvideo/vbox_mode.c b/drivers/gpu/drm/vboxvideo/vbox_mode.c
index 964381d55fc1..972c83b720aa 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_mode.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_mode.c
@@ -488,8 +488,7 @@ static const struct drm_plane_helper_funcs vbox_primary_helper_funcs = {
 	.atomic_check = vbox_primary_atomic_check,
 	.atomic_update = vbox_primary_atomic_update,
 	.atomic_disable = vbox_primary_atomic_disable,
-	.prepare_fb	= drm_gem_vram_plane_helper_prepare_fb,
-	.cleanup_fb	= drm_gem_vram_plane_helper_cleanup_fb,
+	DRM_GEM_VRAM_PLANE_HELPER_FUNCS,
 };
 
 static const struct drm_plane_funcs vbox_primary_plane_funcs = {
diff --git a/include/drm/drm_gem_vram_helper.h b/include/drm/drm_gem_vram_helper.h
index 27ed7e9243b9..f48d181c824b 100644
--- a/include/drm/drm_gem_vram_helper.h
+++ b/include/drm/drm_gem_vram_helper.h
@@ -124,6 +124,18 @@ void
 drm_gem_vram_plane_helper_cleanup_fb(struct drm_plane *plane,
 				     struct drm_plane_state *old_state);
 
+/**
+ * DRM_GEM_VRAM_PLANE_HELPER_FUNCS -
+ *	Initializes struct drm_plane_helper_funcs for VRAM handling
+ *
+ * Drivers may use GEM BOs as VRAM helpers for the framebuffer memory. This
+ * macro initializes struct drm_plane_helper_funcs to use the respective helper
+ * functions.
+ */
+#define DRM_GEM_VRAM_PLANE_HELPER_FUNCS \
+	.prepare_fb = drm_gem_vram_plane_helper_prepare_fb, \
+	.cleanup_fb = drm_gem_vram_plane_helper_cleanup_fb
+
 /*
  * Helpers for struct drm_simple_display_pipe_funcs
  */
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
