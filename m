Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC399B1076
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1504A10EB95;
	Fri, 25 Oct 2024 20:47:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GdPpclOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A908610EB83;
 Fri, 25 Oct 2024 20:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889269; x=1761425269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OlbSmgYFCp6kPY5rHwOvB8io/h5G8sKMV9OU9yIhRMA=;
 b=GdPpclOA8wiF88AkNyWhaJtMBthPmqAKF7iOoi1w7E07dinBYytazJJd
 b77dcOHzYQXZYDn4xQyKHTpK2rgY8137o5fL8KT0Y38FjT1Q9OAmGUJhB
 Pj2aTEgfUYuGjkgaWYyH/k4hH3VgD/iOsVCzH1cMNCU9rlN9x6InZ4jWV
 BlY8kg8iI7G6DHIzuYb7+aixnzsq2ADdlgdPAbJI0iKfvyGUCwkMnKPaV
 La3dOE4hgXVkt3wlx6QDom7N1A6i+ywiUtVuRYFEWECUgSMxln2e+gaJ3
 rk8fKxRp7ZboUUbOcMKC6r9tFrZ2QWiMZxMVHhqqQVQ3fd2DpFHlomKYf Q==;
X-CSE-ConnectionGUID: kVbDAhGLSLeRro6h0fLRZA==
X-CSE-MsgGUID: lLGEqrjaQKywhIelWZ64yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484207"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484207"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
X-CSE-ConnectionGUID: Hwtn5P3pT76ePXkMfx6WdQ==
X-CSE-MsgGUID: v0ad514yR8WiICmuUnwO2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057190"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:49 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 07/11] drm/i915/xe3lpd: Move async flip bit to PLANE_SURF
 register
Date: Fri, 25 Oct 2024 13:47:39 -0700
Message-Id: <20241025204743.211510-8-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241025204743.211510-1-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
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

The async flip moved from PLANE_CTL to PLANE_SURF for Xe3_LPD.

Bspec: 69853,69878
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 13 +++++++++----
 .../gpu/drm/i915/display/skl_universal_plane_regs.h |  1 +
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a0a7ed01415a..60ca4f8c4a3c 100644
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
+	if (async_flip) {
+		if (DISPLAY_VER(display) >= 30)
+			plane_surf |= PLANE_SURF_ASYNC_UPDATE;
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
2.25.1

