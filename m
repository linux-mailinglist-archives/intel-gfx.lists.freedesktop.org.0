Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938791709D3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:36:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86E76EBD5;
	Wed, 26 Feb 2020 20:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35A36EBCC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155020"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:43 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:50 +0200
Message-Id: <20200226203455.23032-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/hsw: Rename the get HDMI/DP DPLL
 funcs to get WRPLL/LCPLL
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

The types of PLLs used for HDMI/DP on HSW are WRPLL/LCPLL accordingly,
so use these names to align better with the rest of WRPLL/LCPLL function
names elsewhere.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index a4d27dfaec9a..1891aa268fb8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -849,8 +849,8 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 }
 
 static struct intel_shared_dpll *
-hsw_ddi_hdmi_get_dpll(struct intel_atomic_state *state,
-		      struct intel_crtc *crtc)
+hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -925,7 +925,7 @@ static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
 }
 
 static struct intel_shared_dpll *
-hsw_ddi_dp_get_dpll(struct intel_crtc_state *crtc_state)
+hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_shared_dpll *pll;
@@ -968,9 +968,9 @@ static bool hsw_get_dpll(struct intel_atomic_state *state,
 	       sizeof(crtc_state->dpll_hw_state));
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		pll = hsw_ddi_hdmi_get_dpll(state, crtc);
+		pll = hsw_ddi_wrpll_get_dpll(state, crtc);
 	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
-		pll = hsw_ddi_dp_get_dpll(crtc_state);
+		pll = hsw_ddi_lcpll_get_dpll(crtc_state);
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
 		if (WARN_ON(crtc_state->port_clock / 2 != 135000))
 			return false;
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
