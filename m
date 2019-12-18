Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BCA123C9A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 02:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7156E216;
	Wed, 18 Dec 2019 01:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B5B6E216
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:43:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 17:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247697572"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 17:43:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:42:07 -0800
Message-Id: <20191218014208.7916-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display: prefer 3-letter acronym
 for icelake
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are currently using a mix of platform name and acronym to name the
functions. Let's prefer the acronym as it should be clear what platform
it's about and it's shorter, so it doesn't go over 80 columns in a few
cases. This converts icelake to icl where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3b623426f243..d3a13737552a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10247,9 +10247,8 @@ static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 	pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
 }
 
-static void icelake_get_ddi_pll(struct drm_i915_private *dev_priv,
-				enum port port,
-				struct intel_crtc_state *pipe_config)
+static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
 {
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	enum icl_port_dpll_id port_dpll_id;
@@ -10533,7 +10532,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11)
-		icelake_get_ddi_pll(dev_priv, port, pipe_config);
+		icl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_CANNONLAKE(dev_priv))
 		cnl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_BC(dev_priv))
@@ -10584,7 +10583,7 @@ static enum transcoder transcoder_master_readout(struct drm_i915_private *dev_pr
 		return master_select - 1;
 }
 
-static void icelake_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
+static void icl_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 transcoders;
@@ -10742,7 +10741,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	if (INTEL_GEN(dev_priv) >= 11 &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder))
-		icelake_get_trans_port_sync_config(pipe_config);
+		icl_get_trans_port_sync_config(pipe_config);
 
 out:
 	for_each_power_domain(power_domain, power_domain_mask)
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
