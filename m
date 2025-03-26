Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C9BA71BD7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F2210E73F;
	Wed, 26 Mar 2025 16:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Efr5w91C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B855910E73C;
 Wed, 26 Mar 2025 16:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006389; x=1774542389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JwoaVlzc+cjQMPwrUSkCFoFI+3ljKT1RTuucdXkHzv0=;
 b=Efr5w91CODAOCf8LtN6o14XtjQ5WbIalYJyEmp0nUaIutvG4mWbwPeuz
 NrKjBg9eeFA7UjkFNfHfmfWUbGYc6CqBNpDv10djEZGcCrtX8Be0MUmDH
 5uv7qHCSc7mxaPVCadwK3lRKTuRpGCJQVFBfm/IbaINdaDACpoy9Vu0Qo
 lx1S/VElkpQ7s2/uZuIJ05eQD+oAevFo8k/WrAOlV7tCn1MPzooGY4Jr1
 R8etlnL+7XU39WesrEtTAoKylGe4yHbTh1ECSFdsPKsxYZCJHU4VGvIld
 kqvmLlXPhJ7HtR+VwjE0PhNmNgvmGC1ksbcplCVT2e7zO9u+XPuu07hKm Q==;
X-CSE-ConnectionGUID: RtaYfD+EQ1C8khKDryEPyw==
X-CSE-MsgGUID: rv9Fj/FjTF+aIk0B5qLX7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029595"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029595"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:29 -0700
X-CSE-ConnectionGUID: vg4IBlypRXGWVoUCLFoESA==
X-CSE-MsgGUID: I5Vj/TZBQ0GqPc7I1PicsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016469"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 13/14] drm/i915: Skip bw stuff if per-crtc sagv state
 doesn't change
Date: Wed, 26 Mar 2025 18:25:43 +0200
Message-ID: <20250326162544.3642-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

If there are no changes to intel_crtc_can_enable_sagv() there
is no need to do all the sagv bw_state recomputation.

The only slight caveat here is hw state takeover where we
initially disable SAGV, and want it to get re-enabled once
we've determined that it's safe to do so.  That can now be
achieved by having intel_crtc_can_enable_sagv() reject SAGV
as long as the crtc_state->inherited flag is set. Once the
flag gets cleared (during initial commit for inactive pipes,
during the first userspace commit for active pipes), we
will naturally recompute all the sagv related state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      |  8 +++++++-
 drivers/gpu/drm/i915/display/skl_watermark.c | 11 +++++++++--
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b8bb2e395bb7..e819db78dfbd 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1447,13 +1447,19 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
 	const struct intel_bw_state *old_bw_state = NULL;
 	struct intel_bw_state *new_bw_state = NULL;
 	struct intel_crtc *crtc;
 	int ret, i;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (intel_crtc_can_enable_sagv(old_crtc_state) ==
+		    intel_crtc_can_enable_sagv(new_crtc_state))
+			continue;
+
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index baf345039deb..8b51f0b42785 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -434,6 +434,14 @@ bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	if (!i915->display.params.enable_sagv)
 		return false;
 
+	/*
+	 * SAGV is initially forced off because its current
+	 * state can't be queried from pcode. Allow SAGV to
+	 * be enabled upon the first real commit.
+	 */
+	if (crtc_state->inherited)
+		return false;
+
 	if (DISPLAY_VER(i915) >= 12)
 		return tgl_crtc_can_enable_sagv(crtc_state);
 	else
@@ -458,8 +466,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct intel_crtc_state *new_crtc_state;
 	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc,
-					 new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
 		/*
-- 
2.45.3

