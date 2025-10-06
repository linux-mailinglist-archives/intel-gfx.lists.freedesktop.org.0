Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94D4BBD0D2
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B75D10E3BA;
	Mon,  6 Oct 2025 04:42:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PmqDsZmt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C02C10E3C5;
 Mon,  6 Oct 2025 04:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725751; x=1791261751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JnqaRGOZedc6JhwlZxKtRQQUczsGIxBNyQQEsmFGZkk=;
 b=PmqDsZmtiVgDqEd5RyjEPd5XgD6ekUQuJf8aZ8FgpAZ+hVX+EBOhdz3y
 jf6pQzBpx5E/OqYjSvxz5nwpv6zSkOH7XmxrPUrF/caD4GQGYD7EScB9a
 k3RHTmDCNmZ4xs5UFKn3Ov+hUYZc4Mhfh0SMWQBi6DuXI5krysksCd3XO
 5roBywlAboPFaFaw6YfAj9AWA2SITegMYmIKHb9uXoG3hKKYz4lE9172r
 DpEpiuVb6AbTv5mfb/EnJSREDD5CPL5tiXB/LtPE433LObNqG2FECNqc0
 ZKEMDCfjgu6xEjGG9m7KA3uG4ccRPaebYY2mHW/pv9NnnavVhnOmmIHfj A==;
X-CSE-ConnectionGUID: XJ3J/gvJR1aLaYljboWG3Q==
X-CSE-MsgGUID: RiX0LWC8R5WxxuN/SYZKdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996433"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996433"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:31 -0700
X-CSE-ConnectionGUID: /YusdTObS1G1Rt3LeET5JA==
X-CSE-MsgGUID: k/gXHJBcR2OicyKtRrEpiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063041"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 15/16] drm/i915/display: Use optimized guardband for always-on
 VRR TG
Date: Mon,  6 Oct 2025 09:58:51 +0530
Message-ID: <20251006042852.263249-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

As we have all bits in place for using the optimized guardband,
enable it only for platforms that always use VRR TG for now.

For remaining platforms continue to use the guardband equal to the
vblank length.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 30 +++++++++++++++-----
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1964e41b5704..6f61278a36c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2411,16 +2411,32 @@ static void intel_crtc_compute_vrr_guardband(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	struct drm_connector_state *conn_state;
+	struct drm_connector *drm_connector;
+	int i;
 
-	intel_vrr_compute_guardband(crtc_state);
+	for_each_new_connector_in_state(&state->base,
+					drm_connector,
+					conn_state, i) {
+		struct intel_connector *connector;
+		int vblank_length;
 
-	if (intel_vrr_always_use_vrr_tg(display)) {
-		int vblank_length = adjusted_mode->crtc_vtotal -
-				    (crtc_state->set_context_latency +
-				     adjusted_mode->crtc_vdisplay);
+		if (conn_state->crtc != &crtc->base)
+			continue;
 
-		adjusted_mode->crtc_vblank_start +=
-			vblank_length - crtc_state->vrr.guardband;
+		connector = to_intel_connector(drm_connector);
+		if (intel_vrr_always_use_vrr_tg(display)) {
+			intel_vrr_compute_optimized_guardband(crtc_state, connector);
+
+			vblank_length = adjusted_mode->crtc_vtotal -
+					(crtc_state->set_context_latency +
+					 adjusted_mode->crtc_vdisplay);
+
+			adjusted_mode->crtc_vblank_start +=
+				vblank_length - crtc_state->vrr.guardband;
+		} else {
+			intel_vrr_compute_guardband(crtc_state);
+		}
 	}
 }
 
-- 
2.45.2

