Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4vwOEu9oKmqxowMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:51:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78E966F92A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:51:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=e170cqhH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6803310ED57;
	Thu, 11 Jun 2026 07:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63BA410ED56;
 Thu, 11 Jun 2026 07:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781164267; x=1812700267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sixOvvmgEm8JuPVOiYQCHwKnq5wMBcGCmWj2s3drq40=;
 b=e170cqhHD/uhnkL+mH4zIrdNM/+ZNQVZsFXmsJZto9FPtlBjzzg0TcxV
 APq0BKRgsoHEx/sqJqYD+aRVfec2gUDSWKyZds9mPbcS8q/xVypDbY2L8
 oapKqfGR++2np4LqliK9tGbQ+lW0Kt4te/d28c0LHI5sfs6VrTjOHcz3F
 4JVpFMTHKPbAtBBHnh1smYn1wcCk9gxAXcgK28Q+E9sZUzhFhx8vYgPwU
 +ARcyxOBZ6TnpxvZsN9g766F/JlmE8I+shBTJVFOEMdGSzbNXtdkyXoED
 szXdX2xxepwdOY8DhHWqGtE0Fqpq60ZtXrECVbHvX7k3pu0QJv8FcgmuQ g==;
X-CSE-ConnectionGUID: gojwn7d0QG64fpAGowXFbA==
X-CSE-MsgGUID: FMP/wtyFQaSf6yJrnlSk1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93078748"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93078748"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:51:06 -0700
X-CSE-ConnectionGUID: WrZ7AvcrQ1Of3ln87bWRZQ==
X-CSE-MsgGUID: nF5mWUnlRE+IwzOPdwKMpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="251503343"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:51:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v4 06/12] drm/i915/dip: Store and use AS SDP transmission line
 from crtc state
Date: Thu, 11 Jun 2026 13:03:08 +0530
Message-ID: <20260611073316.1439306-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
References: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E78E966F92A

The driver currently computes the Adaptive Sync SDP transmission line
directly at programming time. Instead, compute and store the
AS SDP transmission line in the crtc state and use it when programming the
EMP_AS_SDP_TL register.

We get the clear picture about the SDPs and guardband only in
intel_dp_sdp_compute_config_late() therefore we must configure the
AS SDP transmission line at this point when AS SDP is enabled in
crtc_state.

This prepares the ground for supporting programmable transmission lines
for additional DP SDPs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 ++
 drivers/gpu/drm/i915/display/intel_dip.c | 20 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_dip.h |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c  | 11 +++++++++++
 4 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6399b16405c8..d2edfad295d5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -49,6 +49,7 @@
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
+#include "intel_dip.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -4215,6 +4216,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
+	intel_dip_sdp_transmission_line_get_config(pipe_config);
 
 	intel_audio_codec_get_config(encoder, pipe_config);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
index 504a2edadd0e..333314637db5 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.c
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -27,19 +27,21 @@ void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	u32 transmission_line = 0;
 
 	if (!HAS_EMP_AS_SDP_TL(display))
 		return;
-	/*
-	 * Since currently we support VRR only for DP/eDP, program the register
-	 * for Adaptive Sync SDP. For non-DP encoders, the register is reset
-	 * to 0.
-	 */
-	if (intel_crtc_has_dp_encoder(crtc_state))
-		transmission_line = intel_dp_get_as_sdp_transmission_line(crtc_state);
 
 	intel_de_write(display,
 		       EMP_AS_SDP_TL(display, cpu_transcoder),
-		       EMP_AS_SDP_DB_TL(transmission_line));
+		       EMP_AS_SDP_DB_TL(crtc_state->dip.emp_as_sdp_tl));
+}
+
+void intel_dip_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->dip.emp_as_sdp_tl = intel_dp_get_as_sdp_transmission_line(crtc_state);
+}
+
+void intel_dip_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->dip.emp_as_sdp_tl = intel_dip_read_emp_as_sdp_tl(crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dip.h b/drivers/gpu/drm/i915/display/intel_dip.h
index 37507ac3e645..600dabbf7372 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.h
+++ b/drivers/gpu/drm/i915/display/intel_dip.h
@@ -43,4 +43,7 @@ struct intel_dip {
 	u16 emp_as_sdp_tl;
 };
 
+void intel_dip_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state);
+void intel_dip_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_DIP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f54f7faf878f..e143ec1b76d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7356,6 +7356,8 @@ int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
 		return -EINVAL;
 	}
 
+	intel_dip_sdp_tl_compute_config_late(crtc_state);
+
 	return 0;
 }
 
@@ -7468,6 +7470,15 @@ void intel_dp_link_cleanup(struct intel_dp *intel_dp)
 
 int intel_dp_get_as_sdp_transmission_line(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!HAS_EMP_AS_SDP_TL(display))
+		return 0;
+
+	if (!(crtc_state->infoframes.enable &
+	      intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)))
+		return 0;
+
 	/*
 	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
 	 * Transmission Line, which corresponds to the start of the
-- 
2.45.2

