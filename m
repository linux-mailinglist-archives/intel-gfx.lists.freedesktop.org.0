Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CD55F4428
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E27710E703;
	Tue,  4 Oct 2022 13:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0189410E709
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664889590; x=1696425590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cxe/cw4cmJ77bLEMhfktcBVvBegBLw4/eprfTyK/Eu8=;
 b=UgvMkmRgGFpJk8ibqTv54czAiC51vSrZdx3eK7gcgPkvVRPhm2raODHC
 YV08ar+buHgrorvFud/oESuIwoFfgrUs2lOXkpncPFDHOUAieK0WpNRcW
 7I14lFd4L+HCLHiRZUPfWDzcegM2b18TpI+3aow/utNXuSK6YpKAUmlUE
 pQeoDzDW/OoewQwVpJOw2/xE5aubUMZcN3cn4J9Fm04T2fLJXU65uC8nJ
 rXlnOZRh04k0HH/WjaeOtz18PsZqwpIWw+m7n5FsPUcy6aH5x4rvLEnPC
 q8VOrOtcIbZN4aMqYV08XKX38w7w8CXBvS67pKCu3eWsNjvCnWktEwsSt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300507221"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="300507221"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:19:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654766939"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="654766939"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:19:40 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 14:19:13 +0100
Message-Id: <20221004131916.233474-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004131916.233474-1-matthew.auld@intel.com>
References: <20221004131916.233474-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/5] drm/i915/display: handle migration for
 dpt
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On platforms like DG2, it looks like the dpt path here is missing the
migrate-to-lmem step on discrete platforms.

v2:
  - Move the vma_pin() under the for_i915_gem_ww(), otherwise the
    object can be moved after dropping the lock and then doing the pin.

Fixes: 33e7a975103c ("drm/i915/xelpd: First stab at DPT support")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jianshui Yu <jianshui.yu@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 51 +++++++++++++--------
 1 file changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 0cd9e8cb078b..5031ee5695dd 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -26,10 +26,17 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 	struct drm_device *dev = fb->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	u32 alignment;
 	int ret;
 
+	/*
+	 * We are not syncing against the binding (and potential migrations)
+	 * below, so this vm must never be async.
+	*/
+	GEM_WARN_ON(vm->bind_async_flags);
+
 	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
@@ -37,29 +44,37 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 
 	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
 
-	ret = i915_gem_object_lock_interruptible(obj, NULL);
-	if (!ret) {
+	for_i915_gem_ww(&ww, ret, true) {
+		ret = i915_gem_object_lock(obj, &ww);
+		if (ret)
+			continue;
+
+		if (HAS_LMEM(dev_priv)) {
+			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
+			if (ret)
+				continue;
+		}
+
 		ret = i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
-		i915_gem_object_unlock(obj);
-	}
-	if (ret) {
-		vma = ERR_PTR(ret);
-		goto err;
-	}
+		if (ret)
+			continue;
 
-	vma = i915_vma_instance(obj, vm, view);
-	if (IS_ERR(vma))
-		goto err;
+		vma = i915_vma_instance(obj, vm, view);
+		if (IS_ERR(vma)) {
+			ret = PTR_ERR(vma);
+			continue;
+		}
 
-	if (i915_vma_misplaced(vma, 0, alignment, 0)) {
-		ret = i915_vma_unbind_unlocked(vma);
-		if (ret) {
-			vma = ERR_PTR(ret);
-			goto err;
+		if (i915_vma_misplaced(vma, 0, alignment, 0)) {
+			ret = i915_vma_unbind(vma);
+			if (ret)
+				continue;
 		}
-	}
 
-	ret = i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
+		ret = i915_vma_pin_ww(vma, &ww, 0, alignment, PIN_GLOBAL);
+		if (ret)
+			continue;
+	}
 	if (ret) {
 		vma = ERR_PTR(ret);
 		goto err;
-- 
2.37.3

