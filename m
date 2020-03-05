Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5F317AFAB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DB46E2F8;
	Thu,  5 Mar 2020 20:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D976E2F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 20:27:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 12:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="439766699"
Received: from ntitus-mobl1.ti.intel.com (HELO mwahaha-bdw.ger.corp.intel.com)
 ([10.252.24.210])
 by fmsmga005.fm.intel.com with ESMTP; 05 Mar 2020 12:27:08 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 20:27:07 +0000
Message-Id: <20200305202707.204350-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: properly sanity check
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

Testcase: igt/gem_exec_params/invalid-batch-start-offset
Fixes: 0b5372727be3 ("drm/i915/cmdparser: Use cached vmappings")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  6 +++---
 drivers/gpu/drm/i915/i915_utils.h              | 12 ++++++++++++
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7bb27f382af7..43c05034ddb0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2714,9 +2714,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
-	if (range_overflows_t(u64,
-			      eb.batch_start_offset, eb.batch_len,
-			      eb.batch->vma->size)) {
+	if (range_overflows_end_t(u64,
+				  eb.batch_start_offset, eb.batch_len,
+				  eb.batch->vma->size)) {
 		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
 		err = -EINVAL;
 		goto err_vma;
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index cae0ae520398..4cb74564e2dd 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -108,6 +108,18 @@ bool i915_error_injected(void);
 #define range_overflows_t(type, start, size, max) \
 	range_overflows((type)(start), (type)(size), (type)(max))
 
+#define range_overflows_end(start, size, max) ({ \
+	typeof(start) start__ = (start); \
+	typeof(size) size__ = (size); \
+	typeof(max) max__ = (max); \
+	(void)(&start__ == &size__); \
+	(void)(&start__ == &max__); \
+	start__ >= max__ || size__ > max__ - start__; \
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
