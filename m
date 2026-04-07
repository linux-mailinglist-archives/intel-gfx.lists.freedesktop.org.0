Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEheIQEo1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 394BB3B1536
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16F310E472;
	Tue,  7 Apr 2026 15:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSA/8Yax";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3356510E47D;
 Tue,  7 Apr 2026 15:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577086; x=1807113086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hou+ZRsfe8+eD4JvVv06h4pnmToi+/qLdJR55kO2cFk=;
 b=RSA/8Yax5X0FD0DtgCxNFrVDOuvYowi9iaTRMUpnVvi2kzSqJrC++0zg
 ZhZXpFn+hSHORVLpJxckJR1Ebo1TAhdk5q+425C/G4kOmph2zqSvg+/xe
 sRagkrGC8Jmj57xLSGWxlVRwsMMYRHoZ0dHbB/rirh2Mv0pfG5cZyGa+w
 oxjw0VWUtl8toyauRwcdgIkKodXS831JZQ7S/9LBjmzREdxmUr6LUwxyT
 X24fQ3Q5lP66h5zkZlamJaH2weokU/UgTDMujAhDXmV4/ozGSe0PQIvh0
 QI4HU4ot1nmkws+spRbd9AkUtlg8jDAej0Cw7PfOGHrqEbdfU5usahFcG A==;
X-CSE-ConnectionGUID: jaoavE58RAWW8c7BqIQx+w==
X-CSE-MsgGUID: PMnIWBFlRjGPnPdTeha2LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999183"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999183"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:26 -0700
X-CSE-ConnectionGUID: QflxBDdQQiSNF6v95hjUuQ==
X-CSE-MsgGUID: Nz0+3kjuQYO6gSBUl8x9fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633800"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/12] drm/xe/fb: Use i915_gtt_view_is_*()
Date: Tue,  7 Apr 2026 18:50:49 +0300
Message-ID: <20260407155053.32156-9-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 394BB3B1536
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the naked GTT view type checks with the new
i915_gtt_view_is_*() helpers. This isolates the code
from GTT view implementation details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 9873904a950d..5cda276af534 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -145,9 +145,9 @@ static unsigned int xe_dpt_size(struct drm_gem_object *obj,
 	unsigned int pages;
 	int pte_size = 8;
 
-	if (view->type == I915_GTT_VIEW_NORMAL)
+	if (i915_gtt_view_is_normal(view))
 		pages = obj->size / XE_PAGE_SIZE;
-	else if (view->type == I915_GTT_VIEW_REMAPPED)
+	else if (i915_gtt_view_is_remapped(view))
 		pages = intel_remapped_info_size(&view->remapped);
 	else
 		pages = intel_rotation_info_size(&view->rotated);
@@ -195,7 +195,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 	if (IS_ERR(dpt))
 		return PTR_ERR(dpt);
 
-	if (view->type == I915_GTT_VIEW_NORMAL) {
+	if (i915_gtt_view_is_normal(view)) {
 		u64 pte = xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NONE]);
 		u32 x;
 
@@ -204,7 +204,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 
 			iosys_map_wr(&dpt->vmap, x * 8, u64, pte | addr);
 		}
-	} else if (view->type == I915_GTT_VIEW_REMAPPED) {
+	} else if (i915_gtt_view_is_remapped(view)) {
 		write_dpt_remapped(bo, &view->remapped, &dpt->vmap);
 	} else {
 		const struct intel_rotation_info *rot_info = &view->rotated;
@@ -298,7 +298,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 		align = max(align, SZ_64K);
 
 	/* Fast case, preallocated GGTT view? */
-	if (bo->ggtt_node[tile0->id] && view->type == I915_GTT_VIEW_NORMAL) {
+	if (bo->ggtt_node[tile0->id] && i915_gtt_view_is_normal(view)) {
 		vma->node = bo->ggtt_node[tile0->id];
 		return 0;
 	}
@@ -306,7 +306,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 	/* TODO: Consider sharing framebuffer mapping?
 	 * embed i915_vma inside intel_framebuffer
 	 */
-	if (view->type == I915_GTT_VIEW_NORMAL)
+	if (i915_gtt_view_is_normal(view))
 		size = xe_bo_size(bo);
 	else
 		/* display uses tiles instead of bytes here, so convert it back.. */
@@ -314,7 +314,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 
 	pte = xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NONE]);
 	vma->node = xe_ggtt_insert_node_transform(ggtt, bo, pte, size, align,
-						  view->type == I915_GTT_VIEW_NORMAL ?
+						  i915_gtt_view_is_normal(view) ?
 						  NULL : write_ggtt_rotated_node,
 						  &(struct fb_rotate_args){view, bo});
 	if (IS_ERR(vma->node))
-- 
2.52.0

