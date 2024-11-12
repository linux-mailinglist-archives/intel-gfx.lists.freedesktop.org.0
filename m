Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4669C5112
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B757B10E59A;
	Tue, 12 Nov 2024 08:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Srj5SyYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E111310E598;
 Tue, 12 Nov 2024 08:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401163; x=1762937163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PWFdXdXUGSky1IHW/+BtUzDa+9tKfDVKcl2LwkkgB/Y=;
 b=Srj5SyYsoAoR3DdHsdBDm3u7bh1ZNloRwOe+UPJd7VtZcicaP3dn0lSV
 sQVUr01aShaod4HsKr5NIHs0GF5DbFnq587wO2T8yM/TCAbhce9I2uIBQ
 b3QSg4/Px5kgpn7aGdd7VHqpUosC/GdMp2eV6BVamdxsrQjgrGZni5gy9
 u6tngfAqWiYsx3tqDB8BsEZkMCl8bzLZDtcLh42PUmxrGdAo3lDBdkdrk
 JKiLDFz2LDASNN4XtkIoKSLZBcwqqfmI/zeDtDV5Wf7fvAYzHL2qSqU4O
 eUqxVT/B3PRLk+zgHqKXO03fUbaQ0O2s2Ak0GYdiG2R8hB+WYvxR+PS5G w==;
X-CSE-ConnectionGUID: KcMQvnU0RNGnLPuOoweYfA==
X-CSE-MsgGUID: xztN9n7/TGSgjb4Q3e1VjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31449613"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="31449613"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:46:03 -0800
X-CSE-ConnectionGUID: lviqJmRNS6+AzD7RsqLOzQ==
X-CSE-MsgGUID: ut7B4YtaQgS9oIBcbqDKXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="124851984"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 12 Nov 2024 00:46:01 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 6/6] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Date: Tue, 12 Nov 2024 14:15:42 +0530
Message-Id: <20241112084542.1337314-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112084542.1337314-1-suraj.kandpal@intel.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
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

Increase the latency programmed into PKG_C_LATENCY latency to be
a multiple of line time which is written into WM_LINETIME.

--v2
-Fix commit subject line [Sai Teja]
-Use individual DISPLAY_VER checks instead of range [Sai Teja]
-Initialize max_linetime [Sai Teja]

--v3
-take into account the scenario when adjusted_latency is 0 [Vinod]

--v4
-rename adjusted_latency to latency [Mitul]
-fix the condition in which dpkgc is disabled [Vinod]

WA: 22020299601
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_wm.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index ffc7dde86629..47c82aa2adf9 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -157,8 +157,9 @@ intel_wm_compute_dpkgc_latency(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 latency = LNL_PKG_C_LATENCY_MASK;
 	u32 added_waketime = 0;
+	u32 max_linetime = 0;
 	int i;
 	bool fixed_refresh_rate = false;
 
@@ -170,17 +171,27 @@ intel_wm_compute_dpkgc_latency(struct intel_atomic_state *state,
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
 		    !new_crtc_state->vrr.enable)
 			fixed_refresh_rate = true;
+
+		max_linetime = max(new_crtc_state->linetime, max_linetime);
 	}
 
 	if (fixed_refresh_rate) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		latency = skl_watermark_max_latency(i915, 1);
+
+		/* Wa_22020299601 */
+		if (latency) {
+			if (DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30)
+				latency = max_linetime *
+					DIV_ROUND_UP(latency, max_linetime);
+		} else {
+			latency = LNL_PKG_C_LATENCY_MASK;
+		}
+
 		added_waketime = DSB_EXE_TIME +
 			display->sagv.block_time_us;
 	}
 
-	display->wm.dpkgc_latency = max_latency;
+	display->wm.dpkgc_latency = latency;
 	display->wm.dpkgc_added_waketime = added_waketime;
 
 	return 0;
-- 
2.34.1

