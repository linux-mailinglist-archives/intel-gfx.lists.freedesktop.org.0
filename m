Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515E1A16CA1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 13:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA35F10E3F0;
	Mon, 20 Jan 2025 12:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XuehmTZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B4B10E3E8;
 Mon, 20 Jan 2025 12:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737377875; x=1768913875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DF+d62a3GkGtbHdP9CS66btAZ5HAvAInCKnRENLEFS4=;
 b=XuehmTZJyZgKNEoEGtzIkHJzIp9TDiGVUJ1N0c4AUYg9Ivzk70+xeLXo
 6hrvLsUd+rub/rLq2dNkiSpvC78yfrXqM51LetQxdynrmRGfbMQWZHeN1
 e09QNPEgw+PujkZ8xmRJjMn2FDZCx9K1OGStEHcjbsx/5C1ZrnTA8EJME
 t+pOGb3zbFiTsOsOCKMQ2i43FUH2TuOfYqqfbTEO41bOCSWNnuGQcOIzr
 R5U8qupWgOvNWQDDw3HOq3lBOpeot4gbrzVXhPkRjw3Jdu5J+IjNhjhZz
 7Qhi1TNQrJY0qFYr5HUgMlDcioVv513K5+g5sAOvn2oiqDraZFHVxYbFe Q==;
X-CSE-ConnectionGUID: ZZihigjmQGm3L+LG3gA/BQ==
X-CSE-MsgGUID: KREjZIglTOuzSLbfaMvqmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37930628"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37930628"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 04:57:54 -0800
X-CSE-ConnectionGUID: YBHyfpHZQKWwYwCOvYwGNg==
X-CSE-MsgGUID: OpO+hb7PSnenXHIwd4Z7iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106326415"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 04:57:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v8 2/7] drm/i915/scaler: Use crtc_state to setup plane or pipe
 scaler
Date: Mon, 20 Jan 2025 18:24:34 +0530
Message-ID: <20250120125439.4188626-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
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

