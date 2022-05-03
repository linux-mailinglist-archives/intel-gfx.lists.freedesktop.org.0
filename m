Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C40DF518C35
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E813310E947;
	Tue,  3 May 2022 18:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B49B10E947
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602196; x=1683138196;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=p7YhrLAp088bUU2HAbU+z4OC65Nl4fSVFlp6DjB2MSs=;
 b=gWo1eWZGd8rY7TYX/fTgJoHx44Y1TIRlijYGnFQ+fn3xl3ZaIy7LKMQO
 FeAGOdpIjiCY5cb0IDrpqpSFaHsetBFP2v3EG6HWM0Krbar1UD8EASZfy
 PTeC5FfL9tSypHL+ZXmjwftJViVPSzNEBMhCQMveuHbvEZdEbYggfTmLH
 4qVVoSpK80a8cSUDkJflF1NwIBexHTTtF/gqqNZK05ooymsdfSEtkS4xm
 wCZHPfv7FS8Zx4/cCzaK9PacQWDvK8vZwQ7vIcYUEgR1mfrsHHDQ8CblF
 7YoUu+D+MNuApqPnXo7vrkjHJW/kif0Qb0qDQekSssRGiP7ILfPjGiFEf w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="330539491"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="330539491"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="536448984"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 03 May 2022 11:23:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:26 +0300
Message-Id: <20220503182242.18797-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/26] drm/i915: Extract intel_crtc_dotclock()
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

Extract intel_crtc_dotclock() from ddi_dotclock_get(). We'll reuse
this during state computation in order to determine the actual final
dotclcok after the DPLL computation has been done (which may not give
us the exact same port_clock that we fed in).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9e6fa59eabba..0cf2d4fba6a8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -322,14 +322,10 @@ static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
+int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
 {
 	int dotclock;
 
-	/* CRT dotclock is determined via other means */
-	if (pipe_config->has_pch_encoder)
-		return;
-
 	if (intel_crtc_has_dp_encoder(pipe_config))
 		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
 						    &pipe_config->dp_m_n);
@@ -345,7 +341,17 @@ static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 	if (pipe_config->pixel_multiplier)
 		dotclock /= pipe_config->pixel_multiplier;
 
-	pipe_config->hw.adjusted_mode.crtc_clock = dotclock;
+	return dotclock;
+}
+
+static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
+{
+	/* CRT dotclock is determined via other means */
+	if (pipe_config->has_pch_encoder)
+		return;
+
+	pipe_config->hw.adjusted_mode.crtc_clock =
+		intel_crtc_dotclock(pipe_config);
 }
 
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
-- 
2.35.1

