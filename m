Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF96BBD0C3
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA2E10E3B8;
	Mon,  6 Oct 2025 04:42:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InMocyNz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA71010E3B8;
 Mon,  6 Oct 2025 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725743; x=1791261743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z28K1YRkhuuFM8I9/NZRjhhsH0ZUf5zvYwviKT1qg1U=;
 b=InMocyNzxvSc7aZreTBLP1a+Ww1pH/CjddhJp01qjFivW8Nzo3GcSXxJ
 PX78il8DKJ4j10nMlFr2S/g3/iG3PwhNAwnOP7ycpYURKvlnsAT4WlTwD
 5crVHwRgDC0ZBKXWJyJA6iKOb1KuuZxIugjtJuufQ3U6FfUqKFJo8G/JV
 M8q+Kun19TLcYlBH3nUhp0NeXkbctF9WGIKQUj9rtFh6q6ZiUGn78wTFb
 ke2c/NOwqLvfMPS3DrDokwIOxfnjXgOgwc53da30KJpvdZMipH55eLNFe
 X2oIWa56V1a4ZXPH6CKDYgh3UUyKWqF3ad6MbcCJvHyHCtYXY9PTSzQDl Q==;
X-CSE-ConnectionGUID: l4+QAecvQAO3Q9mYvuG+xw==
X-CSE-MsgGUID: qKBxxUfUSd2Aslxa62TBAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996420"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996420"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:23 -0700
X-CSE-ConnectionGUID: S3U4S9jrTAycu4qbix6IeA==
X-CSE-MsgGUID: ZHZhqR9bT/+mj3Ojjz2dCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063016"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 10/16] drm/i915/vrr:
 s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
Date: Mon,  6 Oct 2025 09:58:46 +0530
Message-ID: <20251006042852.263249-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_compute_config_late() practically just computes the
guardband. Rename intel_vrr_compute_config_late() to
intel_vrr_compute_guardband().

Since we are going to compute the guardband and then move the
vblank_start for optmizing guardband, move the helper to
intel_crtc_compute_config() which handles such changes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ec415b939770..b2d4e24fd7c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2414,6 +2414,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	intel_vrr_compute_guardband(crtc_state);
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
@@ -4869,8 +4871,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_vrr_compute_config_late(crtc_state);
-
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4bc14b5e685f..8d71d7dc9d12 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -433,7 +433,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 		   intel_vrr_max_vblank_guardband(crtc_state));
 }
 
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 7317f8730089..bc9044621635 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -21,7 +21,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
-- 
2.45.2

