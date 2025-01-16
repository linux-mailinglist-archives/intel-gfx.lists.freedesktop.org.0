Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FDDA13F8F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBCB10E9D2;
	Thu, 16 Jan 2025 16:34:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ju6FlMz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189DE10E9D2;
 Thu, 16 Jan 2025 16:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045288; x=1768581288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bme62NuvSUl9gIg8OPNGDs3wSbRVLCwdP2vUtKFG67c=;
 b=Ju6FlMz8kIRlvPqAZFFIfeTmj84/3wbJwvJxwtTJA9qqw6tzwTGm5M8r
 9rVjQRPmkrK78d+QTq1G7mnJt3yoyhcXEthoPEnd76IZpff5FlVo+5TgW
 gxekSIJrEcjIREf3vjtTHAN4YZBEP6B7UxaM5DBI+pURw6KvcugKSGEfT
 1kGZ0WugXA6VTcLcCJ89Vhx5HVNKMZZzURG1+CZntEnXu3a5HzW6JETwx
 Y3K4/jTmx2YbSfcWCdtR/jcLFlxxkO1+rHYW92vve4wE+S3MHjwKnqXmk
 7EgSOv0OpyBVNoEFHsZAj624PYkhQ6JnLmD6obgtf6YUOwVtaa2JvIikI A==;
X-CSE-ConnectionGUID: DjRzHPwBR6ipX6OlgnRXOQ==
X-CSE-MsgGUID: spF70prxTE6JXlMQBv8l/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37602028"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37602028"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:34:48 -0800
X-CSE-ConnectionGUID: pMxkjVwSRFyyU9onP/T4LQ==
X-CSE-MsgGUID: djx2uPuUS0GOK1SQq1llvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109600779"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 16 Jan 2025 08:34:46 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v6 2/7] drm/i915/scaler: Use crtc_state to setup plane or pipe
 scaler
Date: Thu, 16 Jan 2025 22:01:25 +0530
Message-ID: <20250116163130.3816719-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
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
2.48.0

