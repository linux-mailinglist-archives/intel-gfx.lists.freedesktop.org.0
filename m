Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F23AA14A46
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 08:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABBE10EA73;
	Fri, 17 Jan 2025 07:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hq+aHNCK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620A210EA72;
 Fri, 17 Jan 2025 07:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737099882; x=1768635882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DF+d62a3GkGtbHdP9CS66btAZ5HAvAInCKnRENLEFS4=;
 b=Hq+aHNCKvX7aMdhgCE6ZeYviYB+IUbOolkpEGKK8Bp9MLjQFGXhK1HTO
 WIUeyPDydNDn0xeEpPPrbh/tYb1qbgIrkeCk3sPVreTkh4Szr9zheFkm4
 m6QSZsDiEr8fxqIZXIcci+v6h9B2ntT3iBJ8FmOBwCrw3CIBFkPxyx0Bi
 k5KyhWgLjE2dB/op0MA82Ym7B/upHSu8SEUy/mOTzuGT+l0L4ctcfrBjM
 Yuiw5qf+U5Aecgx+7ER9ADmY4lFQdeHe5TqbMuJ+7WklfmzyFShbA7kXq
 uHC4EqbIZgpwOAOyk/rkue5I38DFLYoroS/hwG0SK7SUDR55uf3zCNkkz g==;
X-CSE-ConnectionGUID: CkQ2J9ZcQ4Or+wWc0BeLfw==
X-CSE-MsgGUID: +mQaDFp7ROW1HuB5tK4vaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41454721"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41454721"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 23:44:42 -0800
X-CSE-ConnectionGUID: PeRi3ZAsStejTQLNER+k3A==
X-CSE-MsgGUID: DftCSIrdSyCq8MgXlmalgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106618501"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 16 Jan 2025 23:44:40 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v7-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v7 2/7] drm/i915/scaler: Use crtc_state to setup plane or pipe
 scaler
Date: Fri, 17 Jan 2025 13:11:19 +0530
Message-ID: <20250117074124.3965392-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
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

Pass crtc_state to intel_atomic_setup_scaler, this will help to
check if pch_pfit enabled or not and also will be useful to pass
scaler_state with the same which will be used later to store
hscale and vscale values.

-- v2:
- Fix typos. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 67b86f6f62fc..12efa4008027 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -319,13 +319,15 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
 	return -1;
 }
 
-static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
+static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
 				     struct intel_plane_state *plane_state,
 				     int *scaler_id)
 {
 	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_scaler_state *scaler_state =
+					&crtc_state->scaler_state;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 mode;
 
@@ -455,7 +457,7 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	return intel_atomic_setup_scaler(scaler_state,
+	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
 					 NULL, &scaler_state->scaler_id);
@@ -490,7 +492,7 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
 	if (IS_ERR(plane_state))
 		return PTR_ERR(plane_state);
 
-	return intel_atomic_setup_scaler(scaler_state,
+	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "PLANE", plane->base.base.id,
 					 plane_state, &plane_state->scaler_id);
-- 
2.48.1

