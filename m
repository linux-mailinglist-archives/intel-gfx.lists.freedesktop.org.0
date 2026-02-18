Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DqrHazalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D9157660
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773C410E5E1;
	Wed, 18 Feb 2026 15:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="it9LZXPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC4F10E5E2;
 Wed, 18 Feb 2026 15:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428521; x=1802964521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MH4dkpwwM3CxsmTYJ5MGw73KZJfubKxOi5jWHnyJ78M=;
 b=it9LZXPxf3OxkUywdryZDCsC3jDg8et9sQAUUvPaEmb7fmu74ZKx9Ap4
 Mqy8sdtSXg+4ZOS9U5KnJAXNaDb+3JAxHXYjPYbZkkLvmfKi1JCgS3HRH
 nRMszdqv+pPo8Bj4+lIUo8ZYxB2l39OFbqRBXDGpH4HRkl8GPuavEeWZ9
 0kmk8ga78oNY+hS7RE2MnuNTqZw14ghXTvEYVqkeaIrlxRYIvsM4OC2+d
 NyB+VDT0ShlwHG+Ol3zhYGjy6OcFHi6L6N8tbnENEJDXDlx9rQq1HKHqM
 ql9BNyzPGHRDG8nh6mYRVceRj2u3DAiajYR8R1xQREseDlIpIhDKCu5ah Q==;
X-CSE-ConnectionGUID: Bg+oxV08ShC2c6q4IBnxmA==
X-CSE-MsgGUID: G0+7v/DnT/erU12J9FRO9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60084466"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="60084466"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:41 -0800
X-CSE-ConnectionGUID: 6viWIs0SQfG5RnOm9fYliA==
X-CSE-MsgGUID: F3Ba8sgAQk+n1caS36QEag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218756636"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:40 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/19] drm/i915/overlay: Use struct drm_gem_object as the type
Date: Wed, 18 Feb 2026 17:27:54 +0200
Message-ID: <20260218152806.18885-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E69D9157660
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use 'struct drm_gem_object' for the BO instead of 'struct
drm_i915_gem_object', to avoid having the display side
know anything about the i915 specific BO type.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 37 ++++++++++----------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 5c4f8bf8ac44..88316c585656 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -768,8 +768,9 @@ static u32 overlay_cmd_reg(struct drm_intel_overlay_put_image *params)
 	return cmd;
 }
 
-static struct i915_vma *intel_overlay_pin_fb(struct drm_i915_gem_object *new_bo)
+static struct i915_vma *intel_overlay_pin_fb(struct drm_gem_object *obj)
 {
+	struct drm_i915_gem_object *new_bo = to_intel_bo(obj);
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
@@ -795,7 +796,7 @@ static struct i915_vma *intel_overlay_pin_fb(struct drm_i915_gem_object *new_bo)
 }
 
 static int intel_overlay_do_put_image(struct intel_overlay *overlay,
-				      struct drm_i915_gem_object *new_bo,
+				      struct drm_gem_object *obj,
 				      struct drm_intel_overlay_put_image *params)
 {
 	struct intel_display *display = overlay->display;
@@ -816,7 +817,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 
 	atomic_inc(&display->restore.pending_fb_pin);
 
-	vma = intel_overlay_pin_fb(new_bo);
+	vma = intel_overlay_pin_fb(obj);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto out_pin_section;
@@ -1016,7 +1017,7 @@ static int check_overlay_scaling(struct drm_intel_overlay_put_image *rec)
 
 static int check_overlay_src(struct intel_display *display,
 			     struct drm_intel_overlay_put_image *rec,
-			     struct drm_i915_gem_object *new_bo)
+			     struct drm_gem_object *obj)
 {
 	int uv_hscale = uv_hsubsampling(rec->flags);
 	int uv_vscale = uv_vsubsampling(rec->flags);
@@ -1101,7 +1102,7 @@ static int check_overlay_src(struct intel_display *display,
 			return -EINVAL;
 
 		tmp = rec->stride_Y*rec->src_height;
-		if (rec->offset_Y + tmp > new_bo->base.size)
+		if (rec->offset_Y + tmp > obj->size)
 			return -EINVAL;
 		break;
 
@@ -1112,12 +1113,12 @@ static int check_overlay_src(struct intel_display *display,
 			return -EINVAL;
 
 		tmp = rec->stride_Y * rec->src_height;
-		if (rec->offset_Y + tmp > new_bo->base.size)
+		if (rec->offset_Y + tmp > obj->size)
 			return -EINVAL;
 
 		tmp = rec->stride_UV * (rec->src_height / uv_vscale);
-		if (rec->offset_U + tmp > new_bo->base.size ||
-		    rec->offset_V + tmp > new_bo->base.size)
+		if (rec->offset_U + tmp > obj->size ||
+		    rec->offset_V + tmp > obj->size)
 			return -EINVAL;
 		break;
 	}
@@ -1125,7 +1126,7 @@ static int check_overlay_src(struct intel_display *display,
 	return 0;
 }
 
-static struct drm_i915_gem_object *
+static struct drm_gem_object *
 i915_overlay_obj_lookup(struct drm_device *drm,
 			struct drm_file *file_priv,
 			u32 handle)
@@ -1142,7 +1143,7 @@ i915_overlay_obj_lookup(struct drm_device *drm,
 		return ERR_PTR(-EINVAL);
 	}
 
-	return bo;
+	return intel_bo_to_drm_bo(bo);
 }
 
 int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
@@ -1152,8 +1153,8 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 	struct drm_intel_overlay_put_image *params = data;
 	struct intel_overlay *overlay;
 	struct drm_crtc *drmmode_crtc;
+	struct drm_gem_object *obj;
 	struct intel_crtc *crtc;
-	struct drm_i915_gem_object *new_bo;
 	int ret;
 
 	overlay = display->overlay;
@@ -1175,9 +1176,9 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 		return -ENOENT;
 	crtc = to_intel_crtc(drmmode_crtc);
 
-	new_bo = i915_overlay_obj_lookup(dev, file_priv, params->bo_handle);
-	if (!new_bo)
-		return PTR_ERR(new_bo);
+	obj = i915_overlay_obj_lookup(dev, file_priv, params->bo_handle);
+	if (!obj)
+		return PTR_ERR(obj);
 
 	drm_modeset_lock_all(dev);
 
@@ -1224,7 +1225,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 		goto out_unlock;
 	}
 
-	ret = check_overlay_src(display, params, new_bo);
+	ret = check_overlay_src(display, params, obj);
 	if (ret != 0)
 		goto out_unlock;
 
@@ -1233,18 +1234,18 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 	if (ret != 0)
 		goto out_unlock;
 
-	ret = intel_overlay_do_put_image(overlay, new_bo, params);
+	ret = intel_overlay_do_put_image(overlay, obj, params);
 	if (ret != 0)
 		goto out_unlock;
 
 	drm_modeset_unlock_all(dev);
-	i915_gem_object_put(new_bo);
+	drm_gem_object_put(obj);
 
 	return 0;
 
 out_unlock:
 	drm_modeset_unlock_all(dev);
-	i915_gem_object_put(new_bo);
+	drm_gem_object_put(obj);
 
 	return ret;
 }
-- 
2.52.0

