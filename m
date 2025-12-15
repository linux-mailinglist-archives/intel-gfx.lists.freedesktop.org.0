Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A4CCBEA5A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1CC10E5F4;
	Mon, 15 Dec 2025 15:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NVOUedf0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC2B10E5F2;
 Mon, 15 Dec 2025 15:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812552; x=1797348552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dKbZBs7OSBrYPjTEQ+9+TdZ2m9swRQ1HEn2yYrGgwDs=;
 b=NVOUedf0PYuRm9pOjObqC1aRgo/sL7Nwjqg/ga6HYRxEQYtjYfq25Sa8
 GY2yt2DN2LP8SgzjMJnqN1M1xKiS+Z1OXdz1pWqfoPzQU1rddhl24cS05
 8bCoCnk30b7Zk91HMB2t25wnLT7uQhpnWIxhhQf6PLz1XJTa26z2B0Bzo
 gogke0mE8LuhUiOPDS72WUrbe+8RsajUhV0n5Lk7mObz1Vcdjpv9Zm/pk
 i3edX/ejg2XGO8u7Jw2nNMWcBTyimBWRAEwo3xYwaJds5oP2eg7AOXgTy
 n5Hh1ATzeuGYS/jL7BB/axvcy3vUSIhRqnXjDufyisFSMr4wE1Prn2aBp w==;
X-CSE-ConnectionGUID: W5iJvly/SYemommSpTtCaA==
X-CSE-MsgGUID: AIp0aPzcQ/me9LCZasNgbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310369"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310369"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:12 -0800
X-CSE-ConnectionGUID: 3H8s7R89RdSlXaPRtLQQYQ==
X-CSE-MsgGUID: RbPdE09YQLO9aHzRujRnuQ==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/15] drm/i915: return plane_state from
 intel_reuse_initial_plane_obj()
Date: Mon, 15 Dec 2025 17:28:22 +0200
Message-ID: <96985a18593408f07fba131cf49ca0f97bf8fb93.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Initialize fb and vma in the same level as the other code path.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_initial_plane.c | 26 ++++++++++++-----------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 57afe6e29ce3..40b9f981c9ac 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -25,11 +25,9 @@ static void i915_initial_plane_vblank_wait(struct drm_crtc *crtc)
 	intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
 }
 
-static bool
+static const struct intel_plane_state *
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
-			      const struct intel_initial_plane_config plane_configs[],
-			      struct drm_framebuffer **fb,
-			      struct i915_vma **vma)
+			      const struct intel_initial_plane_config plane_configs[])
 {
 	struct intel_display *display = to_intel_display(this);
 	struct intel_crtc *crtc;
@@ -48,14 +46,11 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 		if (!plane_state->ggtt_vma)
 			continue;
 
-		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base) {
-			*fb = plane_state->hw.fb;
-			*vma = plane_state->ggtt_vma;
-			return true;
-		}
+		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base)
+			return plane_state;
 	}
 
-	return false;
+	return NULL;
 }
 
 static enum intel_memory_type
@@ -329,8 +324,15 @@ i915_find_initial_plane_obj(struct drm_crtc *_crtc,
 	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
 		fb = &plane_config->fb->base;
 		vma = plane_config->vma;
-	} else if (!intel_reuse_initial_plane_obj(crtc, plane_configs, &fb, &vma)) {
-		return -EINVAL;
+	} else {
+		const struct intel_plane_state *other_plane_state;
+
+		other_plane_state = intel_reuse_initial_plane_obj(crtc, plane_configs);
+		if (!other_plane_state)
+			return -EINVAL;
+
+		fb = other_plane_state->hw.fb;
+		vma = other_plane_state->ggtt_vma;
 	}
 
 	plane_state->uapi.rotation = plane_config->rotation;
-- 
2.47.3

