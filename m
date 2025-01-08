Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD06A05BC8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD96910E89B;
	Wed,  8 Jan 2025 12:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E95iBurG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646AB10E894;
 Wed,  8 Jan 2025 12:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339944; x=1767875944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MkHbAyAkzfU8IzkPLwpgO+KmcHgHhCH2CGNwUp+UBYY=;
 b=E95iBurG2aoPf1RqPP3H46r/Xo5RtmKHEeN2J1+f2Uqrr0bTxnBaN9+M
 GKBNagOgc3zLo2iCngccsHT5nN6Wl/CRlh6o8Y/aFbXAtBdiD3ObQdROF
 vzlRbp0WP9FBtIoLzsRvlcUdSri+OoDktJ53Naz7bp9TJAvD7cz0Jbkgp
 zvyeqjWUbT/iscWimp+iEkGazwBu3xlfEcx6jJ2lmbEvFsMWRldY9OzHy
 BIFzbk7LXyeJXrcVFGWEXuVWapSxAHVvUC6abuAkBGbHSAX1KvHvsxkrJ
 VMkd6EaYkSm5lfEG5PLLXVFc53QXI0DXrxne5ew0HagR9wyI33eKtp1/R A==;
X-CSE-ConnectionGUID: 9AzFCYh5R6qo/ZsqVKam6w==
X-CSE-MsgGUID: oulHo3EBSe+smgn8IHrArg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855367"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855367"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:04 -0800
X-CSE-ConnectionGUID: f+IEjwPoR8ShuB/HGUWYUQ==
X-CSE-MsgGUID: sZ1CuxqDSEKX+rMr/3/7gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886093"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:39:02 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 2/7] drm/i915/scaler: Use crtc_state to setup plane or pipe
 scaler
Date: Wed,  8 Jan 2025 18:05:36 +0530
Message-ID: <20250108123541.2101643-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
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
- Commit message updates. parse to pass. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 6c69545fe172..4f838220f880 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -309,13 +309,15 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
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
 
@@ -444,7 +446,7 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	return intel_atomic_setup_scaler(scaler_state,
+	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
 					 NULL, &scaler_state->scaler_id);
@@ -479,7 +481,7 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
 	if (IS_ERR(plane_state))
 		return PTR_ERR(plane_state);
 
-	return intel_atomic_setup_scaler(scaler_state,
+	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "PLANE", plane->base.base.id,
 					 plane_state, &plane_state->scaler_id);
-- 
2.46.0

