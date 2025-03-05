Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B39B4A4FD07
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 12:01:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD88510E736;
	Wed,  5 Mar 2025 11:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535D010E0D2;
 Wed,  5 Mar 2025 11:01:13 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] drm/xe/display: Fix fbdev GGTT mapping handling.
Date: Wed,  5 Mar 2025 12:01:06 +0100
Message-ID: <20250305110106.564366-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
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

FBDEV ggtt is not restored correctly, add missing GGTT flag to intel_fbdev_fb_alloc to make it work.
This ensures that the global GGTT mapping is always restored on resume. The GGTT mapping would
otherwise be created in intel_fb_pin_to_ggtt() by intel_fbdev anyway.

This fixes the fbdev device not working after resume.

Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index ca95fcd098ec7..3a1e505ff1820 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -45,7 +45,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
 					   XE_BO_FLAG_STOLEN |
-					   XE_BO_FLAG_PINNED);
+					   XE_BO_FLAG_GGTT | XE_BO_FLAG_PINNED);
 		if (!IS_ERR(obj))
 			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
 		else
@@ -56,7 +56,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
 					   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
-					   XE_BO_FLAG_PINNED);
+					   XE_BO_FLAG_GGTT | XE_BO_FLAG_PINNED);
 	}
 
 	if (IS_ERR(obj)) {
-- 
2.45.2

