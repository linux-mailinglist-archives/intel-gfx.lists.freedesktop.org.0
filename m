Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DW8J+dO6mkhxgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:55:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6D94552D9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6513A10F1FC;
	Thu, 23 Apr 2026 16:55:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EIutOzw/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B41910F1FC;
 Thu, 23 Apr 2026 16:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963300; x=1808499300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZAY7vrcCFhZ6/FUgzWAP8LbDDydpEpjiP/5BBNaxIC8=;
 b=EIutOzw/HlMRzizy5A3ZBdtPyPuo3IB6EnH1tHDhB6Dexhdiansc1Xze
 uXFVYjk6M1PFSpsD6Jf4tcjWydK4ryPFe0vConVlA7PHK5q5fsoRFiGhC
 K9LhwgnXGzHeNHdr+nD8ITnfnlwaZUlsI928tM/5kvyk3QOV1Jeply7JL
 tgFhk+eyKOCPxCqpmttgv1bhd+y+709g00XpFjj+Z8rdczpqFXjuQAxj0
 gIl+OCya42aQd5fuHVDPn7vjnTopdL74Us0EFLRukehiPJemSu2I2hjXd
 Fem8OpMidfWxfz4/hFjiyw00YC5C1yEHqVZa2zfZJohr1DY645x4k6IVh A==;
X-CSE-ConnectionGUID: rAlIscWTTLuhOooO9J5qkw==
X-CSE-MsgGUID: pVLok15tTbWK0q/8KScFiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="95498829"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="95498829"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:57 -0700
X-CSE-ConnectionGUID: ZHKNtwLmRu2R1iCyY/7uXA==
X-CSE-MsgGUID: gsWD1TSPTY+RxFMElGrQCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="236696423"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 15/16] drm/xe: Use xe_fb_pin_ggtt_pin() for the initial FB pin
Date: Thu, 23 Apr 2026 19:53:44 +0300
Message-ID: <20260423165346.20884-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 3B6D94552D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use xe_fb_pin_ggtt_pin() instead of intel_fb_pin_to_ggtt() for
the initial FB pin. We want to get rid of intel_fb_pin_to_ggtt()
and just use the new fb_pin parent interface.

This still isn't quite the final solution since we bypass the
actual parent interface and call the implementation directly.
But sorting that out will require more cleanup to the initial
FB code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 21 +++++--------------
 drivers/gpu/drm/xe/display/xe_fb_pin.h        | 12 +++++++++++
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 18 ++++++++++------
 3 files changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index c3171625d150..c92c30ceba36 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -413,22 +413,11 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 	kfree(vma);
 }
 
-struct i915_vma *
-intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
-		     const struct intel_fb_pin_params *pin_params,
-		     int *out_fence_id)
-{
-	if (out_fence_id)
-		*out_fence_id = -1;
-
-	return __xe_pin_fb_vma(obj, false, pin_params);
-}
-
-static int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
-			      const struct intel_fb_pin_params *pin_params,
-			      struct i915_vma **out_ggtt_vma,
-			      u32 *out_offset,
-			      int *out_fence_id)
+int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
+		       const struct intel_fb_pin_params *pin_params,
+		       struct i915_vma **out_ggtt_vma,
+		       u32 *out_offset,
+		       int *out_fence_id)
 {
 	struct i915_vma *ggtt_vma;
 
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/display/xe_fb_pin.h
index 8a42d4009f5d..20dd8a99a25f 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.h
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
@@ -4,6 +4,18 @@
 #ifndef __XE_FB_PIN_H__
 #define __XE_FB_PIN_H__
 
+#include <linux/types.h>
+
+struct drm_gem_object;
+struct i915_vma;
+struct intel_fb_pin_params;
+
+int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
+		       const struct intel_fb_pin_params *pin_params,
+		       struct i915_vma **out_ggtt_vma,
+		       u32 *out_offset,
+		       int *out_fence_id);
+
 extern const struct intel_display_fb_pin_interface xe_display_fb_pin_interface;
 
 #endif /* __XE_FB_PIN_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 8e3c0c4b81fe..02b46cc3b6df 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -7,12 +7,16 @@
 
 #include "regs/xe_gtt_defs.h"
 
-#include "intel_display_types.h"
+/* FIXME move intel_remapped_info_size() & co. */
 #include "intel_fb.h"
-#include "intel_fb_pin.h"
+
+/* FIXME move intel_initial_plane_config */
+#include "intel_display_types.h"
+
 #include "xe_bo.h"
 #include "xe_display_bo.h"
 #include "xe_display_vma.h"
+#include "xe_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
 #include "xe_vram_types.h"
@@ -137,14 +141,16 @@ xe_initial_plane_setup(struct drm_plane_state *_plane_state,
 	struct intel_fb_pin_params pin_params = {
 		.view = &plane_state->view.gtt,
 	};
+	u32 offset;
+	int ret;
 
-	vma = intel_fb_pin_to_ggtt(intel_fb_bo(fb), &pin_params, NULL);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+	ret = xe_fb_pin_ggtt_pin(intel_fb_bo(fb), &pin_params, &vma, &offset, NULL);
+	if (ret)
+		return ret;
 
 	plane_state->ggtt_vma = vma;
 
-	plane_state->surf = xe_ggtt_node_addr(plane_state->ggtt_vma->node);
+	plane_state->surf = offset;
 
 	plane_config->vma = vma;
 
-- 
2.52.0

