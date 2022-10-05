Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ADB5F5A89
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5836110E758;
	Wed,  5 Oct 2022 19:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B0F10E756
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997410; x=1696533410;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=micz+el/BL0npX12Xu3Aztr99uNhkLQEE3Xvro6Daw8=;
 b=Eb65fYLlePYb2Iz5HluRfr/n8qHrs3v6q39cBWs0s0e6O3Xmz5v0p3LZ
 ozUAx2NgTv1zI4Rvb9i7QyLBVQXyszkyOGiZ1BW5nh+fCxygs5vRKzMHu
 Msmj0W6eM4b87PxVA7/1M35z95e/hFVZKtWbxgElHBDgw5y5Or3Um1w7W
 gQH83+IPqGRwukPkEpiTiDH/RZeWsKwjKX9V7diOPr0Xb+bwX1f5zpIJw
 ZNHi+g43Pd5MS+Xj/MWjsxQ6UKj9AF+SCMcAksoJGdlN+0vcDAv/u950W
 6dwLdUjWkdr96bUkOwjXKkyhkb46IlIV02S9z7TCoFxo963BcDuUI/NzQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="329668563"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="329668563"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="602132222"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="602132222"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2022 12:16:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 12:18:38 -0700
Message-Id: <20221005191838.466351-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
References: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/pxp: Make intel_pxp_key_check
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
 drivers/gpu/drm/i915/pxp/intel_pxp.c               | 12 ++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h               |  2 +-
 4 files changed, 13 insertions(+), 5 deletions(-)

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
index 8f5796cf9c9c..79fb8da1c646 100644
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
index 944c8466f786..148f9fbd907a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -300,11 +300,19 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
 	intel_pxp_irq_disable(pxp);
 }
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign)
 {
-	if (!intel_pxp_is_active(pxp_to_gt(pxp)->i915))
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
+
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
+	if (!intel_pxp_is_active(i915))
 		return -ENODEV;
 
 	if (!i915_gem_object_is_protected(obj))
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 61ef3bedc3a0..94fec55389df 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -28,7 +28,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
 int intel_pxp_start(struct drm_i915_private *i915);
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign);
 
-- 
2.34.1

