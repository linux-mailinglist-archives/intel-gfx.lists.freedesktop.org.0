Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272F8A081F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA3B10EE48;
	Thu, 11 Apr 2024 06:12:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8b81nq6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED2E10EE48
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 06:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712815921; x=1744351921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n+B1KasmAlbvZSmsySH4ZXdaHY63QuLyqj8JiLQz4DA=;
 b=R8b81nq6FDgo8M8r+3bBBiRXt3mZk2XOEIVY3wusEBGZ3yFMVg/3xVfz
 PTUUSu8LhnVTf4tUz6StsGr7NDefJ5l6eABYFqEi6SNP7GY4GgRoQg1R6
 5m2GlEikRRkdupvgHmkP/rhn9WONggIKx88jtXiV+lzNhYuVXihzdtk0M
 awIgD5wbeqdDDRV7yBwgGg0cdkhvjDCWTr8TlzIrWdr/ixbjE2zrcK6Ua
 30PpwVIvbTm9w1didtR3Sh3kZ9VAkj+DYgQM69qeZgPKWVRRBF3gksovd
 XX6EHpnbovSL5Qa5o53x2hyEGD3QNKx0tcHLIEe8aeiPVc+2ADNgwD+1n g==;
X-CSE-ConnectionGUID: DcTLHX+/Q2+NM7c+5Bkkrg==
X-CSE-MsgGUID: Fn6PH9iQSmaeNto9aWpG8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8384961"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8384961"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 23:12:01 -0700
X-CSE-ConnectionGUID: 3iECuSvdSWu0Af4OvRe5IQ==
X-CSE-MsgGUID: zrjdThMDRTK/C3Ql9WmEyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="58226424"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 10 Apr 2024 23:11:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Date: Thu, 11 Apr 2024 11:39:21 +0530
Message-ID: <20240411060925.475456-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240411060925.475456-1-suraj.kandpal@intel.com>
References: <20240411060925.475456-1-suraj.kandpal@intel.com>
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
index 0f4bd5710796..ef28eee05ec6 100644
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

