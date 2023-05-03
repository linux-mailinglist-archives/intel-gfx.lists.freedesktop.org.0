Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292B06F61C7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8687C10E35A;
	Wed,  3 May 2023 23:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CFE10E102
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155416; x=1714691416;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=f3ufcTX4BpUD+Hf9d+dPGTz55MLHejKP8yl99eQgkQk=;
 b=NrkIW5ZTVMgdGXb6a4aPhfegZL15AI7RXSBkMij98Gkifbhkd7fhCOte
 Kdt7+8VS/28ZB9XACvc86WDIsI+uSqTRuUEW5NPKFkWO8V449JlSOPDLT
 i4W3SfMDDwCp52eoZhPwGlvqnYVcNmaqCYMCetkc9tNZnvj4PAuFD9FF7
 lpwghxxAilyo+xAjzX0ODTXnyBQwOEqVKXdhE8/mbHLpMPbEwsbg6I+yO
 Lpoaou2QrjnEYLKAjoK9yfNim+jg7BXphtQ571F+0bDG4qCYgMEdFRx4Z
 ffn5uDnfdRA8LTQILp5zvI8YYJTVcBA5hRy1pQ1sRNdtNA4082wqiKTjW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607567"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607567"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872098"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872098"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:39 +0300
Message-Id: <20230503231048.432368-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/12] drm/i915: Update connector atomic
 state before crtc sanitize-disabling
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

During HW state readout/sanitization an up-to-date connector atomic
state will be required by a follow-up patch, which can disable CRTCs
with an encoder (and calling the correct encoder hooks happens via the
connector atomic state encoder pointer). So update the connector state
already before the CRTC sanitize/disable step. For now this doesn't make
a difference, since intel_modeset_update_connector_atomic_state() will
update/enable the atomic state only for connectors that have an enabled
encoder/CRTC. Such CRTCs/encoders will not be affected by
intel_sanitize_crtc().

v2: Add comment about why the connector state needs to be up-to-date.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 2ca66e49d8863..c1a4a7bcc56ae 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -701,6 +701,12 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	for_each_intel_encoder(&i915->drm, encoder)
 		intel_sanitize_encoder(encoder);
 
+	/*
+	 * Sanitizing CRTCs needs their connector atomic state to be
+	 * up-to-date, so ensure that already here.
+	 */
+	intel_modeset_update_connector_atomic_state(i915);
+
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
@@ -709,8 +715,6 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
 	}
 
-	intel_modeset_update_connector_atomic_state(i915);
-
 	intel_dpll_sanitize_state(i915);
 
 	intel_wm_get_hw_state(i915);
-- 
2.37.2

