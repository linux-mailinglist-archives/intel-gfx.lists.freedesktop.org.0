Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIIBM/OzxWnKAwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:32:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 806B033C797
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1121510EAEF;
	Thu, 26 Mar 2026 22:32:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FU4hW/lx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC3F10EAEF;
 Thu, 26 Mar 2026 22:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774564337; x=1806100337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3hpY8c8eMl/oe6b/8ZeLJhuopM77iqYdfcPUdzrUmjI=;
 b=FU4hW/lxZ/iAC7LIb3B8ER79UzLAfwdkxGuZDpEQDQxsMgIoAWlSbYs4
 tB5DLtbNQ7HzI+jI4JwlFNrNxN4p+wKsKEk0UywOIr6wh4ut7t8IztRcM
 Jd/e4pEZ18H7NulZeeKJw/+Iaj7nsFkubg6/v5xa/gsLIKuHksDcCTRpA
 ibnMGXNtjBNUDNzCEE9Wfbpk34AbelssMExZotFqDp1H+/8VyV7uWbv3J
 bKHsDg+1fBszRbmzr/Y6wmCDyQQf/PYfhL3/ruxtzaj4xAMa0nXpAW9u1
 IU+Zwrk3tRd0Hd3je+ExsOOs25i8V3FDgt4o8e7OoG6BjZ60mi1tlkeQU w==;
X-CSE-ConnectionGUID: k3klTtAfRXu12P5nOh/LkQ==
X-CSE-MsgGUID: 21aKeXWBTRuQ0vIO0TRIWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="86713781"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="86713781"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:32:16 -0700
X-CSE-ConnectionGUID: sQlCcfenStqJ0LSq856Okw==
X-CSE-MsgGUID: yKmjNlBKSWWGWyGNnwczSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="248493992"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:32:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 8/9] drm/i915/pfit: Call intel_pfit_compute_config()
 unconditionally on (e)DP/HDMI
Date: Fri, 27 Mar 2026 00:31:38 +0200
Message-ID: <20260326223139.19116-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 806B033C797
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We now have three different reasons for calling
intel_pfit_compute_config():
- actual pfit scaling/centering
- YCbCr 4:2:0 output
- sharpness filter

So let's just all the intel_pfit_compute_config() from
both the DP and HDMI code. Both gmch and ilk+ pfit code
should be capable of judging whether anything actually
needs the pfit.

The only slightly questionable thing in the gmch code is
the dithering knob, but that's only a thing on gen2/3 which
don't even have HDMI/DP outputs, and so not an issue here.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 9 +++------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++-----
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..ff3904b77492 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3545,12 +3545,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
-	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_pfit_compute_config(pipe_config, conn_state);
-		if (ret)
-			return ret;
-	}
+	ret = intel_pfit_compute_config(pipe_config, conn_state);
+	if (ret)
+		return ret;
 
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 05e898d10a2b..17bd2c207453 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2380,11 +2380,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (intel_hdmi_is_ycbcr420(pipe_config)) {
-		ret = intel_pfit_compute_config(pipe_config, conn_state);
-		if (ret)
-			return ret;
-	}
+	ret = intel_pfit_compute_config(pipe_config, conn_state);
+	if (ret)
+		return ret;
 
 	pipe_config->limited_color_range =
 		intel_hdmi_limited_color_range(pipe_config, conn_state);
-- 
2.52.0

