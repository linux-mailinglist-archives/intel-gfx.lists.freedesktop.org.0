Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 754B5424841
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A1B6EE7C;
	Wed,  6 Oct 2021 20:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DCE06EE7C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206910815"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206910815"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="488657136"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 06 Oct 2021 13:49:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:49:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:26 +0300
Message-Id: <20211006204937.30774-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/16] drm/i915: Remove dead
 DKL_TX_LOADGEN_SHARING_PMD_DISABLE stuff
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

DKL_TX_LOADGEN_SHARING_PMD_DISABLE doesn't even seem to exist,
also the spec says to skip all loadgen stuff.

The code was dead anyway since it wasn't actually writing the value
anywhere.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 --------
 drivers/gpu/drm/i915/i915_reg.h          | 1 -
 2 files changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0c9ed705af47..b8ec53d9e3b0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1309,14 +1309,6 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
 		val &= ~DKL_TX_DP20BITMODE;
 		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
-
-		if ((intel_crtc_has_dp_encoder(crtc_state) &&
-		     crtc_state->port_clock == 162000) ||
-		    (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
-		     crtc_state->port_clock == 594000))
-			val |= DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
-		else
-			val &= ~DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5e7a55e6ef50..8c8152de643f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11022,7 +11022,6 @@ enum skl_power_gate {
 						     _DKL_TX_DPCNTL1)
 
 #define _DKL_TX_DPCNTL2				0x2C8
-#define  DKL_TX_LOADGEN_SHARING_PMD_DISABLE            REG_BIT(12)
 #define  DKL_TX_DP20BITMODE				(1 << 2)
 #define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
 						     _DKL_PHY1_BASE, \
-- 
2.32.0

