Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FDC8AC319
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A12A1126FA;
	Mon, 22 Apr 2024 03:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXg8JXj9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEAF1126F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756932; x=1745292932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=imiap1xl4PHYoJXx1/4srIsI18MOzeq1AsWshkAEhQ0=;
 b=DXg8JXj9lxYfWa/VpKhU3wtg1RBOKBOgwT4AJRyeFTN1YCsuS6eONykZ
 STdp37c1Y/lnSVEW4XxQmbqJTXo1lkBg/S3VHwyiV12zNiSgA2PVzorcs
 Dbox8p9YXjjWcUa/frVVrYprIz9X5kOkuFbJcimqmvGEE4SjGgflr/0K1
 /058blnO5Aec+iDgj5oDcfNPsjcOlUmsRFdcSlVKR03OHY1uWNPHxpBnV
 Y5kJhueL8b17cGnoLZrSz42Lt3WIwyd5IOd6jD/jUS6hI6Iep5n4DPWeO
 S2hXn3PVafduHMfx8w2Ji5BFNusF8/TO9K/yeI9VqqO8K0qFFrVFqI+sm g==;
X-CSE-ConnectionGUID: blVvV5cpQL6LNyvYG1hKOg==
X-CSE-MsgGUID: pYHEsJckRSedF5ESw1GOQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158231"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158231"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:32 -0700
X-CSE-ConnectionGUID: si/GlQbBRJOhouW+9leDAw==
X-CSE-MsgGUID: dgTM7au1RbCTqNFimvKjqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907378"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Date: Mon, 22 Apr 2024 09:02:51 +0530
Message-ID: <20240422033256.713902-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422033256.713902-1-suraj.kandpal@intel.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
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
index 62f7a30c37dc..1cf4caf1a0a9 100644
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

