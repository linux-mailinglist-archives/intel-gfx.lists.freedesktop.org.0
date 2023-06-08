Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEB5728986
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9208A10E622;
	Thu,  8 Jun 2023 20:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E5710E619
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256327; x=1717792327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=giMfbUyXxFq0jGYW9TYHEFOvh34DgNZsJNwku/VFtQ4=;
 b=Wxzotr65k8IlK+ghYT/a9wkau5GVbp/udciUZjO8GxSbnI52nhOkhAmV
 4pwN6oFyrc+UxxfCzvtZexdTV/szyyyGErvjT3TVaKDr+H+2P8ccuaGNz
 xqkPRDoC7QLkYFX4NV7gw/addXvZ6ENAWwZ/uC/QXci6yltwewCKUL4zM
 8HOk7dmXPxupDOE7et9XYzLTKmRuet4gi2KnPVMJHwROnXSCk+WZOcV16
 oYgJUTrFE8IyDLzIVMQoPffAQAYGIQZ1kLaLCI+zg0KD9bE4lRyAqeZa8
 NaZW/TdDOR8JV1YCbLZu1Ne1KZTkNySgzdCdQy6gqo0k96fKk9PGZKthn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012775"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012775"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100911"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100911"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:57 +0300
Message-Id: <20230608203057.23759-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/13] drm/i915/dsi: Remove weird
 has_pch_encoder asserts
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

No idea why the DSI code is feeling the need to assert that
has_pch_encoder must not be set. PCH encoders aren't even a
thing on any platform that has DSI.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 --
 drivers/gpu/drm/i915/display/vlv_dsi.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c040cd226a41..59a2a289d9be 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1245,8 +1245,6 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
-
 	/* Wa_1409054076:icl,jsl,ehl */
 	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, true);
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 33ada1a736d8..a96e7d028c5c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -817,8 +817,6 @@ static void bxt_dsi_enable(struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct drm_connector_state *conn_state)
 {
-	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
-
 	intel_crtc_vblank_on(crtc_state);
 }
 
-- 
2.39.3

