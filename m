Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0B6A56FF5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1849710EC2E;
	Fri,  7 Mar 2025 18:02:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k56/CHPH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4DF10EC27;
 Fri,  7 Mar 2025 18:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370552; x=1772906552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/+OoqdEJGPUk4kSHKIBUcvMKigl5no/pe5QyRTvYYnY=;
 b=k56/CHPH6wHnsA7iCZMK2WZYpRaOGWYAAoAscY9Wx/yysqVd3+HJOFOX
 cq6wYi3R/304OSIHl6SCU1v9zRYAg8MZ36yA+DDpTmVxGhGgddWC8v9hW
 SLnWu69lmEFY3Z2XpajsbkonCMtNBJXN0LELxxUPXdZqlg3pdxsTNssZR
 rzPScaLynduZtTvP6CKwExJdvRiZ4b8NmqQlzU3QSsbblul6/m54FbVz4
 Ch/WyacuC9mO8IYyytF37RM0pWhQcV0vWSSGDJbEQe1bVvjkzSVQBu5XM
 zw7hTYJKlmIN+MzawM5RlNA0CZthpjeD5vF/EtllE5lqXl2FtMYMIhhdo g==;
X-CSE-ConnectionGUID: kJLGWsnZT7e2bwdZnOXSWw==
X-CSE-MsgGUID: u6C+LF/sQJuqwbhl/8lqDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637204"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637204"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:30 -0800
X-CSE-ConnectionGUID: jk0+WPRTRLeurFLvpp6wuQ==
X-CSE-MsgGUID: byaDkSuYT5WeKxbjiXE+zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621271"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/14] drm/i915: Skip bw stuff if per-crtc sagv state doesn't
 change
Date: Fri,  7 Mar 2025 20:01:38 +0200
Message-ID: <20250307180139.15744-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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
index 3407606be461..0429e73d691a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1412,13 +1412,19 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
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
index 019eda6e3708..ccb312401896 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -431,6 +431,14 @@ bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
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
@@ -455,8 +463,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct intel_crtc_state *new_crtc_state;
 	int i;
 
-	for_each_new_intel_crtc_in_state(state, crtc,
-					 new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
 		/*
-- 
2.45.3

