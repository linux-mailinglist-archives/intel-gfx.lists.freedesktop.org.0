Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035B6AC21C0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 13:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832B110E2C2;
	Fri, 23 May 2025 11:06:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f6C1FN4F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C1310E273;
 Fri, 23 May 2025 11:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747998382; x=1779534382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2n/5B0qnsv3+zJJ8y1bqsS6xjvYWYal8Z/8F42Oi0s=;
 b=f6C1FN4FBAIWQfrQK8K/dDgifwPkDdEbm6LIO9dSrWb5UxNEUe1JPqFG
 7Xm0aHlA3qhY+sHZmHJUQUxR001OaqgE5j8td4J5fwJat9Hxnr9BVW0wo
 MLgNEF1NLv9Yp3GzJThQLbnvzs5vpeEKWnDvcMEaaVvtdcpwyoN/muEQ8
 ssUWSLcdWczAD+9xmOs8SyFcxoHETe+JFQR4U+aYLH3En4UF40FjOpD4P
 GOr2kTs56gu+A1WM4KFaYB/wFnm9058Gxisxr20mH41i+hcnwz9kSAeVG
 A8BOBiZCmBfuqTPz1jTO7lI7Fl/lItL8m0PUa+cl+PVgO7CKbHMNz2wVw w==;
X-CSE-ConnectionGUID: aEwEqW5QSluaoSs9zTPg1A==
X-CSE-MsgGUID: x/5vmKkOTSSUatktnWG2Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67463919"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67463919"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:17 -0700
X-CSE-ConnectionGUID: eHNa6T2PRs+56DmuRtIQ4w==
X-CSE-MsgGUID: CRpP6AY+Rs+5UoE6NzzpAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="164341803"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.108])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/4] drm/i915/display: Send push before waiting vblanks
Date: Fri, 23 May 2025 14:05:53 +0300
Message-ID: <20250523110555.3494901-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250523110555.3494901-1-jouni.hogander@intel.com>
References: <20250523110555.3494901-1-jouni.hogander@intel.com>
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

If PSR is enabled our HW might be still in sleep when performing wait
vblanks on DSB. Now as we are switching to using VRR send push as
"Frame Change" event for PSR we are observing these timeouts as only
"Frame Change" event is VRR send push.

Fix this by triggering doing VRR send push before waiting vblank.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c894e4d0d488..d072e38ddadd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7240,9 +7240,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					   new_crtc_state);
 
 		if (!new_crtc_state->dsb_color_vblank) {
-			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
-
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
-- 
2.43.0

