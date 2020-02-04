Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E11513EC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 02:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604406ED76;
	Tue,  4 Feb 2020 01:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DCD6ED77
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 01:10:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 17:10:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="378260412"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 03 Feb 2020 17:10:54 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 17:10:32 -0800
Message-Id: <20200204011032.582737-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200204011032.582737-1-matthew.d.roper@intel.com>
References: <20200204011032.582737-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Program MBUS_ABOX{1,
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

v2:
 - Program registers with rmw to preserve contents of unrelated bits.
 - Switch to the new display uncore helpers.

Bspec: 49213
Bspec: 50096
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 529319c962e8..f638691cda6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4516,6 +4516,10 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 		MBUS_ABOX_BW_CREDIT(1);
 
 	intel_de_rmw(dev_priv, MBUS_ABOX_CTL, mask, val);
+	if (INTEL_GEN(dev_priv) >= 12) {
+		intel_de_rmw(dev_priv, MBUS_ABOX1_CTL, mask, val);
+		intel_de_rmw(dev_priv, MBUS_ABOX2_CTL, mask, val);
+	}
 }
 
 static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0bd431f6a011..d3df704ee099 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2865,6 +2865,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define MI_ARB_STATE	_MMIO(0x20e4) /* 915+ only */
 
 #define MBUS_ABOX_CTL			_MMIO(0x45038)
+#define MBUS_ABOX1_CTL			_MMIO(0x45048)
+#define MBUS_ABOX2_CTL			_MMIO(0x4504C)
 #define MBUS_ABOX_BW_CREDIT_MASK	(3 << 20)
 #define MBUS_ABOX_BW_CREDIT(x)		((x) << 20)
 #define MBUS_ABOX_B_CREDIT_MASK		(0xF << 16)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
