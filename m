Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFEA9B3A72
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5432E10E557;
	Mon, 28 Oct 2024 19:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0sbobYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F34B10E53A;
 Mon, 28 Oct 2024 19:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730143822; x=1761679822;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OlbSmgYFCp6kPY5rHwOvB8io/h5G8sKMV9OU9yIhRMA=;
 b=X0sbobYeG0PSOF1l9ZPn5kjQDC2utbGXutsMKjY05kFARWuJ/LXi3lCt
 G/HxtwXxKaxDWshBK/RCoLXpyaTCEc53srFrth1YscFcyfjChOH6nq1vy
 +fDfjfArCfDZWAdYd8UDfXiwzNDGi7M7zekv8cOVx7pl0bxpTTdt/ZKz9
 thAZSnbNtwGRtKmfzcwL55ySxVd6vFW+3ZNQQoLh9cK8vTofXg5peV8ui
 9+4tVfQXomHD2gx7bIkxwYOeIq0m03ddIIxSQR6kw++gflkthkYggDB9I
 HcJbrd17dlVz74pErk3Hp/ioO4Cn8rfnqJkJj7vA/TNr9ynPaXlOGHuve A==;
X-CSE-ConnectionGUID: aeKRSA4gTeGC75GPgBxelQ==
X-CSE-MsgGUID: nSQRyq1lRXinZUQlY5WYsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40855935"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40855935"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:21 -0700
X-CSE-ConnectionGUID: QJhSIs1kTseCfdg3pnFhTg==
X-CSE-MsgGUID: fq1EQHinT06/yMhUw1Gfjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81777548"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v6 6/9] drm/i915/xe3lpd: Move async flip bit to PLANE_SURF
 register
Date: Mon, 28 Oct 2024 12:30:12 -0700
Message-Id: <20241028193015.3241858-7-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
References: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
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

