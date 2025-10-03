Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72423BB7410
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D47610E93C;
	Fri,  3 Oct 2025 14:57:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFA55pM3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB38510E93C;
 Fri,  3 Oct 2025 14:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759503467; x=1791039467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+qaUxDJ8jSLOcBeyUyX+43yTCCE7yBjEBId+stf9FBo=;
 b=OFA55pM3a4zf+EU89C3nJXWVwQHQ/pWISZ/zcvU4jK8iIVMIx4ORYynX
 5qejTSbTgb9mu1CSnJJSa+RoluMmchnrxwijNcyysrQVDdpavpIsdiKd6
 gFsWv3u0HcbDKqXsJp1HppbAKx903ZWVjpw2FGC6/OzcSzOi3WS0Snbn4
 Q4CzgY0y9M5k6Ob90E9W1twV/acHx8LPaoZaUqF7/fzuZyTBdB4cpHs90
 WX8OkzbDmW7dXTXwc/y9rfJmOHtVoRCbD7cJ5q0ZVf+5FkvQh1KwJ0vGH
 vcv+qrmKghoS1X44cLqSDFqD/e0BDMnLVzsiUA6B7w144DES7+1r5fNK0 Q==;
X-CSE-ConnectionGUID: rMEoqcSBS7Wh7yHchO2Igw==
X-CSE-MsgGUID: Dk1Uc4hcS0CyZjEW2jLZVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="73138763"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="73138763"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:47 -0700
X-CSE-ConnectionGUID: 7VLFBmoPRcSL3ljbfcbZ/Q==
X-CSE-MsgGUID: IW00VV2XSIOHCz9Gop71JA==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/5] drm/i915/fb: Fix the set_tiling vs. addfb race, again
Date: Fri,  3 Oct 2025 17:57:31 +0300
Message-ID: <20251003145734.7634-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
References: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_frontbuffer_get() is what locks out subsequent set_tiling
changes to the bo. Thus the fence vs. modifier check must be done
after intel_frontbuffer_get(), or else a concurrent set_tiling ioctl
might sneak in and change the fence after the check has been done.

Close the race again. See commit dd689287b977 ("drm/i915: Prevent
concurrent tiling/framebuffer modifications") for the previous
instance.

v2: Reorder intel_user_framebuffer_destroy() to match the unwind (Jani)

Cc: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Fixes: 10690b8a49bc ("drm/i915/display: Add intel_fb_bo_framebuffer_fini")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 42 +++++++++++++------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 69237dabdae8..4dfb3e5fd31e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2113,10 +2113,10 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 	if (intel_fb_uses_dpt(fb))
 		intel_dpt_destroy(intel_fb->dpt_vm);
 
-	intel_frontbuffer_put(intel_fb->frontbuffer);
-
 	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
 
+	intel_frontbuffer_put(intel_fb->frontbuffer);
+
 	kfree(intel_fb);
 }
 
@@ -2218,15 +2218,17 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	int ret = -EINVAL;
 	int i;
 
-	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
-	if (ret)
-		return ret;
-
+	/*
+	 * intel_frontbuffer_get() must be done before
+	 * intel_fb_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
+	 */
 	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
-	if (!intel_fb->frontbuffer) {
-		ret = -ENOMEM;
-		goto err;
-	}
+	if (!intel_fb->frontbuffer)
+		return -ENOMEM;
+
+	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
+	if (ret)
+		goto err_frontbuffer_put;
 
 	ret = -EINVAL;
 	if (!drm_any_plane_has_format(display->drm,
@@ -2235,7 +2237,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		drm_dbg_kms(display->drm,
 			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
 			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
-		goto err_frontbuffer_put;
+		goto err_bo_framebuffer_fini;
 	}
 
 	max_stride = intel_fb_max_stride(display, mode_cmd->pixel_format,
@@ -2246,7 +2248,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
 			    "tiled" : "linear",
 			    mode_cmd->pitches[0], max_stride);
-		goto err_frontbuffer_put;
+		goto err_bo_framebuffer_fini;
 	}
 
 	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
@@ -2254,7 +2256,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		drm_dbg_kms(display->drm,
 			    "plane 0 offset (0x%08x) must be 0\n",
 			    mode_cmd->offsets[0]);
-		goto err_frontbuffer_put;
+		goto err_bo_framebuffer_fini;
 	}
 
 	drm_helper_mode_fill_fb_struct(display->drm, fb, info, mode_cmd);
@@ -2264,7 +2266,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
 			drm_dbg_kms(display->drm, "bad plane %d handle\n", i);
-			goto err_frontbuffer_put;
+			goto err_bo_framebuffer_fini;
 		}
 
 		stride_alignment = intel_fb_stride_alignment(fb, i);
@@ -2272,7 +2274,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			drm_dbg_kms(display->drm,
 				    "plane %d pitch (%d) must be at least %u byte aligned\n",
 				    i, fb->pitches[i], stride_alignment);
-			goto err_frontbuffer_put;
+			goto err_bo_framebuffer_fini;
 		}
 
 		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
@@ -2282,7 +2284,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 				drm_dbg_kms(display->drm,
 					    "ccs aux plane %d pitch (%d) must be %d\n",
 					    i, fb->pitches[i], ccs_aux_stride);
-				goto err_frontbuffer_put;
+				goto err_bo_framebuffer_fini;
 			}
 		}
 
@@ -2291,7 +2293,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 	ret = intel_fill_fb_info(display, intel_fb);
 	if (ret)
-		goto err_frontbuffer_put;
+		goto err_bo_framebuffer_fini;
 
 	if (intel_fb_uses_dpt(fb)) {
 		struct i915_address_space *vm;
@@ -2317,10 +2319,10 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 err_free_dpt:
 	if (intel_fb_uses_dpt(fb))
 		intel_dpt_destroy(intel_fb->dpt_vm);
-err_frontbuffer_put:
-	intel_frontbuffer_put(intel_fb->frontbuffer);
-err:
+err_bo_framebuffer_fini:
 	intel_fb_bo_framebuffer_fini(obj);
+err_frontbuffer_put:
+	intel_frontbuffer_put(intel_fb->frontbuffer);
 	return ret;
 }
 
-- 
2.49.1

