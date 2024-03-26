Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C27C88CED2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9714B10F2C1;
	Tue, 26 Mar 2024 20:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TUuoUpqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698EB10F2BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711485097; x=1743021097;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xtlGg3Q3GfsyDXWDCDT9sePiZ129zmtDUKYoxhfFxME=;
 b=TUuoUpqjSMR2NUddbwRyxwzcH7I0SiQ7753CrcO1v/6rvX3Mk3IH3RfG
 6BjR4/1vJhObc/W+MyDvvgOiZPijG0ncow0qyXJuonE9Wi0xwlofOo+os
 VyBb/sDW6bu1HvePl8HNgd7+3OH2pShRTObrECcdEBRrlCUqxP9t0Nxoy
 xTBG5W9cs3nE03ZVkfXdxnkYfmnF3AcmOjFrZCm6gaoRX/XFbQ8+t6bo1
 S9Fw4WnhLlT1+OrL8uGfkoUMQmpf1ZEurmPD7y3DQvgV7Zj5QiqZYW/du
 LW7dhBymUwxu7r+aM7nvcDpRw+2JGXbTHX4WCwlwre68y8ZND17EpgPln Q==;
X-CSE-ConnectionGUID: /Y/1MDjsT52hJ5MifyB+HQ==
X-CSE-MsgGUID: XgiSWMOARG6Ezv1YXgmPHw==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6453425"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6453425"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 13:31:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785431"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="827785431"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 13:31:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 22:31:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/cdclk: Fix voltage_level programming edge case
Date: Tue, 26 Mar 2024 22:31:27 +0200
Message-ID: <20240326203128.10259-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
References: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 25 +++++++++++++---------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 49e2f09a796a..ce60d10666a2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2600,6 +2600,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
+	struct intel_cdclk_config cdclk_config;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2608,12 +2609,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_pre_notify(state);
 
-	if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+	if (new_cdclk_state->actual.cdclk >= old_cdclk_state->actual.cdclk)
+		cdclk_config = new_cdclk_state->actual;
+	else
+		cdclk_config = old_cdclk_state->actual;
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual,
-				new_cdclk_state->pipe);
-	}
+	cdclk_config.voltage_level = max(new_cdclk_state->actual.voltage_level,
+					 old_cdclk_state->actual.voltage_level);
+
+	cdclk_config.joined_mbus = new_cdclk_state->actual.joined_mbus;
+
+	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+
+	intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe);
 }
 
 /**
@@ -2639,12 +2647,9 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_post_notify(state);
 
-	if (old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
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

