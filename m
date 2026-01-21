Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCpfGJFRcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1026A50D5B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AD810E6CB;
	Wed, 21 Jan 2026 04:09:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZuWS4zp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1B810E6CB;
 Wed, 21 Jan 2026 04:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968589; x=1800504589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nUXtVu9hb/79FnUtbYFp3r4cSfpZdO4EJkDa617s8+Y=;
 b=MZuWS4zpvWd6SXPXk8NQ6Ui7rzHeoHc2nIfmDv4ooE8HSx5UzpsT9FaC
 XfSTkL8TRgF8YwHjq6XvPVxcDF5r4oAJi5ndiQc/upFoufJueQcTWiaUp
 1fU1QPAm9en8Xx/2pjUdJrbSqH1KV9m6Ql8IKd5Gf2HlLkiMbm0eIQFf+
 RFDVqx2nywbIPwQR+35214kwIWxpsOtxgxFsFTFnPqKQhk+iY63Nl34qM
 GL9rwCJrfq3ZJLFQuluoykKdBFyU8ZNSIyIyktN1rmqTKKzAy4xjIg0ZT
 ejNno6R+BAAucrAWWopHj1bg6McBkmEP1V7PmKabwmCqm2xPGbJ/E9jhD Q==;
X-CSE-ConnectionGUID: iqjUA/KYRfOLKUh19SDaFg==
X-CSE-MsgGUID: arfwnZP7TKCQUMdi9w8fDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299979"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299979"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:49 -0800
X-CSE-ConnectionGUID: oiJ13yFeTpK1NBK6C6YGVw==
X-CSE-MsgGUID: OvNMPCi6TP68yc+qIamrhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330993"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/14] drm/i915/display: Add upper limit check for pixel clock
Date: Wed, 21 Jan 2026 09:23:30 +0530
Message-ID: <20260121035330.2793386-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1026A50D5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Add upper limit check for pixel clock by platform. Limits don't apply
when DSC is enabled.

For the currently supported versions of HDMI, pixel clock is already
limited to 600Mhz so nothing needs to be done there as of now.

BSpec: 49199, 68912

v2: Add this limit to the new helper
    intel_dp_pixel_rate_fits_dotclk(). (Ankit)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7491e00e3858..04021ad6b473 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8001,6 +8001,18 @@ void intel_setup_outputs(struct intel_display *display)
 	drm_helper_move_panel_connectors_to_head(display->drm);
 }
 
+int intel_dotclock_limit(struct intel_display *display)
+{
+	if (DISPLAY_VERx100(display) == 3002)
+		return 937500;
+	else if (DISPLAY_VER(display) >= 30)
+		return 1350000;
+	else if (DISPLAY_VER(display) >= 13)
+		return 1200000;
+	else
+		return 1100000;
+}
+
 static int max_dotclock(struct intel_display *display)
 {
 	int max_dotclock = display->cdclk.max_dotclk_freq;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f8e6e4e82722..0009c305f140 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -488,6 +488,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
+int intel_dotclock_limit(struct intel_display *display);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a6a1a803d860..bd8ba6db01db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1456,6 +1456,9 @@ bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
 									 target_clock,
 									 htotal,
 									 dsc_slice_count);
+	else
+		effective_dotclk_limit =
+			min(max_dotclk, intel_dotclock_limit(display)) * num_joined_pipes;
 
 	return target_clock <= effective_dotclk_limit;
 }
-- 
2.45.2

