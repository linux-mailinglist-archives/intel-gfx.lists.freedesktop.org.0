Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2469F557E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F9F10EA51;
	Tue, 17 Dec 2024 18:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxtXVqFj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3B710EA4E;
 Tue, 17 Dec 2024 18:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458692; x=1765994692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rTUOzksdCwicb5EB9TRA+ogGqvNVlzBNWDw7+AUHDZE=;
 b=jxtXVqFjdqHZKXWagXF2Bm4N5syJ0PLXFKp+P/tqTekQ563SamknaNd6
 PXEys6bqlPenuqC1GrM2lWEajfRGSmwQpZJ/xeCG7PBwj/dU9bus4X6GR
 uAlxWJleiH/M+UUs63LzdXc6aVee9IBxoV8mTjrVPxdCXlbp2aCfXQSXh
 jJI0X1Zkxwy+dKVjWZpb+FCrEKrLUuSOsyAdzVAP11rfnH8Yo+xeItA7Q
 klLrcoLJyfJag/iDOck37GY4jKQDfKfOdLgQoyAVUAS6lx0Jh2wPdHwV2
 cfczMtmZ86CpV9TnTOefNrqyN1/blMhY8J6e5FU4dWl/djmwwPcpD3NCU g==;
X-CSE-ConnectionGUID: 9dWmflKORjeXGIPMhCGyPA==
X-CSE-MsgGUID: Zg6k8LhJQxS3CnBKMdH/Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837144"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837144"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:52 -0800
X-CSE-ConnectionGUID: XWzk+WXcSLKzPbb4kGu+qw==
X-CSE-MsgGUID: +S3YdFBjTSO2rQMtJrHbuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442820"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:51 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 3/6] drm/i915/scaler: Use crtc_state to setup plane or pipe
 scaler
Date: Tue, 17 Dec 2024 23:37:07 +0530
Message-ID: <20241217180710.1048355-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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

Parse crtc_state to intel_atomic_setup_scaler, this will help to
check if pch_pfit enabled or not and also will be useful to parse
scaler_state with the same.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index e113c6ba4de7..1c65b53b45f0 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -308,13 +308,15 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
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

