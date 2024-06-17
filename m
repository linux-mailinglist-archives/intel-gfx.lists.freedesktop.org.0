Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD7990B174
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92AB10E3E6;
	Mon, 17 Jun 2024 14:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7RC2Ylw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F1B10E3E3;
 Mon, 17 Jun 2024 14:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718633966; x=1750169966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQ4neILaA7OIZnHnepEnKSX1QiGbeTgOinGLpzGP3uM=;
 b=M7RC2YlwxOS0WQ7P2d3wxOUyFiywnUJ5RHhPtzwCXL5MRqyqz/FOmcSW
 iotH53eXzlfm4DpJq4lp9Bf4S3fFn4UU5VUfLBBU25+AmKRtuQT+44Idz
 2/pDDFtzRX+nGuVu3zKK0YB04WQx4OoyBC1fy3zym4hrY81ZAOTWhWGIf
 YPNLNcpcWCxGAWs40i34H/CC7lVbPOryfVlD4YAgl/PgybOQ17CRLDu6W
 vjm3fQGXZ2/CW/k+uGP9dJiC+Ny6pLWrJ8EkUaxuvLh9ItRZpX03HzXsv
 oaHyVEmN7Nwbu+WfktL78brlVRxCuyaQ/SbQcxiVOXNpSEEoJt7yy2awI g==;
X-CSE-ConnectionGUID: p0T3VO8YQzmzkocUTTe0Tw==
X-CSE-MsgGUID: D3R/hXPISfa7h49N14zx9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15593305"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15593305"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:26 -0700
X-CSE-ConnectionGUID: JmNrXUT5Q3Om65rvk3AQ+A==
X-CSE-MsgGUID: uPeayP8FQhORldsgcormhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41083527"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/frontbuffer: hide ->bits more
Date: Mon, 17 Jun 2024 17:18:59 +0300
Message-Id: <9fb35580ddf23db815f563269f27790e7bf8dfe0.1718633874.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718633874.git.jani.nikula@intel.com>
References: <cover.1718633874.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Add helpers for ->bits in preparation for making struct
intel_frontbuffer opaque.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.c   | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_frontbuffer.h   |  3 +++
 drivers/gpu/drm/i915/display/intel_plane_initial.c |  2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c      |  2 +-
 5 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 8069abf91c5e..a49b5a1589a6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1965,7 +1965,7 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	struct frontbuffer_fence_cb *cb;
 	int ret = 0;
 
-	if (!atomic_read(&front->bits))
+	if (!intel_frontbuffer_bits(front))
 		return 0;
 
 	if (dma_resv_test_signaled(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false)))
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 7964eaa6a60a..effb13e8a6bb 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -67,6 +67,16 @@
 #include "intel_psr.h"
 #include "intel_tdf.h"
 
+unsigned int intel_frontbuffer_bits(struct intel_frontbuffer *front)
+{
+	return atomic_read(&front->bits);
+}
+
+void intel_frontbuffer_bits_or(struct intel_frontbuffer *front, unsigned int bits)
+{
+	atomic_or(bits, &front->bits);
+}
+
 /**
  * frontbuffer_flush - flush frontbuffer
  * @i915: i915 device
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index f4a3495300de..827b0129da71 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -67,6 +67,9 @@ struct intel_frontbuffer {
 	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
 		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
 
+unsigned int intel_frontbuffer_bits(struct intel_frontbuffer *front);
+void intel_frontbuffer_bits_or(struct intel_frontbuffer *front, unsigned int bits);
+
 void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 				    unsigned frontbuffer_bits);
 void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index ada1792df5b3..7cc9863ffce8 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -391,7 +391,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	plane_state->uapi.crtc = &crtc->base;
 	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
 
-	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
+	intel_frontbuffer_bits_or(to_intel_frontbuffer(fb), plane->frontbuffer_bit);
 }
 
 static void plane_config_fini(struct intel_initial_plane_config *plane_config)
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index e135b20962d9..a838459c49ae 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -232,7 +232,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	plane_state->uapi.crtc = &crtc->base;
 	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
 
-	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
+	intel_frontbuffer_bits_or(to_intel_frontbuffer(fb), plane->frontbuffer_bit);
 
 	plane_config->vma = vma;
 
-- 
2.39.2

