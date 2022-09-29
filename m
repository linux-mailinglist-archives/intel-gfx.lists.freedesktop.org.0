Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCFE5EEEAC
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324BC10E9E3;
	Thu, 29 Sep 2022 07:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A5E10E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435744; x=1695971744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NSCojCADFnFqhkH1g+dTdduvSVHNAKHnKk/Z2NsNd4Y=;
 b=fakbFn0W7ibGW56jzWPhS2vzj9rMAwM45cToMNV7Ifzz56f7eZEu2h0I
 BKDs1OF/oJclNrp+y5P3lotveg/UgYO2gFC6EqlD8YWajYNKJjJZ3iu6H
 ejRtqdLLiTIiSYWH+87ItzaMlkPxRZYHp9EUkucPleECepy8Aj2UDrq+V
 ZHOCMBzfacO4EFEmSt4eNN0fZuKET1kCfsu8s4uJraYotGwBihv/l6Cuf
 YMfBExfG6qFMJ5nu4zviaAPGfNzRVkfgv+Qrfk1BSZyQCHMaxgFMjmoRF
 rvs0+7w5P5hG18/7vR48Jf4EgyVZyxI7Pc7irbD+JkXVRqtWWKqehJAdx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979129"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979129"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441230"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441230"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:17 +0300
Message-Id: <20220929071521.26612-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Make ilk_load_luts() deal with
 degamma
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

Make ilk_load_luts() ready for a degamma lut. Currently we never
have one, but soon we may get one from readout, and I think we
may want to change the state computation such that we may end up
with one even when userspace has simply supplied a gamma lut.

At least the code now follows the path laid out by the ivb/bdw
counterpars.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 0c73b2ba1283..abaa1abab64d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -649,13 +649,15 @@ static void ilk_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
+	const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, gamma_lut);
+		ilk_load_lut_8(crtc, blob);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		ilk_load_lut_10(crtc, gamma_lut);
+		ilk_load_lut_10(crtc, blob);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
-- 
2.35.1

