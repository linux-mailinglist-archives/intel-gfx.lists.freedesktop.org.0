Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0F442484B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB56A6EE64;
	Wed,  6 Oct 2021 20:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC5416EE86
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="225992392"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="225992392"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="484264576"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 06 Oct 2021 13:50:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:34 +0300
Message-Id: <20211006204937.30774-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/16] drm/i915: Use intel_de_rmw() for tgl dkl
 phy programming
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

Streamline the code by using intel_de_rmw().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++-------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 85247744e9dd..3c1b289df2c0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1307,7 +1307,6 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	for (ln = 0; ln < 2; ln++) {
 		int level;
-		u32 val;
 
 		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
 			       HIP_INDEX_VAL(tc_port, ln));
@@ -1316,29 +1315,26 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		val = intel_de_read(dev_priv, DKL_TX_DPCNTL0(tc_port));
-		val &= ~(DKL_TX_PRESHOOT_COEFF_MASK |
-			 DKL_TX_DE_EMPAHSIS_COEFF_MASK |
-			 DKL_TX_VSWING_CONTROL_MASK);
-		val |= DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing) |
-			DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
-			DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot);
-		intel_de_write(dev_priv, DKL_TX_DPCNTL0(tc_port), val);
+		intel_de_rmw(dev_priv, DKL_TX_DPCNTL0(tc_port),
+			     DKL_TX_PRESHOOT_COEFF_MASK |
+			     DKL_TX_DE_EMPAHSIS_COEFF_MASK |
+			     DKL_TX_VSWING_CONTROL_MASK,
+			     DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing) |
+			     DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
+			     DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot));
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		val = intel_de_read(dev_priv, DKL_TX_DPCNTL1(tc_port));
-		val &= ~(DKL_TX_PRESHOOT_COEFF_MASK |
-			 DKL_TX_DE_EMPAHSIS_COEFF_MASK |
-			 DKL_TX_VSWING_CONTROL_MASK);
-		val |= DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing) |
-			DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
-			DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot);
-		intel_de_write(dev_priv, DKL_TX_DPCNTL1(tc_port), val);
+		intel_de_rmw(dev_priv, DKL_TX_DPCNTL1(tc_port),
+			     DKL_TX_PRESHOOT_COEFF_MASK |
+			     DKL_TX_DE_EMPAHSIS_COEFF_MASK |
+			     DKL_TX_VSWING_CONTROL_MASK,
+			     DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing) |
+			     DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
+			     DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot));
 
-		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
-		val &= ~DKL_TX_DP20BITMODE;
-		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
+		intel_de_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port),
+			     DKL_TX_DP20BITMODE, 0);
 	}
 }
 
-- 
2.32.0

