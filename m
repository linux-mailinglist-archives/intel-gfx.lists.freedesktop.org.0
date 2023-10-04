Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851057B844E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CB410E38D;
	Wed,  4 Oct 2023 15:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A7F10E38E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434988; x=1727970988;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2T/E11vf3vuNo6YFEP8nNv7mC79seQwo0Ns2ElOY+Hc=;
 b=cG4iKi/M4iKwqhjOktHYOZPaTv0yhP3Dv4W/O0Zgp8sFl913UK8cexHA
 rmCCo7Pg0h90KtRDRTIqnfyYEEb0EhT7bFrsjhBOEsb4QU15Y6tGSmX6T
 mucE4Trby8cJe6zYxclCx20uVtZbkxsKOnLJTM7HaLUWloZbJU7/k1XjV
 gZBChAViDiKg2pvPxS8bblL4mdxYq2PXSs3XKG4e22rZFsrjHmSSEEn/o
 aCchi8VMyhLddLjoQDvK9/ioSS7PU1mawVO58DA63Q5cycTdrRn/SBvFz
 fQ1trEUx/lk/lyYQIBMeQTkDBy9Q81ZpWU+FRAbFnWSOegW2RAeIPhXr2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483797"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483797"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441112"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441112"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:01 +0300
Message-ID: <20231004155607.7719-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Simplify watermark state
 checker calling convention
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

There is never any reason to pass in both the crtc and its state
as one can always dig out the crtc from its state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c        | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.h        | 3 +--
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 47d45ba1e707..bbee79aad0cd 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -233,7 +233,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-	intel_wm_state_verify(crtc, new_crtc_state);
+	intel_wm_state_verify(new_crtc_state);
 	verify_connector_state(state, crtc);
 	verify_crtc_state(state, crtc);
 	intel_shared_dpll_state_verify(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d51cf92c96ae..e7a9fb4b1f6b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3134,9 +3134,9 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 	skl_wm_sanitize(i915);
 }
 
-void intel_wm_state_verify(struct intel_crtc *crtc,
-			   const struct intel_crtc_state *new_crtc_state)
+void intel_wm_state_verify(const struct intel_crtc_state *new_crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct skl_hw_state {
 		struct skl_ddb_entry ddb[I915_MAX_PLANES];
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 18e4b0661cbb..ca4312bf7012 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -38,8 +38,7 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 				 const struct skl_ddb_entry *entries,
 				 int num_entries, int ignore_idx);
 
-void intel_wm_state_verify(struct intel_crtc *crtc,
-			   const struct intel_crtc_state *new_crtc_state);
+void intel_wm_state_verify(const struct intel_crtc_state *new_crtc_state);
 
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
-- 
2.41.0

