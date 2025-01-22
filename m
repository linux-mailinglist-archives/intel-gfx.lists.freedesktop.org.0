Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEE3A18E5B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 10:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 725E110E5B9;
	Wed, 22 Jan 2025 09:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efxPpFYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5599710E6A3;
 Wed, 22 Jan 2025 09:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737538245; x=1769074245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4nE2alQEe5k9mjtgvKIETST063OKt/9ueWcsVaa/sDg=;
 b=efxPpFYmwc8cefLCPYHoRh+HdWq6ZEIlaGknm9i+aa/1QhGRNT4Gv0GL
 7/GQAskk553PDoZno/vN+1d5drcKCs77ruVfOTU5sk8nSqxU8KkNVZ00k
 KmgEFXDFO/L67M9OcttlbwxQ2AObdUcui4tuWcd70KFwutV+xqdSqJ8w+
 nMj2AihQ1CzcISs5T1dydJn2Bn/FlL3fhTuAYuRnTAsrY8RcKwua2KqaT
 6pSRydMAxxiYXA93CC8sPx7Y8TkuQodTQq/0EQcF7rGrwVpOK0zWaMpnm
 /lW92Q8XS1UbIIRVmopqWn6gJ+T1bZtOew8+11z/0sVyAP5IN9OrZE+gW A==;
X-CSE-ConnectionGUID: U69oexSnQ5u0YedvVvHkSg==
X-CSE-MsgGUID: jxPxurfITNijr6IQmPyMMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38156760"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="38156760"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:45 -0800
X-CSE-ConnectionGUID: 0CBWvVUXSFai9LEwqGVPmQ==
X-CSE-MsgGUID: NQDSIl2kTV+Aswm0TLNArA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137929625"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.31])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:42 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v4 6/6] drm/i915/xe3: introduce a dirty rectangle state
 variable
Date: Wed, 22 Jan 2025 11:30:06 +0200
Message-ID: <20250122093006.405711-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250122093006.405711-1-vinod.govindapillai@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
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

To avoid programming garbage to dirty rectangle registers,
introduce a state variable to track the validity of the
dirty rectangle update scenarios. Program the dirty rectangle
coordinate only if this state variable is valid.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 033eb4a3eab0..ab8acb1cc090 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -91,6 +91,7 @@ struct intel_fbc_state {
 	u16 interval;
 	s8 fence_id;
 	struct drm_rect dirty_rect;
+	bool dr_valid;
 };
 
 struct intel_fbc {
@@ -1227,6 +1228,9 @@ __intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
 	if (fbc_state->plane != plane)
 		return;
 
+	if (!fbc_state->dr_valid)
+		return;
+
 	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
 			   FBC_DIRTY_RECT_START_LINE(fbc_state->dirty_rect.y1) |
 			   FBC_DIRTY_RECT_END_LINE(fbc_state->dirty_rect.y2));
@@ -1314,6 +1318,8 @@ intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
 		if (!fbc || plane->pipe != crtc->pipe)
 			continue;
 
+		fbc->state.dr_valid = false;
+
 		/* If plane not visible, dirty rect might have invalid coordinates */
 		if (!new_plane_state->uapi.visible)
 			continue;
@@ -1323,6 +1329,8 @@ intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
 			continue;
 
 		__intel_fbc_compute_dirty_rect(plane, old_plane_state, new_plane_state);
+
+		fbc->state.dr_valid = true;
 	}
 }
 
-- 
2.43.0

