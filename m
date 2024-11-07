Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963A9C05C2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDA510E81E;
	Thu,  7 Nov 2024 12:27:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2vkqYbV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0020C10E823
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982442; x=1762518442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1A5lbfElIAILqeKrQAMGw6fBoUfEJ4MwSEhJQHiExYA=;
 b=I2vkqYbV9hoJqWa4X9onbUwshW+t0/OFhY7UhPazt8DRo/hYmSldEsFo
 RXHo9Qv3vVFS2S9iOhcHTz577GHQcV43FOUUv9SjO0g3lN8NzamIwL4Bj
 yrzVWfIkzREkYe1r3um9fJd5YwD7wtAgQWG53oGpF7HptLJ3MvFbdHkvd
 sWEGnhmZjq6zvhUAtL7MymYlLU8xliTMNhzX/IkpTz+lmUCsa/Jfkk0XU
 43WlKOXyOkVjdQTShVEyEyPoObgJsTMyl9gGrJDf3eAT/nIcnPjbjevR6
 C7DgWFEAMdCFxHGrpS6aNIc0T2BG0SQYhwdYLyZ4oRbn/rwuBAQSAIbr6 A==;
X-CSE-ConnectionGUID: PDei8XxcTh+xelyeDdv7YA==
X-CSE-MsgGUID: t9hYzinASv6ybI96iZ9beg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34516046"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34516046"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:22 -0800
X-CSE-ConnectionGUID: Kpw9Phh9TmelPCYuJ1lFSQ==
X-CSE-MsgGUID: AnzeYYa9RxqyNF0gqmWUmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189500"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:27:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:27:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 7/8] drm/i915/scaler: Make scaler in_use a bool
Date: Thu,  7 Nov 2024 14:26:57 +0200
Message-ID: <20241107122658.21901-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
References: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
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

Make scaler in_use a boolean since that's how it's used.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c          | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d3a1aa7c919f..339e4b0f7698 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -697,8 +697,8 @@ struct intel_initial_plane_config {
 };
 
 struct intel_scaler {
-	int in_use;
 	u32 mode;
+	bool in_use;
 };
 
 struct intel_crtc_scaler_state {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index e29e29c4cbc3..cefbcabba134 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -150,7 +150,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	if (force_detach || !need_scaler) {
 		if (*scaler_id >= 0) {
 			scaler_state->scaler_users &= ~(1 << scaler_user);
-			scaler_state->scalers[*scaler_id].in_use = 0;
+			scaler_state->scalers[*scaler_id].in_use = false;
 
 			drm_dbg_kms(display->drm,
 				    "scaler_user index %u.%u: "
@@ -309,7 +309,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 				continue;
 
 			*scaler_id = j;
-			scaler_state->scalers[*scaler_id].in_use = 1;
+			scaler_state->scalers[*scaler_id].in_use = true;
 			break;
 		}
 	}
@@ -350,9 +350,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 		 * scaler 0 operates in high quality (HQ) mode.
 		 * In this case use scaler 0 to take advantage of HQ mode
 		 */
-		scaler_state->scalers[*scaler_id].in_use = 0;
+		scaler_state->scalers[*scaler_id].in_use = false;
 		*scaler_id = 0;
-		scaler_state->scalers[0].in_use = 1;
+		scaler_state->scalers[0].in_use = true;
 		mode = SKL_PS_SCALER_MODE_HQ;
 	} else {
 		mode = SKL_PS_SCALER_MODE_DYN;
-- 
2.45.2

