Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIDaD8wMpWn50QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BB31D2DF6
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B1F10E434;
	Mon,  2 Mar 2026 04:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bOX+RQZ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A7610E42D;
 Mon,  2 Mar 2026 04:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772424390; x=1803960390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YdFxXf9K2ra8sAheHhlvBnUlq9w/q21/sQ9O6ehNUj0=;
 b=bOX+RQZ2d2mqj4u/xcDEJaezQ2YB8A2LP4kMcYi9BWXXHFnEal247kWX
 uiBlrfB40xqjh6jufGcbVuBpdd2z6I5+1/8V/oh13rFm5SY4FhASIkUJQ
 Q7HoxHpLZWcDsXk8Il4C6TTcW+sbakGQVct9ORjMjQRB8coBTx7kHwpeM
 0khfIQrEAJJ7Xn12WVXmd5ShkaND5Pv0lCGHDYEQNcrYMvkTtGzMvUVVm
 csTq7UIF1klBSYmpxbpkCldTr+X75HUVsgE9K5277DghPbowXPfqdimnD
 yieAeHr0X3FctgvaN340QFN+Oa6/DXrNu/DjYCQP0Qjktzuxsqs9sD8cV Q==;
X-CSE-ConnectionGUID: 2epk7ZISS9Cf++91V9Z7sQ==
X-CSE-MsgGUID: ovC5ZZLqQsywyVPOYIgSaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77294451"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77294451"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 20:06:30 -0800
X-CSE-ConnectionGUID: 4iP94NO6RKG8dRgLncsiRg==
X-CSE-MsgGUID: iGeZ/Q6MRiOL6eYK0wWAFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217541027"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 01 Mar 2026 20:06:28 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RESEND 7/8] drm/i915/backlight: Provide clear description on how
 backlight level is controlled
Date: Mon,  2 Mar 2026 09:36:12 +0530
Message-Id: <20260302040613.3324049-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260302040613.3324049-1-suraj.kandpal@intel.com>
References: <20260302040613.3324049-1-suraj.kandpal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: D9BB31D2DF6
X-Rspamd-Action: no action

Currently it takes us multiple log prints to arrive at the conclusion
on how we are actually controlling backlight level. Make the logging
concise.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index af05b30a0a7a..cedfbf516b5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -368,6 +368,16 @@ static const char *dpcd_vs_pwm_str(bool aux)
 	return aux ? "DPCD" : "PWM";
 }
 
+static const char *backlight_unit_str(struct intel_panel *panel)
+{
+	if (panel->backlight.edp.vesa.info.luminance_set)
+		return "NITS";
+	else if (panel->backlight.edp.vesa.info.aux_set)
+		return "Brightness %";
+	else
+		return "PWM";
+}
+
 static void
 intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
 {
@@ -542,9 +552,11 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable ||
 				    panel->backlight.edp.vesa.info.luminance_set));
 	drm_dbg_kms(display->drm,
-		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
+		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s using %s values\n",
 		    connector->base.base.id, connector->base.name,
-		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set));
+		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set ||
+				    panel->backlight.edp.vesa.info.luminance_set),
+		    backlight_unit_str(panel));
 
 	if (!panel->backlight.edp.vesa.info.aux_set ||
 	    !panel->backlight.edp.vesa.info.aux_enable) {
@@ -569,9 +581,6 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 		panel->backlight.enabled = panel->backlight.level != 0;
 		if (!panel->backlight.level)
 			panel->backlight.level = panel->backlight.max;
-		drm_dbg_kms(display->drm,
-			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level is controlled through DPCD\n",
-			    connector->base.base.id, connector->base.name);
 	} else if (panel->backlight.edp.vesa.info.aux_set) {
 		panel->backlight.max = panel->backlight.edp.vesa.info.max;
 		panel->backlight.min = 0;
-- 
2.34.1

