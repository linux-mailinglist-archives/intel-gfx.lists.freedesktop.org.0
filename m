Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5B418AA7E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 02:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B116E966;
	Thu, 19 Mar 2020 01:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD32D6E966
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 01:58:04 +0000 (UTC)
IronPort-SDR: eWnNsv94pn0Rk8meSVa/hdduW9TSrCVJz/xaIWzWVNfAol5XEac4dy3dzEKJG0v5oBW4vNdofu
 Gm3mUZqEuq+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 18:58:04 -0700
IronPort-SDR: WL1LP78sHVS9s6X46dYXlsLVFIJ1aeQNY2rECrkRL0oeCuWf9P8Kd8xx9jx55OAP0GcJ+G3OUG
 DhArD7RwizUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="245013202"
Received: from aswarup-desk.jf.intel.com ([10.165.21.160])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 18:58:04 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 18:57:41 -0700
Message-Id: <20200319015741.27849-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/tgl: Add definitions for VRR
 registers and bits
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add definitions for registers grouped under Transcoder VRR function
with necessary bitfields.

Bspec: 49268

v2: Use REG_GENMASK, correct tabs/space indentation and move the
definitions near the transcoder section.(Jani)

v3: Remove unnecessary prefix from bit/mask definitions.(Manasi)

v4: Use 'trans' in macro for better readability.(Manasi)

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 90 +++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9c53fe918be6..b785142d4930 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4324,6 +4324,96 @@ enum {
 #define   EXITLINE_MASK		REG_GENMASK(12, 0)
 #define   EXITLINE_SHIFT	0
 
+/* VRR registers */
+#define _TRANS_VRR_CTL_A		0x60420
+#define _TRANS_VRR_CTL_B		0x61420
+#define _TRANS_VRR_CTL_C		0x62420
+#define _TRANS_VRR_CTL_D		0x63420
+#define TRANS_VRR_CTL(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_CTL_A)
+#define   VRR_CTL_VRR_ENABLE		REG_BIT(31)
+#define   VRR_CTL_IGN_MAX_SHIFT		REG_BIT(30)
+#define   VRR_CTL_FLIP_LINE_EN		REG_BIT(29)
+#define   VRR_CTL_LINE_COUNT_MASK	REG_GENMASK(10, 3)
+#define   VRR_CTL_SW_FULLLINE_COUNT	REG_BIT(0)
+
+#define _TRANS_VRR_VMAX_A		0x60424
+#define _TRANS_VRR_VMAX_B		0x61424
+#define _TRANS_VRR_VMAX_C		0x62424
+#define _TRANS_VRR_VMAX_D		0x63424
+#define TRANS_VRR_VMAX(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_VMAX_A)
+#define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_VMIN_A		0x60434
+#define _TRANS_VRR_VMIN_B		0x61434
+#define _TRANS_VRR_VMIN_C		0x62434
+#define _TRANS_VRR_VMIN_D		0x63434
+#define TRANS_VRR_VMIN(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_VMIN_A)
+#define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
+
+#define _TRANS_VRR_VMAXSHIFT_A		0x60428
+#define _TRANS_VRR_VMAXSHIFT_B		0x61428
+#define _TRANS_VRR_VMAXSHIFT_C		0x62428
+#define _TRANS_VRR_VMAXSHIFT_D		0x63428
+#define TRANS_VRR_VMAXSHIFT(tran)	_MMIO_TRANS2(tran, \
+					_TRANS_VRR_VMAXSHIFT_A)
+#define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
+#define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
+#define   VRR_VMAXSHIFT_INC_MASK	REG_GENMASK(12, 0)
+
+#define _TRANS_VRR_STATUS_A		0x6042C
+#define _TRANS_VRR_STATUS_B		0x6142C
+#define _TRANS_VRR_STATUS_C		0x6242C
+#define _TRANS_VRR_STATUS_D		0x6342C
+#define TRANS_VRR_STATUS(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_STATUS_A)
+#define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
+#define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
+#define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
+#define   VRR_STATUS_NO_FLIP_FRAME	REG_BIT(28)
+#define   VRR_STATUS_VRR_EN_LIVE	REG_BIT(27)
+#define   VRR_STATUS_FLIPS_SERVICED	REG_BIT(26)
+#define   VRR_STATUS_VBLANK_MASK	REG_GENMASK(22, 20)
+#define   STATUS_FSM_IDLE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
+#define   STATUS_FSM_WAIT_TILL_FDB	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
+#define   STATUS_FSM_WAIT_TILL_FS	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
+#define   STATUS_FSM_WAIT_TILL_FLIP	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
+#define   STATUS_FSM_PIPELINE_FILL	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
+#define   STATUS_FSM_ACTIVE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
+#define   STATUS_FSM_LEGACY_VBLANK	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
+
+#define _TRANS_VRR_VTOTAL_PREV_A	0x60480
+#define _TRANS_VRR_VTOTAL_PREV_B	0x61480
+#define _TRANS_VRR_VTOTAL_PREV_C	0x62480
+#define _TRANS_VRR_VTOTAL_PREV_D	0x63480
+#define TRANS_VRR_VTOTAL_PREV(tran)	_MMIO_TRANS2(tran, \
+					_TRANS_VRR_VTOTAL_PREV_A)
+#define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
+#define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
+#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF	REG_BIT(29)
+#define   VRR_VTOTAL_PREV_FRAME_MASK	REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_FLIPLINE_A		0x60438
+#define _TRANS_VRR_FLIPLINE_B		0x61438
+#define _TRANS_VRR_FLIPLINE_C		0x62438
+#define _TRANS_VRR_FLIPLINE_D		0x63438
+#define TRANS_VRR_FLIPLINE(tran)	_MMIO_TRANS2(tran, \
+					_TRANS_VRR_FLIPLINE_A)
+#define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_STATUS2_A		0x6043C
+#define _TRANS_VRR_STATUS2_B		0x6143C
+#define _TRANS_VRR_STATUS2_C		0x6243C
+#define _TRANS_VRR_STATUS2_D		0x6343C
+#define TRANS_VRR_STATUS2(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_STATUS2_A)
+#define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
+
+#define _TRANS_PUSH_A			0x60A70
+#define _TRANS_PUSH_B			0x61A70
+#define _TRANS_PUSH_C			0x62A70
+#define _TRANS_PUSH_D			0x63A70
+#define TRANS_PUSH(tran)		_MMIO_TRANS2(tran, _TRANS_PUSH_A)
+#define   TRANS_PUSH_EN			REG_BIT(31)
+#define   TRANS_PUSH_SEND		REG_BIT(30)
+
 /*
  * HSW+ eDP PSR registers
  *
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
