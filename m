Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FCD4D3E6C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306D410E5EE;
	Thu, 10 Mar 2022 00:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC14E10E625
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873319; x=1678409319;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EntD0mmBd7Jm9MglEL8pntPrT9cuVtArwa7IXJ+P1b4=;
 b=MpX7Vh5fPxAkKhyLtm6R1miXZ5zuAsm0BRGHRWC3Nvh+nnnr1/n11u77
 tFZtU9BBUEXINEnTystY0t+0SXgYq+MgfaX8cxBS1M+GM7hlj6c1qf46y
 99HI3xKbC2XR3mKuQwv4DN4w11hyw397082JJbZ2aou453bf1NKPP+qWr
 8RhIXA2KeMuTix4xQfRVo0nEDjZqmn5JJvfWQPu+o8SGZzem/vO6XaPVV
 /Eb5rURpc7P4aqT9ZG6vbOz8ApqIGWEq2qtyiY7t0EGIAUXRTpcPP+9zM
 yApeKv7h2MA7xVnZwxtsBTWWi7/XMlLElIWtOzjk7tOgcGHFD2fzIWnzK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="252695675"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="252695675"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="513761310"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 09 Mar 2022 16:48:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:59 +0200
Message-Id: <20220310004802.16310-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: Move DRRS enable/disable higher
 up
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

No reason to keep the DRRS enable/disable hidden insider the encoder
hooks. Let's just move them all the way up into platform independent
code so that all platforms get to use them. These are nops when
the state computation doesn't think DRRS is possible.

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
index 4c7c74665819..455f19e6d43d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8106,6 +8106,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
 
+	intel_drrs_enable(new_crtc_state);
+
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
@@ -8175,6 +8177,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
+	intel_drrs_disable(old_crtc_state);
+
 	dev_priv->display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
-- 
2.34.1

