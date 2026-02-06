Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE5JDf3ahWnfHQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:13:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C961FFD7F6
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9D910E77E;
	Fri,  6 Feb 2026 12:13:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bo3p1Vlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB54610E773;
 Fri,  6 Feb 2026 12:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770380026; x=1801916026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WhqnQAGhk/08X5F0e5OZ5hn9mMyYfTB2mOcta4sz4Pk=;
 b=Bo3p1Vlxe9GPr3HZTh4jdbj4ikmqn9geUowQclSoc4+IYVfi4VNvHpik
 HfXidpup1mxJ+ZdUHHN85kBDAUNNbIFqNOCkEIYYSg9d3NNfS7hoGrYOS
 hfpNW/3Wv+SJs4QN56oiY7Ta5dws60zdkixanpwaXoGrdh+eXfpcOtA40
 IEoERmpCzpJoHAHJHIiIhdKDkCFOPz3CmQw5VSgh/7x+S1GUowbrajRKY
 jijPKxDImKNpN+dkmI+taxY7Ca8kID+ad8la7k1XcoOfaivFOXAD6wHi5
 tnrXDSYH4exEJqKq3YlvJMaOd91lS8uGRjRNVG6Uug+pYTILgF3Phz3c0 g==;
X-CSE-ConnectionGUID: 7/n6ySa1SMGLwtvS5y1ARQ==
X-CSE-MsgGUID: VvjpQ8cCS9OL3ki+JWn9jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71765183"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71765183"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:13:46 -0800
X-CSE-ConnectionGUID: oqiGqlBzTQ+rkb/6trWa4Q==
X-CSE-MsgGUID: SMMhGEiMQjSRptP1GxzTkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="248472599"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:13:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/10] drm/i915/dpt: pass obj,
 size instead of framebuffer to intel_dpt_create()
Date: Fri,  6 Feb 2026 14:13:23 +0200
Message-ID: <1865d596edcfc8a8d0110531a64a4260a659ac5d.1770379986.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770379986.git.jani.nikula@intel.com>
References: <cover.1770379986.git.jani.nikula@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C961FFD7F6
X-Rspamd-Action: no action

Split the size determination between caller and callee to drop the
dependency on struct intel_framebuffer from DPT code, but avoid adding a
dependency on I915_GTT_PAGE_SIZE in the caller side.

Pass zero size to let intel_dpt_create() handle the regular obj->size
case, but remapped size if fb needs stride remap.

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
index b9bd9b6dfe94..5ea3ad27153c 100644
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
index e229c5e26f5f..c01e5576f09e 100644
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
index d2c4e94180fa..36eb6c0b9d76 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -456,7 +456,7 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
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

