Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E4B9A4876
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2A310E999;
	Fri, 18 Oct 2024 20:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJkOuZUn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A79710E997;
 Fri, 18 Oct 2024 20:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284590; x=1760820590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hp+ulUXimZ+Zzwv/TlFlnvm9+Yy3uzMjrpTYIsrpC4I=;
 b=hJkOuZUnTe8djx3qoA6r5f3e7Nas7rBhcmqntf5FvLQkIXHuA49RLmdU
 Rh+p2saUSKfiKh/f49t7gJ59qrIX/9MIZHYXJKTJb9Y+69/YW0LDXEpWn
 e/i1bUts3pPBi77rb0OsiS1jwOmKCpxRJT3hL9GAjLoymDs6t//vbvIi9
 fTa6iraljeSVfLkZHH7k6ypg32hmqRuyfr1yRSmrfwF9xgBjy6sW8CL+M
 RNDhdXgqOZZRW0bC3AYWx2JaqZkGd9mLjCYl9mCWVYgZj/Rvd5JgFb/lz
 pXIqOAx1to/caxHTFeKqY3N3y11KsvMM5ESFDLbF7uqvedTjCohnUHqMj g==;
X-CSE-ConnectionGUID: tec+L/YoSjyKo0d62+vQlQ==
X-CSE-MsgGUID: WZL6GFqoRRuCUDobqguvHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240183"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240183"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:48 -0700
X-CSE-ConnectionGUID: jajNHCXgRrSQ+T0JlP7shA==
X-CSE-MsgGUID: RtZaourJTsal237hmWkQqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798940"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:48 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 04/12] drm/i915/ptl: Move async flip bit to PLANE_SURF register
Date: Fri, 18 Oct 2024 13:49:33 -0700
Message-ID: <20241018204941.73473-5-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

The async flip moved from PLANE_CTL to PLANE_SURF for PTL.
Bspec: 69853,69878

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 13 +++++++++----
 .../gpu/drm/i915/display/skl_universal_plane_regs.h |  1 +
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a0a7ed01415a..da974f4a25bd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1567,17 +1567,22 @@ skl_plane_async_flip(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	u32 plane_ctl = plane_state->ctl;
+	u32 plane_ctl = plane_state->ctl, plane_surf;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
+	plane_surf = skl_plane_surf(plane_state, 0);
 
-	if (async_flip)
-		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+	if (async_flip){
+		if (DISPLAY_VER(display) >= 30)
+	                plane_surf |= PLANE_SURF_ASYNC_UPDATE;
+		else
+			plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+	}
 
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
 			   plane_ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
-			   skl_plane_surf(plane_state, 0));
+			   plane_surf);
 }
 
 static bool intel_format_is_p01x(u32 format)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 4ddcd7d46bbd..ff31a00d511e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -159,6 +159,7 @@
 							_PLANE_SURF_2_A, _PLANE_SURF_2_B)
 #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
 #define   PLANE_SURF_DECRYPT			REG_BIT(2)
+#define   PLANE_SURF_ASYNC_UPDATE		REG_BIT(0)
 
 #define _PLANE_KEYMAX_1_A			0x701a0
 #define _PLANE_KEYMAX_2_A			0x702a0
-- 
2.45.0

