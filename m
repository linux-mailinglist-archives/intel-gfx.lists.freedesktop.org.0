Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6br6N7eFK2oZ/AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 06:06:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36656768E4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 06:06:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bNyyt42X;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E0110E597;
	Fri, 12 Jun 2026 04:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83DB310E597;
 Fri, 12 Jun 2026 04:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781237173; x=1812773173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g69ZryowtDUXO1TZ+BQdITMO8BLQPhpUeOZQ16u2qhI=;
 b=bNyyt42XPst2/a8HOJtTdRS6tqxEGBy0H2FR6gL8bgk75yEvYnoInGzf
 W/4VnOxvE5ieIqoQBiBurEmVmZmeuCEQu7okAnJWX7k3+PHGD5NYwZb7N
 6d+0HnEOG1rlneRYaxbaZRPo9FLrySWODwu3LiHRzJkIaZoL6VXCmTlOM
 cBP/Udjs0o5KaYFiSG29dHIxfU/SJvh0ILebtNlCskvhSNKnJMGt7Yk8n
 wZ0qi/jfNDVonOtLe9eVc5kPrZ95uHW1v5wMN9Vyp47B1AGPKVvO468VW
 ts5QEDL6pIJ89SdDLOwIYNj/6s5tomY/V64Cnr5ftMjz155nZ6SKaXzd2 Q==;
X-CSE-ConnectionGUID: E2N8hiKHTqSN7muMXia0Ww==
X-CSE-MsgGUID: 5znsCwmeTvS7HlQkmVWTDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93555703"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="93555703"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 21:06:10 -0700
X-CSE-ConnectionGUID: PPba/vuUSceESqZYdUt2FQ==
X-CSE-MsgGUID: JxYbCjspS5ei0lt14rNMqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="276902801"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 21:06:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, animesh.manna@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
Date: Fri, 12 Jun 2026 09:18:27 +0530
Message-ID: <20260612034827.1528743-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B36656768E4

With optimized guardband, we need to take into account LOBF requirements
via intel_alpm_lobf_min_guardband().

Currently, we set has_lobf based not only on whether it is supported, but
also on whether PSR/fixed RR are ON. Since these features can switch ON and
OFF seamlessly, this may cause LOBF to change, resulting in a change in
guardband requirements, and eventually to a full modeset.

To avoid this, always account for LOBF if it is supported, in the
encoder->compute_config() stage. For this, allow has_lobf to be set
irrespective of PSR/Fixed RR. Later, in the encoder->compute_config_late()
stage, use the PSR/Fixed RR checks to set has_lobf to the final value.

Move the PSR/Fixed RR checks from intel_alpm_lobf_compute_config() to
intel_alpm_lobf_compute_config_late(), where we already account for other
LOBF constraints.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index c6963ea420cc..b7cab744d0ea 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -291,6 +291,12 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	if (!crtc_state->has_lobf)
 		return;
 
+	if (crtc_state->has_psr)
+		return;
+
+	if (!intel_vrr_is_fixed_rr(crtc_state))
+		return;
+
 	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
 		crtc_state->has_lobf = false;
 		return;
@@ -343,11 +349,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp->as_sdp_supported)
 		return;
 
-	if (crtc_state->has_psr)
-		return;
-
-	if (!intel_vrr_always_use_vrr_tg(display) ||
-	    !intel_vrr_is_fixed_rr(crtc_state))
+	if (!intel_vrr_always_use_vrr_tg(display))
 		return;
 
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
-- 
2.45.2

