Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SN/gJEVtfGkqMgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:35:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A9BB86DF
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8439610E950;
	Fri, 30 Jan 2026 08:35:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhxk89Uu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AD110E954;
 Fri, 30 Jan 2026 08:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769762115; x=1801298115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XRagSwXkpvV+8fpFlr+hwEaGQYl2N0/nNyHMawhJI9U=;
 b=bhxk89UuIkOXuRDOecnp50cfjTc1NBPcdGynvHFeLTdeARlLA7BQxREW
 11XDTRq/EIGsPLdKM5HfsxJT5ExefrWyigLaO3HDjORuq6iox3OTHpZqP
 9abkiH8Q7X/RS+9pRCkjA12cziWFSgWLPpzSmiczrnvfBnemQ7RiWfnGC
 0clRWucMw7d39ozRdWebmqtEf3nq7FxVrQWMIFkhDJh3j+hB5VpIUMHTU
 ThX3lOsLQBmwGc7AeALxPybN30C7FpLxJKzylGq20KO8C9XIo6m4eJoA8
 8TWxNm3tARukFce8LkJ72zb+OhtWod7xotN0tkX1Hr8yzdftfKL8+qLMM w==;
X-CSE-ConnectionGUID: j2GaCUq0S5CREU05wHoLtQ==
X-CSE-MsgGUID: cxzgN/JnSFeK98I7Vj1vWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74636737"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74636737"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:35:14 -0800
X-CSE-ConnectionGUID: pwzlWq2ATrSU546tHgKBRA==
X-CSE-MsgGUID: 75t4VpcrTKCJRP15JesnQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208910186"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 16/17] drm/i915/display: Add upper limit check for pixel clock
Date: Fri, 30 Jan 2026 13:48:11 +0530
Message-ID: <20260130081812.32087-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 00A9BB86DF
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
index 4cced16af8ce..552a59d19e0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -462,6 +462,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
+int intel_max_uncompressed_dotclock(struct intel_display *display);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 920e4d593b1d..d97bf44d7ded 100644
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

