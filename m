Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39392AFC1B4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 06:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6209910E57F;
	Tue,  8 Jul 2025 04:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwneMaSs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BDD10E11B;
 Tue,  8 Jul 2025 04:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751949221; x=1783485221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sTyFlW0phwaz1FO88Jra5hBfEIUrJegixfbtkNXlEUA=;
 b=TwneMaSsml0HQ69KmXaowngMWM/lsYjxDeOTYfND52swP4frAFvkp70c
 MK6IbLTPUzI8y99Zma43Lh4fqxdOKldFtpAlXClOE5kDKJ0i5jlkyuq13
 l3Ro0YhBPlEemuAAQHCGoS/ZSGz2o681Ltv39i5cZ/PSKyWPV9D7ZU304
 4h3maABteoAcibaKtGZE/AO2g3qXDSPSVOQoEemq3r+ryAZISxtXNergV
 vUsJAeNpGuSLsLl/ht/og+GJPc2YLL73DbnX6B+UPhXryGLtY+INHBk1N
 znfVUHbuWMvEEl1mCfBEA0U8GKDpjPmeNvt7jhUk1cjU20639falfNT6q w==;
X-CSE-ConnectionGUID: wwryYF1rSQC6GgSlWSy87A==
X-CSE-MsgGUID: hPVNZHrzTMWVxhUZntwONw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="57849831"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="57849831"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 21:33:40 -0700
X-CSE-ConnectionGUID: z7IKcR0TT8qToqGrFj13VA==
X-CSE-MsgGUID: iVt/S/KWQlCaE+e3XsTy2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="154812883"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 07 Jul 2025 21:33:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/scaler: Use intel_display as argument to
 skl_scaler_max_src_size
Date: Tue,  8 Jul 2025 10:03:27 +0530
Message-Id: <20250708043328.1086192-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

skl_scaler_max_src_size has really no use of intel_crtc other than
deriving intel_display. Let's just pass intel_display to it directly.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d77798499c57..a6ba9da03542 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -91,11 +91,9 @@ static void skl_scaler_min_src_size(const struct drm_format_info *format,
 	}
 }
 
-static void skl_scaler_max_src_size(struct intel_crtc *crtc,
+static void skl_scaler_max_src_size(struct intel_display *display,
 				    int *max_w, int *max_h)
 {
-	struct intel_display *display = to_intel_display(crtc);
-
 	if (DISPLAY_VER(display) >= 14) {
 		*max_w = 4096;
 		*max_h = 8192;
@@ -201,7 +199,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	}
 
 	skl_scaler_min_src_size(format, modifier, &min_src_w, &min_src_h);
-	skl_scaler_max_src_size(crtc, &max_src_w, &max_src_h);
+	skl_scaler_max_src_size(display, &max_src_w, &max_src_h);
 
 	skl_scaler_min_dst_size(&min_dst_w, &min_dst_h);
 	skl_scaler_max_dst_size(crtc, &max_dst_w, &max_dst_h);
-- 
2.34.1

