Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD139F7C07
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E0310ED01;
	Thu, 19 Dec 2024 13:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJ+zMq2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3745A10ED01
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613727; x=1766149727;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=APgqNDVby90F59SjCPCpgA9pfMr5qFkzA/mwwMR9WWo=;
 b=VJ+zMq2KcJHcl7VS1nymlN1YhsnN4ZvlfDxsxgZSJ3ADTnIN+ec6nKOP
 3yRRt5BHFHYdCbKBe7kEY07+7o0J+bqzyPqRDtrgfdkMhag1OUDsqyF33
 JvZovtDWuJaKNxgDS8kzLTJ235VIeQPKkHfa/WCJeQSKYHte6/h9rZQWH
 ejp9PqZX1VFjddX4kyr8p+4cfSXgkDobTST80s27uSbuzJvKajM91NubK
 Fd16BIBvRHdV75k203PtujIiJXDHZoTlzzv6big+Qcga9EmCW32Cn9RCR
 Z6DGyAYiNmsHjkmiKkj5dwQ5YnzNEyowR75EMnXaW64ZNSSaC3P4DEA4p Q==;
X-CSE-ConnectionGUID: LcG6lBYVQkmEqHBvN6QAKQ==
X-CSE-MsgGUID: DcpZdsQSRTWBd+VAB28Bgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798146"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798146"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:47 -0800
X-CSE-ConnectionGUID: e9oZjrZySFWidJf6gOFqtA==
X-CSE-MsgGUID: RuPGljHLQJKrX5QE7LI1tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403321"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915/scaler: Pimp scaler debugs
Date: Thu, 19 Dec 2024 15:08:25 +0200
Message-ID: <20241219130827.22830-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Include the standard "[CRTC:...]" information in the scaler debugs
to make life easier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 25 +++++++++++++++--------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cbc71e44fcbb..f6d76ef1a854 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -166,7 +166,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	if (DISPLAY_VER(display) >= 9 && crtc_state->hw.enable &&
 	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
 		drm_dbg_kms(display->drm,
-			    "Pipe/Plane scaling not supported with IF-ID mode\n");
+			    "[CRTC:%d:%s] scaling not supported with IF-ID mode\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -186,8 +187,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 			scaler_state->scalers[*scaler_id].in_use = false;
 
 			drm_dbg_kms(display->drm,
-				    "scaler_user index %u.%u: "
+				    "[CRTC:%d:%s] scaler_user index %u.%u: "
 				    "Staged freeing scaler id %d scaler_users = 0x%x\n",
+				    crtc->base.base.id, crtc->base.name,
 				    crtc->pipe, scaler_user, *scaler_id,
 				    scaler_state->scaler_users);
 			*scaler_id = -1;
@@ -207,8 +209,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	    src_w > max_src_w || src_h > max_src_h ||
 	    dst_w > max_dst_w || dst_h > max_dst_h) {
 		drm_dbg_kms(display->drm,
-			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
+			    "[CRTC:%d:%s] scaler_user index %u.%u: src %ux%u dst %ux%u "
 			    "size is out of scaler range\n",
+			    crtc->base.base.id, crtc->base.name,
 			    crtc->pipe, scaler_user, src_w, src_h,
 			    dst_w, dst_h);
 		return -EINVAL;
@@ -224,16 +227,18 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	 */
 	if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
 		drm_dbg_kms(display->drm,
-			    "scaler_user index %u.%u: pipe src size %ux%u "
+			    "[CRTC:%d:%s] scaler_user index %u.%u: pipe src size %ux%u "
 			    "is out of scaler range\n",
+			    crtc->base.base.id, crtc->base.name,
 			    crtc->pipe, scaler_user, pipe_src_w, pipe_src_h);
 		return -EINVAL;
 	}
 
 	/* mark this plane as a scaler user in crtc_state */
 	scaler_state->scaler_users |= (1 << scaler_user);
-	drm_dbg_kms(display->drm, "scaler_user index %u.%u: "
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] scaler_user index %u.%u: "
 		    "staged scaling request for %ux%u->%ux%u scaler_users = 0x%x\n",
+		    crtc->base.base.id, crtc->base.name,
 		    crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
 		    scaler_state->scaler_users);
 
@@ -421,8 +426,8 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 
 		if (hscale < 0 || vscale < 0) {
 			drm_dbg_kms(display->drm,
-				    "Scaler %d doesn't support required plane scaling\n",
-				    *scaler_id);
+				    "[CRTC:%d:%s] scaler %d doesn't support required plane scaling\n",
+				    crtc->base.base.id, crtc->base.name, *scaler_id);
 			drm_rect_debug_print("src: ", src, true);
 			drm_rect_debug_print("dst: ", dst, false);
 
@@ -430,7 +435,8 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 		}
 	}
 
-	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%u to %s:%d\n",
+		    crtc->base.base.id, crtc->base.name,
 		    crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
 
@@ -530,7 +536,8 @@ int intel_atomic_setup_scalers(struct intel_atomic_state *state,
 	/* fail if required scalers > available scalers */
 	if (num_scalers_need > crtc->num_scalers) {
 		drm_dbg_kms(display->drm,
-			    "Too many scaling requests %d > %d\n",
+			    "[CRTC:%d:%s] too many scaling requests %d > %d\n",
+			    crtc->base.base.id, crtc->base.name,
 			    num_scalers_need, crtc->num_scalers);
 		return -EINVAL;
 	}
-- 
2.45.2

