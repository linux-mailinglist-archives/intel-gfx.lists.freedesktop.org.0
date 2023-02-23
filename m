Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 496E36A0F9F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 19:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E9B10E0CD;
	Thu, 23 Feb 2023 18:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B379810E0CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 18:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677177864; x=1708713864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nMOwGa0FQnkF8AsaMToYlyJ+v0mbsQslbZG3d90irP0=;
 b=U0NxfFUGiwzIMcFKTEKFTzAi7jv3UEmD22BQcZfHbLaFc/qFUaIyuDmM
 CeKyYg22Azdz9G/Xn4joAVliIExKDkmtg4M9KH4eqDwXNovhHa3/SI8VB
 QX/z58sn13c+uwwlEC26R9NjJ04WJn+wfM7CPxwGqVYncVCz75dxYY4ID
 dpEe1yJvrEoIWz3pEoo/ve/tHRV9M7Mx3g3MMCcuXFibME9ThAxtn3s+m
 vb+MbP762Uki09khG3EXRHoIiDqyO6nQtrhlWT/Qqc9WJufmr1F99RT4f
 aOaQcxdvu0ivmTfdsf7pOaJ+CKWWso0p7ceMy2MroUheToUE41PCJlqZq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="419526478"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="419526478"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 10:44:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="622427587"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="622427587"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 10:44:23 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 10:39:54 -0800
Message-Id: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: X-Tile support changes to client
 blits
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
Cc: lucas.demarchi@intel.com, matthew.d.roper@intel.com,
 jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refactor the supports_x_tiling and fast_blit_ok helper
functions in the live client selftest to better reflect
when XY_FAST_COPY_BLT supports X-tile and can be used.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 3bb1f7f0110e..ff81af4c8202 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -108,31 +108,30 @@ struct tiled_blits {
 	u32 height;
 };
 
-static bool supports_x_tiling(const struct drm_i915_private *i915)
+static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
 {
 	int gen = GRAPHICS_VER(i915);
 
+	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
+	drm_WARN_ON(&i915->drm, gen < 9);
+
 	if (gen < 12)
 		return true;
 
-	if (!HAS_LMEM(i915) || IS_DG1(i915))
+	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
 		return false;
 
-	return true;
+	return HAS_DISPLAY(i915);
 }
 
 static bool fast_blit_ok(const struct blit_buffer *buf)
 {
-	int gen = GRAPHICS_VER(buf->vma->vm->i915);
-
-	if (gen < 9)
+	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
+	if (GRAPHICS_VER(buf->vma->vm->i915) < 9)
 		return false;
 
-	if (gen < 12)
-		return true;
-
 	/* filter out platforms with unsupported X-tile support in fastblit */
-	if (buf->tiling == CLIENT_TILING_X && !supports_x_tiling(buf->vma->vm->i915))
+	if (buf->tiling == CLIENT_TILING_X && !fastblit_supports_x_tiling(buf->vma->vm->i915))
 		return false;
 
 	return true;
-- 
2.25.1

