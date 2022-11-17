Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6516C62CF95
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3511210E511;
	Thu, 17 Nov 2022 00:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B5F10E4FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644891; x=1700180891;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sAcmVXfnnGaRNrvmGb5c3zsx0Z8I26wIqzEklGI/2mo=;
 b=OOgTXsEDLbwSkaph3BiyLT//HzS9MZLp+pgJukMKfyYpI3AWwrL8+Udf
 aQcS37BK/9kuEkU2Ciiqd5fKYDdGpR8lO0AVpHxzrJuccxIvCH1zkkqm2
 m4BRT+pFmGCMVXQyd0pKhnoPG8RMzs303ubLSTwL29GXf0rqZfzRIFQA5
 m0S91ZAPBu33Iz1b8UdL2CaMurPPxdmG0wcyFpHf4KvWmIlt+DbFABFdj
 wbXj1EJ8SLPfUcH3aOayeHze+1m5TQuwud13LoopZC4yhraHuq4gea2Dx
 6bwi5IEJN+l1JKgkdQsmhYMnpVxtt3tYd0thp+zntlu3I7buUCYCHuIjO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722097"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722097"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985087"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985087"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:18 -0800
Message-Id: <20221117003018.1433115-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/6] drm/i915/pxp: Make intel_pxp_key_check
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
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c               | 10 +++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h               |  2 +-
 4 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 76490cc59d8f..3436bf433c10 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1848,7 +1848,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
+	return intel_pxp_key_check(i915, obj, false) == 0;
 }
 
 static bool pxp_is_borked(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 29e9e8d5b6fe..9943d5827300 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -869,7 +869,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
+			err = intel_pxp_key_check(vm->gt->i915, obj, true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 43f3790e1520..58219beecfa4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -300,10 +300,18 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
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
 	if (!intel_pxp_is_active_on_gt(pxp))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 7b2b93a2ba94..6fe1595a84d6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -34,7 +34,7 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
 int intel_pxp_start(struct drm_i915_private *i915);
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
+int intel_pxp_key_check(struct drm_i915_private *i915,
 			struct drm_i915_gem_object *obj,
 			bool assign);
 
-- 
2.34.1

