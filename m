Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E549C3A89
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0444410E461;
	Mon, 11 Nov 2024 09:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBTVsYwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B30810E461;
 Mon, 11 Nov 2024 09:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316233; x=1762852233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8W9K4QP99GbFnCuGfZd9MKtMQsx0zC1eROPJoFPVOYo=;
 b=gBTVsYwTc2Kc0JbMAzqRw8yv9b8VPbU0jPdFSeQu+h7DXADkqhJER9Xd
 4rKhoFAamdIqNSz4K1yTN+lxzx1RCYcUzf9KAtfmVhmg6g6m5nL5ItCjV
 5q3qGMmIdnm2xsVv0OsDTQRl78VnnKpCPXMbw6CxeOecB8Af7H2QOCykB
 igOH3h+GvoeFrwiGenOusp7+efb28xoodMeGoWtFDUFFqwcgrXem4EI6D
 ndc5uKAtDPaPbyyi2Yrs13CtMYfcHfYLuxmLNKz1f+ce3+ox8PblHgs4y
 w7o957DbBkRYX+eurIzUI77d6+NSN/pH2fEg6GhM8MwqvJAwTxC650GgK g==;
X-CSE-ConnectionGUID: DAyHviPxReGa7Ahjkujk9A==
X-CSE-MsgGUID: c+7MHFEBSA6gnKgxFUTvWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052420"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052420"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:33 -0800
X-CSE-ConnectionGUID: 61VeJTLaSle7t6YTpORGFw==
X-CSE-MsgGUID: Ht0+mtScTgWUNfMVgrNQ7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762713"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 19/23] drm/i915/vrr: Avoid sending PUSH when VRR TG is used
 with Fixed refresh rate
Date: Mon, 11 Nov 2024 14:42:17 +0530
Message-ID: <20241111091221.2992818-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

As per Bspec:68925: Push enable must be set if not configuring for a
fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).

v2: Use helper intel_vrr_use_push(). (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index bc3b78a6bf8b..c27886ace0a9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -356,6 +356,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.flipline - 1);
 }
 
+static bool intel_vrr_use_push(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.tg_enable &&
+	       crtc_state->vrr.mode != INTEL_VRRTG_MODE_FIXED_RR;
+}
+
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -364,7 +370,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	if (intel_crtc_is_joiner_secondary(crtc_state))
 		return;
 
-	if (!crtc_state->vrr.tg_enable)
+	if (!intel_vrr_use_push(crtc_state))
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -376,7 +382,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.tg_enable)
+	if (!intel_vrr_use_push(crtc_state))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -393,8 +399,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.tg_enable)
 		return;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	if (intel_vrr_use_push(crtc_state))
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+			       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
-- 
2.45.2

