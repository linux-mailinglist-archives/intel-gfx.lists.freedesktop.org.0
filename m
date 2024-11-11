Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67329C3A86
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA9210E44F;
	Mon, 11 Nov 2024 09:10:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CabcrD8+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A5610E451;
 Mon, 11 Nov 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316222; x=1762852222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/icliTiuosSLtl1XBxFKJUi3W0N7nDiIcqykxfvtZ6g=;
 b=CabcrD8+y+FIFTW0c+3u1a+/BaL57VfBQqFzGByZj1JjMukq+dgkmuXq
 gzRA0Z18cUeHAB2Tm0k6CsERASikyAafvdtiguq2vNhy3udu9WQRXKAAr
 UJNtquS/1MMLnfhs9BgeQjLmEprHu6kxI85w12XitOkfagZcdrTqdTWxq
 KIWf7Aak9XTHd3tgI9mGoS9/ntgQ6O6+QEIikMESWZx6nIHUc94V29bcE
 duQs16eTbiUd8qxN24t5+ki+JA/5PVy2W1vm3b90pW/jkDOyRU+4iJhpM
 Pwotg5StZh5Wb6f7BpM4zlKWnUNUx3L+CEN5YGQK7obpqX+PsLDS0lrWo A==;
X-CSE-ConnectionGUID: HuL0FaYBSJKNaOG3B7h0GA==
X-CSE-MsgGUID: WqFmtJ4tS8aTDlmMK1fonA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052394"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052394"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:22 -0800
X-CSE-ConnectionGUID: lBiyEbewQjyTbu2XosawAQ==
X-CSE-MsgGUID: m8PVNIY5Qy+V2K5qywtiVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762674"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:20 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/23] drm/i915/display: Handle transcoder timings for joiner
Date: Mon, 11 Nov 2024 14:42:12 +0530
Message-ID: <20241111091221.2992818-15-ankit.k.nautiyal@intel.com>
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

Make sure the timing changes happen in the correct spot in the sequence
for both primary and secondary pipes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4b39692f57f6..6d7f54804542 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1783,7 +1783,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	struct intel_crtc *pipe_crtc;
 	int i;
 
@@ -1819,8 +1818,14 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			bdw_set_pipe_misc(NULL, pipe_crtc_state);
 	}
 
-	if (!transcoder_is_dsi(cpu_transcoder))
-		hsw_configure_cpu_transcoder(new_crtc_state);
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+		enum transcoder cpu_transcoder = pipe_crtc_state->cpu_transcoder;
+
+		if (!transcoder_is_dsi(cpu_transcoder))
+			hsw_configure_cpu_transcoder(pipe_crtc_state);
+	}
 
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
-- 
2.45.2

