Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A808BDA00
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 06:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2D010E932;
	Tue,  7 May 2024 04:06:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bApNsQO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF2E10E919
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 04:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715054801; x=1746590801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1o2pQ9HNGSB6Ky1YeNUAMBUIpomGLq1TJglc0E4H688=;
 b=bApNsQO0KCSZjTVlKLgX+yfscoLWDjcnHIdTBi2T+Lp/a2tJ3bqo+uPC
 gnVN8THUUWmeloxrNdYg8FOAxAKtX5HHALy7MDGEFG6JnioMWubYjnwXa
 U4s+VGtBvPZH0GK/1f3EPwZpPUGhMlcIfCONupO0/3DaVRXSAPJ9SxfM2
 gWxE8Lrnv+tF8j+J0yyhcJ4Gwy/94y71mC7V0+07ecSYPxognbRvDN6HX
 Duylzhs5JTskBt9XPjV5cA4Dn/MQqmiUCQv+w3RAmX7WDi11YlW0Fe1ER
 4Yy/Z3uZIMGo0b90ThyDARiwmjNfAKTLktErnUU6aSfIqmYqHr0hWOlb2 Q==;
X-CSE-ConnectionGUID: R3zC9EAqRVWwZif6YUk5rA==
X-CSE-MsgGUID: dal5FaEDRYa5DCugg4UmSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14645342"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="14645342"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 21:06:41 -0700
X-CSE-ConnectionGUID: XOuMo13URLyHKJ6MesnR9Q==
X-CSE-MsgGUID: i1JMuAPJTqiK7tj/HbjPLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28468396"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 06 May 2024 21:06:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/7] drm/i915/dp: Add TCON HDR capability checks
Date: Tue,  7 May 2024 09:34:03 +0530
Message-ID: <20240507040407.1056061-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507040407.1056061-1-suraj.kandpal@intel.com>
References: <20240507040407.1056061-1-suraj.kandpal@intel.com>
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h    |  5 +++++
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 66cc9c97fe58..da0d003102e4 100644
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
 			} intel_cap;
 		} edp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 44bc6fa04332..63d99afba398 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -158,6 +158,16 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 
 	panel->backlight.edp.intel_cap.sdr_uses_aux =
 		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
+	panel->backlight.edp.intel_cap.supports_2084_decode =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
+	panel->backlight.edp.intel_cap.supports_2020_gamut =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
+	panel->backlight.edp.intel_cap.supports_segmented_backlight =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
+	panel->backlight.edp.intel_cap.supports_sdp_colorimetry =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP;
+	panel->backlight.edp.intel_cap.supports_tone_mapping =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_TONE_MAPPING_CAP;
 
 	return true;
 }
-- 
2.43.2

