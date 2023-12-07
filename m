Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A82808312
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 09:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECB210E18C;
	Thu,  7 Dec 2023 08:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D9B10E18C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 08:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701938110; x=1733474110;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PHOV6wNU0yoJfA4b3tLYr7SX3H1VRBI79wyeHR69dPU=;
 b=L1nP8u9+8qQb0K5lEBwpSoCoSIrT4AVwXLdK1u579VK8bTMcA7PqORJy
 Tlye679a7UFWZQzu/L6z6NjXoXOeExJiVfWVd6C8nO3S6gIFokCEt9ce3
 cXpucD9XKzKulwhsdYuO3CbIC6+TZIwmV1YlGRtlqL71b4em8RC4YuR/+
 KBtjZaBqkhlaR2oUxXqRoVukqxyFinNN05FrrgaeoZGbR89Z4VnOYhDUJ
 MaEUc2Uh1JzyB8WZx0vDLFd5QdLtrbdlHYveOsdh5rxGDbwRu9wQ0b1yU
 3IxwXUBLvm2ILj240CtRoRsUy6LCIScdCNPnWYxAkrNYZE1VCRWwDHRFJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1303064"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1303064"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 00:35:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="805936291"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="805936291"
Received: from rlgreyi-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.46.17])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 00:35:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Dec 2023 10:34:51 +0200
Message-Id: <20231207083451.2184562-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add
 intel_fb_bo_framebuffer_fini
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

Xe needs intel_fb_bo_framebuffer_fini for taking care of unpinning the fb
and taking reference.  In i915 this can be empty.

Also move intel_frontbuffer_get to be done after
intel_fb_bo_framebuffer_init to have reasonable sequences:

intel_fb_bo_framebuffer_init
intel_frontbuffer_get
...
intel_frontbuffer_put
intel_fb_bo_framebuffer_fini

v2: Empty function instead of define

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 32 +++++++++++++---------
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  5 ++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  2 ++
 3 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index ab634a4c86d1..69c3cfe3120e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1889,6 +1889,8 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 
 	intel_frontbuffer_put(intel_fb->frontbuffer);
 
+	intel_fb_bo_framebuffer_fini(intel_fb_obj(fb));
+
 	kfree(intel_fb);
 }
 
@@ -1989,13 +1991,15 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	int ret = -EINVAL;
 	int i;
 
-	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
-	if (!intel_fb->frontbuffer)
-		return -ENOMEM;
-
 	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
 	if (ret)
+		return ret;
+
+	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
+	if (!intel_fb->frontbuffer) {
+		ret = -ENOMEM;
 		goto err;
+	}
 
 	ret = -EINVAL;
 	if (!drm_any_plane_has_format(&dev_priv->drm,
@@ -2004,7 +2008,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		drm_dbg_kms(&dev_priv->drm,
 			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
 			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
-		goto err;
+		goto err_frontbuffer_put;
 	}
 
 	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
@@ -2015,7 +2019,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
 			    "tiled" : "linear",
 			    mode_cmd->pitches[0], max_stride);
-		goto err;
+		goto err_frontbuffer_put;
 	}
 
 	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
@@ -2023,7 +2027,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		drm_dbg_kms(&dev_priv->drm,
 			    "plane 0 offset (0x%08x) must be 0\n",
 			    mode_cmd->offsets[0]);
-		goto err;
+		goto err_frontbuffer_put;
 	}
 
 	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
@@ -2034,7 +2038,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
 			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
 				    i);
-			goto err;
+			goto err_frontbuffer_put;
 		}
 
 		stride_alignment = intel_fb_stride_alignment(fb, i);
@@ -2042,7 +2046,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			drm_dbg_kms(&dev_priv->drm,
 				    "plane %d pitch (%d) must be at least %u byte aligned\n",
 				    i, fb->pitches[i], stride_alignment);
-			goto err;
+			goto err_frontbuffer_put;
 		}
 
 		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
@@ -2053,7 +2057,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 					    "ccs aux plane %d pitch (%d) must be %d\n",
 					    i,
 					    fb->pitches[i], ccs_aux_stride);
-				goto err;
+				goto err_frontbuffer_put;
 			}
 		}
 
@@ -2062,7 +2066,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 	ret = intel_fill_fb_info(dev_priv, intel_fb);
 	if (ret)
-		goto err;
+		goto err_frontbuffer_put;
 
 	if (intel_fb_uses_dpt(fb)) {
 		struct i915_address_space *vm;
@@ -2071,7 +2075,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		if (IS_ERR(vm)) {
 			drm_dbg_kms(&dev_priv->drm, "failed to create DPT\n");
 			ret = PTR_ERR(vm);
-			goto err;
+			goto err_frontbuffer_put;
 		}
 
 		intel_fb->dpt_vm = vm;
@@ -2088,8 +2092,10 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 err_free_dpt:
 	if (intel_fb_uses_dpt(fb))
 		intel_dpt_destroy(intel_fb->dpt_vm);
-err:
+err_frontbuffer_put:
 	intel_frontbuffer_put(intel_fb->frontbuffer);
+err:
+	intel_fb_bo_framebuffer_fini(obj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index ce86eff7b226..4be09541e509 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -11,6 +11,11 @@
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 
+void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj)
+{
+	/* Nothing to do for i915 */
+}
+
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 				 struct drm_i915_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index dd06ceec8601..232bf898b013 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -12,6 +12,8 @@ struct drm_i915_gem_object;
 struct drm_i915_private;
 struct intel_framebuffer;
 
+void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj);
+
 int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 				 struct drm_i915_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
-- 
2.34.1

