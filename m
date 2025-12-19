Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16558CCFF68
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 14:06:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8932D10EF98;
	Fri, 19 Dec 2025 13:06:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOCmwwG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED1D10EF96;
 Fri, 19 Dec 2025 13:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766149567; x=1797685567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DJJdX39RJJKXJTTW7h7qmtCRKoZEzsznWr7ey+NvFoA=;
 b=LOCmwwG6mU16L+StoBiC3BHTVvVY65844F9ZLIQzvwJ3rudljiKyJ/4X
 YbKgg29mV2Ze2u+Silx/l/YI3tlDH1SOvJu2AGlWN749TlRn/YamwFZ1v
 2tDMd28p5Xjp7qSAa74iyvzuHyg1rcupop3fZEvmD91+wgR7YPTmZdO66
 e7HfeqCU8RHdEPCQQIK8WkDyTJcEEBFPQyTD5NsLnNt8tXe0r3szXZ64J
 CYG2dWD9RudytcdfxJUZIMt20EFVUGXevXoa0E/tYfYCor2BeSaTMmcVi
 zX2rR5lv68TfuEM3m+GIc/k9T8Xi+ei6z5n5ox+a1QdRYrznrFYZ7SGyo w==;
X-CSE-ConnectionGUID: 0AW750RvSdW59NtsJ3bM1g==
X-CSE-MsgGUID: XOG6FinESIKJ+jOlB4IGZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68086576"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="68086576"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 05:06:07 -0800
X-CSE-ConnectionGUID: ZIhV3EyrQDCOidULNTgP2A==
X-CSE-MsgGUID: e31Wc3uEQuyVX8iptyUvjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="199337731"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.49])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 05:06:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 5/7] drm/i915/display: Wait for vblank in case of PSR is
 using trans push
Date: Fri, 19 Dec 2025 15:05:35 +0200
Message-ID: <20251219130537.3024373-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219130537.3024373-1-jouni.hogander@intel.com>
References: <20251219130537.3024373-1-jouni.hogander@intel.com>
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

In case PSR uses trans push as a "frame change" event and we need to wait
vblank after triggering PSR "frame change" event. Otherwise we may miss
selective updates.

DSB skips all waits while PSR is active. Check push send is skipped as well
because trans push send bit is not clearn by the HW if VRR is not enabled
-> we may start configuring new selective update while previous is not
complete. Avoid this by waiting for vblank after sending trans push.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5947cc9b94c..f6c7b0b53370 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7366,9 +7366,27 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				new_crtc_state->dsb_color);
 
 	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
-		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+		/*
+		 * Dsb wait vblank may or may not skip. Let's remove it for PSR
+		 * trans push case to ensure we are not waiting two vblanks
+		 */
+		if (!intel_psr_use_trans_push(new_crtc_state))
+			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+
+		/*
+		 * In case PSR uses trans push as a "frame change" event and
+		 * VRR is not in use we need to wait vblank. Othervise we may
+		 * miss selective updates. DSB skips all waits while PSR is
+		 * active. Check push send is skipped as well because trans push
+		 * send bit is not clearn by the HW if VRR is not enabled -> we
+		 * may start configuring new selective update while previous is
+		 * not complete.
+		 */
+		if (intel_psr_use_trans_push(new_crtc_state))
+			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+
 		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
-- 
2.43.0

