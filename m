Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNK/FgEMn2neYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9BC198F63
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED8110E799;
	Wed, 25 Feb 2026 14:49:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dsV+UjCX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BEAF10E798;
 Wed, 25 Feb 2026 14:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772030972; x=1803566972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cjTsf9Pq2G8KQsxgUM9ln08chmaXQYCMAEPbm1h61qY=;
 b=dsV+UjCXtGooK9b4Ai8fLL1tCc/G+8AJqhFgkCogh8nphYTzLcdzcGyn
 j39+uDinC7z1eednO4TbHmSIBRamJXF+NYzO4ObEdB7X/79++YuH0x3fW
 aCNtsAcrMPMiLL4RAZasvikAEKzY7evxAmw1pyFgulEK4Uoxy0af+Cx0b
 m5oOi+5/3AyLhGwIuZUUFDhYoIzec2hTpsJNYf8dgzDIGk8VfaIXOQccm
 WBx63kbKjUJbTkApVy3npGoY3UbP+xkQtYxg7hqSuP7lGLGJrggKiXw07
 Sv5eL4HTJe9l4ypVXap+iJ3D+r8lwiFDNcZgduCGiGqLSocAfwaA0/zza g==;
X-CSE-ConnectionGUID: bt348UddRxiPPv0gnGVtmA==
X-CSE-MsgGUID: CLecSf4RSNyOpFpTNu1b9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83398625"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83398625"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:32 -0800
X-CSE-ConnectionGUID: HfpibFu2QrGVwTSRsm2Hfg==
X-CSE-MsgGUID: +8nvb9BPSgKlnNtO0SClFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="213369269"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 02/10] drm/i915/dpt: pass obj,
 size instead of framebuffer to intel_dpt_create()
Date: Wed, 25 Feb 2026 16:49:08 +0200
Message-ID: <3a6e987ce8bb9f2c8d90c35342de14494a64de1b.1772030909.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772030909.git.jani.nikula@intel.com>
References: <cover.1772030909.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DF9BC198F63
X-Rspamd-Action: no action

Split the size determination between caller and callee to drop the
dependency on struct intel_framebuffer from DPT code, but avoid adding a
dependency on I915_GTT_PAGE_SIZE in the caller side.

Pass zero size to let intel_dpt_create() handle the regular obj->size
case, but remapped size if fb needs stride remap.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.h | 5 ++---
 drivers/gpu/drm/i915/display/intel_fb.c  | 7 ++++++-
 drivers/gpu/drm/i915/i915_dpt.c          | 8 ++------
 drivers/gpu/drm/xe/display/xe_fb_pin.c   | 2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index db521401b828..79d9bb80941a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -8,10 +8,10 @@
 
 #include <linux/types.h>
 
+struct drm_gem_object;
 struct i915_address_space;
 struct i915_vma;
 struct intel_display;
-struct intel_framebuffer;
 
 void intel_dpt_destroy(struct i915_address_space *vm);
 struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
@@ -19,8 +19,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
 void intel_dpt_suspend(struct intel_display *display);
 void intel_dpt_resume(struct intel_display *display);
-struct i915_address_space *
-intel_dpt_create(struct intel_framebuffer *fb);
+struct i915_address_space *intel_dpt_create(struct drm_gem_object *obj, size_t size);
 u64 intel_dpt_offset(struct i915_vma *dpt_vma);
 
 #endif /* __INTEL_DPT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 38c33f2ca05c..4ee884639ac2 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2304,9 +2304,14 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		goto err_bo_framebuffer_fini;
 
 	if (intel_fb_uses_dpt(fb)) {
+		struct drm_gem_object *obj = intel_fb_bo(&intel_fb->base);
 		struct i915_address_space *vm;
+		size_t size = 0;
 
-		vm = intel_dpt_create(intel_fb);
+		if (intel_fb_needs_pot_stride_remap(intel_fb))
+			size = intel_remapped_info_size(&intel_fb->remapped_view.gtt.remapped);
+
+		vm = intel_dpt_create(obj, size);
 		if (IS_ERR(vm)) {
 			drm_dbg_kms(display->drm, "failed to create DPT\n");
 			ret = PTR_ERR(vm);
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index 3f764727025c..cd98b06d2685 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -243,19 +243,15 @@ void intel_dpt_suspend(struct intel_display *display)
 }
 
 struct i915_address_space *
-intel_dpt_create(struct intel_framebuffer *fb)
+intel_dpt_create(struct drm_gem_object *obj, size_t size)
 {
-	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct drm_i915_private *i915 = to_i915(obj->dev);
 	struct drm_i915_gem_object *dpt_obj;
 	struct i915_address_space *vm;
 	struct i915_dpt *dpt;
-	size_t size;
 	int ret;
 
-	if (intel_fb_needs_pot_stride_remap(fb))
-		size = intel_remapped_info_size(&fb->remapped_view.gtt.remapped);
-	else
+	if (!size)
 		size = DIV_ROUND_UP_ULL(obj->size, I915_GTT_PAGE_SIZE);
 
 	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index e1d29b6ba043..5488723f4f87 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -455,7 +455,7 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
  * For Xe introduce dummy intel_dpt_create which just return NULL,
  * intel_dpt_destroy which does nothing, and fake intel_dpt_ofsset returning 0;
  */
-struct i915_address_space *intel_dpt_create(struct intel_framebuffer *fb)
+struct i915_address_space *intel_dpt_create(struct drm_gem_object *obj, size_t size)
 {
 	return NULL;
 }
-- 
2.47.3

