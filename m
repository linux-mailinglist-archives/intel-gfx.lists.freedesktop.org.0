Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EE542E105
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 20:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498086EBFF;
	Thu, 14 Oct 2021 18:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8923F6EBFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 18:19:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="214695577"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="214695577"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 11:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="481387566"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 14 Oct 2021 11:18:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Oct 2021 21:18:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Oct 2021 21:18:55 +0300
Message-Id: <20211014181856.17581-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Declare .(de)gamma_lut_tests for
 icl+
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

All interpolated gamma modes including the icl+ multi segment
mode require non-decreasing entries for the interpolation to
work correctly. For some reason we're forgetting to declare
that for icl+. Let us do so.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/3916
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 169837de395d..7655c7a4f904 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -145,6 +145,12 @@
 		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
 					DRM_COLOR_LUT_EQUAL_CHANNELS, \
 	}
+#define ICL_COLORS \
+	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145, \
+		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
+					DRM_COLOR_LUT_EQUAL_CHANNELS, \
+		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
+	}
 
 /* Keep in gen based order, and chronological order within a gen */
 
@@ -811,7 +817,7 @@ static const struct intel_device_info cml_gt2_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	GEN(11), \
-	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 }, \
+	ICL_COLORS, \
 	.dbuf.size = 2048, \
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
 	.display.has_dsc = 1, \
-- 
2.32.0

