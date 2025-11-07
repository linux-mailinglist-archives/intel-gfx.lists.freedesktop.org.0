Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE31C413B9
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E1310EB75;
	Fri,  7 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XqFM0uAC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA09610EB75;
 Fri,  7 Nov 2025 18:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539112; x=1794075112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LM8CZG/5OZGJNYDGcw+gxyUTBdYvD9K3dlEjoMWNwlM=;
 b=XqFM0uACBjDhnNbGvej22iOi9ATMyWY1hxLM9VYVxxM1nAjpI2ikuxRv
 kv+4vouiQzNXlj7udcbD4zvoe8rr5p+7PGTrAMvvusT81oHCmnEbH9AnC
 bXY92Rp0WPmE5Fvmt56dOpW9BMHxkX3/zP+4e9Y7B+Xud7aht3+oVvVDe
 hfVrW7euikivvXpVZXSmLmk+BZVPfv07PVLggZFQD+Lz5nI2SdJKVys8w
 20pyDGTZtEkv99/f+rNQHMpV1/rSuVv63DeZTW1iWZbR3WAYD0OM9d4O3
 gv5ihHWUvuTDkoZWASTN4Gg+vfD934GUlOsx1/baiL47EZgcJk9BldCIl w==;
X-CSE-ConnectionGUID: 1IfqeJ65S4KAEDnc0fj9fA==
X-CSE-MsgGUID: J6s+IXaxR6S0VcnLertwxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64619654"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64619654"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:51 -0800
X-CSE-ConnectionGUID: JIgteDcATDyrIMWTW5O1UA==
X-CSE-MsgGUID: rgGTW0A4TbSzGjXpZPoo3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="187350525"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:50 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/fb: Init 'ret' in each error branch in
 intel_framebuffer_init()
Date: Fri,  7 Nov 2025 20:11:22 +0200
Message-ID: <20251107181126.5743-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
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

Make the order of things a bit less fragile in
intel_framebuffer_init() by assinging 'ret' in each
error branch instead of depending on some earlier
assignment.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 2eddccb1bc9e..b34b4961fe1c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2234,13 +2234,13 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (ret)
 		goto err_frontbuffer_put;
 
-	ret = -EINVAL;
 	if (!drm_any_plane_has_format(display->drm,
 				      mode_cmd->pixel_format,
 				      mode_cmd->modifier[0])) {
 		drm_dbg_kms(display->drm,
 			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
 			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
+		ret = -EINVAL;
 		goto err_bo_framebuffer_fini;
 	}
 
@@ -2251,6 +2251,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
 			    "tiled" : "linear",
 			    mode_cmd->pitches[0], max_stride);
+		ret = -EINVAL;
 		goto err_bo_framebuffer_fini;
 	}
 
@@ -2259,6 +2260,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		drm_dbg_kms(display->drm,
 			    "plane 0 offset (0x%08x) must be 0\n",
 			    mode_cmd->offsets[0]);
+		ret = -EINVAL;
 		goto err_bo_framebuffer_fini;
 	}
 
@@ -2269,6 +2271,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
 			drm_dbg_kms(display->drm, "bad plane %d handle\n", i);
+			ret = -EINVAL;
 			goto err_bo_framebuffer_fini;
 		}
 
@@ -2277,6 +2280,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			drm_dbg_kms(display->drm,
 				    "plane %d pitch (%d) must be at least %u byte aligned\n",
 				    i, fb->pitches[i], stride_alignment);
+			ret = -EINVAL;
 			goto err_bo_framebuffer_fini;
 		}
 
@@ -2287,6 +2291,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 				drm_dbg_kms(display->drm,
 					    "ccs aux plane %d pitch (%d) must be %d\n",
 					    i, fb->pitches[i], ccs_aux_stride);
+				ret = -EINVAL;
 				goto err_bo_framebuffer_fini;
 			}
 		}
-- 
2.49.1

