Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCQ4GrGYy2mYJQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:49:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D1A367579
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B5289518;
	Tue, 31 Mar 2026 09:49:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUQiRzxS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A65B89518;
 Tue, 31 Mar 2026 09:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774950574; x=1806486574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aRttpi89yR/mtcwVjkHuyM7vSdty8C72wUOxOOXXQmc=;
 b=AUQiRzxSEhSkY7HjlMG3b4PfFCore6x254s5PhpiiwGO0tHabeNcZ2L/
 LYmI/NdVitCjUJ7qh0qV1/dv34vgktW1i2JE31tHGiV/ZKAY2i31zAyUE
 SCWMr46B887nH0xjdhxTBbL/Kv2cDnwMp3j97nK4EBquVFDiSZPRarwsH
 U5nW8G7zYti66Vng1hBeJlwmyYPTSNoxLnN9UIM+MCgasNXEmQTOjzBrT
 JzQ8nVgtARUUgtRro9a4pCcbwZx9oKkTZPupPh1BGg9mM3hOwuZlMRJWR
 9fx7ly1Dv/Talbt/ZOOfjFmUMNRQ/Z5Fv+aOC18dw5ESXiYp7pxVRS2Se g==;
X-CSE-ConnectionGUID: 5m9zEV5iQ1e3021LW4+PFg==
X-CSE-MsgGUID: 3FILUd92ToqgBwowVhnx5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86257528"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="86257528"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:49:34 -0700
X-CSE-ConnectionGUID: t+sgIEWzTM2VyO+XZO6t3w==
X-CSE-MsgGUID: wOY8hy1vS/yjhrMh4pWnUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230791478"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:49:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 2/5] drm/{i915,
 xe}/fbdev: drop drm device parameter from intel_fbdev_fb_fill_info()
Date: Tue, 31 Mar 2026 12:49:15 +0300
Message-ID: <6c617dc41c07b0e3e9af01b82d0d1dadbd4760fc.1774950508.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774950508.git.jani.nikula@intel.com>
References: <cover.1774950508.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.729];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: D7D1A367579
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The struct drm_device *drm parameter of intel_fbdev_fb_fill_info() is
redundant, as you can obtain the same information via obj->dev. Drop the
drm parameter, and move obj as first (or the context) parameter.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 4 ++--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 6 +++---
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bdaaf3edba0c..6401aaaba199 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -327,7 +327,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	obj = intel_fb_bo(&fb->base);
 
-	ret = intel_fbdev_fb_fill_info(display->drm, info, obj, vma);
+	ret = intel_fbdev_fb_fill_info(obj, info, vma);
 	if (ret)
 		goto out_unpin;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 6f84eb6355de..a696ce42d10b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -66,10 +66,10 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	drm_gem_object_put(obj);
 }
 
-int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
-			     struct drm_gem_object *_obj, struct i915_vma *vma)
+int intel_fbdev_fb_fill_info(struct drm_gem_object *_obj, struct fb_info *info,
+			     struct i915_vma *vma)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct drm_i915_private *i915 = to_i915(_obj->dev);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct i915_gem_ww_ctx ww;
 	void __iomem *vaddr;
@@ -101,7 +101,7 @@ int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 
 		vaddr = i915_vma_pin_iomap(vma);
 		if (IS_ERR(vaddr)) {
-			drm_err(drm,
+			drm_err(&i915->drm,
 				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
 			ret = PTR_ERR(vaddr);
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 34ed2b9c2b4f..ddba45e9839d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -17,8 +17,8 @@ struct i915_vma;
 u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
-int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
-			     struct drm_gem_object *obj, struct i915_vma *vma);
+int intel_fbdev_fb_fill_info(struct drm_gem_object *obj, struct fb_info *info,
+			     struct i915_vma *vma);
 bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index d7030e4d814c..23fa54ee781e 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -91,11 +91,11 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
 }
 
-int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
-			     struct drm_gem_object *_obj, struct i915_vma *vma)
+int intel_fbdev_fb_fill_info(struct drm_gem_object *_obj, struct fb_info *info,
+			     struct i915_vma *vma)
 {
 	struct xe_bo *obj = gem_to_xe_bo(_obj);
-	struct pci_dev *pdev = to_pci_dev(drm->dev);
+	struct pci_dev *pdev = to_pci_dev(_obj->dev->dev);
 
 	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
 		if (obj->flags & XE_BO_FLAG_STOLEN)
-- 
2.47.3

