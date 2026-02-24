Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKyIF+oenWnQMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11471181794
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A80810E4AD;
	Tue, 24 Feb 2026 03:45:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GESr/QVm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBBD10E4A6;
 Tue, 24 Feb 2026 03:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771904742; x=1803440742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JE55NGO6XNJbfXNGe9wiitFTfZPdiA55t/B0sRS7myo=;
 b=GESr/QVmZOuVU9IBoyXguxF6xoN9zS3FzbNFmzA2RE1qRBnOTveTJRWa
 VSqCIeup4gQxZ1qTQT1RgMVdgj8VTu5Bvwz6PSaGVQf2Y7KP5c37jeYTE
 PaH3RkNiR+qtqXiEmrL3XuEsMSrDMBjRPySXcQtbbM3vD9IgXpv2Oundq
 TYw9HZKudhLdYdqd7rjSUjzqCQ4aPmejytErDQZjbk9petMDGlKOj7HVl
 qIkRB1KtyxDHfB4o1bd98wQzCOs58koItyoS+Ey7vLAZ/NosTmUwMep3z
 RTwRHdr8qCAX5HXR3GFQxSeKKjsNI05FXb6ix5Bvg07uhqlc0HIBcSL9s g==;
X-CSE-ConnectionGUID: NJN9j1icRX2RV1wqss9aiw==
X-CSE-MsgGUID: PQC7SX0gRUuZ4I7c+1cZkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72817867"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72817867"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:45:42 -0800
X-CSE-ConnectionGUID: em5P7xHFQ8OR2dwZvcYopA==
X-CSE-MsgGUID: Ibni2khnSfmKrb0j1jQghA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215010641"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 23 Feb 2026 19:45:40 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 7/8] drm/i915/backlight: Provide clear description on how
 backlight level is controlled
Date: Tue, 24 Feb 2026 09:15:25 +0530
Message-Id: <20260224034526.2730130-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224034526.2730130-1-suraj.kandpal@intel.com>
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 11471181794
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
index 043c9aef2ea6..aac6cdb5b69b 100644
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

