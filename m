Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC1D7B9CF6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 14:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D208F10E16C;
	Thu,  5 Oct 2023 12:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D15510E16C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 12:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696508838; x=1728044838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j5RomK6ryrA4XEqaxNOzEwHTr2xNQzjR8LiuTrz7+cg=;
 b=H9K5gIdfD2SWEQGmnqqFrdXnjNS/jFsYRjPGBGBgw9OVNlhxpeIUBgR6
 wKTrnJwAzl4Qz/c+JD4ccrVX+Ldyoe6OLXGLhm9HqFrKuVq9lltEyGER3
 n9KoDxHLDMp+DcyEVoUByV60MQ3XfymkyU4o0Zhij5M3HV04UmZyhR8qX
 Co6Q9hXQJ72AajyfUizwYzKuIg8Pnqd5ITRU1dagZZJjOGQ30bTXC1cJn
 RyRRHEklXMJinsaeYvVoicpLuU5XQmjTdRDYInsy908Huel9f+fsvkHJp
 icdT1PNLndbLcMUvkUChP4hls3J6eXmM1mlSFUQ6xCPOuQ8HZk07wd9i/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="380758173"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="380758173"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 05:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="895437535"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895437535"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 05 Oct 2023 05:25:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Oct 2023 15:27:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 15:27:13 +0300
Message-ID: <20231005122713.3531-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-7-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/12] drm/i915: Simplify watermark state
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There is never any reason to pass in both the crtc and its state
as one can always dig out the crtc from its state. But for more
consistency across the whole state checker let's just pass the
overall atomic state+crtc here as well.

v2: Also pass state+crtc here (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c        | 8 +++++---
 drivers/gpu/drm/i915/display/skl_watermark.h        | 4 ++--
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 47d45ba1e707..e08c1aa25c4d 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -233,7 +233,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-	intel_wm_state_verify(crtc, new_crtc_state);
+	intel_wm_state_verify(state, crtc);
 	verify_connector_state(state, crtc);
 	verify_crtc_state(state, crtc);
 	intel_shared_dpll_state_verify(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d51cf92c96ae..99b8ccdc3dfa 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3134,10 +3134,12 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 	skl_wm_sanitize(i915);
 }
 
-void intel_wm_state_verify(struct intel_crtc *crtc,
-			   const struct intel_crtc_state *new_crtc_state)
+void intel_wm_state_verify(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct skl_hw_state {
 		struct skl_ddb_entry ddb[I915_MAX_PLANES];
 		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 18e4b0661cbb..fb0da36fd3ec 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -38,8 +38,8 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 				 const struct skl_ddb_entry *entries,
 				 int num_entries, int ignore_idx);
 
-void intel_wm_state_verify(struct intel_crtc *crtc,
-			   const struct intel_crtc_state *new_crtc_state);
+void intel_wm_state_verify(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc);
 
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
-- 
2.41.0

