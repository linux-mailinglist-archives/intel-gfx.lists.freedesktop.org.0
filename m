Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F03607DA5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 19:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B00910E608;
	Fri, 21 Oct 2022 17:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C9E10E608
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666373853; x=1697909853;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rSprZE9eNs94Z3YcoX8Ho/Xh7ab7BHI2/oQC8tgG2EQ=;
 b=GjNexMtgTMjlV7/AjbRwM+C8JHIBg2rY/gXO892H5OXydvI2K5kvTiXa
 +bCMdV8TTZehnkDADL0P5kSSxFGWNBMzf0tkYHkKl4K4tWzCoyGLM35k9
 fBfb9oSxdNNmf0fM/YCYpPtE7BTB5fY9E0mIqZAKqiFuPlCc90mestDds
 Orig/mTSiZEwrSQGdykXjyezbxuc7+sXyGpYcYg81KatVH2midaKvGS2b
 GnfKaHfHS6SuDNzFuySwTQQoFZFmMxH6eP8Lz8HoG+5+ZSR3QsxrXWfWY
 tEIEGRrqePPxX7oPXXqR/1JvjMQvUtaUba/oZhfS9gX+rYRIqaom70Izv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286781669"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286781669"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 10:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755898791"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="755898791"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 10:37:32 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 10:39:46 -0700
Message-Id: <20221021173946.366210-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/pxp: Make intel_pxp_key_check
 implicitly sort PXP-owning-GT
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

Make intel_pxp_key_check implicitly find the PXP-owning-GT.
Callers of this function shall now pass in i915 since PXP
is a global GPU feature. Make intel_pxp_key_check implicitly
find the right gt to verify pxp session key establishment count
so it's transparent to the callers.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c               | 10 +++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h               |  2 +-
 4 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7cb713043408..04e78acbaf5f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1841,7 +1841,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
+	return intel_pxp_key_check(i915, obj, false) == 0;
 }
 
 static bool pxp_is_borked(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1160723c9d2d..23224977e003 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -868,7 +868,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
+			err = intel_pxp_key_check(vm->gt->i915, obj, true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c87f812ba13a..5c9a4b2c9a75 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -313,10 +313,18 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
 	intel_pxp_irq_disable(pxp);
 }
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign)
 {
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
+
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
 	if (!intel_gtpxp_is_active(pxp))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index c45949bb1f7b..85c5499daba5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -33,7 +33,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
 int intel_pxp_start(struct drm_i915_private *i915);
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign);
 
-- 
2.34.1

