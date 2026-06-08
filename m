Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ro6+Fq3NJmo8kwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:11:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69FB656FAF
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:11:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IDHJRqz2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C247F10F449;
	Mon,  8 Jun 2026 14:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A3710F449;
 Mon,  8 Jun 2026 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780927914; x=1812463914;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=58HmFEDc2MtRMabLqC3xYygIZ4QUJr/JfHM9qqLNLsI=;
 b=IDHJRqz2EPwrkeWIVyx8Hrww1HPHTyiq3bvJz19lbgKveD7MymSRlSOU
 AONaSFUPaXIP1PbI8VR6XKwCLPWSgPqHWVRYLkOoeeXiIfZtshBTu3HrS
 JWkhzAf6y0HzNdLFDe9KxcBtVGfZxFP8T+4PTyZJRsw4+X49mJhmZdi/I
 I9H4hEz4cyDdxu0xsumBWTxeK/kMoGD0ji/BtNKCBB4+/0gpgcDKr94hM
 4KZNXzaSy3OtlzhWR5cvQOW6hvcSYnCpLq1SiLtRZ2+M7FWrJCEw+Tphu
 aP9CQ17yBpfrn36HTQTtlJcntc9PL2vxCOdZPVZTSiUKgiZbPPdAiEvXF Q==;
X-CSE-ConnectionGUID: MQDknwzjTrembes6C3I7QQ==
X-CSE-MsgGUID: m46kQBQGS5e7i1kuaej0OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81519111"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81519111"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:11:53 -0700
X-CSE-ConnectionGUID: W9iScFt+SKWJWdLPh173PA==
X-CSE-MsgGUID: qxarxhFvQ5ScBKbljtm+Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="250482580"
Received: from vsrini4-xps-8920.iind.intel.com ([10.223.167.75])
 by orviesa005.jf.intel.com with ESMTP; 08 Jun 2026 07:11:50 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 Vidya Srinivas <vidya.srinivas@intel.corp-partner.google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>,
 Charlton Lin <charlton.lin@intel.com>
Subject: [PATCH] [RFC] drm/i915/display: Fix PPC-granularity and limit 2nd
 scaler to 1:1
Date: Mon,  8 Jun 2026 19:35:09 +0530
Message-ID: <20260608140510.629170-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B69FB656FAF

From: Vidya Srinivas <vidya.srinivas@intel.corp-partner.google.com>

The existing icl_plane_min_cdclk() uses a simple pixel_rate/PPC
calculation that does not account for the pipeline granularity
adjustment when horizontal downscaling is active. The effective
pixels-per-clock throughput is reduced due to integer pipeline
granularity, requiring a higher CDCLK than the current one computes.
This causes FIFO underruns on multi-pipe configurations near max CDCLK.

Additionally, limit second scaler to 1:1
(no horizontal or vertical downscaling) on DISPLAY_VER > 14

Also apply CDCLK PLL disable/enable WA for DISPLAY_VER 30

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Charlton Lin <charlton.lin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  4 +-
 .../drm/i915/display/skl_universal_plane.c    | 58 +++++++++++++++++--
 3 files changed, 57 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 189ae2d3cfc9..f724227c3726 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2149,7 +2149,8 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct intel_display *displa
 
 static bool pll_enable_wa_needed(struct intel_display *display)
 {
-	return (DISPLAY_VERx100(display) == 2000 ||
+	return (DISPLAY_VERx100(display) == 3000 ||
+		DISPLAY_VERx100(display) == 2000 ||
 		DISPLAY_VERx100(display) == 1400 ||
 		display->platform.dg2) &&
 		display->cdclk.hw.vco > 0;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 7994b983d509..3673b52de4da 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -382,8 +382,10 @@ calculate_max_scale(struct intel_crtc *crtc,
 
 		if (scaler_id == 0)
 			*max_vscale = 0x30000 - 1;
-		else
+		else {
+			*max_hscale = 0x10000;
 			*max_vscale = 0x10000;
+		}
 	} else if (DISPLAY_VER(display) >= 10 || !is_yuv_semiplanar) {
 		*max_hscale = 0x30000 - 1;
 		*max_vscale = 0x30000 - 1;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ad4bfff6903d..c49f330c4878 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -264,12 +264,58 @@ bool icl_is_hdr_plane(struct intel_display *display, enum plane_id plane_id)
 }
 
 static int icl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
-			       const struct intel_plane_state *plane_state)
-{
-	unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
-
-	/* two pixels per clock */
-	return DIV_ROUND_UP(pixel_rate, 2);
+                   const struct intel_plane_state *plane_state)
+{
+    struct intel_display *display = to_intel_display(crtc_state);
+    unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
+
+    if (DISPLAY_VER(display) >= 30) {
+        unsigned int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
+        unsigned int dst_w = drm_rect_width(&plane_state->uapi.dst);
+        unsigned int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
+        unsigned int dst_h = drm_rect_height(&plane_state->uapi.dst);
+        const unsigned int ppc = 2;
+
+        /*
+         * "Resolution Support" PPC-granularity:
+         *   Hscale_PPC = (src_w / dst_w) * PPC
+         *   int_part = floor(Hscale_PPC)
+         *   frac = Hscale_PPC - int_part
+         *   adjusted_frac = frac > 0 ? 1/ROUNDUP(1/frac) : 0
+         *   H_down = int_part/PPC + adjusted_frac
+         *   min_cdclk = crtc_clock * H_down * V_down / PPC
+         */
+        if (dst_w && dst_h && src_w > dst_w) {
+            unsigned int hscale_ppc = src_w * ppc;
+            unsigned int int_part = hscale_ppc / dst_w;
+            unsigned int frac_num = hscale_ppc % dst_w;
+            unsigned int v_num = max(src_h, dst_h);
+            u64 num;
+
+            if (frac_num) {
+                unsigned int recip_ceil = DIV_ROUND_UP(dst_w, frac_num);
+                /* H_down = (int_part * recip_ceil + ppc) / (ppc * recip_ceil) */
+                unsigned int h_num = int_part * recip_ceil + ppc;
+                unsigned int h_den = ppc * recip_ceil;
+
+                num = mul_u32_u32(crtc_state->pixel_rate, h_num);
+                num *= v_num;
+                return DIV_ROUND_UP_ULL(num,
+                            (u64)h_den * ppc * dst_h);
+            }
+
+            /* frac == 0: H_down = int_part / ppc exactly */
+            num = mul_u32_u32(crtc_state->pixel_rate, int_part);
+            num *= v_num;
+            return DIV_ROUND_UP_ULL(num, (u64)ppc * ppc * dst_h);
+        }
+
+        /* No horizontal downscale */
+        return DIV_ROUND_UP(pixel_rate, ppc);
+    }
+
+    /* two pixels per clock */
+    return DIV_ROUND_UP(pixel_rate, 2);
 }
 
 static void
-- 
2.45.2

