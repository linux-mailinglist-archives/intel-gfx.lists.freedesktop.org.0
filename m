Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFB269EF71
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3326D10E433;
	Wed, 22 Feb 2023 07:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F57E10E422
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=St7N9BJOKC8BTekTfS3WJuBFSt2TBL33mZyJPxIevHE=;
 b=OwNS8YCUKZTyA7jY+7F9bTFMi7r5BdpoY0Vn57Jciqc2OPuI0JMTC3SI
 bzYNyOmKEs+MLg/doB7+ufEgEeXGRgUkUh3qlwY+qZ+8TOsJr2ptprDxP
 pMPwaUwvSCTxMoIgNtrmtP5GHcnCzWjc8P4VkhTg6YB+CMMJNErzT7Zg5
 EXhjbNtvYa16UZ7Tsobh3rXfRKY6f19sqcCztmIG9LVI1unZ2l7t1Rq/2
 L0qSO0emNfp4ctcOWol4BHwOPvKCulYj9/MRRu6WlD6D5DFbFAAka3rBQ
 MmRF8Y8ICltmoWRHV5cy6a9mMB9l4aNPS44BJLzjh0wXYRVLjaCqmfcNt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544109"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544109"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811233"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811233"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:05 -0800
Message-Id: <20230222073507.788705-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915/mtl: Add MTL for remapping CCS
 FBs
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
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 799bdc81a6a9..fc4cb829e8af 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1189,7 +1189,8 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 
-	return IS_ALDERLAKE_P(i915) && fb->base.modifier != DRM_FORMAT_MOD_LINEAR;
+	return (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
+	       fb->base.modifier != DRM_FORMAT_MOD_LINEAR;
 }
 
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
@@ -1325,9 +1326,10 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
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
@@ -1521,7 +1523,8 @@ static void intel_fb_view_init(struct drm_i915_private *i915, struct intel_fb_vi
 	memset(view, 0, sizeof(*view));
 	view->gtt.type = view_type;
 
-	if (view_type == I915_GTT_VIEW_REMAPPED && IS_ALDERLAKE_P(i915))
+	if (view_type == I915_GTT_VIEW_REMAPPED &&
+	    (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14))
 		view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
 }
 
-- 
2.34.1

