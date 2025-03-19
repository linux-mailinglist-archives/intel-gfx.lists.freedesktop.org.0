Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86998A68E41
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 14:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08DCC10E509;
	Wed, 19 Mar 2025 13:52:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gl6Uyq3j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB4710E502;
 Wed, 19 Mar 2025 13:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742392319; x=1773928319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5CPmer+RG7oCyu74Ydi6yGP0LAlysShFSyJym+XvNLs=;
 b=gl6Uyq3jikmjDPc2chEey5coptZjdQXsf/RNdrxbs5h4D1FrFwjva+pj
 J40jDPteuqJMhqa1j7+vWijPzS7ooO4dW1H7FEiIe0YzQLUSrG/xyywr+
 08vf107o3eRyIi5IQemwYwMhMmNtWaIZfx+W1qIFOViihw8FYlJu/jq30
 WU1FweqnRyHAMTrb9mIBW0dwY9L+jXQdN9KqhJaR9xBXqIL2wfnzkwW3Z
 wDXeaEyK8ZLhw7WodluJyFl1Ka/48AY1pSEbfuBObehX4EF2l2FRZeZuQ
 7jHO6iwuKSvMLr+muio9alyy4s8k9k9B3k0bDY7gmKCJOhMSUNrq31oep A==;
X-CSE-ConnectionGUID: D07i47FzSnuXLAPpO2EncQ==
X-CSE-MsgGUID: pPcQqf/0Q5q21I8560dqog==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="53796106"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="53796106"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 06:51:59 -0700
X-CSE-ConnectionGUID: 8vyZZVqtSjeGI1qj3euRBA==
X-CSE-MsgGUID: L6Xh84s1TP6VQvdAENO2Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123121445"
Received: from vpanait-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.245.246.3])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 06:51:56 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com,
 jeevan.b@intel.com
Subject: [PATCH v2 2/2] drm/i915/fbc: remove panel_replay dependency from fbc
 wa checks
Date: Wed, 19 Mar 2025 15:51:30 +0200
Message-ID: <20250319135130.122703-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250319135130.122703-1-vinod.govindapillai@intel.com>
References: <20250319135130.122703-1-vinod.govindapillai@intel.com>
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

Panel replay is supported from display 14 onwards. So no need
to check the panel replay status in the previous gen workarounds.
In the newer panel replay, selective update is supported and it
is suffice to check selective update status for the workarounds
in FBC use cases.

Bspec: 66624, 50442
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 92b00da4c0ab..2dc8ff734b11 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1471,8 +1471,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * disabling PSR2, keep FBC disabled in case of selective update is on
 	 * until the selection logic is implemented.
 	 */
-	if (DISPLAY_VER(display) >= 12 && crtc_state->has_sel_update &&
-	    !crtc_state->has_panel_replay) {
+	if (DISPLAY_VER(display) >= 12 && crtc_state->has_sel_update) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
@@ -1480,7 +1479,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(display, 12, 13) ||
 	     IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0)) &&
-	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
+	    crtc_state->has_psr) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
 	}
-- 
2.43.0

