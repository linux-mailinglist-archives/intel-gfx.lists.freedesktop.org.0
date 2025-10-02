Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481CBBB397B
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 12:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2042010E369;
	Thu,  2 Oct 2025 10:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oCt8GJ1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4912C10E369;
 Thu,  2 Oct 2025 10:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759400284; x=1790936284;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CvxiXoxFsI3SRgKcEPjZergOTv1XNQGilLjwZy0hkDU=;
 b=oCt8GJ1LQrYyRE/HnuQuz1r0NdnvIYq07/1iR6o2AfirMLQPf2e9e54d
 IyjxNIi0/fD8PaO8pfmnFc4q7H99cJ2upBzlpRvYaCrzNcjGkoxXF1h/o
 8Yy83HcdE8+BPIj2GjjY4PopmrfJkpiD4HNSL3LHSLiBzLjJvgzRfYwjU
 YqGYwvsvj7neZ9O7rWuyScz0knZQ5xUWxVFqXrUSxdRh+oIBG0bZ4Rkia
 QARNbAo9jbmedaRRWXlmycHGIojntTZxHdRXAKhEkECmsPunNGmZOLJcm
 jgPYHaVatQXv6Gh7G7FVxSfU2swQ6TllJzXSoF8+NXdpmU8GZg3vzYgWG Q==;
X-CSE-ConnectionGUID: UVRu5GEKSTChQJjZGUi+rw==
X-CSE-MsgGUID: DJ9NY8GUSOKdq8tHjDgP6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="49237314"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="49237314"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 03:18:04 -0700
X-CSE-ConnectionGUID: 9KjnyoNSRBmOpRtLhMRnQw==
X-CSE-MsgGUID: SQCamvMIQja1KEZrs0uztg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="178291104"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 03:18:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/panic: fix panic structure allocation memory leak
Date: Thu,  2 Oct 2025 13:17:56 +0300
Message-ID: <20251002101756.2700320-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Separating the panic allocation from framebuffer allocation in commit
729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it
belongs") failed to deallocate the panic structure anywhere.

The fix is two-fold. First, free the panic structure in
intel_user_framebuffer_destroy() in the general case. Second, move the
panic allocation later to intel_framebuffer_init() to not leak the panic
structure in error paths (if any, now or later) between
intel_framebuffer_alloc() and intel_framebuffer_init().

Fixes: 729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it belongs")
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Reported-by: Michał Grzelak <michal.grzelak@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 69237dabdae8..3356ec022d06 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2117,6 +2117,7 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 
 	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
 
+	kfree(intel_fb->panic);
 	kfree(intel_fb);
 }
 
@@ -2222,10 +2223,16 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (ret)
 		return ret;
 
+	intel_fb->panic = intel_panic_alloc();
+	if (!intel_fb->panic) {
+		ret = -ENOMEM;
+		goto err_framebuffer_fini;
+	}
+
 	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
 	if (!intel_fb->frontbuffer) {
 		ret = -ENOMEM;
-		goto err;
+		goto err_panic_free;
 	}
 
 	ret = -EINVAL;
@@ -2319,7 +2326,9 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		intel_dpt_destroy(intel_fb->dpt_vm);
 err_frontbuffer_put:
 	intel_frontbuffer_put(intel_fb->frontbuffer);
-err:
+err_panic_free:
+	kfree(intel_fb->panic);
+err_framebuffer_fini:
 	intel_fb_bo_framebuffer_fini(obj);
 	return ret;
 }
@@ -2347,20 +2356,11 @@ intel_user_framebuffer_create(struct drm_device *dev,
 struct intel_framebuffer *intel_framebuffer_alloc(void)
 {
 	struct intel_framebuffer *intel_fb;
-	struct intel_panic *panic;
 
 	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 	if (!intel_fb)
 		return NULL;
 
-	panic = intel_panic_alloc();
-	if (!panic) {
-		kfree(intel_fb);
-		return NULL;
-	}
-
-	intel_fb->panic = panic;
-
 	return intel_fb;
 }
 
-- 
2.47.3

