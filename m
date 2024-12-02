Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6EC9E048D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7794810E763;
	Mon,  2 Dec 2024 14:14:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4nMUr/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79AA910E75E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148888; x=1764684888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lewTZBgh1+9yfkRb859mL9yGruawPh6t1hUo/+7tOd0=;
 b=g4nMUr/j1k4y8AofMegG5TjJu5W40Y+oTjjWBpu94+TwOIGLoI9ZnfBB
 sIX6sY0JgFSQpDJ3NAF2pmlibCV/SVZspj84/6FHsu+ErJkTRsbjylqp/
 F0qY7RgsleC47101u/KeE8abF39Dk23Wzrwl5cE/82zwKaQmU9LCaoGtn
 x66BAKVIM/6AVN3+sHxrM4+dNruUvSiXsoxZeqL8uaC7AXVQl+b54rzBT
 L2GMiDDBD/6FaYlWLubCwgLxxmPsHOza5GFRmrIXgEh/UUPd1ao+T6fCG
 N160/HGlqaSKDmMO2UcKEJzlBRiNPEspuToj4gIL2ecRdOYnSqUE9zQ7d g==;
X-CSE-ConnectionGUID: YCOx/gedRl6JmfmA5YTOhA==
X-CSE-MsgGUID: sqqWAy+4TxKq7WqT946YsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807265"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807265"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:48 -0800
X-CSE-ConnectionGUID: utdtXNwSStCEVOjEPhV5/w==
X-CSE-MsgGUID: vlwR9ucjR0SBLe1tcMpkZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287754"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Date: Mon,  2 Dec 2024 16:14:22 +0200
Message-ID: <20241202141424.21446-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

Wa_22011186057 (some CCS problem) only affected ADL A-stepping,
which I presume is pre-production hw. Drop the dead code.

Bspec: 54369
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7eae5fe8c3a5..57e8e536ee1f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2589,10 +2589,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
-	/* Wa_22011186057 */
-	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
-		return false;
-
 	if (DISPLAY_VER(i915) >= 11)
 		return true;
 
@@ -2614,10 +2610,6 @@ static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
 		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
 		return false;
 
-	/* Wa_22011186057 */
-	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
-		return false;
-
 	return plane_id < PLANE_6;
 }
 
-- 
2.45.2

