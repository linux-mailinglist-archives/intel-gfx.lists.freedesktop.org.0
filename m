Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C409B7F63
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836CD10E8D9;
	Thu, 31 Oct 2024 15:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FxJeFiNm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B227D10E08F
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390221; x=1761926221;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=17hVgULaQrGgpFtYL3FJnl+a60WxZU/QxTY90lPEcoY=;
 b=FxJeFiNmDfvWBhqz1OX9Mq1oe3iDzmquNjmnwUhp2UBC/c8wo0VGLCJS
 H0J5IBThbfOjm226vXLj6ewXsiArAs8/JBvpm42bUzjEB0J9kyP6Ls02B
 dcHhehV4M9tmlqQXbarC65I8KIfbzwWOf+hFEQVjK9yZWxum9I9ZGjDj7
 CMu9RDV5PiS992BKuhNSGU9INY9OIDz/u52RkKSG/bkGJwWBIzO/CryFR
 aQUoPRqLSHvOmsEH/NRGzdiCeX5TlJKsscQCTCS4WLTeZE8vT14Z+CDHk
 C9PmiHRCM90EbYW8KqTiPjTzx2u9AycjnQc1ZPWEA6Yw7RQ0kTSUTaX2V Q==;
X-CSE-ConnectionGUID: dfINXPvxR5GdXosqnMJiAw==
X-CSE-MsgGUID: qPGdmtuuQAezOlYo7UQGfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575342"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575342"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:57:00 -0700
X-CSE-ConnectionGUID: Uo48HahAQEiNRtJnn9xBoQ==
X-CSE-MsgGUID: 12eY63/GRGeU00cF/95Z4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791579"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:56:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:56:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915: Extract mbus_ctl_join_update()
Date: Thu, 31 Oct 2024 17:56:44 +0200
Message-ID: <20241031155646.15165-5-ville.syrjala@linux.intel.com>
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

We'll be wanting reprogram the MBUS_CTL register during an
upcoming MBUS sanitation stage. Extract the reprogramming
into a helper that doesn't depend on the full atomic state
so that it can be reused.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 34 ++++++++++++--------
 1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8a31508f94bb..2eefeff6693a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3427,22 +3427,13 @@ static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
 		return INVALID_PIPE;
 }
 
-static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
-					enum pipe pipe)
+static void mbus_ctl_join_update(struct drm_i915_private *i915,
+				 const struct intel_dbuf_state *dbuf_state,
+				 enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dbuf_state *old_dbuf_state =
-		intel_atomic_get_old_dbuf_state(state);
-	const struct intel_dbuf_state *new_dbuf_state =
-		intel_atomic_get_new_dbuf_state(state);
 	u32 mbus_ctl;
 
-	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
-		    str_yes_no(old_dbuf_state->joined_mbus),
-		    str_yes_no(new_dbuf_state->joined_mbus),
-		    pipe != INVALID_PIPE ? pipe_name(pipe) : '*');
-
-	if (new_dbuf_state->joined_mbus)
+	if (dbuf_state->joined_mbus)
 		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN;
 	else
 		mbus_ctl = MBUS_HASHING_MODE_2x2;
@@ -3457,6 +3448,23 @@ static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
 }
 
+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
+					enum pipe pipe)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+
+	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
+		    str_yes_no(old_dbuf_state->joined_mbus),
+		    str_yes_no(new_dbuf_state->joined_mbus),
+		    pipe != INVALID_PIPE ? pipe_name(pipe) : '*');
+
+	mbus_ctl_join_update(i915, new_dbuf_state, pipe);
+}
+
 void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
 {
 	const struct intel_dbuf_state *new_dbuf_state =
-- 
2.45.2

