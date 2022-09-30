Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7005F0940
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 12:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF32010EC6F;
	Fri, 30 Sep 2022 10:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AAEE10EC6E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 10:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664534594; x=1696070594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YC4+D8M8vuyBCaoL8v+cF7Kg8NQaxJI1Ati6sZltkl4=;
 b=TnBxWYhJ2RBy4epMFOChrGCTiz9Sioute21jHJEdbFscAfjUFIATw2oO
 f66ZKv4HE5r5WC6uS0XoukdWL3wgG1SaCZ9X0kmJ0dpfKfZbMjyffFwSK
 QEc3XcfgjCbKWM3nYWkUnvJsOrZPDap//CNQ3sbRzJ17y9Mka/fabF9WM
 F2Pc6LHb6d27sTZZsp3IV5RZ+LzRL99vUggeFj9xFZ5hPjXq2LGZqyX4Y
 DmOyfBStfACiKPTG1dFTS4QqyUWa+ak2hsgsvO3R3+VFCD7GKLGjRaZSA
 77cd2382kuDFOFpSnCZIgob3Od8ku/tVquyjoB4rPvcLxpLXms3mpuhK1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="303073610"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303073610"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 03:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="765092050"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="765092050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 30 Sep 2022 03:43:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 13:43:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 13:43:00 +0300
Message-Id: <20220930104302.25836-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
References: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Fix watermark calculations for
 DG2 CCS modifiers
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

Take the DG2 CCS modifiers into account when calculating the
watermarks. Othwerwise we'll calculate the watermarks thinking these
tile-4 modifiers are linear.

The rc_surface part is actually a nop since that is not used
for any glk+ platform.

Cc: stable@vger.kernel.org
Fixes: 4c3afa72138c ("drm/i915/dg2: Add support for DG2 render and media compression")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3676662897e7..a120d49b95ca 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1713,13 +1713,17 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC;
+		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
+		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
+		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
 	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
 			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
 			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC;
+			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
+			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
+			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.35.1

