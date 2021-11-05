Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F96446A80
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 22:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E4E6EC86;
	Fri,  5 Nov 2021 21:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB63F6EC86
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 21:22:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10159"; a="218887067"
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="218887067"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 14:22:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="579892902"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 05 Nov 2021 14:21:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Nov 2021 23:21:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Nov 2021 23:21:56 +0200
Message-Id: <20211105212156.5697-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Call intel_update_active_dpll() for
 both bigjoiner pipes
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

Currently we're only calling intel_update_active_dpll() for the
bigjoiner master pipe but not for the slave. With TC ports this
leads to the two pipes end up trying to use different PLLs
(TC vs. TBT). What's worse we're enabling the PLL that didn't get
intel_update_active_dpll() called on it at the spot where we
need the clocks turned on. So we turn on the wrong PLL and the
DDI is now trying to source its clock from the other PLL which is
still disabled. Naturally that doesn't end so well and the DDI
fails to start up.

The state checker also gets a bit unhappy (which is a good thing)
when it notices that one of the pipes was using the wrong PLL.

Let's fix this by remembering to call intel_update_active_dpll()
for both pipes. That should get the correct PLL turned on when
we need it, and the state checker should also be happy.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4434
Fixes: e12d6218fda2 ("drm/i915: Reduce bigjoiner special casing")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 145d51ac43a3..f9e7e3d1c7d0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3140,8 +3140,14 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
 
 	intel_tc_port_get_link(enc_to_dig_port(encoder),
 		               required_lanes);
-	if (crtc_state && crtc_state->hw.active)
+	if (crtc_state && crtc_state->hw.active) {
+		struct intel_crtc *slave_crtc = crtc_state->bigjoiner_linked_crtc;
+
 		intel_update_active_dpll(state, crtc, encoder);
+
+		if (slave_crtc)
+			intel_update_active_dpll(state, slave_crtc, encoder);
+	}
 }
 
 static void
-- 
2.32.0

