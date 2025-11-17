Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B60C62714
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:45:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589D910E2E3;
	Mon, 17 Nov 2025 05:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eaPhQ6So";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 711BB10E2DE;
 Mon, 17 Nov 2025 05:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358303; x=1794894303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Fdv05uQWHrYouaDa1snuVtDumsUi0qFfIb8Hss3HWg=;
 b=eaPhQ6SoxNmXOEjOikATmLFvwClzjAzIQ9ETyvzhD5NjvZJXGYHPMl1E
 YIabIAuz6ZXL5H/3S57uucWbToTPN0STy22IZfZYqj6mk31U+ChwisEHz
 yLfmzAAkXmT9BoqoFmGiDbD2YxZ5hwS9FCF1gEbNoUT98JJBHV8tyoIoz
 WRi0qnB7Bw9pol7otP9OxtJX8V5TmMPLwURFiodRoTih9/XIeul1rocDO
 7TvujLUHjmfDWq3RU9RLLQHaj7ZDE/jDbiJTkJXVDX9P4sh+4YGucU6Gk
 R4tPRuH4Lit8Ln3mRYR1sW1fy74vbKdZBdsW7kF0zNoFHd1TSxy/7+Ac3 g==;
X-CSE-ConnectionGUID: WUTHjWhqScan5+74rRdpXg==
X-CSE-MsgGUID: M2xIroiLR2K13ifg6oo1AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446077"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446077"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:45:03 -0800
X-CSE-ConnectionGUID: +x9tUxeaS064P30Bj09KwQ==
X-CSE-MsgGUID: DSyYOybNTzm1HGX5EQwbAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016421"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:45:01 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 17/18] drm/i915/vrr: Enable DC Balance
Date: Mon, 17 Nov 2025 11:14:41 +0530
Message-ID: <20251117054442.4047665-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and related hw flag.

--v2:
- Use dc balance check instead of source restriction.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 74a6d5243f00..87945b031a7d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -266,12 +266,17 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 				   int vmin, int vmax)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	crtc_state->vrr.vmax = vmax;
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (HAS_VRR_DC_BALANCE(display))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 static
@@ -892,6 +897,10 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_vrr_enable_dc_balancing(crtc_state);
+
+	if (crtc_state->vrr.dc_balance.enable)
+		vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
+
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
-- 
2.48.1

