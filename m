Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC78D9AE4E8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5AA10E929;
	Thu, 24 Oct 2024 12:35:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNIoWzZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C886E10E920;
 Thu, 24 Oct 2024 12:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773305; x=1761309305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4VaNKbnFdAGc2XZ+jej1JP3G3Fk2zVoBpToStKeFi/c=;
 b=TNIoWzZG4jasZzPEZjbIEctzbv4lbs/tBm/pYl3Xx7Ru8L2BHZtA06lv
 g3p5Y3ZPcdh5Qp4jXzUZ2QexcohBJTZqVEn1ESUrGQ5BD8TixKq6dbJIw
 O3Mdx5c3vkAs7b1HgFbxIUrG5gEzyyWc5GVyXdgI4cFCljQOdj3CVWjXz
 zO1UTqG2YCdeG2g6zSCT5UdE7udnXiMVJb/jyUMioxe4ePC6QqZryAIHC
 6YGRRp30muhayqI5DuP2bwavfqZNC6lzImSIUHYkfStSLs6Cde4Uwrzx8
 o1yQO4DQ0ngfkEIO0qKlEEOSjidCb1KSkMALPrAD5f9REyBtow4txcTBH g==;
X-CSE-ConnectionGUID: xAeLD3YIT9edo1qW8nZwgg==
X-CSE-MsgGUID: xIMjLZSqQdO73ZKkvTywRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51942986"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51942986"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:35:04 -0700
X-CSE-ConnectionGUID: IZNyhyrlQb6A88woijwLFQ==
X-CSE-MsgGUID: OD3g5tI1SHycO+8w/+0LAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81001266"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:35:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 15/16] drm/i915/vblank: drop unnecessary i915 local variable
Date: Thu, 24 Oct 2024 15:33:41 +0300
Message-Id: <9401adf69d522c1a6c4ae1bdf9327082956ef5c0.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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

