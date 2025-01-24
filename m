Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09713A1B891
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5F710E9B9;
	Fri, 24 Jan 2025 15:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O12IuY10";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE0210E9B3;
 Fri, 24 Jan 2025 15:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731542; x=1769267542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BE7sxjMHCEEsz2qcNEjfIqX8XlOqyRUfguUqFD/ysGo=;
 b=O12IuY10ATynk1Pl9rcpsQDm77/O9YZqoI/gzecHT34wk2Wd9J/lDqnz
 6/Z4YTvDJgayb9F+odn9airrNYbVSB8qyZAQCwljTsTzU3nlk6i9F6rFV
 tPkpT1OkpMxA8X8hPb9jBiWJ4R+QvYAALZEGTL18onGtjVEWyhtNtuN0Y
 tceuBetPtSdaTBfYJcLq7AUrYN9cr9iqzA4Cp02pZTS/noYvG201HbVZ/
 W/GnPIakKvyWmrM8mBhLWAs5mk7XOKoMRR4GuF/pJBd9KO2AtAy1zuIB0
 BJT3K71N5dJThkOJ4cEWKDJSTVJERMsdWS99yqGk3S5/B9n/fK8/NJhS7 A==;
X-CSE-ConnectionGUID: DvWGcGwaTQK4w4mCvdFFSQ==
X-CSE-MsgGUID: MAxq/asFSWyKFqMZKF/nfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177425"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177425"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:22 -0800
X-CSE-ConnectionGUID: yfY3gt8GTxOpwCcNW0Wo1A==
X-CSE-MsgGUID: YibdD+9wQ2WnT8ubRwiHeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221391"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:20 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 20/35] drm/i915/vrr: Avoid sending PUSH when VRR TG is used
 with Fixed refresh rate
Date: Fri, 24 Jan 2025 20:30:05 +0530
Message-ID: <20250124150020.2271747-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

As per the spec, the PUSH enable must be set if not configuring for a
fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).

v2: Use helper intel_vrr_use_push(). (Ville)
v3: directly use the condition, instead of checking for VRR mode.

Bspec: 68925
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 65bbe40881d6..34e44cd52353 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -437,13 +437,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 }
 
+static bool intel_vrr_use_push(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.flipline != crtc_state->vrr.vmax;
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!intel_vrrtg_is_enabled(crtc_state))
+	if (!intel_vrr_use_push(crtc_state))
 		return;
 
 	if (dsb)
@@ -462,7 +467,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!intel_vrrtg_is_enabled(crtc_state))
+	if (!intel_vrr_use_push(crtc_state))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -476,8 +481,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	if (intel_vrr_use_push(crtc_state))
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+			       TRANS_PUSH_EN);
 
 	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-- 
2.45.2

