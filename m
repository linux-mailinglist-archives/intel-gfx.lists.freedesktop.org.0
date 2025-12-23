Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DE4CD8F6F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D053B10E2D5;
	Tue, 23 Dec 2025 10:51:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zk4Uq3YA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C9710E2B1;
 Tue, 23 Dec 2025 10:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487106; x=1798023106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XGT2E51q9LxpSfzUVjvpju50yLdYIo8qa+8HWzFWQR8=;
 b=Zk4Uq3YAiSgaoPQrMxzZkSv+r6p9FFW4ZMmGzuGqvljUad/OTBq5WH7o
 9NKjnElD9GtvCWUChIchZPoE/WV4ldQKmK9HsPDO4N6R7FgnXdDHEpgCI
 +Mc/3FRBWW2HS18nFxobJdFHDKfYw7dv7Dfq8GUSvERnpV3uVM6vhFCJT
 ar6GP3PPkacCBR0e+2OJI0tp938SLbcDwcHH64eZlPbI699q7LBuNVEXO
 UzPbqqFi1s+3NEIevI0EVThsETykwkiKC43mVpFuSxp0gPx7dklQwRtKB
 xVqufrQ/FcYhHkx7AflExbxmOVvkOfKavYM8YnMbYQAVcvqlLTczHG2ks Q==;
X-CSE-ConnectionGUID: rVYX6KSlQRea/zQzrJsqMw==
X-CSE-MsgGUID: ez7G3F7dQimtC41LWQtUzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="78651283"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="78651283"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:45 -0800
X-CSE-ConnectionGUID: +BV+eY/LSHG+ycuG7wSsgQ==
X-CSE-MsgGUID: /i5hHY3FT/6OIYO6KAa/0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204806212"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.100])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:43 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 6/8] drm/i915/psr: Wait for idle only after possible send
 push
Date: Tue, 23 Dec 2025 12:51:18 +0200
Message-ID: <20251223105120.21505-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223105120.21505-1-jouni.hogander@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
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

We are planning to move using trans push mechanism to trigger the Frame
Change event. in that case we can't wait PSR to idle before send push
happens. Due to this move wait for idle to be done after possible send push
is done.

This should be ok for Frame Change event triggered by register write as
well. Wait for idle is needed only for corner case where PSR is
transitioning into DEEP_SLEEP when Frame Change event is triggered. It just
has to be before wait for vblank. Otherwise we may have vblank before PSR
enters DEEP_SLEEP and still using old frame buffers for first frame after
wake up.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c7ca4f53b8b8..1aca4802b7d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7333,9 +7333,6 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
-		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
-					    new_crtc_state);
-
 		if (new_crtc_state->use_dsb)
 			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
@@ -7375,6 +7372,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 
+		/*
+		 * Wait for idle is needed for corner case where PSR HW
+		 * is transitioning into DEEP_SLEEP/SRDENT_OFF when
+		 * new Frame Change event comes in. It is ok to do it
+		 * here for both Frame Change mecanisms (trans push
+		 * and register write).
+		 */
+		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
+					    new_crtc_state);
+
 		/*
 		 * In case PSR uses trans push as a "frame change" event and
 		 * VRR is not in use we need to wait vblank. Othervise we may
-- 
2.43.0

