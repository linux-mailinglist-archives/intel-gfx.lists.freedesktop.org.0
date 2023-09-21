Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DB27A95A1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 17:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C447710E122;
	Thu, 21 Sep 2023 15:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736E510E122
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 15:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695311611; x=1726847611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IN2DjvayzBUNOkEZdDVczryJTyjSO1SOZ96nKrBxgrM=;
 b=OzxaMrc7vN/XZ97agLekk+4SgcptBY4yeBgy86lLv5TnupalEkf5/RP8
 5ZTEXaC2Lu2cMRjpTDc4lttV6Sn938GLFkcp6rkZQVNtVUD4Kk5kJeCpU
 qOsoPfAkiUz19rWJ29ciKPzHr0WpNvwID+kGdyYgBBYhNSkT580RoqahC
 Il7H0FLkkm3t1549pb0nB4btkcfCWnlxU+BbNPgEGM38XlieX7bcA96nt
 cU+2DlHcRkFwqAQCDCcNMwA/8ZKeRynwSyb+sywI350s+vINfilhmCNpo
 wQyIFWSo+U1heUTTy9VNsNdUYB6h3p6h3I4tlIySTVrpQocqFwfUHlYDG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="377855077"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="377855077"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 08:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="750422285"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="750422285"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 08:53:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 18:53:25 +0300
Message-Id: <20230921155325.3851197-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cx0: prefer forward declarations over
 includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid including the world from headers when forward declarations
suffice.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 4c4db5cdcbd0..912e0eeb0be3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -10,14 +10,15 @@
 #include <linux/bitfield.h>
 #include <linux/bits.h>
 
-#include "i915_drv.h"
-#include "intel_display_types.h"
-
-struct drm_i915_private;
-struct intel_encoder;
-struct intel_crtc_state;
 enum icl_port_dpll_id;
 enum phy;
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_c10pll_state;
+struct intel_c20pll_state;
+struct intel_crtc_state;
+struct intel_encoder;
+struct intel_hdmi;
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
@@ -44,4 +45,5 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
+
 #endif /* __INTEL_CX0_PHY_H__ */
-- 
2.39.2

