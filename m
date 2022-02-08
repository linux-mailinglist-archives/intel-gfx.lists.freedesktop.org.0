Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FE84ADF21
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 18:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2597410E8CD;
	Tue,  8 Feb 2022 17:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54DD10E8D1
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 17:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644340617; x=1675876617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V5iw67Efdrr9+dY/WuZwZ6zJzX4wIFLjBMpdzwBvEvU=;
 b=j2ju0vsJikUGZQemKxqAY8+T0OrwG5pU/LLVfiXb5vpu9GzNMU2gtVmu
 mfP2kpwRGqk8MW6rrMjj+EY8BdonntPmc01UBwWl30sFrCWz87/BRGAhs
 zGI3ZqWc28h79svXebQZvux3Iny1tOuntwLQQwXkEZEiYUx0aMHKZ00OH
 aWWJnCi2HbW+mlajd/vmBP8Se/Uf79miARc2O0iJzg/902JcsX5oETxxD
 jzF5zXCpUnggQGLGduehpgr3UB9AOIXSqkBxKo9qVUrtjdf1vUiViaN1u
 +r5+YKVzfyxxLCM+GUWg562alqB5FBoHjbVKPkaSDpU4CPLZzOqjDqz06 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248948222"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="248948222"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 09:16:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="484882504"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.19.63])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 09:16:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 19:16:51 +0200
Message-Id: <20220208171651.3085901-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: move intel_hws_csb_write_index() out
 of i915_drv.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Underscore prefix the index macros, and place
INTEL_HWS_CSB_WRITE_INDEX() as a macro next to them, to declutter
i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h               | 6 ++++--
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
 drivers/gpu/drm/i915/gvt/execlist.c                  | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                      | 8 --------
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 0e353d8c2bc8..faf26ed37d01 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -180,8 +180,10 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_SCRATCH		0x80
 
 #define I915_HWS_CSB_BUF0_INDEX		0x10
-#define I915_HWS_CSB_WRITE_INDEX	0x1f
-#define ICL_HWS_CSB_WRITE_INDEX		0x2f
+#define _I915_HWS_CSB_WRITE_INDEX	0x1f
+#define _ICL_HWS_CSB_WRITE_INDEX		0x2f
+#define INTEL_HWS_CSB_WRITE_INDEX(__i915) \
+	(GRAPHICS_VER(__i915) >= 11 ? _ICL_HWS_CSB_WRITE_INDEX : _I915_HWS_CSB_WRITE_INDEX)
 
 void intel_engine_stop(struct intel_engine_cs *engine);
 void intel_engine_cleanup(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 9bb7c863172f..961d795220a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3503,7 +3503,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 		(u64 *)&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
 
 	execlists->csb_write =
-		&engine->status_page.addr[intel_hws_csb_write_index(i915)];
+		&engine->status_page.addr[INTEL_HWS_CSB_WRITE_INDEX(i915)];
 
 	if (GRAPHICS_VER(i915) < 11)
 		execlists->csb_size = GEN8_CSB_ENTRIES;
diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
index c8dcda6d4f0d..66d354c4195b 100644
--- a/drivers/gpu/drm/i915/gvt/execlist.c
+++ b/drivers/gpu/drm/i915/gvt/execlist.c
@@ -163,7 +163,7 @@ static void emulate_csb_update(struct intel_vgpu_execlist *execlist,
 					       hwsp_gpa + I915_HWS_CSB_BUF0_INDEX * 4 + write_pointer * 8,
 					       status, 8);
 		intel_gvt_hypervisor_write_gpa(vgpu,
-					       hwsp_gpa + intel_hws_csb_write_index(execlist->engine->i915) * 4,
+					       hwsp_gpa + INTEL_HWS_CSB_WRITE_INDEX(execlist->engine->i915) * 4,
 					       &write_pointer, 4);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8c1706fd81f9..05656cc738d1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1739,14 +1739,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
 	return (struct intel_device_info *)INTEL_INFO(dev_priv);
 }
 
-static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
-{
-	if (GRAPHICS_VER(i915) >= 11)
-		return ICL_HWS_CSB_WRITE_INDEX;
-	else
-		return I915_HWS_CSB_WRITE_INDEX;
-}
-
 static inline enum i915_map_type
 i915_coherent_map_type(struct drm_i915_private *i915,
 		       struct drm_i915_gem_object *obj, bool always_coherent)
-- 
2.30.2

