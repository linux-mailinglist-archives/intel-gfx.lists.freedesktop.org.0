Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B44ADC44C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 10:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE3F10E575;
	Tue, 17 Jun 2025 08:14:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sv39yUS3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710EC10E575;
 Tue, 17 Jun 2025 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750148039; x=1781684039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ve6+aAHaveY3WrFI2oizULCvEnuJb+l3xm2TlccVE2g=;
 b=Sv39yUS3A4QWFO2KTQuT+eJy7t790O463YT6odGD69JkOQ15FJcgozvB
 rpZjgiT4dR/WRm7RGDRbiMsw0Gr+dd5ed/9rGN+w7GIAddRX+sa3vPTfn
 vwTt2Dn3PE74bstvBWIXdl6Vvj0F1AHLVa9O7Acsm93WOJKRlczYDl1eb
 296R5CpDGkmcguSZkKOI/pOsjdt2MCnyhWBUeZ+baQFqjY7WJ7YZT9qCo
 6qE3+mTwTMCafrVjZRS/X7zdiNJxnDaCaJzLcCPsSCU1+tJGv6MwiLJvF
 85WTYcnpDOJ3ewaNxhQPjHnUQ4PlTyw/IoNDR+DoPXEOLhBk3Nqsd6mFS w==;
X-CSE-ConnectionGUID: 5hhHWWhgTiKaQzJvXc1mnA==
X-CSE-MsgGUID: 3kGiq+OMRZGaa/mcO6NIiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52016123"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52016123"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:13:59 -0700
X-CSE-ConnectionGUID: qdKdHSgPRYumj2R1w1jabQ==
X-CSE-MsgGUID: K02szn6OSqijjFrp6FqSdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="153597453"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:13:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [RESEND 3/5] drm/i915/plane: make intel_plane_atomic_check() static
 and rename
Date: Tue, 17 Jun 2025 11:13:38 +0300
Message-Id: <9da965c23c1485625d8713152751470ee758d540.1750147992.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750147992.git.jani.nikula@intel.com>
References: <cover.1750147992.git.jani.nikula@intel.com>
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

intel_plane_atomic_check() isn't used outside of intel_plane.c. Make it
static. While at it, rename to vacate the name for subsequent changes.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_plane.h | 2 --
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f68432d28d36..fbbe957d3f04 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -734,8 +734,8 @@ intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 	return NULL;
 }
 
-int intel_plane_atomic_check(struct intel_atomic_state *state,
-			     struct intel_plane *plane)
+static int plane_atomic_check(struct intel_atomic_state *state,
+			      struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_plane_state *new_plane_state =
@@ -1542,7 +1542,7 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 		return ret;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		ret = intel_plane_atomic_check(state, plane);
+		ret = plane_atomic_check(state, plane);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
 				       "[PLANE:%d:%s] atomic driver check failed\n",
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 10a94b9a135c..4d69a868265c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -69,8 +69,6 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
 					struct intel_plane_state *intel_state);
-int intel_plane_atomic_check(struct intel_atomic_state *state,
-			     struct intel_plane *plane);
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc);
-- 
2.39.5

