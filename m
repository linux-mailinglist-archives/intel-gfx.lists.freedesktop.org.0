Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C57449B7F65
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C94310E8DA;
	Thu, 31 Oct 2024 15:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wxzigooc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D61510E08F
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390223; x=1761926223;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZK5+pGVFbfXnxYmKDbEezoCI0do7Dgpz+8iF+eBWQkc=;
 b=Wxzigooc5inmMwiVOVS+XtulVo2+B1EKGy6N1YRbYlD9pgQT4QAiVeEK
 1IGCy6zdGerxOgkNB3bt1CjKb835eHFMqNBiYHv9HQf/hFLa7Y96qgC76
 qIAsL1rM1yGb8Z2IM3NKfEw+3KlPAzFXaqO0XCeZO7A+3vfsvzrk9WzYF
 9vGzfgek9JgNC9C5iMOTRHIcb8gQdndgk1x/OaDo3wjvt+rOShQIt3XQv
 CFvLpBU3M+30WprllKDeFruoVC9jNCn6PNoLOolAUYyCMTWdbF1Y3IZyV
 4XiVql4r9KreWY1mSk5d7ePLxl402RqfRa1m+KeUOcVZD7vOjy1kSC6X0 g==;
X-CSE-ConnectionGUID: 9dlaKu21T0yirL9KCBgy5Q==
X-CSE-MsgGUID: 9CWoI1gKRHWkdFFplwxiHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575350"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575350"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:57:03 -0700
X-CSE-ConnectionGUID: ksQOjCBTQIeZc1ge1JvnfQ==
X-CSE-MsgGUID: J20/xO9RRoK7gMRJ0wYtVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791582"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:57:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:57:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915: Sanitize MBUS joining
Date: Thu, 31 Oct 2024 17:56:45 +0200
Message-ID: <20241031155646.15165-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
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

If the system boots with MBUS joining enabled but we disable
the relevant pipe during sanitaion we later get into trouble
as the rest of the code doesn't expect MBUS joining to be
enabled unless the set of active pipes is in agreement.

We could relax some of the MBUS joining related checks during
normal atomic commits to let this slide, but that might also
let some real bugs through. So let's sanitize the MBUS joining
instead. And in order to keep things more or less in sync we'll
do the related credit, cdclk/mdclk ratio, etc. updates as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 29 ++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2eefeff6693a..98f9e01b2a1c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3567,6 +3567,29 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(i915, new_slices);
 }
 
+static void skl_mbus_sanitize(struct drm_i915_private *i915)
+{
+	struct intel_dbuf_state *dbuf_state =
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+
+	if (!HAS_MBUS_JOINING(i915))
+		return;
+
+	if (!dbuf_state->joined_mbus ||
+	    adlp_check_mbus_joined(dbuf_state->active_pipes))
+		return;
+
+	drm_dbg_kms(&i915->drm, "Disabling redundant MBUS joining (active pipes 0x%x)\n",
+		    dbuf_state->active_pipes);
+
+	dbuf_state->joined_mbus = false;
+	intel_dbuf_mdclk_cdclk_ratio_update(i915,
+					    dbuf_state->mdclk_cdclk_ratio,
+					    dbuf_state->joined_mbus);
+	pipe_mbus_dbox_ctl_update(i915, dbuf_state);
+	mbus_ctl_join_update(i915, dbuf_state, INVALID_PIPE);
+}
+
 static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
 {
 	const struct intel_dbuf_state *dbuf_state =
@@ -3599,7 +3622,7 @@ static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
 	return false;
 }
 
-static void skl_wm_sanitize(struct drm_i915_private *i915)
+static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 {
 	struct intel_crtc *crtc;
 
@@ -3638,7 +3661,9 @@ static void skl_wm_sanitize(struct drm_i915_private *i915)
 static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 {
 	skl_wm_get_hw_state(i915);
-	skl_wm_sanitize(i915);
+
+	skl_mbus_sanitize(i915);
+	skl_dbuf_sanitize(i915);
 }
 
 void intel_wm_state_verify(struct intel_atomic_state *state,
-- 
2.45.2

