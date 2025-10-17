Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8367BEA8FA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9FB10EA4B;
	Fri, 17 Oct 2025 16:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ae9HG9pW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C5A10EC83;
 Fri, 17 Oct 2025 16:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717697; x=1792253697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=haXmTrXwew8bRxXjHTFYJ/lhSgVQ7koCBgUpLcYYGD4=;
 b=ae9HG9pWX2bqgeFqXlqO4j6cNX4z+p4X5EshGjgHKJeYka8yUXFtt2aK
 IaGKaA/8v+3F/8cIurVAFcqiuGS/TLjH5TVuCoISw7d3AqK+g2StfWVL6
 DrOpdipKANoPlhlQdtuZlBYD4mOtxUQqY1G/dZa5/B0aVauURO6S2lr2h
 wANHfswObYiuKo6+xZobEp5bHLBAryiHvoEHkrN5Nw8HvGl8bhnfu6pK+
 hhRO9giYWbJWkK/n2tWRwru6XWcAB+M9YEsU/Gf3BC5+hIZM8an6A+bFS
 rnyYnzQRdQXTCMB0Ewf/mIyu+KpujoO3t9H9aVkogLQf1og7AUisEbviV Q==;
X-CSE-ConnectionGUID: S/aKYeDMQhCUo3mGNuu1Tg==
X-CSE-MsgGUID: OJVw5sLvTyGM6YyZTysiHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="61961842"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61961842"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:57 -0700
X-CSE-ConnectionGUID: gEMgs0WhSYyaOd6MA6XWMg==
X-CSE-MsgGUID: 8T809huTQ8GwxeX8DsgpiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187026513"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/scaler: Use the actual scale factors for vblank
 length check
Date: Fri, 17 Oct 2025 19:14:17 +0300
Message-ID: <20251017161417.4399-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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

Now that the scaler assignment has been moved to an earlier point
we can start to use the actual scale factors in the prefill vs.
vblank length check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 77 ++++++++++++++++++++---
 1 file changed, 67 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index e8a8facdc300..53436c731cf1 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -978,22 +978,79 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
 }
 
+static unsigned int skl_scaler_scale(const struct intel_crtc_state *crtc_state, int i)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(scaler_state->scalers[i].hscale,
+					    scaler_state->scalers[i].vscale),
+				0x10000);
+}
+
+static unsigned int skl_scaler_downscale(const struct intel_crtc_state *crtc_state, int i)
+{
+	return max(0x10000, skl_scaler_scale(crtc_state, i));
+}
+
+static unsigned int skl_plane_scaler_downscale(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	unsigned int scale = 0x10000;
+	int i;
+
+	for (i = 0; i < crtc->num_scalers; i++) {
+		/* ignore pfit */
+		if (i == scaler_state->scaler_id)
+			continue;
+
+		if (!scaler_state->scalers[i].in_use)
+			continue;
+
+		scale = max(scale, skl_scaler_downscale(crtc_state, i));
+	}
+
+	return scale;
+}
+
+static unsigned int skl_pipe_scaler_downscale(const struct intel_crtc_state *crtc_state)
+{
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+
+	if (!crtc_state->pch_pfit.enabled)
+		return 0x10000;
+
+	return skl_scaler_downscale(crtc_state, scaler_state->scaler_id);
+}
+
 unsigned int skl_scaler_1st_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 {
-	/*
-	 * FIXME don't have scalers assigned yet
-	 * so can't look up the scale factors
-	 */
-	return 0x10000;
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int num_scalers = hweight32(scaler_state->scaler_users);
+
+	if (num_scalers < 1)
+		return 0x10000;
+
+	if (num_scalers == 1 && crtc_state->pch_pfit.enabled)
+		return skl_pipe_scaler_downscale(crtc_state);
+	else
+		return skl_plane_scaler_downscale(crtc_state);
 }
 
 unsigned int skl_scaler_2nd_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 {
-	/*
-	 * FIXME don't have scalers assigned yet
-	 * so can't look up the scale factors
-	 */
-	return 0x10000;
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int num_scalers = hweight32(scaler_state->scaler_users);
+
+	if (num_scalers < 2)
+		return 0x10000;
+
+	return skl_pipe_scaler_downscale(crtc_state);
 }
 
 unsigned int skl_scaler_1st_prefill_lines(const struct intel_crtc_state *crtc_state)
-- 
2.49.1

