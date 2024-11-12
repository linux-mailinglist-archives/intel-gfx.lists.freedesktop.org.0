Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C57E9C5120
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B52410E5A4;
	Tue, 12 Nov 2024 08:48:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f/PWGGO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D04B10E592;
 Tue, 12 Nov 2024 08:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401323; x=1762937323;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5znXMSDU/en1mbS0SCp/J18ANy883+iR6+gXfPD1lR0=;
 b=f/PWGGO0xg1vligN+ZIxRwI6DlFbH9Jyh2MLywxdQLqGIj4ZvPXzaMG6
 4R3TsjfV6DS4ksHtqvX64G2MbQfgSRNOFRXvx7XEX8AY99/aslFUqbFQb
 ogpArtqIbFJGSjRxAQXQCneQi52jhCvUjRBdeLh8xPw9Z/2CyYjY0udAd
 0/BKJzRbXTBp+3F+ok86b1Z7DAeHGSlgJfIuwMNNxSr5brrb4N7tdr3ns
 a39g2mep/qLDS3iTP9Hf3SZE1qdOt6zrXHr9me0V6+eN1H5EqZvm+NwKI
 rYFpnlf7dDLeMT6VG7mcxPwg6TFeQiPu0e/mJ4FzVAFoofD5d7IBOSGd9 A==;
X-CSE-ConnectionGUID: bpL1X3H7RvWRXEuVJB22ow==
X-CSE-MsgGUID: yUgJMvp8SLmFYagb+ZVdew==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="18835741"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="18835741"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:48:43 -0800
X-CSE-ConnectionGUID: SkSUZ6pyT9qnVTiH55VN8A==
X-CSE-MsgGUID: bv4g+VxzRBihnNcnq5ceow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87759869"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa009.fm.intel.com with ESMTP; 12 Nov 2024 00:48:42 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [RFC v1 2/4] drm/i915/watermark: Add WM0 prefill latency
Date: Tue, 12 Nov 2024 14:20:37 +0530
Message-ID: <20241112085039.1258860-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
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

Calculate WM0 prefill latency which accounts for maximum time
to fill data buffer up to watermark 0.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 21 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..8afa24943333 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2260,6 +2260,27 @@ static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
 	return wm0_lines;
 }
 
+int skl_calc_wm0_prefill_latency(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int cdclk_prefill_latency, wm0_prefill_latency;
+	int linetime =
+		DIV_ROUND_UP(crtc_state->hw.adjusted_mode.htotal * 1000,
+			     crtc_state->hw.adjusted_mode.crtc_clock);
+	/*
+	 * TODO: DIV_ROUND_UP will also round off to 1, so need to
+	 * check upon if this can be eliminated here
+	 */
+	cdclk_prefill_latency =
+		MIN(1, DIV_ROUND_UP(crtc_state->pixel_rate,
+				    2 * display->cdclk.hw.cdclk));
+	wm0_prefill_latency =
+		20 + (linetime * skl_max_wm0_lines(crtc_state) * cdclk_prefill_latency);
+
+	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+									wm0_prefill_latency);
+}
+
 static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 				       int wm0_lines)
 {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index e73baec94873..9495a142fbe5 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -23,6 +23,7 @@ struct skl_wm_level;
 
 u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
 
+int skl_calc_wm0_prefill_latency(struct intel_crtc_state *crtc_state);
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
 bool intel_can_enable_sagv(struct drm_i915_private *i915,
-- 
2.46.0

