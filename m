Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5BRPFCQIMWpuagUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:24:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF7F68D21F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:24:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="dXAiJ/Jo";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDFE10E8F0;
	Tue, 16 Jun 2026 08:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D07C010E8EF;
 Tue, 16 Jun 2026 08:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781598241; x=1813134241;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pbn+U5ofSUBrkkzhUJeBbOVMzD3UR73PbLPL49oYU1M=;
 b=dXAiJ/JoiBMnwAei3MfsR/TNIlfX82jCPVBAWLrbqH5Dmo2R3f8oJ/ak
 WAuFFDFKgQGl1Klw2B+OMAVEAOfZe7Wu3CUmwI5x/mRqwAU2Jj5RmeJzL
 yzSQeYVhaFcgoIFtHpz6L3tHJAcGHrbyHAVQlfyePu2uwiWlei24WT7G/
 907pe2STp0+6qo0g+ULjvOAwwNa9X/33bX42aLGm01jijhzj6i68tYuo5
 0z86jgbHJwEnNV+bIjgO7h2itfGZS5jJhd/cIhE81v3AGFY9OBrFBmaV5
 F1xYO1cSaFwiw2UlcmhSvRgJyFth8ciEjl2+dLejvPa+OHK7ebABFg3Hg Q==;
X-CSE-ConnectionGUID: mfIAIestS0m9tPvb2grjaA==
X-CSE-MsgGUID: bm3jCuWFShiYYIjm6+s0ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="84920903"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="84920903"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:24:00 -0700
X-CSE-ConnectionGUID: RJW1pz1HSui9sZt9J/kJ6A==
X-CSE-MsgGUID: GN8SNuMuSzC+AkkQnvHs4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="243545346"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:23:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, animesh.manna@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
Date: Tue, 16 Jun 2026 13:36:26 +0530
Message-ID: <20260616080627.2136659-1-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDF7F68D21F

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

v2: Reset has_lobf if psr or VRR is ON in
    intel_alpm_lobf_compute_config_late(). (Animesh)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index c6963ea420cc..991de6e2456c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -291,7 +291,9 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	if (!crtc_state->has_lobf)
 		return;
 
-	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
+	if (crtc_state->has_psr ||
+	    !intel_vrr_is_fixed_rr(crtc_state) ||
+	    !intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
 		crtc_state->has_lobf = false;
 		return;
 	}
@@ -343,11 +345,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
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
2.34.1

