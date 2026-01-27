Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EpjJI2yeGkksQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67941946A5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89EA10E56A;
	Tue, 27 Jan 2026 12:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADMe0oH5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65EA10E564;
 Tue, 27 Jan 2026 12:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769517705; x=1801053705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OiJjqgAevpOTPiZ0qP4voa/sqVyVnCj9slX5jGuH/Hc=;
 b=ADMe0oH5bffesYbxyFsQ7RHF+EtFznm2dYTZDpDb6adfN8mSGEBr/sSq
 TQQ3XveimS+QDQDKyB5D9e3nRtcecS8/JgiSzYI7Q0RWUJG91nExmf52g
 k56xnb+bJdvCpEgHCXZAjOEcVLN0dSBSOR7SvV9PcJLwuQ/Q01Akre8FW
 Z1sxPCxuH2Akwe8oYpdD7+A2xfw43I2MLngbXbKRSWeLJSg/wdfx+XekD
 GSFLjwcze6fUWa9KcMMNHAj8V5EMx1R68hW9f+5R9Cg1uRs/1mDjjnqA5
 gJN7e/F8aX0pQHHJ9Bz/eVA6e2pqU/pkrw1t1YHAWWYMipHCPAUh/d3wR Q==;
X-CSE-ConnectionGUID: 6Iir57XSSL6NhB1dAIoPMA==
X-CSE-MsgGUID: JvOV9Nm0RYiRm3l0LVwv7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70767652"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70767652"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:45 -0800
X-CSE-ConnectionGUID: WqrSXSa2Q/GbZFY/F7JQsA==
X-CSE-MsgGUID: zqKe5XW3TSyyDBSFL45qKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239231231"
Received: from ettammin-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:43 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v11 06/11] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit for
 LunarLake and onwards
Date: Tue, 27 Jan 2026 14:41:15 +0200
Message-ID: <20260127124120.1069026-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127124120.1069026-1-jouni.hogander@intel.com>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 67941946A5
X-Rspamd-Action: no action

On LunarLake we are using TRANS_PUSH mechanism to trigger "Frame Change"
event. This way we have more control on when PSR HW is woken up. I.e. not
every display register write is triggering sending update. This allows us
setting DSB_SKIP_WAITS_EN chicken bit as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index cf5fb30cab83..8868776c4311 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -17,6 +17,7 @@
 #include "intel_display_types.h"
 #include "intel_dsb.h"
 #include "intel_dsb_regs.h"
+#include "intel_psr.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 #include "skl_watermark.h"
@@ -217,18 +218,24 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
  * definitely do not want to skip vblank wait. We also have concern what comes
  * to skipping vblank evasion. I.e. arming registers are latched before we have
  * managed writing them. Due to these reasons we are not setting
- * DSB_SKIP_WAITS_EN.
+ * DSB_SKIP_WAITS_EN except when using TRANS_PUSH mechanism to trigger
+ * "frame change" event.
  */
 static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
+		DSB_SKIP_WAITS_EN : 0;
+
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_CTRL_WAIT_SAFE_WINDOW |
+		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
-	else
-		return 0;
+
+	return chicken;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

