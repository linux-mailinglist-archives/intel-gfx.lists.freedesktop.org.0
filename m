Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VtQjEHIZMWpxbgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:37:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6955768D9E1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:37:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gx7WunI6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F3E10E9C8;
	Tue, 16 Jun 2026 09:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE79710E99F;
 Tue, 16 Jun 2026 09:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781602671; x=1813138671;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3X+gc7y4iBGyBoLjKwB2nGly1YebL8MguN9JQX/qRbY=;
 b=gx7WunI6uZIhKorCVrxhH3hzxdUIHoOzaeesVRQaQwhfemM2vSIDsOKT
 ZxBlgHhJRQxZApF9wr6JzZImwopp5c4IvTPXIqoqFPhhXlWLnc8/T3+po
 5xtf0jG86xhtL3zYx2x9dLbiI3XuBPHRwusM8U7Ji/w70tIx3o+kXQON6
 fdWymNKqp5Sgtj8MfVDw9YfIErB4Swei9yIPqJJ8pkDZOozsUQlBX93kH
 wdPlHa0P6FNacxr2OuH9rtyCfrC1n/rL6Y2CmcTNJ0ee/0t4gdO7Y+9x4
 kSI9MyWmBMp0gCZMn2CVU9j4WYvNKft4G2M/uAkZh1JWX1MDl7CfxK2Fd Q==;
X-CSE-ConnectionGUID: s8zA7lGSQEG/vzQ544GzRQ==
X-CSE-MsgGUID: Dj4K+fAFRD2gqzsgG3VRwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82262483"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82262483"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 02:37:51 -0700
X-CSE-ConnectionGUID: 9rfmbq1ZQXmpac7uaq9JkQ==
X-CSE-MsgGUID: 1SeNnT3OQeWo953KkicXLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="243351335"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa006.fm.intel.com with ESMTP; 16 Jun 2026 02:37:49 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915/backlight: Set brightness to 0 on disable
Date: Tue, 16 Jun 2026 15:06:36 +0530
Message-Id: <20260616093636.2334540-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6955768D9E1

On backlight disable for AUX based panels set the brightness to 0 before
disabling the backlight. PWM based backlight also does set the
brightness to 0 before disable.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a8d56ebf06a2..e4ce39c1eebb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -355,9 +355,14 @@ intel_dp_aux_hdr_disable_backlight(const struct drm_connector_state *conn_state,
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
-	/* Nothing to do for AUX based backlight controls */
-	if (panel->backlight.edp.intel_cap.sdr_uses_aux)
+	/*
+	 * Drive the DPCD brightness to 0 before tearing down the link / power
+	 * sequencer so the panel can blank emission gracefully.
+	 */
+	if (panel->backlight.edp.intel_cap.sdr_uses_aux) {
+		intel_dp_aux_hdr_set_aux_backlight(conn_state, 0);
 		return;
+	}
 
 	/* Note we want the actual pwm_level to be 0, regardless of pwm_min */
 	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_pwm_level(connector, 0));
@@ -519,6 +524,12 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 
+	/*
+	 * Drive the DPCD brightness register to 0 before clearing BL_ENABLE or
+	 * dropping the panel power.
+	 */
+	drm_edp_backlight_set_level(&intel_dp->aux, &panel->backlight.edp.vesa.info, 0);
+
 	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
 
 	if (!(panel->backlight.edp.vesa.info.aux_enable ||
-- 
2.25.1

