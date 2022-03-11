Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382E64D678C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C8D10E692;
	Fri, 11 Mar 2022 17:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BC710E6D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019513; x=1678555513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uxaksJJ8n3AVI38t6qKzTvnueNlpem8wTaYq4Zyd6pI=;
 b=FIfZgBE5Udi9A+wVoPRREptiN7I/+78pMHct167XVAXvWeX+5CAhvw9v
 OfK7OSect3FLy652znINJq3pgfj57vGEAb3kOjD34B6xSoX4912cKT+wM
 55EILGwsWk2LJL4o9WS38WSqbMB8ynIj/FegAQcLHM8BFNAZkqusgprSX
 CpGWA0MmHdA2/2mRXcBWjdGw+02TyBF2uNZVZJoFP0yDYLsBhkhOzqfzk
 janKJwDuw3FS6X0Pte4mG8O3jAHA6OOsLFawFnFrzqOBWirlL17zo+r2z
 5+DJuNQIPk+IP1uklLjUu2bZbeYs234naWPyYoEFVlkVVppH/ruAJNsQU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255349287"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255349287"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="539063863"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 11 Mar 2022 09:25:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:25:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:25 +0200
Message-Id: <20220311172428.14685-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/16] drm/i915: Move DRRS enable/disable
 higher up
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

No reason to keep the DRRS enable/disable hidden insider the encoder
hooks. Let's just move them all the way up into platform independent
code so that all platforms get to use them. These are nops when
the state computation doesn't think DRRS is possible.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 3 ---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a3bf4e876fb4..e2b297d2c295 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2820,8 +2820,6 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
-	intel_drrs_enable(crtc_state);
-
 	if (crtc_state->has_audio)
 		intel_audio_codec_enable(encoder, crtc_state, conn_state);
 
@@ -2963,7 +2961,6 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 		intel_audio_codec_disable(encoder,
 					  old_crtc_state, old_conn_state);
 
-	intel_drrs_disable(old_crtc_state);
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ad82c251a0cd..eb49973621f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8127,6 +8127,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
 
+	intel_drrs_enable(new_crtc_state);
+
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
@@ -8196,6 +8198,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
+	intel_drrs_disable(old_crtc_state);
+
 	dev_priv->display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
-- 
2.34.1

