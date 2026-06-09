Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QsTKEioBKGpA7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8BE65FCBD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UzfwQtMs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7158810E30D;
	Tue,  9 Jun 2026 12:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C17310E2F2;
 Tue,  9 Jun 2026 12:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006631; x=1812542631;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=35qt/665igP7BjOvu3R9OYN5YRv4XP88Z4VRZegv0c0=;
 b=UzfwQtMsRlsYApfmODTQ5C7kz4hTioRQzIwSYwiei3t8XajJRpAnRL6X
 Wo9a1UvvNtLRgaeT2ouKB5ME/Dn+uANsoKCx7nS7EUM0K049M9Ish07DB
 tobJlSAb3n153nQDz4N0w6G2uqSanRfCPPQtK+qlp1szBsL3oralgFN+l
 l4QfYM7MISzUZea9Hei6MydJXVAA06KPv93I9b07RiEvG4F0AAyDWahot
 EBeirmbreClAft3nCYJ2KCjtvldMW/L7OhbnhsAxTA8vST1Y5TRasz5IK
 xLP1K+am8QmFrV+tpzEnxPLZtSuG5+BqN9I2qeNZgR9QXpTCTdeaI9Ngo w==;
X-CSE-ConnectionGUID: 2AadFhiITrCGZgpbK3BiXA==
X-CSE-MsgGUID: Vnivf0HqRh+7Z+Y3/YMz7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340360"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340360"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:51 -0700
X-CSE-ConnectionGUID: AlgSnP5ZRmCHoVFhsRnIkw==
X-CSE-MsgGUID: ESZHwGdSQiSDL+YV4+/s7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988257"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:50 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 08/36] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Date: Tue,  9 Jun 2026 17:32:22 +0530
Message-ID: <20260609120250.867750-9-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA8BE65FCBD

From: Animesh Manna <animesh.manna@intel.com>

Take the target transcoder as an explicit parameter so the helper can
program VRR VMIN/VMAX/FLIPLINE registers for transcoders other than the
crtc_state->cpu_transcoder (e.g. the CMTG transcoder).

No functional change: all existing callers pass crtc_state->cpu_transcoder.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h     |  5 ++++-
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 77f65a1a12ca..e4afd887a962 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6682,7 +6682,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	if (new_crtc_state->update_lrr) {
 		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
 		intel_cmtg_set_timings(new_crtc_state, true);
-		intel_vrr_set_fixed_rr_timings(new_crtc_state);
+		intel_vrr_set_fixed_rr_timings(new_crtc_state, new_crtc_state->cpu_transcoder);
 		intel_vrr_transcoder_enable(new_crtc_state);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e03b5daac5be..15d22de66d63 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -318,19 +318,19 @@ int intel_vrr_fixed_rr_hw_flipline(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
 }
 
-void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
+				    enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
 		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
 		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_FLIPLINE(display, transcoder),
 		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
 }
 
@@ -645,7 +645,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       lower_32_bits(crtc_state->cmrr.cmrr_n));
 	}
 
-	intel_vrr_set_fixed_rr_timings(crtc_state);
+	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
 
 	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
@@ -974,7 +974,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		intel_vrr_tg_disable(old_crtc_state);
 
 	intel_vrr_disable_dc_balancing(old_crtc_state);
-	intel_vrr_set_fixed_rr_timings(old_crtc_state);
+	intel_vrr_set_fixed_rr_timings(old_crtc_state, old_crtc_state->cpu_transcoder);
 }
 
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 4f16ca4af91f..2daba0c16162 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include "intel_display_limits.h"
+
 struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
@@ -42,7 +44,8 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
-void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
+				    enum transcoder transcoder);
 void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
 			 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
-- 
2.43.0

