Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFA097A555
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 17:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C5710E3AF;
	Mon, 16 Sep 2024 15:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUSUf0h7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBA910E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 15:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726500607; x=1758036607;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XVEjW8mOVs5fEvm0pHSDYn+mPB9+/D1iufFtrMRrZwU=;
 b=mUSUf0h710YHuCl7qQrfkDQmQ8eCnJA9kBbproJcIaU4hVLTQS6yACI+
 Bpp6rNtUaWYhIKu4G/xNXA2TWNlXWS/vDuva2Qf69FmAoCVQjwbRfcr1u
 hcANWUXIM0Jo++Qhmxqee9nE+vQDN8NAfkCqG3ckfOJuF8F95FS+8okfc
 DnU/HrexFZI7aFA1YOqb8OMwc1emiOp1pLycl5V/lAj/1CHrapnz+GQZW
 luiQbw8u6+Z4mNfyL6Ua3WOZZu9aPvMvkpor1Q9ZGqlQ/R+7iT6v5kKeF
 bt/SXgKOlB+I0qV4XvcYDM9r3PsXxRFZsYNdINrjAagkoi6ABtGSAiiWW Q==;
X-CSE-ConnectionGUID: hqfO/GAOTf6tmi2+Oaq7qQ==
X-CSE-MsgGUID: PMDpJNlcTZKP3JVeHJxkWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="47840553"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="47840553"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 08:30:07 -0700
X-CSE-ConnectionGUID: n+FiWdPyTsO7PqGNtI6Mpw==
X-CSE-MsgGUID: TimKQZ93TBCingeN36u5qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69009241"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 08:30:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 18:30:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Extract intel_post_plane_update_after_readout()
Date: Mon, 16 Sep 2024 18:29:58 +0300
Message-ID: <20240916152958.17332-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
References: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
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

Clean up the main commit_tail() codepath a bit by pulling
the post plane update steps that need to performed after
readout into their own little function
(intel_post_plane_update_after_readout()).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++++-------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 591fe3b4ace8..5776f9514346 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1117,6 +1117,22 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_encoders_audio_enable(state, crtc);
 }
 
+static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
+						  struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	/* Must be done after gamma readout due to HSW split gamma vs. IPS w/a */
+	hsw_ips_post_update(state, crtc);
+
+	/*
+	 * Activate DRRS after state readout to avoid
+	 * dp_m_n vs. dp_m2_n2 confusion on BDW+.
+	 */
+	intel_drrs_activate(new_crtc_state);
+}
+
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
 					struct intel_crtc *crtc)
 {
@@ -7479,14 +7495,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_modeset_verify_crtc(state, crtc);
 
-		/* Must be done after gamma readout due to HSW split gamma vs. IPS w/a */
-		hsw_ips_post_update(state, crtc);
-
-		/*
-		 * Activate DRRS after state readout to avoid
-		 * dp_m_n vs. dp_m2_n2 confusion on BDW+.
-		 */
-		intel_drrs_activate(new_crtc_state);
+		intel_post_plane_update_after_readout(state, crtc);
 
 		/*
 		 * DSB cleanup is done in cleanup_work aligning with framebuffer
-- 
2.44.2

