Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LO6HbaYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C7CB2E27
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849EE10E8C5;
	Thu, 29 Jan 2026 17:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwdSiEmt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8893510E8C5;
 Thu, 29 Jan 2026 17:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707699; x=1801243699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gY+E5Uba6Ouxfrcw5NglVhSxZFIAahTbSt8PHf6N5CM=;
 b=jwdSiEmtuIYkavvfvULxbz/ate+VgB7nt5JbXPrRE+HGD0rECwfuBrto
 YE0ARIBVekolIsDMALElG+etA8FU2o8yyAgkxs52qW6aVJrCy7HJjI60O
 k3X5Hhfbl/YJl4v6DpErofyWdg1LCF0dwvCJBwhSmJXvgS4SqLFeyCvjP
 d2TYtCpwo8sVUCO9Iy3lU29KmhIkHJJl26hN/ij2HRCidMo6eiPdm0hCS
 Amm/7ViVi0tfUGdsRtzz5EEX2wsV9n0pLfNC28SktrT3L6uSUyAmgupAa
 AjURadRItYPVrWaYTXqLeEyRuaF7OE4Wip14p2NclcS1qZiLC7X9Bgo7h w==;
X-CSE-ConnectionGUID: rSSNMHCISXiQ52TU4hRa4A==
X-CSE-MsgGUID: 3ePZEnscSgqc/ptOYor3mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926958"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926958"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:19 -0800
X-CSE-ConnectionGUID: lqPRkYQvTbG6UE3fylpBrw==
X-CSE-MsgGUID: btAZHofWT7aCSPhsxDdHvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361137"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:16 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 15/16] drm/i915/display: Add upper limit check for pixel clock
Date: Thu, 29 Jan 2026 22:41:53 +0530
Message-ID: <20260129171154.3898077-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F0C7CB2E27
X-Rspamd-Action: no action

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Add upper limit check for pixel clock for DISPLAY_VER >= 30.
Limits don't apply when DSC is enabled.

The helper returns the upper limit for the platforms, capped to the
max dotclock (khz).

For the currently supported versions of HDMI, pixel clock is already
limited to 600Mhz so nothing needs to be done there as of now.

v2:
 - Add this limit to the new helper.
v3:
 - Rename helper to intel_max_uncompressed_dotclock(). (Imre)
 - Limit only for PTL and cap the limit to max_dotclock. (Imre)

BSpec: 49199, 68912
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7491e00e3858..9cfeb5530fd8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8001,6 +8001,17 @@ void intel_setup_outputs(struct intel_display *display)
 	drm_helper_move_panel_connectors_to_head(display->drm);
 }
 
+int intel_max_uncompressed_dotclock(struct intel_display *display)
+{
+	int max_dotclock = display->cdclk.max_dotclk_freq;
+	int limit = max_dotclock;
+
+	if (DISPLAY_VER(display) >= 30)
+		limit = 1350000;
+
+	return min(max_dotclock, limit);
+}
+
 static int max_dotclock(struct intel_display *display)
 {
 	int max_dotclock = display->cdclk.max_dotclk_freq;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f8e6e4e82722..0e9192da601d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -488,6 +488,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
+int intel_max_uncompressed_dotclock(struct intel_display *display);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 798a0d192b72..482b7d28188e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1428,6 +1428,9 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 									 target_clock,
 									 htotal,
 									 dsc_slice_count);
+	else
+		effective_dotclk_limit =
+			intel_max_uncompressed_dotclock(display) * num_joined_pipes;
 
 	return target_clock <= effective_dotclk_limit;
 }
-- 
2.45.2

