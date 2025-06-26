Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D835AE9B05
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECFE10E25A;
	Thu, 26 Jun 2025 10:17:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsfKmV3s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4FF10E25A;
 Thu, 26 Jun 2025 10:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750933037; x=1782469037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hi/Ikf0w1zEtOmekx0II1ps6HCSFn1HqQSm+p5OUSaA=;
 b=IsfKmV3snQNIZpI3gkceXs5TufuLMyfQ1TghzlbIUK4mAbW9v12vJkqN
 M9mxKe4/naWhShtcYIogD1+6n34g9fFfiknNw2BRoXYMJngB5YYZCyptF
 2DXraXPthyM3m6OJrwH5f6eY+nrvz69M1yqS4aM2nF/mg9Hu624xxEyI6
 UBiwpE27w0evu3mvecsDRtwn0N6GmZrvno5tWOK30gYgGnLD/j8YDGrGM
 XEMvoRbjJrrUt2vF6duWQyJHAR5gKFtxq3EoP303v4PSllLZECgW4sR9g
 AA4GQdAXD8WePkoaY+a1ljxvn3BJKjrlmchK+FcZDCHXBgyJlXtHn5xkY g==;
X-CSE-ConnectionGUID: w0TuhJIzQS60NQCJ9LfaJA==
X-CSE-MsgGUID: jcSqaBurQ16gFZGL5O3QkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="63480517"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="63480517"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:17:17 -0700
X-CSE-ConnectionGUID: N22umSneSLuXrXij1D8aHw==
X-CSE-MsgGUID: ryNAJwbVS1+VzOt2ddkM3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152996908"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:17:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/fb: use struct intel_display for DISPLAY_VER()
Date: Thu, 26 Jun 2025 13:17:12 +0300
Message-Id: <20250626101712.1898434-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Convert a leftover struct drm_i915_private use to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 763b36c4de10..13cb9588ee3a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1286,10 +1286,10 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 
 bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 
-	return DISPLAY_VER(dev_priv) < 4 ||
+	return DISPLAY_VER(display) < 4 ||
 		(plane->fbc && !plane_state->no_fbc_reason &&
 		 plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL);
 }
-- 
2.39.5

