Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id laZlLnFFMWorfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E3268F7EE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=P8qE5R1G;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FF310EAF0;
	Tue, 16 Jun 2026 12:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE05810EAB7;
 Tue, 16 Jun 2026 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613931; x=1813149931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Pp9D2Vg61Qh5RYSt8GubiNPsXL1zXZD4e9hKz6mPitQ=;
 b=P8qE5R1GuyJajYJou7QsageUcTZlj7moHsN0UeyNRNQxikVI1w6AqIS2
 EpnGqXMLFKE6ogOOICzTsqwbXDrLIY9uOkb1zZbEyL3CAzd/sd7+hKF+G
 FNW/VyBtNdUY5GvHUokudVcDdSQuEzTmBYs7d9siLeS8A4b4ReTYXZMVn
 Z95afqHBDdsO6mat1qXQ1ja4ssmwM6qxMM7GaB5rQbzg/rpI5bYTzaNnr
 OzzBHBbSV9GjFQqKsmxMPWqu2aD9+xO+WJEY/jEc84EmbVNK8YwU3nkA0
 jobIdgJSt/13XSa5FprKKAqXo36pzztLcWEimOIiRW8amA/zwG+SYFQYz Q==;
X-CSE-ConnectionGUID: wVCQJsVeTkC2DjSWrL4Kfw==
X-CSE-MsgGUID: TDSd5VMGRku88g0dkKAk0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513237"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513237"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:31 -0700
X-CSE-ConnectionGUID: coBYvjuVQC+/VAP3B4nHRA==
X-CSE-MsgGUID: B+YzYps8TNKpAJdT7ctzxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876264"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:30 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 10/39] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Date: Tue, 16 Jun 2026 18:13:46 +0530
Message-ID: <20260616124416.2442161-11-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: 64E3268F7EE

From: Animesh Manna <animesh.manna@intel.com>

Take the target transcoder as an explicit parameter so the helper can
program VRR VMIN/VMAX/FLIPLINE registers for transcoders other than the
crtc_state->cpu_transcoder (e.g. the CMTG transcoder).

No functional change: all existing callers pass crtc_state->cpu_transcoder.

v2:
- Add separate patch for renaming the cpu_transcoder variable. [Ville]

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 9 +++++----
 drivers/gpu/drm/i915/display/intel_vrr.h     | 4 +++-
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8455ad878e66..8f6acddac6a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6694,7 +6694,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	if (new_crtc_state->update_lrr) {
 		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
 		intel_cmtg_set_timings(new_crtc_state, LRR);
-		intel_vrr_set_fixed_rr_timings(new_crtc_state);
+		intel_vrr_set_fixed_rr_timings(new_crtc_state, new_crtc_state->cpu_transcoder);
 		intel_vrr_transcoder_enable(new_crtc_state);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e03b5daac5be..60a92e8b1094 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_limits.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -318,10 +319,10 @@ int intel_vrr_fixed_rr_hw_flipline(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_fixed_rr_hw_vtotal(crtc_state);
 }
 
-void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
+				    enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
@@ -645,7 +646,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       lower_32_bits(crtc_state->cmrr.cmrr_n));
 	}
 
-	intel_vrr_set_fixed_rr_timings(crtc_state);
+	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
 
 	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
@@ -974,7 +975,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		intel_vrr_tg_disable(old_crtc_state);
 
 	intel_vrr_disable_dc_balancing(old_crtc_state);
-	intel_vrr_set_fixed_rr_timings(old_crtc_state);
+	intel_vrr_set_fixed_rr_timings(old_crtc_state, old_crtc_state->cpu_transcoder);
 }
 
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 4f16ca4af91f..57c5e28378db 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -15,6 +15,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dsb;
 struct intel_display;
+enum transcoder;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -42,7 +43,8 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
-void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
+				    enum transcoder cpu_transcoder);
 void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
 			 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
-- 
2.43.0

