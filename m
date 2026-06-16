Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oojsLW9jMWqQiQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AF8690B14
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PDmslOv3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF04110EC45;
	Tue, 16 Jun 2026 14:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2522710EC1B;
 Tue, 16 Jun 2026 14:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781621612; x=1813157612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WR2uN6mf420VlnTtyCseJhPOlmOKUXnoTS7gPc0v7aE=;
 b=PDmslOv3iu/pKMnQvm1SnRvAVTnhjdweqBdBv6+VaWPgeB/mHPAiL8G8
 3xX4YnlVLYKiZuhAwiq0tQgdFh+dVwKHwyLQOLacTuW6O+ejiAJXQZdo3
 efoubWz3hFRBMmuOxDIqkMn5WZAj+uGArnndQV99J/LkoVyoBUmzYakJN
 zaOFHD0cS2rS+aUm3ohSYH/QhTPH6utUSJTQhshGE5McwU6YaFWAcQth5
 lyWQI92n1UDz3NFQsGMsTH1oQ0gi1SiuaEO5US0hd3QHEHqCJLyt3U6Ga
 kHKgh1UvWAiUmF+vo1YYnGYcw5NVZfZTLelKTYgx+4YGzX0r5TywIV9S+ w==;
X-CSE-ConnectionGUID: Gf/a58OTRWOB3sPZF7+PHw==
X-CSE-MsgGUID: j8xkzaplSVit8gC+EkhDig==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="69932851"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="69932851"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 07:53:32 -0700
X-CSE-ConnectionGUID: tgqtyv4+SFmw6/ayPXVbWw==
X-CSE-MsgGUID: Df4HdyUqSsCA4qiQEaLwFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="285896367"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 16 Jun 2026 07:53:29 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 11/11] drm/i915/vrr: Enable cmrr
Date: Tue, 16 Jun 2026 20:12:32 +0530
Message-ID: <20260616144233.832276-12-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61AF8690B14

Enable CMRR during compute config and add related state
checker for the same.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2d5f0f17bf3c..9ef559195c68 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -285,6 +285,8 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
 	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * multiplier_n;
 	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
 
+	crtc_state->vrr.cmrr.enable = true;
+
 	return;
 }
 
@@ -876,6 +878,7 @@ intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
 
 	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
 		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
@@ -885,6 +888,9 @@ intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
 		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
 	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
 		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
+
+	vrr_ctl |= VRR_CTL_CMRR_ENABLE;
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void
@@ -892,11 +898,15 @@ intel_vrr_disable_cmrr(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
 
 	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder), 0);
 	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder), 0);
 	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder), 0);
 	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder), 0);
+
+	vrr_ctl &= ~VRR_CTL_CMRR_ENABLE;
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void
@@ -1138,6 +1148,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (HAS_CMRR(display)) {
+		crtc_state->vrr.cmrr.enable = trans_vrr_ctl & VRR_CTL_CMRR_ENABLE;
 		crtc_state->vrr.cmrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));
 		crtc_state->vrr.cmrr.cmrr_m =
-- 
2.48.1

