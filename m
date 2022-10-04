Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F415F40E2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB7310E537;
	Tue,  4 Oct 2022 10:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB5B10E537
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664879615; x=1696415615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yjZIx0WNE2zGeqshri5k7bY8lJ+XQUF2DRSRWcNKYCc=;
 b=BLaW7JS8y79emYXq41olmeCk/4vie62r46P8BhzbYnehVS9QXDuiW8NR
 szrc1wtZPa+5q12/IWguPhFT/9oIJaslmZf95vt711hax601By6w3ZShi
 4A/aHCfWNA/mMPU8iK0dIHtFvG+q3LF13bqVXSIUSRzubidErh8tzy3CS
 SZOpiChWsjNWU0jAlhdjlOmysCXc45Pg7Cq6X+7ClMz2M4aNaWizdO1Kr
 T3S4MGikD7VjihqXhkSCVpXrHoSzbtoePFRX9TiuGBXZdeGTRaIQCXEQQ
 G9sWG/fBV5oOECyaQc7DybLiiuv/fThhqW55pNZYIoO4atIkdqQ+NnAnM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304420534"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304420534"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:33:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="601575139"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="601575139"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:33:34 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 11:33:08 +0100
Message-Id: <20221004103311.194409-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004103311.194409-1-matthew.auld@intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/5] drm/i915/display: handle migration for
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

Fixes: 33e7a975103c ("drm/i915/xelpd: First stab at DPT support")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jianshui Yu <jianshui.yu@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 23 ++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 0cd9e8cb078b..32206bd359da 100644
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
 
@@ -37,10 +44,20 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 
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
+		if (ret)
+			continue;
 	}
 	if (ret) {
 		vma = ERR_PTR(ret);
-- 
2.37.3

