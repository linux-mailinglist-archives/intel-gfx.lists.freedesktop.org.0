Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCg8JyZNAmpaqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF8B5166CE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5840D10E8F1;
	Mon, 11 May 2026 21:41:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+nzvEnO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3867A10E8F0;
 Mon, 11 May 2026 21:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535715; x=1810071715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/84LIoHCN+lAb7GWPC0aYvL2XeceEKS+rZIxqCR7Rx4=;
 b=c+nzvEnO+U8bgDL2FIi4x35i3EQpdrdlW5QdEPZD2HAoiOmJwhBzHlgN
 tQYu5W+Y7UyMUPxCYL8NIPdgbeezklRSLbZdj1ryXAhJ15Ls/5Ar4NqdF
 65Gq5+Tc5Ye93cDdL98tLmLBlgvks6Off7ICwBRhxTwdJf0jQpdeS16tx
 1z9pKeZG9Pe41drWFObrLlg+lR1rPaqJ/BDA3cYaf/Vsg/Vo3OoD14G/l
 c+s056CohqHlrjAUj6MUYtEKDgUbu+8mAHvDPN3Jkfq2m4I+DQZZDYAqR
 7Izs1AGDLZi6BmaFcYDvJO2GQ5I35xfbrzVGZzWP4QOpJ1HsqckXjiIO+ w==;
X-CSE-ConnectionGUID: uAHNfGWFQGuxAjK/RHUP3w==
X-CSE-MsgGUID: 1a2aMAL9ScClyPzNgVt41A==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79618501"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79618501"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:55 -0700
X-CSE-ConnectionGUID: LmpkcbVQQeuhyD7YZ+4GVQ==
X-CSE-MsgGUID: e+Ex2CaNQ72EEM1WcyUoDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233097301"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/14] drm/xe/ggtt: Decouple lmem/stolen physcial offset from
 GGTT offset
Date: Tue, 12 May 2026 00:41:15 +0300
Message-ID: <20260511214122.8468-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 4DF8B5166CE
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The xe GGTT code is hopelessly confused what offsets mean what.
It's using the same offsets for both lmem/stolen as well as the
GGTT. Make it a bit less confused by giving the GGTT its own
offsets.

The place where this is going completely wrong at the moment
is the display initial FB readout. It looks like that might be
the only place using fixed offsets with XE_BO_FLAG_GGTT, but
it's a bit hard to be sure with the maze of code.

