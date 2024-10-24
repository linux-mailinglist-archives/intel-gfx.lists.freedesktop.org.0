Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74C79AF56C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BFA10E9B5;
	Thu, 24 Oct 2024 22:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xo32jn0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9CD10E9AC;
 Thu, 24 Oct 2024 22:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OlbSmgYFCp6kPY5rHwOvB8io/h5G8sKMV9OU9yIhRMA=;
 b=Xo32jn0lQ50fR5+ZMquShoH6i8EEIoQ199hVhY2NzTZFNLaDheDQsKKH
 rNM86QsCMCbLuiwm9sh9XIfcIL6TcC54wcnHMEyOj35D1VHAE4aiT32oU
 2WnT6xkZitoHW0pWT68OOeTsMwJce3K/Nb/QbJKvdmTDaJ6X+92y48pzq
 j2HV2c3rNNXjrFDN98lghJMqIr12qwk1bE74CgUVTDxVJrWu5vrk7l20/
 SoXRD5PN/Wzl4lgng+aSyP2nQaEGlGRru0ux/wkp1ueZ/OXS19HlGEyA3
 KMsfSs1ZV2ZVgxbbg8tFXbqBPveVllH5zs8oBUKXfQstkHxqSIJnuQcSY Q==;
X-CSE-ConnectionGUID: BRyK61i7SZC1CaznzAcEXg==
X-CSE-MsgGUID: D4zp2ZQxR4mOtk8Xtet7bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950809"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950809"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: lI/t837/ThSzDGIa0mALZg==
X-CSE-MsgGUID: gOOkoLwDREab9nMqFpDwaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838672"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 07/11] drm/i915/xe3lpd: Move async flip bit to PLANE_SURF
 register
Date: Thu, 24 Oct 2024 15:31:10 -0700
Message-Id: <20241024223114.785209-8-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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

