Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A004BBF3060
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01CE10E4CD;
	Mon, 20 Oct 2025 18:51:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcGHBK8I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2AE810E4CB;
 Mon, 20 Oct 2025 18:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986299; x=1792522299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bu4+aj+RjaQDh6iYMylC9x0YHJKlpHhxeIYjwNHDQLE=;
 b=dcGHBK8ImKCkPed2koJEXfvcYfDriUPuRPupXqL1uNy9wHboPDKwRymn
 IS5VFPSkgZU2Jc7jeBmaI+WYBa4EcDCE6x4grqk2foCIWggKdfPxw6gQz
 KjTLM4TC3ZcJvpjCbVxzCc8mNVJ7SHHh9Zbg0VJcfk81LS62BVJbxTYPo
 T5ClzUbRjZKWGnbZlIbh7xWudgXbJi0SSicagSDYaXXxAXNLaC0u03Va6
 rjJ85DSy3lz8d6jjbvIN2wTC9RYpYAdjEM3cjRBNuTtn8UH7tYigCqPcr
 yxhs6ItxOxpTo9xcajtDKv82cZv3tARkg4+8gc0tlAY9a73bj0R1nWfyr Q==;
X-CSE-ConnectionGUID: JduAznbyS9eu/TObVkjd4g==
X-CSE-MsgGUID: QHzIxWzBQmiXF9/ikQ4+Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63004398"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63004398"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:38 -0700
X-CSE-ConnectionGUID: hjLDoD6xTeKmm3gc9CTk6w==
X-CSE-MsgGUID: N+wslhAwSeu7kZnQhyHpQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="187661466"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:37 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 15/22] drm/i915/vrr: Always write TRANS_VRR_CTL in
 intel_vrr_set_transcoder_timings() on !always_use_vrr_tg()
Date: Mon, 20 Oct 2025 21:50:31 +0300
Message-ID: <20251020185038.4272-16-ville.syrjala@linux.intel.com>
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

Currently, dependign on vrr.enable, we may write TRANS_VRR_CTL from
both intel_vrr_set_transcoder_timings() and intel_vrr_transcoder_enable()
on !always_use_vrr_tg() platforms. Streamline this so that we just
always write it from intel_vrr_set_transcoder_timings(), and
never from intel_vrr_transcoder_enable().

The main benefit is that intel_vrr_transcoder_enable() becomes symmetric
to intel_vrr_transcoder_disable().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d8fbbef1ae23..67b1ed606d8f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -562,7 +562,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 
-	if (!intel_vrr_always_use_vrr_tg(display) && !crtc_state->vrr.enable)
+	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       trans_vrr_ctl(crtc_state));
 
@@ -759,7 +759,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!HAS_VRR(display))
 		return;
@@ -767,13 +766,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       trans_vrr_ctl(crtc_state));
-		return;
-	}
-
-	intel_vrr_tg_enable(crtc_state, false);
+	if (intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_tg_enable(crtc_state, false);
 }
 
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
-- 
2.49.1