IMO this whole swiss army knife pin_map_novm() stuff should
be nuked from orbit because it's clearly doing too many things
at once for anyone to keep track...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  6 +-
 drivers/gpu/drm/xe/display/xe_initial_plane.c |  2 +-
 drivers/gpu/drm/xe/xe_bo.c                    | 56 ++++++++++++-------
 drivers/gpu/drm/xe/xe_bo.h                    |  4 +-
 drivers/gpu/drm/xe/xe_eu_stall.c              |  3 +-
 5 files changed, 44 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index f93c98bec5b5..51d368cb0ece 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -166,7 +166,7 @@ static int __xe_pin_fb_vma_dpt(struct drm_gem_object *obj,
 
 	if (IS_DGFX(xe))
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
-						   dpt_size, ~0ull,
+						   dpt_size, ~0ull, ~0ull,
 						   ttm_bo_type_kernel,
 						   XE_BO_FLAG_VRAM0 |
 						   XE_BO_FLAG_GGTT |
@@ -174,7 +174,7 @@ static int __xe_pin_fb_vma_dpt(struct drm_gem_object *obj,
 						   pin_params->alignment, false);
 	else
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
-						   dpt_size,  ~0ull,
+						   dpt_size,  ~0ull, ~0ull,
 						   ttm_bo_type_kernel,
 						   XE_BO_FLAG_STOLEN |
 						   XE_BO_FLAG_GGTT |
@@ -182,7 +182,7 @@ static int __xe_pin_fb_vma_dpt(struct drm_gem_object *obj,
 						   pin_params->alignment, false);
 	if (IS_ERR(dpt))
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
-						   dpt_size,  ~0ull,
+						   dpt_size,  ~0ull, ~0ull,
 						   ttm_bo_type_kernel,
 						   XE_BO_FLAG_SYSTEM |
 						   XE_BO_FLAG_GGTT |
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 584ce82b2564..14ac4cd8b7ff 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -75,7 +75,7 @@ initial_plane_bo(struct xe_device *xe,
 		flags |= XE_BO_FLAG_STOLEN;
 	}
 
-	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base,
+	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, phys_base,
 					  ttm_bo_type_kernel, flags, 0, false);
 	if (IS_ERR(bo)) {
 		drm_dbg_kms(&xe->drm,
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 4c80bac67622..d2c10cd1f8be 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -2473,7 +2473,9 @@ static int __xe_bo_fixed_placement(struct xe_device *xe,
 static struct xe_bo *
 __xe_bo_create_locked(struct xe_device *xe,
 		      struct xe_tile *tile, struct xe_vm *vm,
-		      size_t size, u64 start, u64 end,
+		      size_t size,
+		      u64 phys_start, u64 phys_end,
+		      u64 ggtt_start, u64 ggtt_end,
 		      u16 cpu_caching, enum ttm_bo_type type, u32 flags,
 		      u64 alignment, struct drm_exec *exec)
 {
@@ -2483,13 +2485,14 @@ __xe_bo_create_locked(struct xe_device *xe,
 	if (vm)
 		xe_vm_assert_held(vm);
 
-	if (start || end != ~0ULL) {
+	if (phys_start || phys_end != ~0ULL) {
 		bo = xe_bo_alloc();
 		if (IS_ERR(bo))
 			return bo;
 
 		flags |= XE_BO_FLAG_FIXED_PLACEMENT;
-		err = __xe_bo_fixed_placement(xe, bo, type, flags, start, end, size);
+		err = __xe_bo_fixed_placement(xe, bo, type, flags,
+					      phys_start, phys_end, size);
 		if (err) {
 			xe_bo_free(bo);
 			return ERR_PTR(err);
@@ -2532,9 +2535,9 @@ __xe_bo_create_locked(struct xe_device *xe,
 			if (t != tile && !(bo->flags & XE_BO_FLAG_GGTTx(t)))
 				continue;
 
-			if (flags & XE_BO_FLAG_FIXED_PLACEMENT) {
+			if (ggtt_start || ggtt_end != ~0ULL) {
 				err = xe_ggtt_insert_bo_at(t->mem.ggtt, bo,
-							   start + xe_bo_size(bo), U64_MAX,
+							   ggtt_start, ggtt_end,
 							   exec);
 			} else {
 				err = xe_ggtt_insert_bo(t->mem.ggtt, bo, exec);
@@ -2574,8 +2577,9 @@ struct xe_bo *xe_bo_create_locked(struct xe_device *xe, struct xe_tile *tile,
 				  enum ttm_bo_type type, u32 flags,
 				  struct drm_exec *exec)
 {
-	return __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL, 0, type,
-				     flags, 0, exec);
+	return __xe_bo_create_locked(xe, tile, vm, size,
+				     0, ~0ULL, 0, ~0ULL,
+				     0, type, flags, 0, exec);
 }
 
 static struct xe_bo *xe_bo_create_novm(struct xe_device *xe, struct xe_tile *tile,
@@ -2590,7 +2594,8 @@ static struct xe_bo *xe_bo_create_novm(struct xe_device *xe, struct xe_tile *til
 
 	xe_validation_guard(&ctx, &xe->val, &exec, (struct xe_val_flags) {.interruptible = intr},
 			    ret) {
-		bo = __xe_bo_create_locked(xe, tile, NULL, size, 0, ~0ULL,
+		bo = __xe_bo_create_locked(xe, tile, NULL, size,
+					   0, ~0ULL, 0, ~0ULL,
 					   cpu_caching, type, flags, alignment, &exec);
 		drm_exec_retry_on_contention(&exec);
 		if (IS_ERR(bo)) {
@@ -2629,7 +2634,8 @@ struct xe_bo *xe_bo_create_user(struct xe_device *xe,
 
 	if (vm || exec) {
 		xe_assert(xe, exec);
-		bo = __xe_bo_create_locked(xe, NULL, vm, size, 0, ~0ULL,
+		bo = __xe_bo_create_locked(xe, NULL, vm, size,
+					   0, ~0ULL, 0, ~0ULL,
 					   cpu_caching, ttm_bo_type_device,
 					   flags, 0, exec);
 		if (!IS_ERR(bo))
@@ -2669,7 +2675,8 @@ struct xe_bo *xe_bo_create_pin_range_novm(struct xe_device *xe, struct xe_tile *
 	int err = 0;
 
 	xe_validation_guard(&ctx, &xe->val, &exec, (struct xe_val_flags) {}, err) {
-		bo = __xe_bo_create_locked(xe, tile, NULL, size, start, end,
+		bo = __xe_bo_create_locked(xe, tile, NULL, size,
+					   start, end, 0, ~0ULL,
 					   0, type, flags, 0, &exec);
 		if (IS_ERR(bo)) {
 			drm_exec_retry_on_contention(&exec);
@@ -2694,20 +2701,24 @@ struct xe_bo *xe_bo_create_pin_range_novm(struct xe_device *xe, struct xe_tile *
 static struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
 						     struct xe_tile *tile,
 						     struct xe_vm *vm,
-						     size_t size, u64 offset,
+						     size_t size, u64 phys_offset, u64 ggtt_offset,
 						     enum ttm_bo_type type, u32 flags,
 						     u64 alignment, struct drm_exec *exec)
 {
 	struct xe_bo *bo;
 	int err;
-	u64 start = offset == ~0ull ? 0 : offset;
-	u64 end = offset == ~0ull ? ~0ull : start + size;
+	u64 phys_start = phys_offset == ~0ull ? 0 : phys_offset;
+	u64 phys_end = phys_offset == ~0ull ? ~0ull : phys_start + size;
+	u64 ggtt_start = ggtt_offset == ~0ull ? 0 : ggtt_offset;
+	u64 ggtt_end = ggtt_offset == ~0ull ? ~0ull : ggtt_start + size;
 
 	if (flags & XE_BO_FLAG_STOLEN &&
 	    xe_ttm_stolen_cpu_access_needs_ggtt(xe))
 		flags |= XE_BO_FLAG_GGTT;
 
-	bo = __xe_bo_create_locked(xe, tile, vm, size, start, end, 0, type,
+	bo = __xe_bo_create_locked(xe, tile, vm, size,
+				   phys_start, phys_end, ggtt_start, ggtt_end,
+				   0, type,
 				   flags | XE_BO_FLAG_NEEDS_CPU_ACCESS | XE_BO_FLAG_PINNED,
 				   alignment, exec);
 	if (IS_ERR(bo))
@@ -2739,7 +2750,8 @@ static struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
  * @tile: The tile to select for migration of this bo, and the tile used for
  * GGTT binding if any. Only to be non-NULL for ttm_bo_type_kernel bos.
  * @size: The storage size to use for the bo.
- * @offset: Optional VRAM offset or %~0ull for don't care.
+ * @phys_offset: Optional VRAM offset or %~0ull for don't care.
+ * @ggtt_offset: Optional GGTT offset or %~0ull for don't care.
  * @type: The TTM buffer object type.
  * @flags: XE_BO_FLAG_ flags.
  * @alignment: GGTT alignment.
@@ -2754,7 +2766,8 @@ static struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
  */
 struct xe_bo *
 xe_bo_create_pin_map_at_novm(struct xe_device *xe, struct xe_tile *tile,
-			     size_t size, u64 offset, enum ttm_bo_type type, u32 flags,
+			     size_t size, u64 phys_offset, u64 ggtt_offset,
+			     enum ttm_bo_type type, u32 flags,
 			     u64 alignment, bool intr)
 {
 	struct xe_validation_ctx ctx;
@@ -2764,7 +2777,7 @@ xe_bo_create_pin_map_at_novm(struct xe_device *xe, struct xe_tile *tile,
 
 	xe_validation_guard(&ctx, &xe->val, &exec, (struct xe_val_flags) {.interruptible = intr},
 			    ret) {
-		bo = xe_bo_create_pin_map_at_aligned(xe, tile, NULL, size, offset,
+		bo = xe_bo_create_pin_map_at_aligned(xe, tile, NULL, size, phys_offset, ggtt_offset,
 						     type, flags, alignment, &exec);
 		if (IS_ERR(bo)) {
 			drm_exec_retry_on_contention(&exec);
@@ -2801,8 +2814,9 @@ struct xe_bo *xe_bo_create_pin_map(struct xe_device *xe, struct xe_tile *tile,
 				   enum ttm_bo_type type, u32 flags,
 				   struct drm_exec *exec)
 {
-	return xe_bo_create_pin_map_at_aligned(xe, tile, vm, size, ~0ull, type, flags,
-					       0, exec);
+	return xe_bo_create_pin_map_at_aligned(xe, tile, vm,
+					       size, ~0ull, ~0ull,
+					       type, flags, 0, exec);
 }
 
 /**
@@ -2826,7 +2840,9 @@ struct xe_bo *xe_bo_create_pin_map_novm(struct xe_device *xe, struct xe_tile *ti
 					size_t size, enum ttm_bo_type type, u32 flags,
 					bool intr)
 {
-	return xe_bo_create_pin_map_at_novm(xe, tile, size, ~0ull, type, flags, 0, intr);
+	return xe_bo_create_pin_map_at_novm(xe, tile,
+					    size, ~0ull, ~0ull,
+					    type, flags, 0, intr);
 }
 
 static void __xe_bo_unpin_map_no_vm(void *arg)
diff --git a/drivers/gpu/drm/xe/xe_bo.h b/drivers/gpu/drm/xe/xe_bo.h
index 6340317f7d2e..a281cca5ad03 100644
--- a/drivers/gpu/drm/xe/xe_bo.h
+++ b/drivers/gpu/drm/xe/xe_bo.h
@@ -137,8 +137,8 @@ struct xe_bo *xe_bo_create_pin_range_novm(struct xe_device *xe, struct xe_tile *
 					  enum ttm_bo_type type, u32 flags);
 struct xe_bo *
 xe_bo_create_pin_map_at_novm(struct xe_device *xe, struct xe_tile *tile,
-			     size_t size, u64 offset, enum ttm_bo_type type,
-			     u32 flags, u64 alignment, bool intr);
+			     size_t size, u64 phys_offset, u64 ggtt_offset,
+			     enum ttm_bo_type type, u32 flags, u64 alignment, bool intr);
 struct xe_bo *xe_managed_bo_create_pin_map(struct xe_device *xe, struct xe_tile *tile,
 					   size_t size, u32 flags);
 void xe_managed_bo_unpin_map_no_vm(struct xe_bo *bo);
diff --git a/drivers/gpu/drm/xe/xe_eu_stall.c b/drivers/gpu/drm/xe/xe_eu_stall.c
index 297be3c42b20..e153c3cda82e 100644
--- a/drivers/gpu/drm/xe/xe_eu_stall.c
+++ b/drivers/gpu/drm/xe/xe_eu_stall.c
@@ -663,7 +663,8 @@ static int xe_eu_stall_data_buf_alloc(struct xe_eu_stall_data_stream *stream,
 
 	size = stream->per_xecore_buf_size * last_xecore;
 
-	bo = xe_bo_create_pin_map_at_novm(tile->xe, tile, size, ~0ull, ttm_bo_type_kernel,
+	bo = xe_bo_create_pin_map_at_novm(tile->xe, tile, size, ~0ull, ~0ull,
+					  ttm_bo_type_kernel,
 					  XE_BO_FLAG_SYSTEM | XE_BO_FLAG_GGTT, SZ_64, false);
 	if (IS_ERR(bo)) {
 		kfree(stream->xecore_buf);
-- 
2.52.0

