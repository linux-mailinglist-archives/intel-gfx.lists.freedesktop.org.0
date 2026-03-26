Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJJeJr4gxWmC7AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA7C334E53
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45A910E9CB;
	Thu, 26 Mar 2026 12:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EKCeKjJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C969410E9A6;
 Thu, 26 Mar 2026 12:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774526645; x=1806062645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzsQA4Blebgo//uiHddvcIs2Y6i89BFpqE5n8S1DzOk=;
 b=EKCeKjJo6z3Hzzxfu90BxLkTagl7grGTuZF61KMmgK5Jr3+jjRN17BQF
 BjKWX10vkgYBgVSCjqizI5/Eyd78bR0zL3+QNfp+PVJ0mIbDYnlLec9V6
 IwOX3pQaVWGoELPB6eTTK6Z1fD1xbn8CZinqqMH3qtpsMGIJQuSI+RvoW
 TtLGH2xiEp8AVE4BBrF1yTT7l9lBUt5E2qfbsQCSOdUPC7FW1b0+KP6fV
 J5aYxCebTUrvvxt0c3OgQZBQDcHmRYeMN/2Hum+1mnQ2yDu1gLnYvIXtl
 Qs8D75ry1UceGmJx+0bjSXB/m2AR6JI83GFhOWGRJYnvI6rwEo9vPnAZ8 g==;
X-CSE-ConnectionGUID: 8kPs3dzLSpOHg3hb92mg8Q==
X-CSE-MsgGUID: ZernZRPlQ1WvfatzGIlHqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86960535"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="86960535"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:04:04 -0700
X-CSE-ConnectionGUID: SxuX0hN+T8mMSyEtTKAnSQ==
X-CSE-MsgGUID: yWbA2KlQTrODnzrbUzUPFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="224999437"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa008.jf.intel.com with ESMTP; 26 Mar 2026 05:04:03 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Move casf_compute_config
Date: Thu, 26 Mar 2026 17:30:27 +0530
Message-Id: <20260326120029.3409676-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260326120029.3409676-1-nemesa.garg@intel.com>
References: <20260326120029.3409676-1-nemesa.garg@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 6DA7C334E53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Prefill calculations are getting screwed up as casf_compute is getting
called in later stage. So move casf_compute_config to crtc_compute
config and check if there is a change in the sharpness strength, if so
set the flag uapi.mode_changed so that everytime when strength changes
casf_compute_config can be called and new strength value gets updated.

v2: Remove extra casf_check [Ville]
v3: Wrap commit message uto 75 [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10b6c6fcb03f..29c165bd8960 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2516,6 +2516,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 
 	intel_vrr_compute_guardband(crtc_state);
 
+	ret = intel_casf_compute_config(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
@@ -4308,10 +4312,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		return ret;
 	}
 
-	ret = intel_casf_compute_config(crtc_state);
-	if (ret)
-		return ret;
-
 	if (DISPLAY_VER(display) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state) ||
@@ -6441,6 +6441,10 @@ int intel_atomic_check(struct drm_device *dev,
 		if (new_crtc_state->uapi.scaling_filter !=
 		    old_crtc_state->uapi.scaling_filter)
 			new_crtc_state->uapi.mode_changed = true;
+
+		if (new_crtc_state->uapi.sharpness_strength !=
+		    old_crtc_state->uapi.sharpness_strength)
+			new_crtc_state->uapi.mode_changed = true;
 	}
 
 	intel_vrr_check_modeset(state);
-- 
2.25.1

