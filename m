Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF584E738A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9F110E327;
	Fri, 25 Mar 2022 12:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF26310E327
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211543; x=1679747543;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hgPhAtzn0KZL6uAtNtY/s3SUAO9R7wzU7CQXHY927S8=;
 b=JIhios4Yp7Vk1OQAoc9ycaq+k0wSZ9NCtcHMsmCYBpLeqSfVGr9v6QPT
 H8vatyjC9Uzslyr/fdr/73cBU4/CPzu/JsGdYgR+eWptOeftSeJTQgtBj
 9FM1htPhUZLM4j5hwXHFGDmgkdgrlN0S4czr4uJeysYo4EY/NKf8DB1OI
 5Egdf/tvzPfecCBeOcb2zCFYobR6jv2J5f0ztKmEx937AOi+DQZ0CfhGk
 srzGDoW9hmzjVsjmg6hhgRcD2vC7jQ2vAbOXuOvlKljiRL+zubtfP9U1t
 oHQ/Ss2zOtNwrrdmjwV7yXNhZnaikRH5TxvMXDEYoSmjZkLRZ+NAU417L w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="257451356"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="257451356"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="602037924"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 25 Mar 2022 05:32:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:31:57 +0200
Message-Id: <20220325123205.22140-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915: Move stuff into
 intel_dpll_crtc_compute_clock()
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

Move some checks into intel_dpll_crtc_compute_clock() from the
caller. Avoids the caller from having to worry about all this
crap.

We'll also reorder the hw.enable vs. shared_dpll checks since
it makes sense to sanity check that we've cleared out the
old shared_dpll even if the pipe is getting disabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 +--
 drivers/gpu/drm/i915/display/intel_dpll.c    | 10 ++++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bb1ababe4577..7c68bc07c925 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4999,8 +4999,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	    mode_changed && !crtc_state->hw.active)
 		crtc_state->update_wm_post = true;
 
-	if (mode_changed && crtc_state->hw.enable &&
-	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
+	if (mode_changed) {
 		ret = intel_dpll_crtc_compute_clock(state, crtc);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 1c05ec167046..88d78a585304 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1419,6 +1419,16 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
+
+	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
+		return 0;
+
+	if (!crtc_state->hw.enable)
+		return 0;
 
 	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
 }
-- 
2.34.1

