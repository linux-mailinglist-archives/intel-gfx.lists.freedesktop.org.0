Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dS5gFEFiMGpxSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F014C689E9B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VhsoF8bo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B85A10E6D9;
	Mon, 15 Jun 2026 20:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599F110E6D9;
 Mon, 15 Jun 2026 20:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555774; x=1813091774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5eJiq2UaDLzGjb92Y9fQO62oP574fwX2mfLhSsQh9TA=;
 b=VhsoF8boTXJjBocfUnNgrE7Cu+/+NDTel0fQEtcMt81+45oFCH+km1UN
 zQh2MXsLxfJlN036MyZOAYI2r9xW2csKouINnOb5McWEdvyms/8+K8IC5
 xAxWS533OF/Xw2fuUd8ZHHhtqPjHsAlgXo7DPRwdiDd8Viwktdsjlw86L
 GwHOCOmZuWG4oQLHFWasts9PqI8i+ciAL8IcMrS3/ldCoKy+cWWc1ozl3
 WJFlXPbr1A2TBRp/I9ixI6MhPaYT8AikogHJtnL6P3Tt3HVvU5lgepw2i
 6Xr4vSFd/GDmWqXmCEGgM3oqoKuueb+vnwx9Wz999dVntwphJcei0+xPG A==;
X-CSE-ConnectionGUID: KptEVA2sS3S+WdWW+/Gdcg==
X-CSE-MsgGUID: WkQs1GLPT2i6LkpOo66HYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694765"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694765"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:36:14 -0700
X-CSE-ConnectionGUID: TIHL8XMvT7iqzlcpFWKb4Q==
X-CSE-MsgGUID: y6CwcUFMRHekqqW9BZn7wA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2026 13:36:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 10/22] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Date: Tue, 16 Jun 2026 01:33:27 +0530
Message-Id: <20260615200339.885190-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260615200339.885190-1-animesh.manna@intel.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F014C689E9B

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
2.29.0

