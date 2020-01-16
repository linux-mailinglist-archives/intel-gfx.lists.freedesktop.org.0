Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D44A13D1B4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 02:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFC96E1EE;
	Thu, 16 Jan 2020 01:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725B86E1EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 01:48:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 17:48:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="273833208"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jan 2020 17:48:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 17:48:55 -0800
Message-Id: <20200116014855.3615366-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Program MBUS_ABOX{1,
 2}_CTL during display init
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

On gen11 we only needed to program MBus credits into MBUS_ABOX_CTL
during display initialization, but on gen12 we're now supposed to
program the same values into MBUS_ABOX1_CTL and MBUS_ABOX2_CTL as well.

Bspec: 49213
Bspec: 50096
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 21561acfa3ac..761be9fcaf10 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4474,6 +4474,10 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 	      MBUS_ABOX_BW_CREDIT(1);
 
 	I915_WRITE(MBUS_ABOX_CTL, val);
+	if (INTEL_GEN(dev_priv) >= 12) {
+		I915_WRITE(MBUS_ABOX1_CTL, val);
+		I915_WRITE(MBUS_ABOX2_CTL, val);
+	}
 }
 
 static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5e5949edf2a8..ef191a0278ac 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2860,6 +2860,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MI_ARB_STATE	_MMIO(0x20e4) /* 915+ only */
 
 #define MBUS_ABOX_CTL			_MMIO(0x45038)
+#define MBUS_ABOX1_CTL			_MMIO(0x45048)
+#define MBUS_ABOX2_CTL			_MMIO(0x4504C)
 #define MBUS_ABOX_BW_CREDIT_MASK	(3 << 20)
 #define MBUS_ABOX_BW_CREDIT(x)		((x) << 20)
 #define MBUS_ABOX_B_CREDIT_MASK		(0xF << 16)
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
