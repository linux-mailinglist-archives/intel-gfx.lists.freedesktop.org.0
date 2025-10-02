Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A850BB3D33
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 13:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B377710E7C9;
	Thu,  2 Oct 2025 11:54:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEjzEJSZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E2710E7B8;
 Thu,  2 Oct 2025 11:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759406091; x=1790942091;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHnLOmu8epM4TQiU37aq6IdJWMuEvy1QkliVLMkZ+SA=;
 b=LEjzEJSZqbt2ux09a9U8bFOa1DbeJuMdCaL2qkjoNBMWIj2mQ4UdnucJ
 aR0SOM7i1JueLRMSBwpsEHr6ueCSGOWJU9dclczwJgoPf6UkJSAz50Kax
 QtrLkaEmwZUcWz19pX2ROeWN+4ri//p3mF3WbvCktUPUNzX0GE6X+5s/H
 ki0hwbrhC1TokPdVI7fsi4nYrxGTNfF/ntRi+rfLUMZA7RwLygF1Yv7QX
 IJQBhWUf2qCKYWC9qxkMEAnSaAzqYSUreBO7zLYASE8Ok+5XE6EcpIzQw
 +ttAey4gDodS53HYBGMrBYEcxMEruRk2vhzy0LpVsrqlrBYQHNLPWxWMr Q==;
X-CSE-ConnectionGUID: ohbFWidARmOAExH74mOSuw==
X-CSE-MsgGUID: e9Y+L1lcQXmE/gGJionIXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="65325235"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="65325235"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:54:51 -0700
X-CSE-ConnectionGUID: pBrLpRlST2iIPBshdxQoEQ==
X-CSE-MsgGUID: X9q5UzkgQA+ISi0A9SxmQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="209727041"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.228])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:54:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/fb: Drop the 'fb' argument from
 intel_fb_bo_framebuffer_init()
Date: Thu,  2 Oct 2025 14:54:33 +0300
Message-ID: <20251002115434.6486-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
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

intel_fb_bo_framebuffer_init() doesn't do anything with the passed
framebuffer. Don't pass it therefore.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 3 +--
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 3 +--
 drivers/gpu/drm/xe/display/intel_fb_bo.c   | 3 +--
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c5bbca7f2e8b..4c8de8b54c45 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2226,7 +2226,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (!intel_fb->frontbuffer)
 		return -ENOMEM;
 
-	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
+	ret = intel_fb_bo_framebuffer_init(obj, mode_cmd);
 	if (ret)
 		goto err_frontbuffer_put;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index b0e8b89f7ce8..7336d7294a7b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -18,8 +18,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	/* Nothing to do for i915 */
 }
 
-int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
-				 struct drm_gem_object *_obj,
+int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index eefcb05a99f0..d775773c6c03 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -14,8 +14,7 @@ struct drm_mode_fb_cmd2;
 
 void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
 
-int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
-				 struct drm_gem_object *obj,
+int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
 struct drm_gem_object *
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index ebdb22c9499d..db8b1a27b4de 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -24,8 +24,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	xe_bo_put(bo);
 }
 
-int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
-				 struct drm_gem_object *obj,
+int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct xe_bo *bo = gem_to_xe_bo(obj);
-- 
2.49.1

