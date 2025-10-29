Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFF8C19289
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65ED10E75A;
	Wed, 29 Oct 2025 08:47:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BFqZSLV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9EF10E75A;
 Wed, 29 Oct 2025 08:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727648; x=1793263648;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PYJYqPdZv1Ude+g/glCCBD4SR8tKtHqYEZxFsbNoHjw=;
 b=BFqZSLV4lZFljKCISZvi4+mKAHMtiP6MivK0u62g5pkhDkLWNqonOZQO
 SJRnqJKr6M5Qj/GwiXYh1/M/gjg8PoTZmNRaKJVfxij6wCZCHpudxBfM/
 flqgadx4MTWcwzYPh20t6PmXHK/jkMH/OKP57VDBaSqxUjr8EwAgP7zRn
 11QUidFOLmGNaXNXAHeN2dqK1ijaZGfIiUI3OZACo1bVU+cZKGivu/dbX
 UtDjhK5Tnr5v2E7lDpy6U0+gH8JlFHQqLWLiYwvLOZyV1mF7g0myvpDP0
 /+4XePX6e4p250zxj0TxXSlsABTbpJZkZLl0+hgUK2ngUC/33KtE5miiz w==;
X-CSE-ConnectionGUID: bcCLjiv0TEqQDE5lkrAyRQ==
X-CSE-MsgGUID: pOMpPnE4Rr220tarPPOqvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75187236"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="75187236"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:28 -0700
X-CSE-ConnectionGUID: +3mYQVhMR7aTfSrGiAb3AQ==
X-CSE-MsgGUID: RTQPn47/SNWcxLAS8LlvVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="185230588"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:27 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 9/9] drm/i915/scaler: Use the actual scale factors for
 vblank length check
Date: Wed, 29 Oct 2025 10:46:47 +0200
Message-ID: <20251029084647.4165-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
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

