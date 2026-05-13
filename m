Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMIlGVEvBGo/FAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:59:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1352F378
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADE010ED42;
	Wed, 13 May 2026 07:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d0yXDg31";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE03510ED48;
 Wed, 13 May 2026 07:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778659150; x=1810195150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Q70HGVPB1hnmRk5V/o4OYQJXln+VHxs2YHy50KWiRE=;
 b=d0yXDg31XN2Nbpd4WWI30/HOK8bXnLNyPJOZEL8hy4/JcBT/SX8ktt6z
 myruVbNApc5UWBv09RTqZAq3RNd//3kBYsgFgshp9OVFi4SocMXdVEB0o
 hES10PYbzNNBcTOOrovM+3TugwkJ8dkYf7XRHrqb3d8cagJ2u5RVqafJB
 rYQ3k0R9eefIZvLkQ4kWSFYyipH7jNTxA378wrI/kQjg9GXfs+6XLHweY
 FJimDWWLavzwbs/73kW9huRBJZdNEZs0AONV5zpcLeZXRgWquHhyq4h6Z
 m9jmfuU65NAR3hqLBPE1mPkj6KZpNpY2QuSkBQmtS0SPbSiiPVp/H+5am g==;
X-CSE-ConnectionGUID: dxoPkX77SwWbBmSOWL9FSg==
X-CSE-MsgGUID: /ZNnljRCTtSNGps4QG6SGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="78606893"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="78606893"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:59:09 -0700
X-CSE-ConnectionGUID: FtaRvW64SOaYxyjSZxHtEA==
X-CSE-MsgGUID: yHsV6LQMSmWcDqbpr2CbQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="238257310"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:59:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 5/6] drm/i915/display: stop passing i to
 for_each_*_intel_crtc_in_state() macros
Date: Wed, 13 May 2026 10:58:39 +0300
Message-ID: <edb9dc76cb9cad50622a1f425abaf076d1509888.1778659089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778659089.git.jani.nikula@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 8FB1352F378
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

None of the for_each_*_intel_crtc_in_state() macros or their users
actually need the CRTC index i variable anymore. Remove them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   3 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  12 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  11 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 115 +++++++-----------
 drivers/gpu/drm/i915/display/intel_display.h  |  25 ++--
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_plane.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   6 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  22 ++--
 14 files changed, 89 insertions(+), 141 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 19b61d4c1fae..86d1c9f7f0ff 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3582,7 +3582,6 @@ void ilk_wm_sanitize(struct intel_display *display)
 	struct intel_crtc_state *crtc_state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
-	int i;
 
 	/* Only supported on platforms that use atomic watermark design */
 	if (!display->wm.funcs->optimize_watermarks)
@@ -3620,7 +3619,7 @@ void ilk_wm_sanitize(struct intel_display *display)
 		goto fail;
 
 	/* Write calculated watermark values back */
