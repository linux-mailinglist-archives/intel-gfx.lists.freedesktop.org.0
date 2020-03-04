Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD97A1792FB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 16:10:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108A76E19B;
	Wed,  4 Mar 2020 15:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B906B6E19B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 15:10:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 07:09:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="240484870"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 04 Mar 2020 07:09:58 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 17:09:18 +0200
Message-Id: <20200304150918.25473-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix documentation for
 intel_dpll_get_freq()
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

Fix the following kerneldoc warning and while at it also the doc for the
corresponding vfunc hook.

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/display/intel_dpll_mgr.h:285: warning: Function parameter or member 'get_freq' not described in 'intel_shared_dpll_funcs'

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 ++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 76d14486b3a5..2d47f1f756a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4408,6 +4408,13 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 	dpll_mgr->update_active_dpll(state, crtc, encoder);
 }
 
+/**
+ * intel_dpll_get_freq - calculate the DPLL's output frequency
+ * @i915: i915 device
+ * @pll: DPLL for which to calculate the output frequency
+ *
+ * Return the output frequency corresponding to @pll's current state.
+ */
 int intel_dpll_get_freq(struct drm_i915_private *i915,
 			const struct intel_shared_dpll *pll)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5c847627580a..5d9a2bc371e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -279,6 +279,12 @@ struct intel_shared_dpll_funcs {
 			     struct intel_shared_dpll *pll,
 			     struct intel_dpll_hw_state *hw_state);
 
+	/**
+	 * @get_freq:
+	 *
+	 * Hook for calculating the pll's output frequency based on its
+	 * current state.
+	 */
 	int (*get_freq)(struct drm_i915_private *i915,
 			const struct intel_shared_dpll *pll);
 };
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
