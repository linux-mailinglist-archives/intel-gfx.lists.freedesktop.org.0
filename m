Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7295D92B950
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 14:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ECFF10E52D;
	Tue,  9 Jul 2024 12:22:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hdbhGfS9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1EE10E52D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 12:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720527763; x=1752063763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GUgBolM+ezlvlZ93T8EGQPampWnr3eSlCuVjeTAak4U=;
 b=hdbhGfS9JzQ8l52m35e9jUCw56oGSJ1Kt0i0So4j+VzGSH3luQk+uu8W
 hGsj2W+H+7QzN94W37r7FkNxt/CUxktt/0Xl3L9DVZrG+bU/p64nVYWGG
 sy/KT+MfuY0QnbUTBYisnLjqZrgRxXLQeosW3NzbWzqt/ZMnuYgu9AJBL
 Wx9rE/+LNcNQ3ag1CMOu+OmHeYOm3ZxgVHgty8BJWts8HCKAaR23SgzAV
 UpoIkfqr8rXLEfoIoRENpWhZjcAkh3qLMoJRvILU+RqW0Jpb1NVPYKSpF
 2x1TrkAEQuXgQTgO5yYUsH5atv50UYrJnNsdi2Dfw0XnPNbunmp79Nayp g==;
X-CSE-ConnectionGUID: NJOYw86GQnOAQfQbJAtyBg==
X-CSE-MsgGUID: 4EiBQAQyRE+4Zxo8OR4lLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21546287"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="21546287"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:22:43 -0700
X-CSE-ConnectionGUID: CkpeXP4ASKqFpR4iUujQrw==
X-CSE-MsgGUID: y6zmKK1GQ+qpcB/72utPAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="85380215"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.59])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:22:41 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, 
 Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 1/2] drm/xe: Separate 64K physical allocation for display
Date: Tue,  9 Jul 2024 14:22:30 +0200
Message-Id: <20240709122231.537801-2-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240709122231.537801-1-zbigniew.kempczynski@intel.com>
References: <20240709122231.537801-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In case Tile4 + compression Battlemage requires physical 64K pages
for allocating display framebuffer. Add flag which distincts
buffer created for scanout from other buffers which don't need this
restriction.

Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
v2: Distinct 64K for Battlemage only (Matt)
---
 drivers/gpu/drm/xe/xe_bo.c           | 9 +++++++--
 drivers/gpu/drm/xe/xe_device_types.h | 1 +
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 31192d983d9e..fbcf77698bf1 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -1984,9 +1984,13 @@ int xe_gem_create_ioctl(struct drm_device *dev, void *data,
 	if (args->flags & DRM_XE_GEM_CREATE_FLAG_DEFER_BACKING)
 		bo_flags |= XE_BO_FLAG_DEFER_BACKING;
 
-	if (args->flags & DRM_XE_GEM_CREATE_FLAG_SCANOUT)
+	if (args->flags & DRM_XE_GEM_CREATE_FLAG_SCANOUT) {
 		bo_flags |= XE_BO_FLAG_SCANOUT;
 
+		if (xe->info.vram_flags & XE_VRAM_FLAGS_DISPLAY_NEED64K)
+			bo_flags |= XE_BO_NEEDS_64K;
+	}
+
 	bo_flags |= args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
 
 	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM) {
@@ -2315,8 +2319,9 @@ int xe_bo_dumb_create(struct drm_file *file_priv,
 	uint32_t handle;
 	int cpp = DIV_ROUND_UP(args->bpp, 8);
 	int err;
+	u8 flags_64k = XE_VRAM_FLAGS_NEED64K | XE_VRAM_FLAGS_DISPLAY_NEED64K;
 	u32 page_size = max_t(u32, PAGE_SIZE,
-		xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K);
+		xe->info.vram_flags & flags_64k ? SZ_64K : SZ_4K);
 
 	args->pitch = ALIGN(args->width * cpp, 64);
 	args->size = ALIGN(mul_u32_u32(args->pitch, args->height),
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index f0cf9020e463..386faaffac53 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -46,6 +46,7 @@ struct xe_pat_ops;
 #define HAS_HECI_GSCFI(xe) ((xe)->info.has_heci_gscfi)
 
 #define XE_VRAM_FLAGS_NEED64K		BIT(0)
+#define XE_VRAM_FLAGS_DISPLAY_NEED64K	BIT(1)
 
 #define XE_GT0		0
 #define XE_GT1		1
-- 
2.34.1

