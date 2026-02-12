Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kK//C6Ygjmk+/wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:49:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6091306E9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C386510E792;
	Thu, 12 Feb 2026 18:49:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqyyPl8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA9610E77B;
 Thu, 12 Feb 2026 18:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770922136; x=1802458136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SJoHm3q5vgxGE+B6U4ucjIR768oFj5Vrmhtx+IshAn4=;
 b=GqyyPl8MJNDXbO3xFeJzMKu3RRq0JTlJj+o8vyYfOq4iO3nDcQu1ybM7
 sK/XYhT0u3XBfKxkxPDbJiQyE1RlYWBTw7/UizrZM0tKK7Y56Tu3DEpIT
 7m1vDzprCK8sLE1SS9BPH6Uzrz1ZobbCUXhVWcHH5REwOy1hWnzy0OC5c
 B+ztFRsD/mmwYenfVm8beE1tcy8t9y1/XRS0MCk9yZqzZPA5jBwPpFee5
 0qZB7GVm6fcR+tv/8yfQAQC4OBLa94Huds06c57UDhwXqOt85T/E41IC/
 u/2erDwUyAcMljs4djS+w+I92oh/hxoUsXQdgN0RzLAKCfSKUQGUb8C5M w==;
X-CSE-ConnectionGUID: CNErqBxTSuWmswDp4U7irg==
X-CSE-MsgGUID: J+o2+iLKQyaxCNW4/6Y0oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72204160"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="72204160"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:39 -0800
X-CSE-ConnectionGUID: BTJycDhMRHCu+MqJlEgy4A==
X-CSE-MsgGUID: 8JvMPaTRSxav6mhRXcj4ag==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:37 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 10/15] drm/i915/display: convert W/As in intel_flipq.c to
 new framework
Date: Thu, 12 Feb 2026 20:46:08 +0200
Message-ID: <20260212184737.352515-11-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212184737.352515-1-luciano.coelho@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8B6091306E9
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
 drivers/gpu/drm/i915/display/intel_flipq.c      | 13 +++----------
 3 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 1459e5df1dd3..3aa79e607bf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -117,6 +117,10 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
+	case INTEL_DISPLAY_WA_18034343758:
+		return DISPLAY_VER(display) == 20 ||
+			(display->platform.pantherlake &&
+			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
 	case INTEL_DISPLAY_WA_22010178259:
 		return DISPLAY_VER(display) == 12;
 	case INTEL_DISPLAY_WA_22011320316:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 87fe404962ce..57345d0abe1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -46,6 +46,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16011863758,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
+	INTEL_DISPLAY_WA_18034343758,
 	INTEL_DISPLAY_WA_22010178259,
 	INTEL_DISPLAY_WA_22011320316,
 	INTEL_DISPLAY_WA_22012358565,
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 1e9550cb66a3..234fe22498f0 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -12,6 +12,7 @@
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dsb.h"
@@ -447,19 +448,11 @@ void intel_flipq_add(struct intel_crtc *crtc,
 	intel_flipq_sw_dmc_wake(crtc);
 }
 
-/* Wa_18034343758 */
-static bool need_dmc_halt_wa(struct intel_display *display)
-{
-	return DISPLAY_VER(display) == 20 ||
-		(display->platform.pantherlake &&
-		 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
-}
-
 void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
-	if (need_dmc_halt_wa(display))
+	if (intel_display_wa(display, 18034343758))
 		intel_dsb_wait_usec(dsb, 2);
 }
 
@@ -467,6 +460,6 @@ void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
-	if (need_dmc_halt_wa(display))
+	if (intel_display_wa(display, 18034343758))
 		intel_dsb_reg_write(dsb, PIPEDMC_CTL(crtc->pipe), 0);
 }
-- 
2.51.0

