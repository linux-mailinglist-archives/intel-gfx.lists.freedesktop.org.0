Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FCF3910A2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 08:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBF86EBF6;
	Wed, 26 May 2021 06:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119FA6E48D;
 Wed, 26 May 2021 06:24:51 +0000 (UTC)
IronPort-SDR: Pf+s2mYlmyV+b1AM1LVnPy4ktJ4Dg9wWOGbGOqLdfb8Vwzf7lAinoTj3rX7txO30Je9rnagsdC
 TDLeNJ+3y5ig==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="182033742"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="182033742"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:49 -0700
IronPort-SDR: sUwpkuXkQvA5Tj4FKzMu93cxj871Ej1ddZ7xoOcdvP02HAr8hdjso8DptdMligP+Bb2WfqFknM
 q5tI4ve3v6ow==
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="633376816"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:48 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 25 May 2021 23:42:29 -0700
Message-Id: <20210526064237.77853-11-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210526064237.77853-1-matthew.brost@intel.com>
References: <20210526064237.77853-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/18] drm/i915/guc: Don't repeat CTB layout
 calculations
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

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

We can retrieve offsets to cmds buffers and descriptor from
actual pointers that we already keep locally.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 079e1a160894..34c582105860 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -244,6 +244,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
 	u32 base, cmds;
+	void *blob;
 	int err;
 	int i;
 
@@ -251,15 +252,18 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 
 	/* vma should be already allocated and map'ed */
 	GEM_BUG_ON(!ct->vma);
+	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(ct->vma->obj));
 	base = intel_guc_ggtt_offset(guc, ct->vma);
 
-	/* (re)initialize descriptors
-	 * cmds buffers are in the second half of the blob page
-	 */
+	/* blob should start with send descriptor */
+	blob = __px_vaddr(ct->vma->obj);
+	GEM_BUG_ON(blob != ct->ctbs[CTB_SEND].desc);
+
+	/* (re)initialize descriptors */
 	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
 		GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
 
-		cmds = base + PAGE_SIZE / 4 * i + PAGE_SIZE / 2;
+		cmds = base + ptrdiff(ct->ctbs[i].cmds, blob);
 		CT_DEBUG(ct, "%d: cmds addr=%#x\n", i, cmds);
 
 		guc_ct_buffer_reset(&ct->ctbs[i], cmds);
@@ -269,12 +273,12 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	 * Register both CT buffers starting with RECV buffer.
 	 * Descriptors are in first half of the blob.
 	 */
-	err = ct_register_buffer(ct, base + PAGE_SIZE / 4 * CTB_RECV,
+	err = ct_register_buffer(ct, base + ptrdiff(ct->ctbs[CTB_RECV].desc, blob),
 				 INTEL_GUC_CT_BUFFER_TYPE_RECV);
 	if (unlikely(err))
 		goto err_out;
 
-	err = ct_register_buffer(ct, base + PAGE_SIZE / 4 * CTB_SEND,
+	err = ct_register_buffer(ct, base + ptrdiff(ct->ctbs[CTB_SEND].desc, blob),
 				 INTEL_GUC_CT_BUFFER_TYPE_SEND);
 	if (unlikely(err))
 		goto err_deregister;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
