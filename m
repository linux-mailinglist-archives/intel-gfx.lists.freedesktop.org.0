Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI2XG/kn1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA7E3B1521
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB6510E46D;
	Tue,  7 Apr 2026 15:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+Mw8HFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED08410E475;
 Tue,  7 Apr 2026 15:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577079; x=1807113079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6MOIcXsfDYu+4pPYR1QbxmpIo85D7TSaD01XMkiUvG0=;
 b=k+Mw8HFY1XKvFeadHmO9aBpsDrjjPVDHL9PbyPmxVXZp4R2UoUvypPU8
 1e9cAD/x42mg95bVSyZr9vbQEXceSZgUe7qKlYxYysWwr/ZQTtck/kw20
 o1QpsObtExH8HLCsaQQaj3hSDqCYgADxpyTVTyypr2e5KX/1hwNU+Nxf6
 qmOoThLKS+W2EPYnaHAs/6KgEZNZc1pwjtYAhN4BtzVaF5fSqnV2CpM4m
 6oXEfNWflr7SN/VuU4/5NDdRaXj5YzSKr9E5YgDRSpO3WyrlGstrWmx9G
 tu+6Xbj90cwMafbnXr0WapYZ3cxeH5dvrFn5aByb1IYXVcDkpKU3POrIb A==;
X-CSE-ConnectionGUID: TpYrznq2TTavd9jaCbL3zg==
X-CSE-MsgGUID: J3GPZ767QIOr5jvKVqhEbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999159"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999159"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:19 -0700
X-CSE-ConnectionGUID: FyTaD3P+R5eU6QlocgD2ew==
X-CSE-MsgGUID: HtmyWnfIRIaLZHaJ7vzHOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633777"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/12] drm/xe/fb: Extract xe_dpt_size()
Date: Tue,  7 Apr 2026 18:50:47 +0300
Message-ID: <20260407155053.32156-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: DDA7E3B1521
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Declutter the xe fb pinning code by extracting the DPT size
calculation into its own function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 30 +++++++++++++++-----------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 72efafb189f7..9873904a950d 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -139,6 +139,22 @@ write_dpt_remapped(struct xe_bo *bo,
 	}
 }
 
+static unsigned int xe_dpt_size(struct drm_gem_object *obj,
+				const struct i915_gtt_view *view)
+{
+	unsigned int pages;
+	int pte_size = 8;
+
+	if (view->type == I915_GTT_VIEW_NORMAL)
+		pages = obj->size / XE_PAGE_SIZE;
+	else if (view->type == I915_GTT_VIEW_REMAPPED)
+		pages = intel_remapped_info_size(&view->remapped);
+	else
+		pages = intel_rotation_info_size(&view->rotated);
+
+	return ALIGN(pages * pte_size, XE_PAGE_SIZE);
+}
+
 static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 			       const struct i915_gtt_view *view,
 			       struct i915_vma *vma,
@@ -149,17 +165,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 	struct xe_ggtt *ggtt = tile0->mem.ggtt;
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct xe_bo *bo = gem_to_xe_bo(obj), *dpt;
-	u32 dpt_size, size = bo->ttm.base.size;
-
-	if (view->type == I915_GTT_VIEW_NORMAL)
-		dpt_size = ALIGN(size / XE_PAGE_SIZE * 8, XE_PAGE_SIZE);
-	else if (view->type == I915_GTT_VIEW_REMAPPED)
-		dpt_size = ALIGN(intel_remapped_info_size(&view->remapped) * 8,
-				 XE_PAGE_SIZE);
-	else
-		/* display uses 4K tiles instead of bytes here, convert to entries.. */
-		dpt_size = ALIGN(intel_rotation_info_size(&view->rotated) * 8,
-				 XE_PAGE_SIZE);
+	u32 dpt_size = xe_dpt_size(obj, view);
 
 	if (IS_DGFX(xe))
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
@@ -193,7 +199,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 		u64 pte = xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NONE]);
 		u32 x;
 
-		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
+		for (x = 0; x < obj->size / XE_PAGE_SIZE; x++) {
 			u64 addr = xe_bo_addr(bo, x * XE_PAGE_SIZE, XE_PAGE_SIZE);
 
 			iosys_map_wr(&dpt->vmap, x * 8, u64, pte | addr);
-- 
2.52.0

