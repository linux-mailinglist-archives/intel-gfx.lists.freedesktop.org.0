Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9EEAE5E7F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637FD10E50A;
	Tue, 24 Jun 2025 07:51:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JtTKtdOF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02E010E50D;
 Tue, 24 Jun 2025 07:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751489; x=1782287489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VjrnUQCp6DoPhcbtm0VJkhlbwQAj5CLLGSKHkiN9Klk=;
 b=JtTKtdOF8Pl2hgW7Cyso88djGVFCIKQf2K3i8jFk/oDJZB8/iqy/N2iD
 Wkt/mTSsgcoUiEP2DmGdonAGmlfFqgab45eaMOiJKs7PtGlrP8syF09Jn
 aMpCkHpNRZqHqJQvXpZHxE0Hjf8bbTktCk/Irvd1qx4qHEbne/VGXAKuo
 5vX/sZTGcp8HddBiszSKXPwvqMFBsEjCT193+Oo3pu/kyUKRHwaTYS5HV
 TPEA5A7yHx+Gr8Z/zCBwpW552LbI/vZhDKpaQs3nhQviehyuKL3O0hcKW
 cbbhVJptN0AZhopdqx5ZXgbBiLl6SJ56XNz6RUo5w3WYYVdgAOweHyLzw A==;
X-CSE-ConnectionGUID: OeZ4/WgqTiGYMmNZmRC+ew==
X-CSE-MsgGUID: hqw0/kcFQIeYcueMTJVrgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398252"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398252"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:29 -0700
X-CSE-ConnectionGUID: LynRDmDtQU2kcZV2SVC83Q==
X-CSE-MsgGUID: Jl0BRcA9SmGRAf99iNVNMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446450"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:27 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 10/18] drm/i915: Extract vrr_vblank_start()
Date: Tue, 24 Jun 2025 13:19:40 +0530
Message-ID: <20250624074948.671761-11-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Initialise delayed vblank position for evasion logic.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 70ba7aa26bf4..d544e274bcfa 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -642,6 +642,14 @@ intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 	return pre_commit_crtc_state(old_crtc_state, new_crtc_state);
 }
 
+static int vrr_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	if (intel_vrr_is_push_sent(crtc_state))
+		return intel_vrr_vmin_vblank_start(crtc_state);
+	else
+		return intel_vrr_vmax_vblank_start(crtc_state);
+}
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
@@ -668,10 +676,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
 			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
 
-		if (intel_vrr_is_push_sent(crtc_state))
-			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-		else
-			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+		evade->vblank_start = vrr_vblank_start(crtc_state);
 
 		vblank_delay = intel_vrr_vblank_delay(crtc_state);
 	} else {
-- 
2.48.1

