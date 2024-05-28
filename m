Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3403D8D2392
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945A010EEC4;
	Tue, 28 May 2024 18:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyHZk6z3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C02A10EE46
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922621; x=1748458621;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=apumwDrmoP3uR8MR/GzJBYGMrnvEzT1bDtflTuFCCGM=;
 b=HyHZk6z3kmr668rMAoXxZuag91aQT3I7vzRYV+EY/hW8Lg3mezXbKXxb
 84lOB8Eck2WwX8IMzdhJtbrI2ErwQ6jmpJjcY5JR7CThs/62E+gpGZEzM
 xNhHf9XCB3iHk9TDoc8zOGQ1kDicCmKM3yN+Ostplei5Lk8+pP/y0gBuQ
 DpA5NW3PAJPv8mvTHnrLTkdzwuHAlTthH+ho6l+pWsE1RShSZoM00eHns
 irwZhSTSznbkvNmd2U0QHnWPwIQMT01e4XXeptpXHc8xPTibZCcNmN05W
 ATLotDKo5IJzk8LD88sSRKXUFiFmHge7qRcZjyuLAt3QDXi8Bsgt/wRVX g==;
X-CSE-ConnectionGUID: HIiHb2PBSCGMnh4wA4CqUQ==
X-CSE-MsgGUID: tHpS1soxQTqi36m0l4gP3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815210"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815210"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:57:01 -0700
X-CSE-ConnectionGUID: y/5rebleT+KJkdDzcIHYoA==
X-CSE-MsgGUID: Ck7oBpoWQ9Kz24ZgaGbC4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144481"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:56:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:56:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915: Simplify scanline_offset handling for gen2
Date: Tue, 28 May 2024 21:56:44 +0300
Message-ID: <20240528185647.7765-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently intel_crtc_scanline_offset() is careful to always
return a positive offset. That is not actually necessary
as long as we take care of negative values when applying the
offset in __intel_get_crtc_scanline().

This simplifies intel_crtc_scanline_offset(), and makes
the scanline_offfset arithmetic more symmetric between
the forwad (__intel_get_crtc_scanline()) and reverse
(intel_crtc_scanline_to_hw()) directions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 31fa5867e1a7..b0e95a4c680d 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -240,7 +240,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	 * See update_scanline_offset() for the details on the
 	 * scanline_offset adjustment.
 	 */
-	return (position + crtc->scanline_offset) % vtotal;
+	return (position + vtotal + crtc->scanline_offset) % vtotal;
 }
 
 int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
@@ -470,7 +470,6 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	/*
 	 * The scanline counter increments at the leading edge of hsync.
@@ -482,8 +481,7 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 * last active line), the scanline counter will read vblank_start-1.
 	 *
 	 * On gen2 the scanline counter starts counting from 1 instead
-	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
-	 * to keep the value positive), instead of adding one.
+	 * of vtotal-1, so we have to subtract one.
 	 *
 	 * On HSW+ the behaviour of the scanline counter depends on the output
 	 * type. For DP ports it behaves like most other platforms, but on HDMI
@@ -500,7 +498,7 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 * answer that's slightly in the future.
 	 */
 	if (DISPLAY_VER(i915) == 2)
-		return intel_mode_vtotal(adjusted_mode) - 1;
+		return -1;
 	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return 2;
 	else
-- 
2.44.1

