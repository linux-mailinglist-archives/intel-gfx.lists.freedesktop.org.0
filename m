Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46190901BD0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811D610E2EC;
	Mon, 10 Jun 2024 07:22:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YF/j+MLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CDB10E30D
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718004116; x=1749540116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dMvhkIpcSyvnbc8SVaR+cg1WWIyOEMISIkYFsGyUPEo=;
 b=YF/j+MLWbayCcDncqE7l9cqK+9KSscFVvHRIR/fudS3ZMNx9v72FBFmt
 EdzOXA15XWNK02vMjSxgjXvvmLm/kRunIlhXORGD/WZXo0dLaszucdsk+
 VPj19cM2Eb7wcu9ilPi0g3QXQaBoxug47Wwl6vm4E9yGWaMHnDErkZqm+
 AQr8rnls49LYXCknHRpIF6r/etDaiFYx16ghgcBpwBHZRbFjr9QALMBK7
 CMt2hJLgSzXTL7AB0ntublw5mcoOB+HMq233XSk6XplQQ9ZPg65fHjUe4
 pYBbCSs6EYQP8uLsTUhrK3dSPkFE9yMW/IkxkKh2HV7gmXX9BPF4+v8nt Q==;
X-CSE-ConnectionGUID: GJ11zppNR4qd5NWAN94nHw==
X-CSE-MsgGUID: b3qmvz2CQKCFtyYCyYlC1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14526398"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14526398"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:21:56 -0700
X-CSE-ConnectionGUID: mXrJy2OSQKqTHEMwOl33uQ==
X-CSE-MsgGUID: 84QLfXAdQKCPrxjUaByxzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43407612"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jun 2024 00:21:55 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v16 1/9] drm/i915: Update indentation for VRR registers and
 bits
Date: Mon, 10 Jun 2024 12:51:54 +0530
Message-ID: <20240610072203.24956-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Update the indentation for the VRR register definition and
its bits, and fix checkpatch issues to ensure smooth movement
of registers and bits.

--v2:
- Keep XELPD_VRR_CTL_VRR_GUARDBAND(x) to avoid readability (Ankit).
- Fix all indentation related VRR registers and bits instead of
checkpatch one.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 174 ++++++++++++++++----------------
 1 file changed, 87 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7daf902772e4..3fbf639e6aa0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1148,104 +1148,104 @@
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
 /* VRR registers */
-#define _TRANS_VRR_CTL_A		0x60420
-#define _TRANS_VRR_CTL_B		0x61420
-#define _TRANS_VRR_CTL_C		0x62420
-#define _TRANS_VRR_CTL_D		0x63420
-#define TRANS_VRR_CTL(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
-#define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
-#define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
-#define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
-#define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
-#define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
-#define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
-#define	  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
-#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
-
-#define _TRANS_VRR_VMAX_A		0x60424
-#define _TRANS_VRR_VMAX_B		0x61424
-#define _TRANS_VRR_VMAX_C		0x62424
-#define _TRANS_VRR_VMAX_D		0x63424
+#define _TRANS_VRR_CTL_A			0x60420
+#define _TRANS_VRR_CTL_B			0x61420
+#define _TRANS_VRR_CTL_C			0x62420
+#define _TRANS_VRR_CTL_D			0x63420
+#define TRANS_VRR_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
+#define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
+#define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
+#define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
+#define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
+#define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
+#define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
+#define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
+#define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
+
+#define _TRANS_VRR_VMAX_A			0x60424
+#define _TRANS_VRR_VMAX_B			0x61424
+#define _TRANS_VRR_VMAX_C			0x62424
+#define _TRANS_VRR_VMAX_D			0x63424
 #define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
-#define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
+#define  VRR_VMAX_MASK				REG_GENMASK(19, 0)
 
-#define _TRANS_VRR_VMIN_A		0x60434
-#define _TRANS_VRR_VMIN_B		0x61434
-#define _TRANS_VRR_VMIN_C		0x62434
-#define _TRANS_VRR_VMIN_D		0x63434
+#define _TRANS_VRR_VMIN_A			0x60434
+#define _TRANS_VRR_VMIN_B			0x61434
+#define _TRANS_VRR_VMIN_C			0x62434
+#define _TRANS_VRR_VMIN_D			0x63434
 #define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
-#define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
+#define  VRR_VMIN_MASK				REG_GENMASK(15, 0)
 
-#define _TRANS_VRR_VMAXSHIFT_A		0x60428
-#define _TRANS_VRR_VMAXSHIFT_B		0x61428
-#define _TRANS_VRR_VMAXSHIFT_C		0x62428
-#define _TRANS_VRR_VMAXSHIFT_D		0x63428
+#define _TRANS_VRR_VMAXSHIFT_A			0x60428
+#define _TRANS_VRR_VMAXSHIFT_B			0x61428
+#define _TRANS_VRR_VMAXSHIFT_C			0x62428
+#define _TRANS_VRR_VMAXSHIFT_D			0x63428
 #define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
