Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F13A88D08A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 23:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C4C10F3D6;
	Tue, 26 Mar 2024 22:10:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WgGxg/fn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF4810F3D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 22:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711491049; x=1743027049;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zOwOYKuDMzUIMdKVsvsDSKaktA+9UCtp+ahP8p6XSPU=;
 b=WgGxg/fnnpVxZMTZMjY/zrXlkA9Hu+e/+tbd9yPAI1yHxiJB912Hcjfz
 qD6leV8tvDYrl6T+q8/1HCOWnhYXl4oBX0JTv5lM/neAMIXtx9hKq9Hzt
 4ukQ2KgFnhSjw/9jRH5f15a/UXMQjmgzWiEyM2TXrZz9ggvOYWHzvkgLi
 vz8CtfklROzSMVRXJoSGg/kowJ3A+j5u2thjYqBE5KRkRlIeB7L4evBsB
 fc/IEGaFdeqY1p1bWTikkc6U2atTx8R/ZIiv2EHohx1s8QuSAd7pkwnC3
 q8zRvO0gCqd/if7gl5fCBPDowN3srwV0S0ED5qyJNuzTnpukmmMQpR88W w==;
X-CSE-ConnectionGUID: UJwoNo74QKCSzCkDWboR7g==
X-CSE-MsgGUID: Z4MOHlQURe21WOY6ncxG2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6759640"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6759640"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 15:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785466"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="827785466"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 15:10:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 00:10:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/i915/cdclk: Fix voltage_level programming edge case
Date: Wed, 27 Mar 2024 00:10:45 +0200
Message-ID: <20240326221045.9047-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326203128.10259-3-ville.syrjala@linux.intel.com>
References: <20240326203128.10259-3-ville.syrjala@linux.intel.com>
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

Currently we only consider the relationship of the
old and new CDCLK frequencies when determining whether
to do the repgramming from intel_set_cdclk_pre_plane_update()
or intel_set_cdclk_post_plane_update().

It is technically possible to have a situation where the
CDCLK frequency is decreasing, but the voltage_level is
increasing due a DDI port. In this case we should bump
the voltage level already in intel_set_cdclk_pre_plane_update()
(so that the voltage_level will have been increased by the
time the port gets enabled), while leaving the CDCLK frequency
unchanged (as active planes/etc. may still depend on it).
We can then reduce the CDCLK frequency to its final value
from intel_set_cdclk_post_plane_update().

In order to handle that correctly we shall construct a
suitable amalgam of the old and new cdclk states in
intel_set_cdclk_pre_plane_update().

And we can simply call intel_set_cdclk() unconditionally
in both places as it will not do anything if nothing actually
changes vs. the current hw state.

v2: Handle cdclk_state->disable_pipes

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 27 +++++++++++++---------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 619529dba095..504c5cbbcfff 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2600,6 +2600,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
+	struct intel_cdclk_config cdclk_config;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2608,13 +2609,21 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_pre_notify(state);
 
-	if (new_cdclk_state->disable_pipes ||
-	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+	if (new_cdclk_state->disable_pipes) {
+		cdclk_config = new_cdclk_state->actual;
+	} else {
+		if (new_cdclk_state->actual.cdclk >= old_cdclk_state->actual.cdclk)
+			cdclk_config = new_cdclk_state->actual;
+		else
+			cdclk_config = old_cdclk_state->actual;
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual,
-				new_cdclk_state->pipe);
+		cdclk_config.voltage_level = max(new_cdclk_state->actual.voltage_level,
+						 old_cdclk_state->actual.voltage_level);
 	}
+
+	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+
+	intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe);
 }
 
 /**
@@ -2640,13 +2649,9 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_post_notify(state);
 
-	if (!new_cdclk_state->disable_pipes &&
-	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual,
-				new_cdclk_state->pipe);
-	}
+	intel_set_cdclk(i915, &new_cdclk_state->actual, new_cdclk_state->pipe);
 }
 
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
-- 
2.43.2

