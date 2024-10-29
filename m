Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CAF9B54C0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EA110E72A;
	Tue, 29 Oct 2024 21:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Piy5wZvA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A48D10E716
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236343; x=1761772343;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jvO/HllUJdY4KAmMKQeq5OmGyotKMX1RUSySqN8wYAU=;
 b=Piy5wZvAGDyiEjJbbVfvP8ejjYPJJ357PxYEBzkRtDE0wxd1Fvg2uzsD
 gx8NQGwPhIOPEU17CpM7DcDuidmOJV7WIGk9L5NcuZgd+qbXCvYgL2M5K
 JUU0OV+WtZQV1CaTdtmJ7pdWxeBgi+BwCAiWO8UdXZj00SvDS7mjXF1HP
 Ps9AnEVTja21nB9WpV6qRGqKb4GboM2Rl4Hi/v7KlAwUx5pU9ITxROckq
 jGGced/gtqiX8oGmi7/yxb8ZNEfx3N2oUWLVAK1GTmWepF/YXXG6ZkAM1
 JhCErC9ZwddFWRJDyxgTkZ8O7vEGLf86e1IDgvVOew1HfHW3HmPeAYBqQ A==;
X-CSE-ConnectionGUID: MkKIz7HjSwWLlfSD5tHpog==
X-CSE-MsgGUID: lMzhDCteTOuFSbjwLbWYbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019551"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019551"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:12:22 -0700
X-CSE-ConnectionGUID: llJXcm2SRqCIi+SRDY0s2w==
X-CSE-MsgGUID: RGiAAMdxRtKZOVsNPStKvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191765"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915/scaler: Make scaler in_use a bool
Date: Tue, 29 Oct 2024 23:10:29 +0200
Message-ID: <20241029211030.13255-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c          | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8269331f33b7..bc6095fc713c 100644
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
index e5f566e323a0..3cff48443100 100644
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

