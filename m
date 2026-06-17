Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mM1gF2UxMmrlwQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:32:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF7269697B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:32:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=K0U+1b7h;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100B310EDFE;
	Wed, 17 Jun 2026 05:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A42810E93E;
 Wed, 17 Jun 2026 05:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781674338; x=1813210338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EvWk55sb9wXhlmQ4PqsO1S0mt4yheCg5s+THzHVUsD4=;
 b=K0U+1b7h/Iggg5Hxtf2jJ15T7c1wodOPzwzh+xEVGGgMA6Lkrm1/hRSg
 yWUfrIFaa2ALTPtqW3MnGtI/sIcUu6PrEgHKPPMjuHhMaHKk73L71u8MM
 Etc13TjZZRcsG1seKFjWzFHSYYrM9eUBN0BfnNEtFfxkTHXh5KPCQ4fIx
 T41/gm8KAqbFwOufj6aJCo6c4Qm2TaCWlonhbvNMLHe6z+ndxcbM7GT+M
 sLn4lOGIrmGRMiuYs6hZkPvE5O6wDSmrMyLFZfU5G15JxYjlEfqf6ffvl
 AvZfFcPCo5bHrOQVYFecDf6v1zupBRoN3VJZ/6jLacZhijrqeq2s9vnvx Q==;
X-CSE-ConnectionGUID: La5wF+j7ToCGvW+RWCfycQ==
X-CSE-MsgGUID: DucVJRX/TYq/2QWTUe28BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86387443"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="86387443"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:32:17 -0700
X-CSE-ConnectionGUID: nLs9NzUhSqeEMAL47TO8dw==
X-CSE-MsgGUID: ZGlnZcrdRLy+thGCAUWY+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="248050663"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:31:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 2/2] drm/i915/dsb: Use safe window path when VRR TG is used
Date: Wed, 17 Jun 2026 10:44:17 +0530
Message-ID: <20260617051417.2223526-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260608123711.1121908-3-ankit.k.nautiyal@intel.com>
References: <20260608123711.1121908-3-ankit.k.nautiyal@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AFF7269697B

When the VRR timing generator is always used, the hardware behaves
as VRR-active regardless of crtc_state->vrr.enable.

The DSB paths that depend on the VRR safe window therefore need to follow
the VRR code paths in that case too:
- dsb_chicken(): program the SAFE_WINDOW chicken bits,
- intel_dsb_vblank_evade(): use vmin/vmax vblank starts for the
  wait window,
- intel_dsb_wait_for_delayed_vblank(): wait inside the vmin safe window
  before the scanline-based delayed vblank wait.

Introduce helper pre_commit_use_safe_window() and use it in the three sites

v2: Instead of modifying pre_commit_is_vrr_active() use a new helper and
    use it only in the required places. (Ville).

v3: -Keep using pre_commit_is_vrr_active() for DCB path. (Ville)
    -Add a separate check for fixed RR with VRR TG and use
     fixed mode vblank start there. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 07dd6318d9cc..d9a270362a82 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -210,6 +210,18 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
+static
+bool pre_commit_use_safe_window(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc->base.dev);
+
+	if (intel_vrr_always_use_vrr_tg(display))
+		return true;
+
+	return pre_commit_is_vrr_active(state, crtc);
+}
+
 /*
  * Bspec suggests that we should always set DSB_SKIP_WAITS_EN. We have approach
  * different from what is explained in Bspec on how flip is considered being
@@ -229,7 +241,7 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
 	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
 		DSB_SKIP_WAITS_EN : 0;
 
-	if (pre_commit_is_vrr_active(state, crtc))
+	if (pre_commit_use_safe_window(state, crtc))
 		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
@@ -798,6 +810,12 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		end = intel_vrr_vmax_vblank_start(crtc_state);
 		start = end - vblank_delay - latency;
 		intel_dsb_wait_scanline_out(state, dsb, start, end);
+	} else if (pre_commit_use_safe_window(state, crtc)) {
+		int vblank_delay = crtc_state->set_context_latency;
+
+		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
+		start = end - vblank_delay - latency;
+		intel_dsb_wait_scanline_out(state, dsb, start, end);
 	} else {
 		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 
@@ -891,7 +909,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 		&crtc_state->hw.adjusted_mode;
 	int wait_scanlines;
 
-	if (pre_commit_is_vrr_active(state, crtc)) {
+	if (pre_commit_use_safe_window(state, crtc)) {
 		/*
 		 * If the push happened before the vmin decision boundary
 		 * we don't know how far we are from the undelayed vblank.
-- 
2.45.2

