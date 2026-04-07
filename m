Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGfGHgwo1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82983B1553
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CC410E483;
	Tue,  7 Apr 2026 15:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NtXpdVYZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A39210E482;
 Tue,  7 Apr 2026 15:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577097; x=1807113097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yL/8VdqwmW5n7p5zGCVKnDkb1kueIh4Se/8uZDGyuT4=;
 b=NtXpdVYZBRoLQHNSBvNQfxK9OwK6WFt0ZDZYHi69F74GEY1uEvnysBoM
 RfIv17NW/9IkedyOG1WQUrdM728kwSzH5Iu75b6J86Pjh5ErBpwz7y8dZ
 rNuQey/UUbO7zPiVF8S3PgPAh4EnIQEQYbywsxN2UCet3cIeMoPjeB+7G
 AlWvbZgoc+i+Ydh6jSJXSpiW0rFK4RU1AaeHWm11/4ABpdXYLnJ7ELEoS
 u7SCabFIgY0OiwUNxogykyqVm7DIVdJ9JjWAEtdzgcPeHJM5Uc9jcLyqj
 IcgQr0ZcTKt8pPSapxWz+yGOxv0iD3cwNJuaW8SYgmguUKNV89jTI2Z4l w==;
X-CSE-ConnectionGUID: U904RBESSauIO5a9zG0yCw==
X-CSE-MsgGUID: LqD/W3ZwQTqKS3mDwTmu9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76614826"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76614826"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:37 -0700
X-CSE-ConnectionGUID: FUFbir2PREiT96SZvE17Dw==
X-CSE-MsgGUID: fyOVRZtYRQKFzZ1J9h0u6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="229876022"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915/selftests:  Use i915_gtt_view_is_*()
Date: Tue,  7 Apr 2026 18:50:52 +0300
Message-ID: <20260407155053.32156-12-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: E82983B1553
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the naked GTT view type checks with the new
i915_gtt_view_is_*() helpers. This isolates some of
the code from GTT view implementation details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_vma.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 258557388a2d..60dbc6e04f43 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -533,12 +533,11 @@ assert_remapped(struct drm_i915_gem_object *obj,
 	return sg;
 }
 
-static unsigned int remapped_size(enum i915_gtt_view_type view_type,
+static unsigned int remapped_size(const struct i915_gtt_view *view,
 				  const struct intel_remapped_plane_info *a,
 				  const struct intel_remapped_plane_info *b)
 {
-
-	if (view_type == I915_GTT_VIEW_ROTATED)
+	if (i915_gtt_view_is_rotated(view))
 		return a->dst_stride * a->width + b->dst_stride * b->width;
 	else
 		return a->dst_stride * a->height + b->dst_stride * b->height;
@@ -606,11 +605,11 @@ static int igt_vma_rotate_remap(void *arg)
 			max_offset = max_pages - max_offset;
 
 			if (!plane_info[0].dst_stride)
-				plane_info[0].dst_stride = view.type == I915_GTT_VIEW_ROTATED ?
+				plane_info[0].dst_stride = i915_gtt_view_is_rotated(&view) ?
 									plane_info[0].height :
 									plane_info[0].width;
 			if (!plane_info[1].dst_stride)
-				plane_info[1].dst_stride = view.type == I915_GTT_VIEW_ROTATED ?
+				plane_info[1].dst_stride = i915_gtt_view_is_rotated(&view) ?
 									plane_info[1].height :
 									plane_info[1].width;
 
@@ -632,7 +631,7 @@ static int igt_vma_rotate_remap(void *arg)
 						goto out_object;
 					}
 
-					expected_pages = remapped_size(view.type, &plane_info[0], &plane_info[1]);
+					expected_pages = remapped_size(&view, &plane_info[0], &plane_info[1]);
 
 					if (view.type != I915_GTT_VIEW_NORMAL &&
 					    vma->size != expected_pages * PAGE_SIZE) {
@@ -664,13 +663,13 @@ static int igt_vma_rotate_remap(void *arg)
 
 					sg = vma->pages->sgl;
 					for (n = 0; n < ARRAY_SIZE(view.rotated.plane); n++) {
-						if (view.type == I915_GTT_VIEW_ROTATED)
+						if (i915_gtt_view_is_rotated(&view))
 							sg = assert_rotated(obj, &view.rotated, n, sg);
 						else
 							sg = assert_remapped(obj, &view.remapped, n, sg);
 						if (IS_ERR(sg)) {
 							pr_err("Inconsistent %s VMA pages for plane %d: [(%d, %d, %d, %d, %d), (%d, %d, %d, %d, %d)]\n",
-							       view.type == I915_GTT_VIEW_ROTATED ?
+							       i915_gtt_view_is_rotated(&view) ?
 							       "rotated" : "remapped", n,
 							       plane_info[0].width,
 							       plane_info[0].height,
@@ -1009,7 +1008,7 @@ static int igt_vma_remapped_gtt(void *arg)
 				goto out;
 
 			if (!plane_info[0].dst_stride)
-				plane_info[0].dst_stride = *t == I915_GTT_VIEW_ROTATED ?
+				plane_info[0].dst_stride = i915_gtt_view_is_rotated(&view) ?
 								 p->height : p->width;
 
 			vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, PIN_MAPPABLE);
@@ -1032,7 +1031,7 @@ static int igt_vma_remapped_gtt(void *arg)
 					unsigned int offset;
 					u32 val = y << 16 | x;
 
-					if (*t == I915_GTT_VIEW_ROTATED)
+					if (i915_gtt_view_is_rotated(&view))
 						offset = (x * plane_info[0].dst_stride + y) * PAGE_SIZE;
 					else
 						offset = (y * plane_info[0].dst_stride + x) * PAGE_SIZE;
@@ -1064,7 +1063,7 @@ static int igt_vma_remapped_gtt(void *arg)
 					u32 exp = y << 16 | x;
 					u32 val;
 
-					if (*t == I915_GTT_VIEW_ROTATED)
+					if (i915_gtt_view_is_rotated(&view))
 						src_idx = rotated_index(&view.rotated, 0, x, y);
 					else
 						src_idx = remapped_index(&view.remapped, 0, x, y);
@@ -1073,7 +1072,7 @@ static int igt_vma_remapped_gtt(void *arg)
 					val = ioread32(&map[offset / sizeof(*map)]);
 					if (val != exp) {
 						pr_err("%s VMA write test failed, expected 0x%x, found 0x%x\n",
-						       *t == I915_GTT_VIEW_ROTATED ? "Rotated" : "Remapped",
+						       i915_gtt_view_is_rotated(&view) ? "Rotated" : "Remapped",
 						       exp, val);
 						i915_vma_unpin_iomap(vma);
 						err = -EINVAL;
-- 
2.52.0

