Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DAF8958B9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7964310FE0B;
	Tue,  2 Apr 2024 15:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1al1RVx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBF710FE10
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073023; x=1743609023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pzBFNsp3QOyH57teCD12Hvx7Qu9DrCoThH2PkK8SgRs=;
 b=T1al1RVxIOhLVtHLKBEF00quqnF914EOe7LWD6c5IJbKKol52l5/sQTi
 LhsdKohWcW0AbkV77mnHIiPABybudvjNTj7htN4a/ZMreLJIRZ1NwMKgd
 j4QMRsDaqG4/hvvKpvIMoXXN9uI36s4+7lxrPziH7zBOve8h+uZdtVVWK
 rHu1p4kY4JbxRmWb+DQp6ShzzsFkZkMvmpjAtb4ksBeTsr02JkdYblbZT
 5aXlpMwPt/IXEk86pjL3QF2q0hc6Ts3FaVONCHNSXSUTG+h9j42M0JXYM
 hG6SybDRTy+v4k0aglEAupsVTehBgAnIqJG+VL3Ai7NeBZlNwyMogIqQh Q==;
X-CSE-ConnectionGUID: gesB5p0/ROG+ZeTF8QlbzQ==
X-CSE-MsgGUID: Q+/8oB9LQAek/ZK14AduEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980792"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980792"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789459"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789459"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 01/14] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Date: Tue,  2 Apr 2024 18:50:03 +0300
Message-ID: <20240402155016.13733-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

Currently we always reprogram CDCLK from the
intel_set_cdclk_pre_plane_update() when using squash/crawl.
The code only works correctly for the cd2x update or full
modeset cases, and it was simply never updated to deal with
squash/crawl.

If the CDCLK frequency is increasing we must reprogram it
before we do anything else that might depend on the new
higher frequency, and conversely we must not decrease
the frequency until everything that might still depend
on the old higher frequency has been dealt with.

Since cdclk_state->pipe is only relevant when doing a cd2x
update we can't use it to determine the correct sequence
during squash/crawl. To that end introduce cdclk_state->disable_pipes
which simply indicates that we must perform the update
while the pipes are disable (ie. during
intel_set_cdclk_pre_plane_update()). Otherwise we use the
same old vs. new CDCLK frequency comparsiong as for cd2x
updates.

The only remaining problem case is when the voltage_level
needs to increase due to a DDI port, but the CDCLK frequency
is decreasing (and not all pipes are being disabled). The
current approach will not bump the voltage level up until
after the port has already been enabled, which is too late.
But we'll take care of that case separately.

v2: Don't break the "must disable pipes case"
v3: Keep the on stack 'pipe' for future use

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++--
 drivers/gpu/drm/i915/display/intel_cdclk.h | 3 +++
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 31aaa9780dfc..3a04061fb100 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2609,7 +2609,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_pre_notify(state);
 
-	if (pipe == INVALID_PIPE ||
+	if (new_cdclk_state->disable_pipes ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
@@ -2641,7 +2641,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_post_notify(state);
 
-	if (pipe != INVALID_PIPE &&
+	if (!new_cdclk_state->disable_pipes &&
 	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
@@ -3124,6 +3124,7 @@ static struct intel_global_state *intel_cdclk_duplicate_state(struct intel_globa
 		return NULL;
 
 	cdclk_state->pipe = INVALID_PIPE;
+	cdclk_state->disable_pipes = false;
 
 	return &cdclk_state->base;
 }
@@ -3316,6 +3317,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
+		new_cdclk_state->disable_pipes = true;
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "Modeset required for cdclk change\n");
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index bc8f86e292d8..2843fc091086 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -53,6 +53,9 @@ struct intel_cdclk_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
+
+	/* update cdclk with pipes disabled */
+	bool disable_pipes;
 };
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
-- 
2.43.2

