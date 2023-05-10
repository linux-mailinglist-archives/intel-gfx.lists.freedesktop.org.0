Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB59B6FDBA8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D789010E476;
	Wed, 10 May 2023 10:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57C0010E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714660; x=1715250660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wFPwR0nwTP9qTKdOi0dN70Yin1GnpjwATPpfLjg/C5w=;
 b=GezFeZQT4mAJ5SDc5jl6ZiSJl0Q1aCcdu+lax5ED9txSnWWSiGfGWIKQ
 e7aLJI87c/lneWKtRk7BSLbXTxbPkKj8hkgBNDjW6e9y04gzq3mWKnpFq
 hXJLEGGJNCVljr7MmdDcnXOaqqyXYXVUPz5jOjPpZ4U/2+AkAP6miYjIQ
 WrWSRd0Ay9UV7W8a4ryZXH8G8jVbzpJ8Ta0n/9J4tAgFDNiGYzx3H2JNq
 ygo0xyJRUrlP0xfK2UlwDU17IdwrJGxqK/fEV6yvQaA6QUWHWSDU3P3RC
 SDG5sm99ikUQZzlqvbWFH+3G+icG/jVoQ9gENiTQXx86cVuM6Ic8gTHT9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214410"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214410"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796705"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796705"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:59 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:21 +0300
Message-Id: <20230510103131.1618266-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 04/14] drm/i915: Update connector atomic
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 6e55806bbe066..66796e8eef90a 100644
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

