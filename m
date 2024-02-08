Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89BF84E3CF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 593EA10E894;
	Thu,  8 Feb 2024 15:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bC8YoVU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0741510E894
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405456; x=1738941456;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=M7LcN7AwhDxNVLpBqCkoaXamwzYAUTiGObWAPwAImzc=;
 b=bC8YoVU1JcDQEDg496wWEzb1skKYrY2Yy0sTfoKaCusevg5yqHmsaA4Y
 JYqCX7QmgxoOaGYoOS8PjTTtMjxq33OgmdmTTE6w5cCGV4fIB/POYeHhs
 01NynXfHDAb/ow5jw6iM+Rga0yKLV9yMyNQxPu0jBDDUGCFTjM4I52ofq
 +YkBYEKh9Zhl6r1+S93TTnXGvLhqudIGyvT8UVmAYRaYYjmGp2lnaol2l
 wgtn3TfNWe9T/zvNV7iUaegkQ4O9VhTRT4cmP1nmr20aR6/yfT2pIiu+B
 BkAZSaN9twWxo4LEihnYOcBgpGuIFzQGWNFp+5Xjtbd5lUPo1GLoMzF6I A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219219"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219219"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863656"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863656"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/13] drm/i915/color: Use per-device debugs
Date: Thu,  8 Feb 2024 17:17:11 +0200
Message-ID: <20240208151720.7866-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

Switch to drm_dbg_kms() in the LUT validation code so we see
which device generated the debugs. Need to plumb i915 a bit
deeper to make that happen.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index c5092b7e87d5..ca7112b32cb3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2111,7 +2111,8 @@ static u32 intel_degamma_lut_size(const struct intel_crtc_state *crtc_state)
 	return DISPLAY_INFO(i915)->color.degamma_lut_size;
 }
 
-static int check_lut_size(const struct drm_property_blob *lut, int expected)
+static int check_lut_size(struct drm_i915_private *i915,
+			  const struct drm_property_blob *lut, int expected)
 {
 	int len;
 
@@ -2120,8 +2121,8 @@ static int check_lut_size(const struct drm_property_blob *lut, int expected)
 
 	len = drm_color_lut_size(lut);
 	if (len != expected) {
-		DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
-			      len, expected);
+		drm_dbg_kms(&i915->drm, "Invalid LUT size; got %d, expected %d\n",
+			    len, expected);
 		return -EINVAL;
 	}
 
@@ -2146,8 +2147,8 @@ static int _check_luts(const struct intel_crtc_state *crtc_state,
 	degamma_length = intel_degamma_lut_size(crtc_state);
 	gamma_length = intel_gamma_lut_size(crtc_state);
 
-	if (check_lut_size(degamma_lut, degamma_length) ||
-	    check_lut_size(gamma_lut, gamma_length))
+	if (check_lut_size(i915, degamma_lut, degamma_length) ||
+	    check_lut_size(i915, gamma_lut, gamma_length))
 		return -EINVAL;
 
 	if (drm_color_lut_check(degamma_lut, degamma_tests) ||
-- 
2.43.0

