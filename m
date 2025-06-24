Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EFAAE5E82
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F36610E50E;
	Tue, 24 Jun 2025 07:51:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8uljp28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840E210E50C;
 Tue, 24 Jun 2025 07:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751494; x=1782287494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cuAsriojTx8ha4Du+XpCzXGrAUei2DyIzzTRRfy4JPI=;
 b=H8uljp28f9KUnW+fBKrDBCoqkEgOo0296DlhXn+RBdFVLilRkT/01/RP
 jOYcm6F533woaQAB9Ksdei8vsT0q0ZIVbwxm7PzGdWZqTgUtz+Gaqwq4m
 63ECIbfRQLcpN8bDTJShxhWs7T388JGNgrzAB8gGkOcuWeYq4j9ktZixP
 ggI659Kl5Ua1b3tdciHKhRYBXfj1pWZMqpm/FUIVJSvVerx8VwW4Emki0
 XSQlubg5IzX00i+QFaKFuTLiLxSdrlctNJZFlcQWBGAFdrJSbPhHuAfBg
 8WCnT7YDZPLz01KoW20gtO2wLqXMU3ZLNEf3DqFpiPIGjblKiHlMvohfa A==;
X-CSE-ConnectionGUID: AxcOc7WTTki/QYKs1vwIYw==
X-CSE-MsgGUID: +kOS2inUSPaMhOmXEnRLaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398262"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398262"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:34 -0700
X-CSE-ConnectionGUID: ovLru8sfSpy82W9VsEpvhw==
X-CSE-MsgGUID: BiMiUSnER9Ka7d6o0QDB9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446482"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:32 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 13/18] drm/i915/vrr: Restructure VRR enablement bit
Date: Tue, 24 Jun 2025 13:19:43 +0530
Message-ID: <20250624074948.671761-14-mitulkumar.ajitkumar.golani@intel.com>
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

Restructure bits for VRR enablement.

--v2:
- Separate multiple enablement from one patch.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 29 ++++++++++++------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ce23bcab1033..91d4fa0d2bf3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -624,6 +624,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
+	u32 ctl;
 
 	if (!crtc_state->vrr.enable)
 		return;
@@ -638,19 +639,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_vrr_set_db_point_and_transmission_line(crtc_state);
-
-		if (crtc_state->cmrr.enable) {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-				       trans_vrr_ctl(crtc_state));
-		} else {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
-		}
-	}
-
 	if (crtc_state->vrr.dc_balance.enable) {
 		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
 			       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
@@ -675,6 +663,12 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
 			       crtc_state->vrr.dc_balance.vblank_target);
 	}
+
+	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
+	if (crtc_state->cmrr.enable)
+		ctl |= VRR_CTL_CMRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -683,10 +677,17 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
+	u32 ctl;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	ctl = trans_vrr_ctl(old_crtc_state);
+	if (intel_vrr_always_use_vrr_tg(display))
+		ctl |= VRR_CTL_VRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
+
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
@@ -702,8 +703,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	}
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       trans_vrr_ctl(old_crtc_state));
 		intel_de_wait_for_clear(display,
 					TRANS_VRR_STATUS(display, cpu_transcoder),
 					VRR_STATUS_VRR_EN_LIVE, 1000);
-- 
2.48.1

