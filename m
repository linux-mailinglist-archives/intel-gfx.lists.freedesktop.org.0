Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A3F9EE8E0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 15:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C931D10EE0F;
	Thu, 12 Dec 2024 14:32:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRTz9oC8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628FF10EE05;
 Thu, 12 Dec 2024 14:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734013922; x=1765549922;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lO4C07fxnfjzwoTLHsSzMNaJar0x+q9fDkqQbPbd5ZA=;
 b=mRTz9oC8P0efknU8T7/WSbPqtbNeupFFG/cn8/JP5RtHBxuFzG3auPio
 RsSNrYdSSADAx2aTeskqrh7+4DYbDi0G8s1QgPRB4MIL4kpLc+ELftIum
 SrRla2ljBZYOZ4BWdbojEbz2/gcHlGrv+jRU/SyKw5OWth46X7zZe5IfX
 XT4UTiv1C8cRLQR2QsGT+Lo8pLRe8U8oxnQl4W0j4D7LrtAHSr0Z5fEg3
 Hkm4ggLy+YdUgJ5wucoqqp/nhNndjMX2pnGATxk+eIzrQ9WVqpjkeRVt5
 ShIVPti/nkKoDa/JgYnOG4Siq6R/6J5q77ZQkgNYNY4E9kjZ4lIqLY6YY A==;
X-CSE-ConnectionGUID: a3Bl+pLtTgWHofEpOkHmEw==
X-CSE-MsgGUID: 4xopSBwFQ8SWGTqCl8oZpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38362122"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38362122"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 06:32:02 -0800
X-CSE-ConnectionGUID: 8C+epSoBQNiB8mgdfGUA0w==
X-CSE-MsgGUID: bSsHRKa7QIKTePaH00wMsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="101262099"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 12 Dec 2024 06:32:01 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute stage
Date: Thu, 12 Dec 2024 20:03:29 +0530
Message-Id: <20241212143329.938202-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241212143329.938202-1-nemesa.garg@intel.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
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

Add early pipe src initialization for gmch and later
initialize the pipe src during compute_pipe_src.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7be2ea11b8b0..50693b6ca58c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2534,6 +2534,13 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int pipe_src_w, pipe_src_h;
+
+	drm_mode_get_hv_timing(&crtc_state->hw.mode,
+			       &pipe_src_w, &pipe_src_h);
+
+	drm_rect_init(&crtc_state->pipe_src, 0, 0,
+		      pipe_src_w, pipe_src_h);
 
 	intel_joiner_compute_pipe_src(crtc_state);
 
@@ -5016,10 +5023,12 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 * computation to clearly distinguish it from the adjusted mode, which
 	 * can be changed by the connectors in the below retry loop.
 	 */
-	drm_mode_get_hv_timing(&crtc_state->hw.mode,
-			       &pipe_src_w, &pipe_src_h);
-	drm_rect_init(&crtc_state->pipe_src, 0, 0,
-		      pipe_src_w, pipe_src_h);
+	if (HAS_GMCH(i915)) {
+		drm_mode_get_hv_timing(&crtc_state->hw.mode,
+				       &pipe_src_w, &pipe_src_h);
+		drm_rect_init(&crtc_state->pipe_src, 0, 0,
+			      pipe_src_w, pipe_src_h);
+	}
 
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
-- 
2.25.1

