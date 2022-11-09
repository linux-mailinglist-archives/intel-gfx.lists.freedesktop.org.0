Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6BE622A10
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B9B10E59C;
	Wed,  9 Nov 2022 11:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9DA10E593
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667992623; x=1699528623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dO/Pqaw3wBjId7YwIHqb0svR9JtDH52cT19POuEQnKk=;
 b=STJHg43I1JrWetOV5s+68pnNSEIE7dto9g6GZiZoHhmrC7dK/+X+kBP3
 YSqOMY/d2UFkWYlANSMqj80W+r70/PxtnqrEJ124EXU4Y335ZkF2+ePuc
 HZgaoPFSPqn+ot/T1yPRc7BJxFSOYVTz9EkpLV7ejLUocIAZoYxUi/fLO
 TbNucGRZyaqkVbzJm+2X+i0z9mVyCGR7nBIRXfdRUSJwK4ym/CXtjN8zD
 t/GmOYuNIVHvN8TMm9hcWxPWIIV/JiaW4mapVxpRPsSZElKDt2FwwkhmT
 y7hDiQ2MeLeB9KXkkihBEYYep9E+X5n/ZrNwQk8EaqTLKBNZ1RwMEocya g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312113413"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312113413"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:17:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636707043"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636707043"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 09 Nov 2022 03:17:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 13:16:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 13:16:46 +0200
Message-Id: <20221109111649.23062-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Generalize the PPS
 vlv_pipe_check() stuff
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

Restate the vlv_pipe_check() stuff in terms of PPS index
(rather than pipe, which it is on VLV/CHV) so that we can
reuse this same mechanim on other platforms as well.

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 27 ++++++++++--------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 22f5e08d396b..84265096f751 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -233,31 +233,26 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	return backlight_controller;
 }
 
-typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
-			       enum pipe pipe);
+typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx);
 
-static bool vlv_pipe_has_pp_on(struct drm_i915_private *dev_priv,
-			       enum pipe pipe)
+static bool pps_has_pp_on(struct drm_i915_private *dev_priv, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_STATUS(pipe)) & PP_ON;
+	return intel_de_read(dev_priv, PP_STATUS(pps_idx)) & PP_ON;
 }
 
-static bool vlv_pipe_has_vdd_on(struct drm_i915_private *dev_priv,
-				enum pipe pipe)
+static bool pps_has_vdd_on(struct drm_i915_private *dev_priv, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_CONTROL(pipe)) & EDP_FORCE_VDD;
+	return intel_de_read(dev_priv, PP_CONTROL(pps_idx)) & EDP_FORCE_VDD;
 }
 
-static bool vlv_pipe_any(struct drm_i915_private *dev_priv,
-			 enum pipe pipe)
+static bool pps_any(struct drm_i915_private *dev_priv, int pps_idx)
 {
 	return true;
 }
 
 static enum pipe
 vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
-		     enum port port,
-		     vlv_pipe_check pipe_check)
+		     enum port port, pps_check check)
 {
 	enum pipe pipe;
 
@@ -268,7 +263,7 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
 		if (port_sel != PANEL_PORT_SELECT_VLV(port))
 			continue;
 
-		if (!pipe_check(dev_priv, pipe))
+		if (!check(dev_priv, pipe))
 			continue;
 
 		return pipe;
@@ -289,15 +284,15 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	/* try to find a pipe with this port selected */
 	/* first pick one where the panel is on */
 	intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
-						      vlv_pipe_has_pp_on);
+						      pps_has_pp_on);
 	/* didn't find one? pick one where vdd is on */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
 		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
-							      vlv_pipe_has_vdd_on);
+							      pps_has_vdd_on);
 	/* didn't find one? pick one with just the correct port */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
 		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
-							      vlv_pipe_any);
+							      pps_any);
 
 	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when needed */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE) {
-- 
2.37.4

