Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488C0BF3042
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9596410E4BC;
	Mon, 20 Oct 2025 18:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSqpYW5c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBFE10E4BC;
 Mon, 20 Oct 2025 18:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986272; x=1792522272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jToLBZmWz6FB3fMMBYr+KSNXx4cy6yPDL2CFlSJtJB4=;
 b=GSqpYW5c0d3mq+DMSPpvwzCkNbJKTrQXvy7ZfLjBgQAlQIbogoeobVLG
 VHSnZBU7gHLyiU6jxQ5m5LUaQNZSlDktjV+BNkkg6AWIEGtZmNaYjW70Y
 xLh2GdCWkh4dgQE4aE1QDrgS30G3HKBzFNgQW2HeV4VU92Cd+PKCFo1Fj
 j46fFMUn3SygHba/Y1qd433OO2aQRHZz3fr0HgYdqwJV4LCi3SB90Jm4A
 gTigsJcsA5ZTgHaYYirSCtChjGWLvi/7/aaF/5YGRDz4pGSZlrynprv8w
 Hgu7XgAK74U63391kwmNIrAxHdyQXI5J4DcPkORtfp41uddN+a2V//xGj w==;
X-CSE-ConnectionGUID: TH1ZrRmvTjq2WqoNWX2grA==
X-CSE-MsgGUID: YiVl6jJMSI+7b94XTG2HTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74546216"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="74546216"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:12 -0700
X-CSE-ConnectionGUID: V2kO1HvOQH6X7G/OWqgJkQ==
X-CSE-MsgGUID: 1xQ0Q4weQ42o4Ak119w9EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183101379"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/22] drm/i915/vrr: Extract intel_vrr_set_vrr_timings()
Date: Mon, 20 Oct 2025 21:50:24 +0300
Message-ID: <20251020185038.4272-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract intel_vrr_set_vrr_timings() as the counterpart to
intel_vrr_set_fixed_rr_timings().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 99e10943368d..b2f139addc8b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -686,20 +686,28 @@ static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
 }
 
-void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
+static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
-		return;
-
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
 		       intel_vrr_hw_vmin(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
 		       intel_vrr_hw_vmax(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       intel_vrr_hw_flipline(crtc_state) - 1);
+}
+
+void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!crtc_state->vrr.enable)
+		return;
+
+	intel_vrr_set_vrr_timings(crtc_state);
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
-- 
2.49.1

