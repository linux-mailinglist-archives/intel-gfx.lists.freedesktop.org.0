Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FC74AF26A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D5B10E287;
	Wed,  9 Feb 2022 13:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2275610E287
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644412309; x=1675948309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2yMt8S55ydirptVY4utIWxvcMMAJZckCxx2hWelQM70=;
 b=nDSdmBnpqivgvyvf3d5wWF50BdQI3CqTYswXB1ikrITc33UH5dIs/3Uk
 uHyZKG15olDvIetXzx3RkkYcWNevkzMSqU4SJhqD4mk7jHpPmmIADUlTc
 xHIK/E9s8kaRltqwEi7d2NX73s8BKcUBfeEXtKjOOanckIJi5CCi4Ol53
 ccKFnXholQ4lgzEHvxwI15eRK5oLF0VzPZOZAEX+AtvUWUdPlV/Aw5v33
 MpeoSzn43W9PhibKlwCpx2fqVgY2ZaXX8FLHs91yR+QC3u5RhFJ9oTyH8
 5jzDp7B51gyFGme9m6MvZIeWd2IigS8tEGCLxSCxa0dxe6OrckmhgNv1h w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="312494406"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="312494406"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:11:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="525980623"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:11:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 15:11:43 +0200
Message-Id: <20220209131143.3365230-1-jani.nikula@intel.com>
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

v2: Don't underscore the index macros (Tvrtko)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h               | 2 ++
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
 drivers/gpu/drm/i915/gvt/execlist.c                  | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                      | 8 --------
 4 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 0e353d8c2bc8..be4b1e65442f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -182,6 +182,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_HWS_CSB_BUF0_INDEX		0x10
 #define I915_HWS_CSB_WRITE_INDEX	0x1f
 #define ICL_HWS_CSB_WRITE_INDEX		0x2f
+#define INTEL_HWS_CSB_WRITE_INDEX(__i915) \
+	(GRAPHICS_VER(__i915) >= 11 ? ICL_HWS_CSB_WRITE_INDEX : I915_HWS_CSB_WRITE_INDEX)
 
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
index 4ac0fcb9a4ca..b91d7209396f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1701,14 +1701,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
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

