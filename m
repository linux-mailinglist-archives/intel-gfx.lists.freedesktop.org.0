Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2EFA98653
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA9F10E448;
	Wed, 23 Apr 2025 09:46:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nufewSs/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0826C10E447;
 Wed, 23 Apr 2025 09:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401603; x=1776937603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=15qz6NOaWUSQT2GML6BEdzNB6wVG8f3hPD38/kjbB5o=;
 b=nufewSs/oOc7gh1yUdbftjXBZFsCJ+ah3ophqT3eZikYDyb+uOkLgGgC
 mhqv+YDxljVBikRV8hSfT62VM5mGROE4wlWQd01RzhdqSWzSZ7RGcyibm
 3wlWbr7uj1H+wDPr5TIuWFmG966AFDrJdugUFCydOu3uadfmL37gtkMGq
 tqw4LrSACl3AJMhZGs7heTCwXr5uSj8blp2Ri8OdJRkxZsJayY/z3rXKB
 ErivxioTDmNidwDIboBUKIJMm+3zc+MT5oWpiE//UWz2N8DArambKZtvR
 9W+H846XLf0ajlOk8MpxU5RvefrjBXXez0hwpLwjbh/eArcXztBdMANIK w==;
X-CSE-ConnectionGUID: PTaUQZO4SpKYtRF9BFL2sA==
X-CSE-MsgGUID: Ex6bXnkNRwiF8SlrD7aN/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58357929"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58357929"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:46:43 -0700
X-CSE-ConnectionGUID: xn9qqDlbRhKE59rB0Gc6RA==
X-CSE-MsgGUID: XEYPp6GwSM+Lh1fQ5ZsDSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811100"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:46:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 01/11] drm/i915/alpm: use variable from intel_crtc_state
 instead of intel_psr
Date: Wed, 23 Apr 2025 14:53:24 +0530
Message-Id: <20250423092334.2294483-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
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

From: Jouni Högander <jouni.hogander@intel.com>

Currently code is making assumption that PSR is enabled when
intel_alpm_configure is called. This doesn't work if alpm is configured
before PSR is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 55f3ae1e68c9..1dbaa8f250aa 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -317,14 +317,14 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(display) < 20 ||
-	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
+	    (!crtc_state->has_sel_update && !intel_dp_is_edp(intel_dp)))
 		return;
 
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
 	 */
-	if ((intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) ||
+	if ((crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp)) ||
 	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-- 
2.29.0

