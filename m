Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AA5A35D6D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C80B010E2B7;
	Fri, 14 Feb 2025 12:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TaPOeDkz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7944010E2B4;
 Fri, 14 Feb 2025 12:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535749; x=1771071749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=laEDbm9/x9wmxq0hXEMV1vil8qcnHTnbLGCqENpA8jA=;
 b=TaPOeDkzq/uvYwBmW+wxfAj6uub4jbQySmGjWOBMIkCD7snZG7Hnf1tQ
 Cqp0xaj6C6AUT/ygcx3S/4XXWMKbC39iTb6+KJSU+6RTxELtujFODP1S7
 1ToC/1L556oFdZcj56/dnnrM6sfn4lf++mUj5E1mcPNY4grWqkv2Y9uwk
 XC7UMc4vF7aZp3gBBJzVFUt3pUH/yz5VNzKDRcS2Mx68LzcRSXvWPhjrB
 SR/6PS+PfuQwrSyctLdbRszOdSKDl81v9tbMQLpiTm1tOzdDjkRiLzXbR
 K0dYs6mMXf2318K54I1O83hAhiPqsTeTsfyHR4WmufhciDJjxffJCtw2f g==;
X-CSE-ConnectionGUID: SGkqbacyS3q0x1pWK+BxYA==
X-CSE-MsgGUID: ngpW60GCScCwxxCeuBPWUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51255988"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51255988"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:28 -0800
X-CSE-ConnectionGUID: OKwGdySXR26KKzJlVjJmmA==
X-CSE-MsgGUID: fCOQAQy3T9m4u9WNphtjxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309515"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:26 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 01/19] drm/i915/vrr: Remove unwanted comment
Date: Fri, 14 Feb 2025 17:41:11 +0530
Message-ID: <20250214121130.1808451-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

The comment about fixed average vtotal is incorrect.
Remove it.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index cac49319026d..106bfaf6649b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -276,11 +276,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	/*
-	 * When panel is VRR capable and userspace has
-	 * not enabled adaptive sync mode then Fixed Average
-	 * Vtotal mode should be enabled.
-	 */
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-- 
2.45.2

