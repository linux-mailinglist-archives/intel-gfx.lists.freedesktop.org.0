Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A27ADC44F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 10:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D84510E581;
	Tue, 17 Jun 2025 08:14:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyIjXJFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDBD10E574;
 Tue, 17 Jun 2025 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750148048; x=1781684048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2JLoJ5XuJrHBhLfRKE7G8iVyhbtVGa5/17OeBt+ldQ4=;
 b=VyIjXJFbV/7NEuFiClqNuCbwbLBCcFOWy78fm4gLc2+i2o7m761cUV/A
 qpiodeEpqmB6tAJDJJt6f/SQl6dDYtknxyUtjTUerLAACwknHfICHymhD
 FXnR69TsFTi5160AxBGuqGClJB/cELkOXlWjxNgaend9fvs9T1Hh6LtG+
 dsVSrEXJFlLeCbuwtX8pI6Uta5GzEsmthDzlXEAmgrHbbXgZMP0oWewNx
 Dnz4vB3ou81sCZtaEhclM3wTW/l4AKbFQlj4n5S3xZ+OAj87C3wFIfP5F
 972oS2o+Mo1ApGvYtpzNrxjRKQ9kgoy23oqrI7wMO0CRn3atdYueAxmjo g==;
X-CSE-ConnectionGUID: aFeVNNQoTG2/AKS0lnEQug==
X-CSE-MsgGUID: TCJ1JpbjTbqQujjidomWFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52016143"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52016143"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:14:08 -0700
X-CSE-ConnectionGUID: h5D/td8ZT+qxOPWS9JzkHw==
X-CSE-MsgGUID: bxPGlnn4Se2mRi1cHJzKXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="153597503"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:14:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [RESEND 5/5] drm/i915/plane: rename
 intel_atomic_add_affected_planes() to intel_plane_add_affected()
Date: Tue, 17 Jun 2025 11:13:40 +0300
Message-Id: <c37bc557f831090c934b76d03485823bd45ebba8.1750147992.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750147992.git.jani.nikula@intel.com>
References: <cover.1750147992.git.jani.nikula@intel.com>
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

Rename to follow filename based naming.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane.h   | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bd81ff9e3854..978c524546c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5479,7 +5479,7 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	ret = intel_atomic_add_affected_planes(state, crtc);
+	ret = intel_plane_add_affected(state, crtc);
 	if (ret)
 		return ret;
 
@@ -6195,7 +6195,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		ret = intel_atomic_add_affected_planes(state, crtc);
+		ret = intel_plane_add_affected(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 2ac7a4e655f5..11aeb7435b05 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1433,8 +1433,8 @@ static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
+int intel_plane_add_affected(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 5cb995b2940f..4ef012c08fa4 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -83,8 +83,8 @@ void intel_plane_helper_add(struct intel_plane *plane);
 bool intel_plane_needs_physical(struct intel_plane *plane);
 void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
 					 struct intel_plane_state *new_plane_state);
-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc);
+int intel_plane_add_affected(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
 int intel_plane_atomic_check(struct intel_atomic_state *state);
 
 u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
-- 
2.39.5

