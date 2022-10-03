Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31435F2F69
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:16:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF90D10E30C;
	Mon,  3 Oct 2022 11:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33D610E30C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795764; x=1696331764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ROaFCrior9de9OnSVdMo1DwT4Q3eTeyBABuE1+1Yj8=;
 b=LBD8zQLq4c0C8Lu6gS8CXlkAS3CcAxgCwblaEbVlnn31jDr4WKe8Wiig
 QOiqPgw4T+4y35k8WKuIcs+RsDtJKbt++LECqPKIc23WiyJ+VVBhysDqO
 brp0MqpDTBs3nAsu6Cn/ZhaUAF5W/zIvGiRGx6MIw6ehie6DdU7+n+DdG
 0sDagra87yYMUju8Ry4naU4Bc1zWqEqRt9w7zwdxqSiIraNfk8g1x635C
 871RHiTB1gBxIV4ZAAn6GLBIRAb3lDZ+DJIzi/uSMDfvcMvVTbT4NmZbf
 bvu5NfxEKc+xthbroI2qKQyGRi0vTBSBDf7qPVRQuIhuxGI/u1BL0FRlB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="366650671"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="366650671"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618696709"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618696709"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:16:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:16:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:15:43 +0300
Message-Id: <20221003111544.8007-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
References: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: Fix watermark calculations for
 DG2 CCS+CC modifier
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Take the DG2 CCS+CC modifier into account when calculating the
watermarks. Othwerwise we'll calculate the watermarks thinking this
tile-4 modifier is linear.

The rc_surface part is actually a nop since that is not used
for any glk+ platform.

Cc: stable@vger.kernel.org
Fixes: 680025dcc400 ("drm/i915/dg2: Add support for DG2 clear color compression")
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 070357da40e4..aac0980a0c9d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1715,7 +1715,8 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
 		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
-		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
+		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
+		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
 	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
@@ -1723,7 +1724,8 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
 			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
 			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
-			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
+			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
+			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.35.1

