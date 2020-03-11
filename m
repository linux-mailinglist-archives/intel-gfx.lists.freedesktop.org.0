Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95824181DA7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CD36E9B6;
	Wed, 11 Mar 2020 16:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8BD6E9B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 16:23:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 09:23:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="389312681"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2020 09:23:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 09:22:56 -0700
Message-Id: <20200311162300.1838847-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200311162300.1838847-1-matthew.d.roper@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: Add Wa_1207131216:icl,ehl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On gen11 the XY_FAST_COPY_BLT command has some size restrictions on its
usage.  Although this instruction is mainly used by userspace, i915 also
uses it to copy object contents during some selftests, so let's ensure
the restrictions are followed.

Bspec: 6544
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_blt.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index 39b8a055d80a..e00792158f13 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -196,6 +196,17 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 	return err;
 }
 
+/* Wa_1209644611:icl,ehl */
+static bool wa_1209644611_applies(struct drm_i915_private *i915, u32 size)
+{
+	u32 height = size >> PAGE_SHIFT;
+
+	if (!IS_GEN(i915, 11))
+		return false;
+
+	return height % 4 == 3 && height <= 8;
+}
+
 struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 					 struct i915_vma *src,
 					 struct i915_vma *dst)
@@ -237,7 +248,8 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 		size = min_t(u64, rem, block_size);
 		GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-		if (INTEL_GEN(i915) >= 9) {
+		if (INTEL_GEN(i915) >= 9 &&
+		    !wa_1209644611_applies(i915, size)) {
 			*cmd++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2);
 			*cmd++ = BLT_DEPTH_32 | PAGE_SIZE;
 			*cmd++ = 0;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
