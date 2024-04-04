Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C4F897DFE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05331131A6;
	Thu,  4 Apr 2024 03:32:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zur0+ziJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A916A1131A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201524; x=1743737524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3uRP8hRm1Uyv8TyHV+crMswETGbysiE1x7lbl+5ehes=;
 b=Zur0+ziJ6Aik3kKkKWmf2uWDzQkq4qfeBbDVlOQs+6E6bqMpE8NWrnoY
 Re+hs5DKZreH15sLQ6yfgKAl7cm2YZBbYE6G1Yjzeug6wkKXdCaIPt91N
 ZJ29fEIlybCXvJIEeSSItP6GzaHnYmANm5jx0n571VKWhp7KHSBv0fhhb
 +yGsAfNxQsSn9Gw0+Skc0KLc9DVD0vcXGVwm3uGTCLHzz28gh23xZTarH
 RBakzNtmWrRakoGjb34iprSkNJl3XAJ7IhVVaAG8g4MPHbTXsYigJ+jeB
 Qks6xEZAVGz+VXxRLLjuzRet5tlF+6MwYg0USbGDG7a1lR4RG7OfScRoW g==;
X-CSE-ConnectionGUID: ZBxp5c+GTXSPzvnOmpHKVA==
X-CSE-MsgGUID: nrHdlANSSHqTxWUDsieg7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282625"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282625"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:32:04 -0700
X-CSE-ConnectionGUID: woe1KYb5RjKZbsQ7NVewPg==
X-CSE-MsgGUID: tsPQ8+YzQx6zEqKBHDliEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747722"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:32:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/7] drm/i915/dp: Add TCON HDR capability checks
Date: Thu,  4 Apr 2024 08:59:26 +0530
Message-ID: <20240404032931.380887-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404032931.380887-2-suraj.kandpal@intel.com>
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
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

Add checks to see the HDR capability of TCON panel.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h    |  5 +++++
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4ef1f5f709d8..ebee6ebf1fdb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -401,6 +401,11 @@ struct intel_panel {
 			} vesa;
 			struct {
 				bool sdr_uses_aux;
+				bool supports_2084_decode;
+				bool supports_2020_gamut;
+				bool supports_segmented_backlight;
+				bool supports_sdp_colorimetry;
+				bool supports_tone_mapping;
 			} intel;
 		} edp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4f58efdc688a..94edf982eff8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -158,6 +158,16 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 
 	panel->backlight.edp.intel.sdr_uses_aux =
 		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
+	panel->backlight.edp.intel.supports_2084_decode =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
+	panel->backlight.edp.intel.supports_2020_gamut =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
+	panel->backlight.edp.intel.supports_segmented_backlight =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
+	panel->backlight.edp.intel.supports_sdp_colorimetry =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP;
+	panel->backlight.edp.intel.supports_tone_mapping =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_TONE_MAPPING_CAP;
 
 	return true;
 }
-- 
2.43.2

