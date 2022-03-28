Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BA54E9B3D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 17:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FB710ED61;
	Mon, 28 Mar 2022 15:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994B310ED61
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 15:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648481886; x=1680017886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SHWFq6/4vQSSu7e2V3oiFULA4aIUdnM31ReAvtKQMww=;
 b=S93rNHk7WPq3M8g8YZS8M4D6EI2PHnynL4eYMSU8MWlu2s7ZYJRTewph
 EthA9idpK4VJnrn50Rw9zH1dPQGwOjIL6HXweHJZ0Qps0wldJjgk0ScEI
 hNI1DKS/n7wu/9KJ5gK4mqr317/jPsgBz2haIXK2AnGjEqLv9ZApwj4TY
 Wu+dVH2zBHR7rZNwF3F3GoDhtSswLZRsmxwLYHMej0uTszSIBnEKQ3tOM
 V3LiiANyhnxx2th0pz2iJ2/ds5Koao9J+0v3Ku+R278MWH4C9VTSRZMQa
 uOdXSfXSua0AT9N+pWldUw1p0l3b1yP9Qyi9vjfiLZOpva3a8tsYGIRw1 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="345467688"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="345467688"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 08:38:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="719158135"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 08:38:04 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 08:34:45 -0700
Message-Id: <20220328153445.2578957-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Add DMC_EVT_HTP and DMC_EVT_CTL
 programming
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

We need add some checks around DMC reloading to
prevents the rare possibility of some adversary
writing to a random mmio register

BSpec: 49193

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3dc859032bac..81cc4c658e3f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -29,6 +29,8 @@
 #include "intel_vga.h"
 #include "vlv_sideband.h"
 
+#define DMC_EVT_HTP_CTL_MAX	8
+
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
 {
@@ -1101,6 +1103,26 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 		 enabled_dbuf_slices);
 }
 
+static void tgl_dmc_mmio_prog(struct drm_i915_private *dev_priv)
+{
+	struct intel_dmc *dmc = &dev_priv->dmc;
+	int i, id;
+
+	for (i = 0; i <= DMC_EVT_HTP_CTL_MAX; i++) {
+		intel_de_write(dev_priv, TGL_MAIN_DMC_EVT_CTL(i), DMC_EVT_CTL_VAL);
+		intel_de_write(dev_priv, TGL_MAIN_DMC_EVT_HTP(i), DMC_EVT_HTP_VAL);
+	}
+	/* Pipe DMC MMIOs */
+	for (id = 1; i <= DMC_FW_MAX; id++) {
+		for (i = 0; i <= DMC_EVT_HTP_CTL_MAX; i++) {
+			intel_de_write(dev_priv, PIPEDMC_EVT_CTL_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),
+			DMC_EVT_CTL_VAL);
+			intel_de_write(dev_priv, PIPEDMC_EVT_HTP_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),
+			DMC_EVT_HTP_VAL);
+		}
+	}
+}
+
 static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 {
 	struct intel_cdclk_config cdclk_config = {};
@@ -1139,6 +1161,7 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
 	gen9_disable_dc_states(dev_priv);
+	tgl_dmc_mmio_prog(dev_priv);
 }
 
 static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a0d652f19ff9..7e3ef777c26d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5525,6 +5525,16 @@
 #define TGL_DMC_DEBUG3		_MMIO(0x101090)
 #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
 
+/* Main DMC EVT_HTP and EVT_CTL registers  */
+#define DMC_EVT_CTL_VAL		0x00030100
+#define DMC_EVT_HTP_VAL		0x00000000
+#define TGL_MAIN_DMC_EVT_HTP(n)	_MMIO(0x8F004 + (n) * 4)
+#define TGL_MAIN_DMC_EVT_CTL(n)	_MMIO(0x8F034 + (n) * 4)
+#define PIPEDMC_EVT_HTP_BASE	0x00004
+#define PIPEDMC_EVT_CTL_BASE	0x00034
+#define PIPEDMC_EVT_HTP_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_HTP_BASE + (i * 4))
+#define PIPEDMC_EVT_CTL_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_CTL_BASE + (i * 4))
+
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
 #define  MMIO_TIMEOUT_US(us)	((us) << 0)
-- 
2.25.1

