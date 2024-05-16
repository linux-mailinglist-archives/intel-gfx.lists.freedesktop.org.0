Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCDA8C7805
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4A710ED35;
	Thu, 16 May 2024 13:56:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n35xtFRn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577FE10ED2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867799; x=1747403799;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bbrhthMCcN8wnlQLg7CHQ8gYKfLX07O57Qkvatw3YtU=;
 b=n35xtFRnxbAthnkn9Gpc50IY0Sp5qdTRCpPkdjIWvGX5Hys+Eibqy0Uw
 LjFs15K7tHUISTHZ0cUQUsVB9jM17TKuSevWcm0yyO3XRPg/V7r3zj8pb
 2gnbOkDAyz4BFX1RXR9r/J6LTsAKrDj1i6CN3biHnE0XoJk0nannb1Ees
 EiI07HaWjnv4sXCtgfuL9GH8LBEST83uBk/cGssuSqjuR/jAkzVYN/Skc
 sXAFZ0pmOJxuH5D8I7lbV2QGKbjZ4nnMvGJaMz2BIdaxfD8U5KJ4uGk1r
 LrJEVJIfXRc1blrSVwwBCQdoMJOQ20q2MYS9OnF1rGIlXSCxO+RWX0UdG Q==;
X-CSE-ConnectionGUID: PRFlPtyEQxqDRIBQzYtLHQ==
X-CSE-MsgGUID: M94MOv6ZQoOwDJxjVeAKwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357186"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357186"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:39 -0700
X-CSE-ConnectionGUID: fnD+0lHrRXSWYlPRI715FQ==
X-CSE-MsgGUID: v3bZM9wsQACatu5zCxf8ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/13] drm/i915: Rename selective fetch plane registers
Date: Thu, 16 May 2024 16:56:14 +0300
Message-ID: <20240516135622.3498-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Rename the selective fetch plane registers to match the spec.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h      | 10 +++++-----
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 47e3a2e2977c..f0bd0a726d7a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -276,23 +276,23 @@
 					    _SEL_FETCH_PLANE_BASE_A(plane))
 
 #define _SEL_FETCH_PLANE_CTL_1_A		0x70890
-#define PLANE_SEL_FETCH_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+#define SEL_FETCH_PLANE_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
 					       _SEL_FETCH_PLANE_CTL_1_A - \
 					       _SEL_FETCH_PLANE_BASE_1_A)
-#define PLANE_SEL_FETCH_CTL_ENABLE		REG_BIT(31)
+#define SEL_FETCH_PLANE_CTL_ENABLE		REG_BIT(31)
 
 #define _SEL_FETCH_PLANE_POS_1_A		0x70894
-#define PLANE_SEL_FETCH_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+#define SEL_FETCH_PLANE_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
 					       _SEL_FETCH_PLANE_POS_1_A - \
 					       _SEL_FETCH_PLANE_BASE_1_A)
 
 #define _SEL_FETCH_PLANE_SIZE_1_A		0x70898
-#define PLANE_SEL_FETCH_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+#define SEL_FETCH_PLANE_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
 						_SEL_FETCH_PLANE_SIZE_1_A - \
 						_SEL_FETCH_PLANE_BASE_1_A)
 
 #define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089C
-#define PLANE_SEL_FETCH_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+#define SEL_FETCH_PLANE_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
 						  _SEL_FETCH_PLANE_OFFSET_1_A - \
 						  _SEL_FETCH_PLANE_BASE_1_A)
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index d0bfee2ca643..6601baf18ae4 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -705,7 +705,7 @@ static void icl_plane_disable_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+	intel_de_write_fw(i915, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
 }
 
 static void
@@ -1304,7 +1304,7 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
 
 	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
 	val |= plane_state->uapi.dst.x1;
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
+	intel_de_write_fw(i915, SEL_FETCH_PLANE_POS(pipe, plane->id), val);
 
 	x = plane_state->view.color_plane[color_plane].x;
 
@@ -1319,13 +1319,13 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
 
 	val = y << 16 | x;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
+	intel_de_write_fw(i915, SEL_FETCH_PLANE_OFFSET(pipe, plane->id),
 			  val);
 
 	/* Sizes are 0 based */
 	val = (drm_rect_height(clip) - 1) << 16;
 	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
+	intel_de_write_fw(i915, SEL_FETCH_PLANE_SIZE(pipe, plane->id), val);
 }
 
 static void
@@ -1414,8 +1414,8 @@ static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
 		return;
 
 	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
-		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-				  PLANE_SEL_FETCH_CTL_ENABLE);
+		intel_de_write_fw(i915, SEL_FETCH_PLANE_CTL(pipe, plane->id),
+				  SEL_FETCH_PLANE_CTL_ENABLE);
 	else
 		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
 }
-- 
2.44.1

