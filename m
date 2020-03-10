Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F8517ED6E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:49:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99606E5D1;
	Tue, 10 Mar 2020 00:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E3B6E5C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 00:49:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 17:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="235886331"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2020 17:49:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 17:49:06 -0700
Message-Id: <20200310004911.1723239-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310004911.1723239-1-matthew.d.roper@intel.com>
References: <20200310004911.1723239-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Add Wa_1207131216:icl,ehl
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
