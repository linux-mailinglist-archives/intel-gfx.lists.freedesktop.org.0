Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A04C17B98E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 10:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC126ECB2;
	Fri,  6 Mar 2020 09:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3901D6ECB2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 09:47:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 01:47:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,521,1574150400"; d="scan'208";a="275477382"
Received: from ntitus-mobl1.ti.intel.com (HELO mwahaha-bdw.ger.corp.intel.com)
 ([10.252.24.210])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2020 01:47:36 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 09:47:35 +0000
Message-Id: <20200306094735.258285-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: properly sanity check
 batch_start_offset
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

Check the edge case where batch_start_offset sits exactly on the batch
size.

v2: add new range_overflows variant to capture the special case where
the size is permitted to be zero, like with batch_len.

v3: other way around. the common case is the exclusive one which should
just be >=, with that we then just need to convert the three odd ball
cases that don't apply to use the new inclusive _end version.

Testcase: igt/gem_exec_params/invalid-batch-start-offset
Fixes: 0b5372727be3 ("drm/i915/cmdparser: Use cached vmappings")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_rc6.c      |  8 ++++----
 drivers/gpu/drm/i915/i915_utils.h        | 14 +++++++++++++-
 3 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6cfe14393885..2d982c322be9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -509,12 +509,12 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 
 		fbc->compressed_llb = compressed_llb;
 
-		GEM_BUG_ON(range_overflows_t(u64, dev_priv->dsm.start,
-					     fbc->compressed_fb.start,
-					     U32_MAX));
-		GEM_BUG_ON(range_overflows_t(u64, dev_priv->dsm.start,
-					     fbc->compressed_llb->start,
-					     U32_MAX));
+		GEM_BUG_ON(range_overflows_end_t(u64, dev_priv->dsm.start,
+						 fbc->compressed_fb.start,
+						 U32_MAX));
+		GEM_BUG_ON(range_overflows_end_t(u64, dev_priv->dsm.start,
+						 fbc->compressed_llb->start,
+						 U32_MAX));
 		intel_de_write(dev_priv, FBC_CFB_BASE,
 			       dev_priv->dsm.start + fbc->compressed_fb.start);
 		intel_de_write(dev_priv, FBC_LL_BASE,
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 0392d2c79de9..66c07c32745c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -320,10 +320,10 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 		return PTR_ERR(pctx);
 	}
 
-	GEM_BUG_ON(range_overflows_t(u64,
-				     i915->dsm.start,
-				     pctx->stolen->start,
-				     U32_MAX));
+	GEM_BUG_ON(range_overflows_end_t(u64,
+					 i915->dsm.start,
+					 pctx->stolen->start,
+					 U32_MAX));
 	pctx_paddr = i915->dsm.start + pctx->stolen->start;
 	intel_uncore_write(uncore, VLV_PCBR, pctx_paddr);
 
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index cae0ae520398..ec31ef6be52f 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -102,12 +102,24 @@ bool i915_error_injected(void);
 	typeof(max) max__ = (max); \
 	(void)(&start__ == &size__); \
 	(void)(&start__ == &max__); \
-	start__ > max__ || size__ > max__ - start__; \
+	start__ >= max__ || size__ > max__ - start__; \
 })
 
 #define range_overflows_t(type, start, size, max) \
 	range_overflows((type)(start), (type)(size), (type)(max))
 
+#define range_overflows_end(start, size, max) ({ \
+	typeof(start) start__ = (start); \
+	typeof(size) size__ = (size); \
+	typeof(max) max__ = (max); \
+	(void)(&start__ == &size__); \
+	(void)(&start__ == &max__); \
+	start__ > max__ || size__ > max__ - start__; \
+})
+
+#define range_overflows_end_t(type, start, size, max) \
+	range_overflows_end((type)(start), (type)(size), (type)(max))
+
 /* Note we don't consider signbits :| */
 #define overflows_type(x, T) \
 	(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
