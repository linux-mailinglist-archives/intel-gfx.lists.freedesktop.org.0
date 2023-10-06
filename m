Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CAC7BB942
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CDD10E507;
	Fri,  6 Oct 2023 13:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D558F10E4F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599446; x=1728135446;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e3Hoo3glorQfER82y/x0jv8eNU3CsSYqsp7ZGDhLZG4=;
 b=l4PlxW5liC4hSf+odb0/xEIKGI0cTJ8Yue3rOAozXPV29JVSvdi7+mNm
 8I63/dtbKTyzayYo0gBB9aJhZzCGbIfl+H+w5cDKu9pgPF707SGLyw0xE
 9WpnbzLMt9k9a6o8lEehJeIgt92dPUeWyie/y3l2gUyIL0b7nZmWXomG2
 zxqNVqe3ezvDly48ZXAAUCJ38vhV8b7N0HwztK5ewl8phCUkaHHQ0Pi7K
 DFaxATAkCKelRBFmDXpR/EF5c9LvyL6RAqN82qDw3+7X/J2YeWGUa5W4Y
 D1WWU3g86EzUceQ9JFookul3Va7ubfwAzqy7ArdUX3D3uVyJ4OjnWIc+b w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019134"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019134"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841499"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841499"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:23 +0300
Message-Id: <20231006133727.1822579-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_dsc_get_slice_count()
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

Use the connector's DSC DPCD capabilities in
intel_dp_dsc_get_slice_count().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 846a25a85d6b6..7449ff145a842 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -823,11 +823,11 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 	return bits_per_pixel;
 }
 
-u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
 	int max_slice_width;
 
@@ -845,7 +845,7 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 	if (mode_clock >= ((i915->display.cdclk.max_cdclk_freq * 85) / 100))
 		min_slice_count = max_t(u8, min_slice_count, 2);
 
-	max_slice_width = drm_dp_dsc_sink_max_slice_width(intel_dp->dsc_dpcd);
+	max_slice_width = drm_dp_dsc_sink_max_slice_width(connector->dp.dsc_dpcd);
 	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
 		drm_dbg_kms(&i915->drm,
 			    "Unsupported slice width %d by DP DSC Sink device\n",
@@ -862,7 +862,7 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
 
 		if (test_slice_count >
-		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd, false))
+		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
 		/* big joiner needs small joiner to be enabled */
@@ -1238,7 +1238,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								    output_format,
 								    pipe_bpp, 64);
 			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(intel_dp,
+				intel_dp_dsc_get_slice_count(connector,
 							     target_clock,
 							     mode->hdisplay,
 							     bigjoiner);
@@ -2161,7 +2161,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		u8 dsc_dp_slice_count;
 
 		dsc_dp_slice_count =
-			intel_dp_dsc_get_slice_count(intel_dp,
+			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
 						     pipe_config->bigjoiner_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index af87aa2a5ed67..51edb587e4d24 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -125,7 +125,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
-u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 303734ab7ef4e..115d4d8870b03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1014,7 +1014,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 								    INTEL_OUTPUT_FORMAT_RGB,
 								    pipe_bpp, 64);
 			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(intel_dp,
+				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
 							     bigjoiner);
-- 
2.39.2

