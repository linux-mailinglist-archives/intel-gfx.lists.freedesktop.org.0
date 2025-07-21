Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0629FB0C26D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 13:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB69910E510;
	Mon, 21 Jul 2025 11:14:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bKSDMlrs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B78E10E4FC;
 Mon, 21 Jul 2025 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753096474; x=1784632474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MB+SW1yh5ERBLZVApnig/mPSaea7by+CBNh2xevUTkM=;
 b=bKSDMlrsPx5S5jL0hf9OGYVXaNCjONTtA6lnYQmXJRHD7N4JBF5lPDPz
 De2v7yhXhzDtY3+NB45SeGBpSjYx8v1UUaO6zyXM3ZblyTs7R/4tzwIvX
 7HWD3SxQc6DWyJ1R0BJEEYNmUUwPaDeX6ErLbEOAerfMjn/2uKKI0LvZl
 CTFt0ftpniur6XLAjqRE2RdzoYXdl2rDL72auinZzRhdeNPa5lkHbi2DZ
 VxQAFIy8rSIrJpAFAaNi3D/1FgS3AQSMr8VW9F4md1P2msgd/dNaB45wb
 7Vy6j+FQnNb56FIZh4y1SlJfmsQhXBXUJL2scuBxmTwAO9Z1xLk640Y3s g==;
X-CSE-ConnectionGUID: pAP955c6QICwlq1Ws7mSXQ==
X-CSE-MsgGUID: Hng/3VkoQAmocByqigy4iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55427301"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55427301"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:34 -0700
X-CSE-ConnectionGUID: fFnjYbUDSl6YHeuXHzCS6A==
X-CSE-MsgGUID: Cj/s46SlQgmGjNqKl4T/7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="159146205"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.64])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 6/7] drm/i915/display: Wait for vblank in case of PSR is
 using trans push
Date: Mon, 21 Jul 2025 14:14:05 +0300
Message-ID: <20250721111406.1468064-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250721111406.1468064-1-jouni.hogander@intel.com>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
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
vblank after triggering PSR "frame change" event. Othervise we may miss
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
index 456fc4b04cda..ebbead447eca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7294,9 +7294,27 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
 		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
-- 
2.43.0

