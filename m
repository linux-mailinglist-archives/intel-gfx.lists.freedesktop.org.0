Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OqIzN8bNJmpHkwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:12:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8C0656FD2
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:12:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RiYpmVfo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B49610F454;
	Mon,  8 Jun 2026 14:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF19210F450;
 Mon,  8 Jun 2026 14:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780927939; x=1812463939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yv+CE/4lG2jElo2HsC8Q/gz/FCIfrHHu53Xubht1dC0=;
 b=RiYpmVfokw7qV7AVI2nbsLxa82YoJ8ypH4FZAs231Wnwz4ij04PI8sIr
 UBG2fCo+ZsPpSdj0ypyLFWOOhQQhoM5db6g7+usAR7NPL/Kaq3LzbKXoX
 BTc5tM60PL041OzCBGXnYXheKcnw1wl4+ecDgl9h96LDxgZHsaMEiJCEd
 VOWwRlVypTsj4kAgtAqJdzFPjZEgSjBynVMmu6+SXOJX9tlpLUUAfOIpD
 MriWYqMSNLnC71o6op+DPIV9CiNrvndoQfYIKMusGesnqCwD7FFLyl2ak
 AwIPOMdIiG0rt74fsPbCGAoMKEr1MlSvNMg0PIXye73f1iAM4V/CTsFXr Q==;
X-CSE-ConnectionGUID: zH9Le4ajRumGYvW3lpwQYQ==
X-CSE-MsgGUID: E335AaQsSm+xzpJNVNOxxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81781297"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81781297"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:12:19 -0700
X-CSE-ConnectionGUID: 9hPwmUgARjqC8zvvMWnStQ==
X-CSE-MsgGUID: Q+Pk0x2rQlOqIaEdKd7khQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241113698"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:12:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/7] drm/i915/psr: Stop using intel_dsc_enabled_on_link to
 detect crtc DSC status
Date: Mon,  8 Jun 2026 17:11:19 +0300
Message-ID: <20260608141124.144878-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608141124.144878-1-jouni.hogander@intel.com>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B8C0656FD2

Intel_dsc_enabled_on_link is not really about DSC being enabled on crtc. It
is telling if FEC is enabled on link. Instead of intel_dsc_enabled_on_link
check status directly from crtc->dsc.compression_enable.

Also rename intel_dsc_enabled_on_link as intel_fec_enabled_on_link.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c  | 6 +++---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ad2f6c79f5808..f58200d38ac2c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1740,7 +1740,7 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
 		if (!connector->dp.panel_replay_caps.su_support)
 			goto unsupported;
 
-		if (intel_dsc_enabled_on_link(crtc_state) &&
+		if (crtc_state->dsc.compression_enable &&
 		    connector->dp.panel_replay_caps.dsc_support !=
 		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
 			drm_dbg_kms(display->drm,
@@ -1840,7 +1840,7 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
 		return false;
 	}
 
-	if (intel_dsc_enabled_on_link(crtc_state) &&
+	if (crtc_state->dsc.compression_enable &&
 	    connector->dp.panel_replay_caps.dsc_support ==
 	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
 		drm_dbg_kms(display->drm,
@@ -3235,7 +3235,7 @@ verify_panel_replay_dsc_state(const struct intel_crtc_state *crtc_state)
 		return;
 
 	drm_WARN_ON(display->drm,
-		    intel_dsc_enabled_on_link(crtc_state) &&
+		    crtc_state->dsc.compression_enable &&
 		    crtc_state->panel_replay_dsc_support ==
 		    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8f06c3a4d56df..35c93fcbb6427 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -431,7 +431,7 @@ void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state)
 	crtc_state->dsc.compression_enable = true;
 }
 
-bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state)
+bool intel_fec_enabled_on_link(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 3372f8694054d..60d86399808c0 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -28,7 +28,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
 void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state);
-bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state);
+bool intel_fec_enabled_on_link(const struct intel_crtc_state *crtc_state);
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
-- 
2.43.0

