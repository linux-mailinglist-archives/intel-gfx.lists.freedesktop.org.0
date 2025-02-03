Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165BA259E9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114E210E4D7;
	Mon,  3 Feb 2025 12:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DslZVp0L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A7310E4D0;
 Mon,  3 Feb 2025 12:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587042; x=1770123042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LJgkjpTQgac19V+nF2c71RPNbR169VtSl4d8O2BQbxk=;
 b=DslZVp0L4x8haZ8SPxwQEUc2Lw7+9Sb8F8UGTkYNWlo3A/a5fmv3S0HK
 A8hIIbegSE9Bjql/Fljv7Yh/9Xz8kikDbHJFbHP6o7pds0F6wpQwfw1NS
 6VxwlkY2wJ8kJh3G7HM0e0/Oy0l8psRsSDznjp/qGRUPN3lP1+i8DKlMI
 9PKUYQNghPjdS65FSAKbh4B+fbM1Gu3XylX0DRkfTDPP15u+L8E3dx8ql
 fv8uqFoe18HBTNsrPxc8acbZi1+bXgbn05tMpwXu82zwTIIWGxV89opvB
 OgnrtuYxebiPnJxikwZI9GU3RdeoG86mQe8Uo61UK2f7D6CuGJr7NCPkz Q==;
X-CSE-ConnectionGUID: U3MngASTQQ6SOSBQpkOLSA==
X-CSE-MsgGUID: tBkbdzuhTKqWn11EfiIAqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548128"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548128"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:42 -0800
X-CSE-ConnectionGUID: NTkx1CWgRJygf9pYL8vGyA==
X-CSE-MsgGUID: RW4tl4/BRxOP06msvPAR3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529088"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 24/28] drm/i915/vblank: Add crtc active timings for fixed_rr
 mode
Date: Mon,  3 Feb 2025 18:08:36 +0530
Message-ID: <20250203123840.3855874-25-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Make provision for fixed refresh rate timings while updating the
crtc timings for vrr.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_vrr.c    | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h    | 2 ++
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 3ed814245b61..8abcf4c2cfe7 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -523,6 +523,11 @@ static void intel_crtc_active_timings(struct drm_display_mode *mode,
 		mode->crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
 		mode->crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		*vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+	} else if (vrr_mode == INTEL_VRRTG_MODE_FIXED_RR) {
+		mode->crtc_vtotal = intel_vrr_fixed_rr_vtotal(crtc_state);
+		mode->crtc_vblank_end = intel_vrr_fixed_rr_vtotal(crtc_state);
+		mode->crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+		*vmax_vblank_start = intel_vrr_fixed_rr_vmax_vblank_start(crtc_state);
 	} else {
 		MISSING_CASE(vrr_mode);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c852de748ce3..e44335cdc383 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -250,7 +250,6 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
  * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
  * Vtotal value.
  */
-static
 int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -263,6 +262,12 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 			intel_vrr_real_vblank_delay(crtc_state);
 }
 
+int intel_vrr_fixed_rr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_fixed_rr_vtotal(crtc_state) -
+		intel_vrr_vblank_exit_length(crtc_state);
+}
+
 static
 int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 5ae8d6409f1a..9ba988af703a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -35,5 +35,7 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_enabled(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_mode_vrr(const struct intel_crtc_state *crtc_state);
+int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state);
+int intel_vrr_fixed_rr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

