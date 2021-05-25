Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18480390ADA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 22:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C236EADE;
	Tue, 25 May 2021 20:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2982A6EAE2;
 Tue, 25 May 2021 20:57:54 +0000 (UTC)
IronPort-SDR: bpl59QisylXCHnU1L542WqPH7qjrOJVZ59m/YeNAuWzLsEIv9yZcpZx6i/Ir7mlTnhpI0F5rbC
 x/TShQo5CNZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="202318070"
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="202318070"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 13:57:54 -0700
IronPort-SDR: azmVl98nEsJdmCmvduR/PZ4LeM69eWnStSkgsmP1e0qa8+Ema8jwB+2SwSm8B9z16C6TIfShAB
 VhDuqxaLvwlg==
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="443603545"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 13:57:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 25 May 2021 14:15:33 -0700
Message-Id: <20210525211541.87696-10-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210525211541.87696-1-matthew.brost@intel.com>
References: <20210525211541.87696-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/17] drm/i915/guc: Don't repeat CTB layout
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
index dbece569fbe4..fbd6bd20f588 100644
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
