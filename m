Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4173E5F45C4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 16:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6A510E03C;
	Tue,  4 Oct 2022 14:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DCD10E03C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 14:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664894448; x=1696430448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EaACmrqAnqpgx3dq7xEZENBkr+4JjEGp4qErR2ilTXg=;
 b=GonKkpvjkWcjKBgIuwhJdnNoGltfUsIGsbWJ9z85cEn44mamzNmE98Cj
 vuCy3kMy4fzHrBxZQ5KOxOJvEbln3tWSp1rQaQ1VTfnqinS+w+95Tjsi/
 sfWpXvhTAjiJ1ZqulpEb0cgpF1cynGItL4EG/f8doNxKLKq/gxea8yvpB
 VXmxrXx0mh6Ml93NJzKBU3C52nv5lKWx+jjXne9XyAFJVAtnBByW63qgh
 sV0GLtsUcg1n2vgjFMbDhFA3MNoL1G9zmnO2fE8GUmMgxUo1v9Q5t26rh
 d7+p6hKA0XUWwbVVeZ3yzt1j2jglMauyJuISx1+yPJUfSjwtScQ5oSwf6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="282637844"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="282637844"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 07:40:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="869023203"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="869023203"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 04 Oct 2022 07:40:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 17:40:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 17:40:13 +0300
Message-Id: <20221004144014.6199-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221004144014.6199-1-ville.syrjala@linux.intel.com>
References: <20221004144014.6199-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Generalize the PPS
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
index 21944f5bf3a8..66f1c867ba8a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -232,31 +232,26 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
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
 
@@ -267,7 +262,7 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
 		if (port_sel != PANEL_PORT_SELECT_VLV(port))
 			continue;
 
-		if (!pipe_check(dev_priv, pipe))
+		if (!check(dev_priv, pipe))
 			continue;
 
 		return pipe;
@@ -288,15 +283,15 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
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
2.35.1

