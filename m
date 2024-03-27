Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C978188ECE4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7077010FEC5;
	Wed, 27 Mar 2024 17:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcMmWjNG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9465810FEC5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561554; x=1743097554;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zOwOYKuDMzUIMdKVsvsDSKaktA+9UCtp+ahP8p6XSPU=;
 b=KcMmWjNGWh53Oww3WNI/7tTMWbexIILu9josua3X6ISRKg6QGlld+Vr2
 XPEo5BUA3bkJYKfienTKbT07Eai6ORWtW6MZhdW3nya+fYce/s5Xrrsqx
 6+Vir4i+E9Gns7Jov+MoawfqZc4IN0FBIXsLD2wLR8p5pnlaNMQNcjpuO
 A6vGhFDv9NsG2+TF33h9hkxDAqXHp9heX/6FygblwoXx0DsYPEUbvoUYU
 yXQyU8ulAQWoKZGEt6tPMKYH67TYxXPxxCWjg0xveU5I0UoyKpXVcuX/Q
 L10oLaD6MrpJUdSsHa0puuouZ822fzRJLjaNQ331yv+uzM4i2E3Eub1fD A==;
X-CSE-ConnectionGUID: Q9fM44CnTHm/94fxN7zG5Q==
X-CSE-MsgGUID: L5TLBI6ZRt6f4fWQpMg3yw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795399"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795399"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785905"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:45:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:45:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/13] drm/i915/cdclk: Fix voltage_level programming edge case
Date: Wed, 27 Mar 2024 19:45:33 +0200
Message-ID: <20240327174544.983-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