-	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state) {
 		crtc_state->wm.need_postvbl_update = true;
 		intel_optimize_watermarks(intel_state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 38bbd6964d8e..0e4f0678c53c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -200,9 +200,8 @@ bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state)
 {
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		if (intel_crtc_needs_modeset(crtc_state))
 			return true;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bc8ad312ec15..d4f991d0b25b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1219,10 +1219,8 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		unsigned int old_data_rate =
 			intel_crtc_bw_data_rate(old_crtc_state);
 		unsigned int new_data_rate =
@@ -1268,10 +1266,9 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 	const struct intel_bw_state *old_bw_state = NULL;
 	struct intel_bw_state *new_bw_state = NULL;
 	struct intel_crtc *crtc;
-	int ret, i;
+	int ret;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (intel_crtc_can_enable_sagv(old_crtc_state) ==
 		    intel_crtc_can_enable_sagv(new_crtc_state))
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 2fa7e8c3bb26..189ae2d3cfc9 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3124,10 +3124,9 @@ static int bxt_compute_min_voltage_level(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 	u8 min_voltage_level;
-	int i;
 	enum pipe pipe;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		int ret;
 
 		if (crtc_state->hw.enable)
@@ -3219,13 +3218,13 @@ static int skl_dpll0_vco(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
-	int vco, i;
+	int vco;
 
 	vco = cdclk_state->logical.vco;
 	if (!vco)
 		vco = display->cdclk.skl_preferred_vco_freq;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		if (!crtc_state->hw.enable)
 			continue;
 
@@ -3424,10 +3423,9 @@ static int intel_crtcs_calc_min_cdclk(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
-	int i, ret;
+	int ret;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		ret = intel_cdclk_update_crtc_min_cdclk(state, crtc,
 							old_crtc_state->min_cdclk,
 							new_crtc_state->min_cdclk,
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index e8c5aa613587..295ad8417c68 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -534,9 +534,8 @@ void intel_wait_for_vblank_workers(struct intel_atomic_state *state)
 {
 	struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		if (!intel_crtc_needs_vblank_work(crtc_state))
 			continue;
 
@@ -828,10 +827,8 @@ bool intel_any_crtc_enable_changed(struct intel_atomic_state *state)
 {
 	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (intel_crtc_enable_changed(old_crtc_state, new_crtc_state))
 			return true;
 	}
@@ -849,10 +846,8 @@ bool intel_any_crtc_active_changed(struct intel_atomic_state *state)
 {
 	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (intel_crtc_active_changed(old_crtc_state, new_crtc_state))
 			return true;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dbuf_bw.c b/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
index 1f38317b38bb..6cf674c586dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
@@ -184,13 +184,12 @@ int intel_dbuf_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
-	int ret, i;
+	int ret;
 
 	if (DISPLAY_VER(display) < 9)
 		return 0;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
 
 		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d224cefc988f..cf9afc90e301 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1316,14 +1316,13 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
 	/*
 	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
 	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
 	 */
 	if (display->dpll.mgr) {
-		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 			if (intel_crtc_needs_modeset(new_crtc_state))
 				continue;
 
@@ -5698,10 +5697,9 @@ static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 	struct intel_crtc_state *first_crtc_state = NULL;
 	struct intel_crtc_state *other_crtc_state = NULL;
 	enum pipe first_pipe = INVALID_PIPE, enabled_pipe = INVALID_PIPE;
-	int i;
 
 	/* look at all crtc's that are going to be enabled in during modeset */
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		if (!crtc_state->hw.active ||
 		    !intel_crtc_needs_modeset(crtc_state))
 			continue;
@@ -5751,9 +5749,8 @@ u8 intel_calc_enabled_pipes(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		if (crtc_state->hw.enable)
 			enabled_pipes |= BIT(crtc->pipe);
 		else
@@ -5768,9 +5765,8 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		if (crtc_state->hw.active)
 			active_pipes |= BIT(crtc->pipe);
 		else
@@ -5841,9 +5837,8 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state __maybe_unused *crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		int ret;
 
 		ret = intel_crtc_atomic_check(state, crtc);
@@ -5863,9 +5858,8 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (new_crtc_state->hw.enable &&
 		    transcoders & BIT(new_crtc_state->cpu_transcoder) &&
 		    intel_crtc_needs_modeset(new_crtc_state))
@@ -5880,9 +5874,8 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (new_crtc_state->hw.enable &&
 		    pipes & BIT(crtc->pipe) &&
 		    intel_crtc_needs_modeset(new_crtc_state))
@@ -6253,7 +6246,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	}
 
 	/* Now pull in all joined crtcs */
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		affected_pipes |= crtc_state->joiner_pipes;
 		if (intel_crtc_needs_modeset(crtc_state))
 			modeset_pipes |= crtc_state->joiner_pipes;
@@ -6281,7 +6274,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		/* Kill old joiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
 		    intel_crtc_is_joiner_primary(crtc_state))
@@ -6299,7 +6292,6 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 	int ret;
-	int i;
 
 	*failed_pipe = INVALID_PIPE;
 
@@ -6311,7 +6303,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
 			if (!intel_crtc_is_joiner_secondary(new_crtc_state))
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
@@ -6333,7 +6325,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 			goto fail;
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
@@ -6405,13 +6397,12 @@ int intel_atomic_check(struct drm_device *dev,
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
-	int ret, i;
+	int ret;
 
 	if (!intel_display_driver_check_access(display))
 		return -ENODEV;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		/*
 		 * crtc's state no longer considered to be inherited
 		 * after the first userspace/client initiated commit.
@@ -6437,7 +6428,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		ret = intel_async_flip_check_uapi(state, crtc);
 		if (ret)
 			return ret;
@@ -6447,7 +6438,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
 			if (intel_crtc_is_joiner_secondary(new_crtc_state))
 				copy_joiner_crtc_state_nomodeset(state, crtc);
@@ -6464,8 +6455,7 @@ int intel_atomic_check(struct drm_device *dev,
 			goto fail;
 	}
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
@@ -6485,7 +6475,7 @@ int intel_atomic_check(struct drm_device *dev,
 	 * needs a full modeset, all other synced crtcs should be
 	 * forced a full modeset.
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (!new_crtc_state->hw.enable || intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
@@ -6515,8 +6505,7 @@ int intel_atomic_check(struct drm_device *dev,
 		}
 	}
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
@@ -6533,7 +6522,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
 
 	ret = intel_compute_global_watermarks(state);
@@ -6566,8 +6555,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		intel_color_assert_luts(new_crtc_state);
 
 		ret = intel_async_flip_check_hw(state, crtc);
@@ -6598,8 +6586,7 @@ int intel_atomic_check(struct drm_device *dev,
 	 * FIXME would probably be nice to know which crtc specifically
 	 * caused the failure, in cases where we can pinpoint it.
 	 */
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i)
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state)
 		intel_crtc_state_dump(new_crtc_state, state, "failed");
 
 	return ret;
@@ -6915,10 +6902,8 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	u8 disable_pipes = 0;
-	int i;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
@@ -6934,7 +6919,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		disable_pipes |= BIT(crtc->pipe);
 	}
 
-	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state) {
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
@@ -6944,7 +6929,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	}
 
 	/* Only disable port sync and MST slaves */
-	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state) {
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
@@ -6966,7 +6951,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	}
 
 	/* Disable everything else left on */
-	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state) {
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
@@ -6985,9 +6970,8 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
 {
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (!new_crtc_state->hw.active)
 			continue;
 
@@ -6995,7 +6979,7 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
 		intel_pre_update_crtc(state, crtc);
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (!new_crtc_state->hw.active)
 			continue;
 
@@ -7010,9 +6994,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	u8 update_pipes = 0, modeset_pipes = 0;
-	int i;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		if (!new_crtc_state->hw.active)
@@ -7036,7 +7019,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	 * So first lets enable all pipes that do not need a fullmodeset as
 	 * those don't have any external dependency.
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		if ((update_pipes & BIT(pipe)) == 0)
@@ -7052,8 +7035,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		 * Commit in reverse order to make joiner primary
 		 * send the uapi events after secondaries are done.
 		 */
-		for_each_oldnew_intel_crtc_in_state_reverse(state, crtc, old_crtc_state,
-							    new_crtc_state, i) {
+		for_each_oldnew_intel_crtc_in_state_reverse(state, crtc, old_crtc_state, new_crtc_state) {
 			enum pipe pipe = crtc->pipe;
 
 			if ((update_pipes & BIT(pipe)) == 0)
@@ -7089,7 +7071,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	 * Enable all pipes that needs a modeset and do not depends on other
 	 * pipes
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		if ((modeset_pipes & BIT(pipe)) == 0)
@@ -7111,7 +7093,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	 * Then we enable all remaining pipes that depend on other
 	 * pipes: MST slaves and port sync masters
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		if ((modeset_pipes & BIT(pipe)) == 0)
@@ -7128,7 +7110,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	/*
 	 * Finally we do the plane updates/etc. for all pipes that got enabled.
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		if ((update_pipes & BIT(pipe)) == 0)
@@ -7141,7 +7123,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	 * Commit in reverse order to make joiner primary
 	 * send the uapi events after secondaries are done.
 	 */
-	for_each_new_intel_crtc_in_state_reverse(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state_reverse(state, crtc, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		if ((update_pipes & BIT(pipe)) == 0)
@@ -7206,9 +7188,8 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state)
 		intel_atomic_dsb_cleanup(old_crtc_state);
 
 	drm_atomic_helper_cleanup_planes(display->drm, &state->base);
@@ -7438,9 +7419,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
 	struct ref_tracker *wakeref = NULL;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		intel_atomic_dsb_prepare(state, crtc);
 
 	intel_atomic_commit_fence_wait(state);
@@ -7449,10 +7429,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		intel_fbc_prepare_dirty_rect(state, crtc);
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		intel_atomic_dsb_finish(state, crtc);
 
 	drm_atomic_helper_wait_for_dependencies(&state->base);
@@ -7488,8 +7468,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 */
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
 		    intel_crtc_needs_fastset(new_crtc_state))
 			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
@@ -7500,7 +7479,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_dp_tunnel_atomic_alloc_bw(state);
 
 	/* FIXME: Eventually get rid of our crtc->config pointer */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		crtc->config = new_crtc_state;
 
 	/*
@@ -7522,7 +7501,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_sagv_pre_plane_update(state);
 
 	/* Complete the events for pipes that have now been disabled */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 		/* Complete events for now disable pipes here. */
@@ -7540,7 +7519,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_dbuf_pre_plane_update(state);
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (new_crtc_state->do_async_flip)
 			intel_crtc_enable_flip_done(state, crtc);
 	}
@@ -7564,7 +7543,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 */
 	drm_atomic_helper_wait_for_flip_done(display->drm, &state->base);
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		if (new_crtc_state->do_async_flip)
 			intel_crtc_disable_flip_done(state, crtc);
 
@@ -7584,8 +7563,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 *
 	 * TODO: Move this (and other cleanup) to an async worker eventually.
 	 */
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		/*
 		 * Gen2 reports pipe underruns whenever all planes are disabled.
 		 * So re-enable underrun reporting after some planes get enabled.
@@ -7602,7 +7580,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_dbuf_post_plane_update(state);
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		intel_post_plane_update(state, crtc);
 
 		intel_modeset_put_crtc_power_domains(crtc, &put_domains[crtc->pipe]);
@@ -7746,9 +7724,8 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_commit *_state
 	if (DISPLAY_VER(display) < 9 && state->base.legacy_cursor_update) {
 		struct intel_crtc_state *new_crtc_state;
 		struct intel_crtc *crtc;
-		int i;
 
-		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 			if (new_crtc_state->wm.need_postvbl_update ||
 			    new_crtc_state->update_wm_post)
 				state->base.legacy_cursor_update = false;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a3e0def4adb0..7d4f83ad9412 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -287,31 +287,26 @@ enum phy_fia {
 	     (__i)++) \
 		for_each_if(plane)
 
-#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
+#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state) \
 	for_each_intel_crtc(to_intel_display(__state), (crtc)) \
-		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
-			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc))))
+		for_each_if((old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)))
 
-#define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state, __i) \
+#define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state) \
 	for_each_intel_crtc(to_intel_display(__state), (crtc)) \
-		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
-			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
+		for_each_if((new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc)))
 
-#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
+#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state) \
 	for_each_intel_crtc_reverse(to_intel_display(__state), (crtc)) \
-		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
-			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
+		for_each_if((new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc)))
 
-#define for_each_oldnew_intel_crtc_in_state(__state, crtc, old_crtc_state, new_crtc_state, __i) \
+#define for_each_oldnew_intel_crtc_in_state(__state, crtc, old_crtc_state, new_crtc_state) \
 	for_each_intel_crtc(to_intel_display(__state), (crtc)) \
-		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
-			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
+		for_each_if(((old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
 			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
-#define for_each_oldnew_intel_crtc_in_state_reverse(__state, crtc, old_crtc_state, new_crtc_state, __i) \
+#define for_each_oldnew_intel_crtc_in_state_reverse(__state, crtc, old_crtc_state, new_crtc_state) \
 	for_each_intel_crtc_reverse(to_intel_display(__state), (crtc)) \
-		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
-			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
+		for_each_if(((old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
 			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
 #define intel_atomic_crtc_state_for_each_plane_state( \
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 10d47faa6996..d6bd1f7e01e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -740,9 +740,8 @@ static void atomic_decrease_bw(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
-	int i;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		const struct drm_dp_tunnel_state *new_tunnel_state;
 		struct drm_dp_tunnel *tunnel;
 		int old_bw;
@@ -795,9 +794,8 @@ static void atomic_increase_bw(struct intel_atomic_state *state)
 {
 	struct intel_crtc *crtc;
 	const struct intel_crtc_state *crtc_state;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		struct drm_dp_tunnel_state *tunnel_state;
 		struct drm_dp_tunnel *tunnel = crtc_state->dp_tunnel_ref.tunnel;
 		int bw;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index cd4c38691aed..8c377d9af436 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -368,9 +368,8 @@ int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
 {
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		int ret;
 
 		if (!crtc_state->has_pch_encoder ||
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index e191a57f02cd..2a52b36c646c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1831,9 +1831,8 @@ static int intel_add_affected_planes(struct intel_atomic_state *state)
 {
 	const struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		int ret;
 
 		ret = intel_joiner_add_affected_planes(state, intel_crtc_joined_pipe_mask(crtc_state));
@@ -1867,8 +1866,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state)
 		}
 	}
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		u8 old_active_planes, new_active_planes;
 
 		ret = icl_check_nv12_planes(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 7819b724795b..6d32c52269a6 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -190,7 +190,7 @@ intel_pmdemand_update_max_ddiclk(struct intel_display *display,
 	struct intel_crtc *crtc;
 	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
 		intel_pmdemand_update_port_clock(display, pmdemand_state,
 						 crtc->pipe,
 						 new_crtc_state->port_clock);
@@ -299,7 +299,6 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 {
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	int i;
 
 	if (intel_bw_pmdemand_needs_update(state))
 		return true;
@@ -310,8 +309,7 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 	if (intel_cdclk_pmdemand_needs_update(state))
 		return true;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i)
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state)
 		if (new_crtc_state->port_clock != old_crtc_state->port_clock)
 			return true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1b09992ce9fd..e03b5daac5be 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -94,12 +94,10 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state)
 void
 intel_vrr_check_modeset(struct intel_atomic_state *state)
 {
-	int i;
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		if (new_crtc_state->uapi.vrr_enabled !=
 		    old_crtc_state->uapi.vrr_enabled)
 			new_crtc_state->uapi.mode_changed = true;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 346e97d91d92..5a3677ea25b0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2495,9 +2495,9 @@ skl_compute_ddb(struct intel_atomic_state *state)
 	struct intel_dbuf_state *new_dbuf_state = NULL;
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
-	int ret, i;
+	int ret;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		new_dbuf_state = intel_atomic_get_dbuf_state(state);
 		if (IS_ERR(new_dbuf_state))
 			return PTR_ERR(new_dbuf_state);
@@ -2561,7 +2561,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			    str_yes_no(new_dbuf_state->joined_mbus));
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		enum pipe pipe = crtc->pipe;
 
 		new_dbuf_state->weight[pipe] = intel_crtc_ddb_weight(new_crtc_state);
@@ -2580,7 +2580,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		ret = skl_crtc_allocate_plane_ddb(state, crtc);
 		if (ret)
 			return ret;
@@ -2687,13 +2687,11 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
-	int i;
 
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state) {
 		const struct skl_pipe_wm *old_pipe_wm, *new_pipe_wm;
 
 		old_pipe_wm = &old_crtc_state->wm.skl.optimal;
@@ -2833,13 +2831,13 @@ static int pkgc_max_linetime(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
-	int i, max_linetime;
+	int max_linetime;
 
 	/*
 	 * Apparenty the hardware uses WM_LINETIME internally for
 	 * this stuff, compute everything based on that.
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
 		display->pkgc.disable[crtc->pipe] = crtc_state->vrr.enable;
 		display->pkgc.linetime[crtc->pipe] = DIV_ROUND_UP(crtc_state->linetime, 8);
 	}
@@ -2909,9 +2907,9 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
-	int ret, i;
+	int ret;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		ret = skl_build_pipe_wm(state, crtc);
 		if (ret)
 			return ret;
@@ -2926,7 +2924,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	 * based on how much ddb is available. Now we can actually
 	 * check if the final watermarks changed.
 	 */
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
 		/*
-- 
2.47.3

