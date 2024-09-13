Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB50977ED1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 13:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6C310ECEF;
	Fri, 13 Sep 2024 11:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBE010ECE7;
 Fri, 13 Sep 2024 11:47:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 1/2] drm/xe: Fix DSB buffer coherency
Date: Fri, 13 Sep 2024 13:47:53 +0200
Message-ID: <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
References: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
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

Add the scanout flag to force WC caching, and add the memory barrier
where needed.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index f99d901a3214f..f7949bf5426af 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -48,11 +48,12 @@ bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *d
 	if (!vma)
 		return false;
 
+	/* Set scanout flag for WC mapping */
 	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 				   NULL, PAGE_ALIGN(size),
 				   ttm_bo_type_kernel,
 				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
-				   XE_BO_FLAG_GGTT);
+				   XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT);
 	if (IS_ERR(obj)) {
 		kfree(vma);
 		return false;
@@ -73,5 +74,5 @@ void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
 
 void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
 {
-	/* TODO: add xe specific flush_map() for dsb buffer object. */
+	xe_device_wmb(dsb_buf->vma->bo->tile->xe);
 }
-- 
2.45.2

