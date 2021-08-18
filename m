Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0381A3F0ADC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6C66E8A2;
	Wed, 18 Aug 2021 18:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966846E8A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:12:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216425396"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="216425396"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="441961870"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:44 +0300
Message-Id: <9bb56462918a11c9c0348f637255d8db2489b69a.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/17] drm/i915/dg2: add TRANS_DP2_VFREQHIGH and
 TRANS_DP2_VFREQLOW
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

Add the registers for specifying the lower and higher 24 bits of the DP
2.0 pixel clock frequency in Hz.

Bspec: 53326
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 18083ae8a877..f377044fb9ac 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9108,6 +9108,20 @@ enum {
 #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
 #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
 
+#define _TRANS_DP2_VFREQHIGH_A			0x600a4
+#define _TRANS_DP2_VFREQHIGH_B			0x610a4
+#define _TRANS_DP2_VFREQHIGH_C			0x620a4
+#define _TRANS_DP2_VFREQHIGH_D			0x630a4
+#define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK	REG_GENMASK(31, 8)
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))
+
+#define _TRANS_DP2_VFREQLOW_A			0x600a8
+#define _TRANS_DP2_VFREQLOW_B			0x610a8
+#define _TRANS_DP2_VFREQLOW_C			0x620a8
+#define _TRANS_DP2_VFREQLOW_D			0x630a8
+#define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
+
 /* SNB eDP training params */
 /* SNB A-stepping */
 #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
-- 
2.20.1

