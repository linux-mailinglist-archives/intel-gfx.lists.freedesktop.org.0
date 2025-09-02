Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6ACB40C86
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94D010E80B;
	Tue,  2 Sep 2025 17:52:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdaabCzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5E810E811;
 Tue,  2 Sep 2025 17:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835540; x=1788371540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eVIeKcVxwLUEskMI0EsqraDt5J60o71DEKc0r9qGk2s=;
 b=IdaabCzVi1BYiw1ApK8Eq6wfrMg+e2H9Ru1mgTDZcMPWo0VD4MtG/K/p
 lMDHjHbtLHk9wijvbPtutejaJcwJUZQXwTTGmS6HhZae/G2gyIQ6rWZkJ
 UANBwABwsrij3De5OD+7QX+mXL2OWm5gFYJTEinDLEIz83HX5KOB3xmtw
 g0yIJlsc4OgDIxP5Gv1Rd4p+QArZmEIb5XnjtqzqlqSRvQz7+tw4yuKSu
 /SRDhzjoY3ytJCDVnn9Lxmk5Og+PNKIVnA0HvAiSNTefWRgjSGAViakqg
 FOtFtl/TNeNHrKIRp344SCoViGaaSebyvvQCTd3TTNvvKyncc/hcn7NiS g==;
X-CSE-ConnectionGUID: rizrUOZsRoCpIwoQSYWa0g==
X-CSE-MsgGUID: tn1lCWe7SzCrqfcvhGkBwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58338354"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="58338354"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:18 -0700
X-CSE-ConnectionGUID: FhAgjfNaSC2V2NFhlxOETQ==
X-CSE-MsgGUID: W5pdPfAgQxOju67VzOrkGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172177581"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 3/8] drm/{i915,
 xe}/panic: rename intel_bo_panic_*() to intel_panic_*()
Date: Tue,  2 Sep 2025 20:51:49 +0300
Message-ID: <a3be8f8b5e7dd208027a1131e89452d9a214054f.1756835342.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756835342.git.jani.nikula@intel.com>
References: <cover.1756835342.git.jani.nikula@intel.com>
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

Rename the intel_bo_panic_*() functions according to the functionality,
dropping the misleading intel_bo reference.

Keep intel_bo_alloc_framebuffer() for now; it'll be refactored later.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panic.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_panic.h | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane.c | 4 ++--
 drivers/gpu/drm/xe/display/xe_panic.c      | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display/intel_panic.c
index 9eae210bb4cd..20eecb0f168f 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.c
+++ b/drivers/gpu/drm/i915/display/intel_panic.c
@@ -9,12 +9,12 @@ struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
 	return i915_gem_object_alloc_framebuffer();
 }
 
-int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
+int intel_panic_setup(struct drm_scanout_buffer *sb)
 {
 	return i915_gem_object_panic_setup(sb);
 }
 
-void intel_bo_panic_finish(struct intel_framebuffer *fb)
+void intel_panic_finish(struct intel_framebuffer *fb)
 {
 	return i915_gem_object_panic_finish(fb);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
index 07e72240cbd7..67ce253fcdf5 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.h
+++ b/drivers/gpu/drm/i915/display/intel_panic.h
@@ -8,7 +8,7 @@ struct drm_scanout_buffer;
 struct intel_framebuffer;
 
 struct intel_framebuffer *intel_bo_alloc_framebuffer(void);
-int intel_bo_panic_setup(struct drm_scanout_buffer *sb);
-void intel_bo_panic_finish(struct intel_framebuffer *fb);
+int intel_panic_setup(struct drm_scanout_buffer *sb);
+void intel_panic_finish(struct intel_framebuffer *fb);
 
 #endif /* __INTEL_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index a467e14e6388..890d897bda10 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1326,7 +1326,7 @@ static void intel_panic_flush(struct drm_plane *plane)
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 
-	intel_bo_panic_finish(intel_fb);
+	intel_panic_finish(intel_fb);
 
 	if (crtc_state->enable_psr2_sel_fetch) {
 		/* Force a full update for psr2 */
@@ -1409,7 +1409,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 				return -EOPNOTSUPP;
 		}
 		sb->private = intel_fb;
-		ret = intel_bo_panic_setup(sb);
+		ret = intel_panic_setup(sb);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index 14fba8aa4e5f..18b27a06b260 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -77,7 +77,7 @@ struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
 	return NULL;
 }
 
-int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
+int intel_panic_setup(struct drm_scanout_buffer *sb)
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
 	struct xe_panic_data *panic = to_xe_panic_data(fb);
@@ -87,7 +87,7 @@ int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
 	return 0;
 }
 
-void intel_bo_panic_finish(struct intel_framebuffer *fb)
+void intel_panic_finish(struct intel_framebuffer *fb)
 {
 	struct xe_panic_data *panic = to_xe_panic_data(fb);
 
-- 
2.47.2

