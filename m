Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 91bQG2dFMWoffwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B68A68F7C9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ji8fOSP4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD3310EAD8;
	Tue, 16 Jun 2026 12:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600AE10EAB6;
 Tue, 16 Jun 2026 12:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613923; x=1813149923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6BTz+WKxDRFojDm0QGvIcyOOR94l/OXYj6t9Mg4oy18=;
 b=ji8fOSP47jfAI8bO4VMon/2iNNiCsY91tFZRG8nb91KiH0Bl8yI4Y+or
 aSK3kWPX4ylFabvOzDRKRLlQpWQ8x6u1vy6eRAoBDYUc89XlLKTZhGVV3
 wuNrhabFjB5qFvprGn4lAsNrvtXERXD0olJ22FejlfZ5YnvpqQZ3xgd3H
 OkszPE1dTZyr+xlX6yHc7qbR8yn5mCXFhtD08EJfknuJ+3yfDAPaWNkxw
 Erzm7EjNZa067zPKmzkAIVHhgYZd/fFvbOC9JIyOWUhUtsSl6V+OPMV5R
 XGZWhJ55xdIzVGYCo6Lm15dKFqun1Sxps6JTvC0q0wxJ3LtM7vNzAX591 A==;
X-CSE-ConnectionGUID: 5Q901nozQWixdUa5jA/FOA==
X-CSE-MsgGUID: B9nnI4++Q7y9+45OwxbpAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513228"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513228"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:23 -0700
X-CSE-ConnectionGUID: cD7wOMNuTQiE0XNhbPOYUQ==
X-CSE-MsgGUID: llpbPpkbTeK43TapPee6+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876251"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:22 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 04/39] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Date: Tue, 16 Jun 2026 18:13:40 +0530
Message-ID: <20260616124416.2442161-5-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B68A68F7C9

From: Animesh Manna <animesh.manna@intel.com>

Let intel_set_transcoder_timings() take the target transcoder as an
explicit argument instead of always using crtc_state->cpu_transcoder.
This makes the helper reusable for callers that need to program timings
for a transcoder other than the CRTC's CPU transcoder.

Update all existing callers to pass crtc_state->cpu_transcoder so there
is no functional change.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e2e4b00a8fa9..dceb70cf5397 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -132,7 +132,8 @@
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
 
-static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
+static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
+					 enum transcoder cpu_transcoder);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
@@ -1504,7 +1505,7 @@ static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 					       &crtc_state->dp_m2_n2);
 	}
 
-	intel_set_transcoder_timings(crtc_state);
+	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 
 	ilk_set_pipeconf(crtc_state);
 }
@@ -1635,7 +1636,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 					       &crtc_state->dp_m2_n2);
 	}
 
-	intel_set_transcoder_timings(crtc_state);
+	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
@@ -2048,7 +2049,7 @@ static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_st
 					       &crtc_state->dp_m2_n2);
 	}
 
-	intel_set_transcoder_timings(crtc_state);
+	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 
 	i9xx_set_pipeconf(crtc_state);
 }
@@ -2664,12 +2665,12 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
 	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
 }
 
-static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
+static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
+					 enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
-- 
2.43.0

