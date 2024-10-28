Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750F69B3AC3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610A110E562;
	Mon, 28 Oct 2024 19:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+2CnHf5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB9810E563;
 Mon, 28 Oct 2024 19:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730145021; x=1761681021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4VaNKbnFdAGc2XZ+jej1JP3G3Fk2zVoBpToStKeFi/c=;
 b=C+2CnHf59B/OglHWOFH5HjB2sTAIxOCq+yLJT3Ku7y5Lf0+SeC6a20OI
 0ChnAUzMrCxmivQFev8zuBccz15sTLebz0I/LM7S88FKcOSbzrBoaO6/Z
 gE3PQY/DBuu91QuoYqTpIDuWdcxB0mMi4ZF+nTg85lTZweiKkojz01VQi
 6HzZBafEXLtXZ2WJ9fILzw5EFE1rsatSK37ihbDJIc4/75UYPEhL8Xjr0
 uJoRPm8H52cubnxPOJiz7e/rxT7dbRsQ4nyGeLghnP8+gT4bShiXWXUxV
 qGiQdvMk04UjibUHyhV7Ml6WXYWhPSyGs4j7tXLaxBR75qFIKdXLdqOCc A==;
X-CSE-ConnectionGUID: QmYI7l+UQUyRwm8qgFcqzw==
X-CSE-MsgGUID: 6RSXXm5jQLeS9vTN3I9i8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40858006"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40858006"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:50:20 -0700
X-CSE-ConnectionGUID: tm+g77GGRnm+K4QOzmrwkQ==
X-CSE-MsgGUID: G+oyyRsYRBGGmrq0FLMvNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86860039"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:50:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 15/16] drm/i915/vblank: drop unnecessary i915 local
 variable
Date: Mon, 28 Oct 2024 21:48:48 +0200
Message-Id: <c925fd0a56ba0a9183b62b7cc0ead0e37264f024.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Use struct intel_display where possible.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index d18b8292be49..9278d0b2ae74 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -195,7 +195,6 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
 int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	/*
 	 * The scanline counter increments at the leading edge of hsync.
@@ -225,7 +224,7 @@ int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 */
 	if (DISPLAY_VER(display) == 2)
 		return -1;
-	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	else if (HAS_DDI(display) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return 2;
 	else
 		return 1;
-- 
2.39.5