-					_TRANS_VRR_VMAXSHIFT_A)
-#define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
-#define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
-#define   VRR_VMAXSHIFT_INC_MASK	REG_GENMASK(12, 0)
-
-#define _TRANS_VRR_STATUS_A		0x6042C
-#define _TRANS_VRR_STATUS_B		0x6142C
-#define _TRANS_VRR_STATUS_C		0x6242C
-#define _TRANS_VRR_STATUS_D		0x6342C
-#define TRANS_VRR_STATUS(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
-#define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
-#define   VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
-#define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
-#define   VRR_STATUS_NO_FLIP_FRAME	REG_BIT(28)
-#define   VRR_STATUS_VRR_EN_LIVE	REG_BIT(27)
-#define   VRR_STATUS_FLIPS_SERVICED	REG_BIT(26)
-#define   VRR_STATUS_VBLANK_MASK	REG_GENMASK(22, 20)
-#define   STATUS_FSM_IDLE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
-#define   STATUS_FSM_WAIT_TILL_FDB	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
-#define   STATUS_FSM_WAIT_TILL_FS	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
-#define   STATUS_FSM_WAIT_TILL_FLIP	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
-#define   STATUS_FSM_PIPELINE_FILL	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
-#define   STATUS_FSM_ACTIVE		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
-#define   STATUS_FSM_LEGACY_VBLANK	REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
-
-#define _TRANS_VRR_VTOTAL_PREV_A	0x60480
-#define _TRANS_VRR_VTOTAL_PREV_B	0x61480
-#define _TRANS_VRR_VTOTAL_PREV_C	0x62480
-#define _TRANS_VRR_VTOTAL_PREV_D	0x63480
+						_TRANS_VRR_VMAXSHIFT_A)
+#define  VRR_VMAXSHIFT_DEC_MASK			REG_GENMASK(29, 16)
+#define  VRR_VMAXSHIFT_DEC			REG_BIT(16)
+#define  VRR_VMAXSHIFT_INC_MASK			REG_GENMASK(12, 0)
+
+#define _TRANS_VRR_STATUS_A			0x6042c
+#define _TRANS_VRR_STATUS_B			0x6142c
+#define _TRANS_VRR_STATUS_C			0x6242c
+#define _TRANS_VRR_STATUS_D			0x6342c
+#define TRANS_VRR_STATUS(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
+#define  VRR_STATUS_VMAX_REACHED		REG_BIT(31)
+#define  VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
+#define  VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
+#define  VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
+#define  VRR_STATUS_VRR_EN_LIVE			REG_BIT(27)
+#define  VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
+#define  VRR_STATUS_VBLANK_MASK			REG_GENMASK(22, 20)
+#define  STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
+#define  STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
+#define  STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
+#define  STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
+#define  STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
+#define  STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
+#define  STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
+
+#define _TRANS_VRR_VTOTAL_PREV_A		0x60480
+#define _TRANS_VRR_VTOTAL_PREV_B		0x61480
+#define _TRANS_VRR_VTOTAL_PREV_C		0x62480
+#define _TRANS_VRR_VTOTAL_PREV_D		0x63480
 #define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
-					_TRANS_VRR_VTOTAL_PREV_A)
-#define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
-#define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
-#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF	REG_BIT(29)
-#define   VRR_VTOTAL_PREV_FRAME_MASK	REG_GENMASK(19, 0)
-
-#define _TRANS_VRR_FLIPLINE_A		0x60438
-#define _TRANS_VRR_FLIPLINE_B		0x61438
-#define _TRANS_VRR_FLIPLINE_C		0x62438
-#define _TRANS_VRR_FLIPLINE_D		0x63438
+						_TRANS_VRR_VTOTAL_PREV_A)
+#define  VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
+#define  VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
+#define  VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
+#define  VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
+
+#define _TRANS_VRR_FLIPLINE_A			0x60438
+#define _TRANS_VRR_FLIPLINE_B			0x61438
+#define _TRANS_VRR_FLIPLINE_C			0x62438
+#define _TRANS_VRR_FLIPLINE_D			0x63438
 #define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
-					_TRANS_VRR_FLIPLINE_A)
-#define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
+						_TRANS_VRR_FLIPLINE_A)
+#define  VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
 
-#define _TRANS_VRR_STATUS2_A		0x6043C
-#define _TRANS_VRR_STATUS2_B		0x6143C
-#define _TRANS_VRR_STATUS2_C		0x6243C
-#define _TRANS_VRR_STATUS2_D		0x6343C
+#define _TRANS_VRR_STATUS2_A			0x6043c
+#define _TRANS_VRR_STATUS2_B			0x6143c
+#define _TRANS_VRR_STATUS2_C			0x6243c
+#define _TRANS_VRR_STATUS2_D			0x6343c
 #define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
-#define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
+#define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
 
-#define _TRANS_PUSH_A			0x60A70
-#define _TRANS_PUSH_B			0x61A70
-#define _TRANS_PUSH_C			0x62A70
-#define _TRANS_PUSH_D			0x63A70
+#define _TRANS_PUSH_A				0x60a70
+#define _TRANS_PUSH_B				0x61a70
+#define _TRANS_PUSH_C				0x62a70
+#define _TRANS_PUSH_D				0x63a70
 #define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
-#define   TRANS_PUSH_EN			REG_BIT(31)
-#define   TRANS_PUSH_SEND		REG_BIT(30)
-
-#define _TRANS_VRR_VSYNC_A		0x60078
-#define TRANS_VRR_VSYNC(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
-#define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
-#define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
-#define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
-#define VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
+#define  TRANS_PUSH_EN				REG_BIT(31)
+#define  TRANS_PUSH_SEND			REG_BIT(30)
+
+#define _TRANS_VRR_VSYNC_A			0x60078
+#define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
+#define VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
+#define VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
+#define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
+#define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
 
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
-- 
2.45.2

