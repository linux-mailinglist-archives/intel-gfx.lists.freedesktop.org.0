Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A0B4B6349
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 07:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3BA10E1E2;
	Tue, 15 Feb 2022 06:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF72710E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 06:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644905626; x=1676441626;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2bScauudvfgHDaVIWMPIJJRJS0xHdWA3503JeeLRdJI=;
 b=SSrSkVAjHjEpLpAZzh49xPqNOZD0+1c0Pf2U6zp8MCFW2TfTgAVTP7oX
 FW9AIosSdgv7jBL1mqKQjDPNHpmBrw2tZIrhtmMnqXegzBoUEwSOcfoOe
 O52GZpEQO+6s0aqbjC9ZUrBTTBpxed3E+BYbjPANOhbtkUHrJsYNC1Hpm
 4CS4/x7b4xXMeIAItEkXJecIzfLURdLoV89u0msqX1gVIQ12/RMtzDLPE
 zbCgE+4mkFmIfMR3MgllQyqxr5+ZRPtgK8FKP3b9RNHDK62EWZUkNIjpt
 pWrQFLvFgYaZywHeHeXg4bB9TWtMzdbP+upywJHQyf+TZ+FbggMkq84Dn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="310994366"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="310994366"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:13:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="775634469"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:13:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 22:13:41 -0800
Message-Id: <20220215061342.2055952-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Define MCH registers relative
 to MCHBAR_MIRROR_BASE
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

A few of our MCH registers are defined with absolute register offsets.
For consistency, let's switch their definitions to be relative offsets
from MCHBAR_MIRROR_BASE.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4ea1713e6b60..72cb6e13b4e2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1922,16 +1922,16 @@
 #define HPLLVCO                 _MMIO(MCHBAR_MIRROR_BASE + 0xc38)
 #define HPLLVCO_MOBILE          _MMIO(MCHBAR_MIRROR_BASE + 0xc0f)
 
-#define TSC1			_MMIO(0x11001)
+#define TSC1			_MMIO(MCHBAR_MIRROR_BASE + 0x1001)
 #define   TSE			(1 << 0)
-#define TR1			_MMIO(0x11006)
-#define TSFS			_MMIO(0x11020)
+#define TR1			_MMIO(MCHBAR_MIRROR_BASE + 0x1006)
+#define TSFS			_MMIO(MCHBAR_MIRROR_BASE + 0x1020)
 #define   TSFS_SLOPE_MASK	0x0000ff00
 #define   TSFS_SLOPE_SHIFT	8
 #define   TSFS_INTR_MASK	0x000000ff
 
-#define CSIPLL0			_MMIO(0x12c10)
-#define DDRMPLL1		_MMIO(0X12c20)
+#define CSIPLL0			_MMIO(MCHBAR_MIRROR_BASE + 0x2c10)
+#define DDRMPLL1		_MMIO(MCHBAR_MIRROR_BASE + 0x2c20)
 #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
 
 #define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
@@ -4320,7 +4320,7 @@
 	 ((fbc) << WM1_LP_FBC_SHIFT) | ((pri) << WM1_LP_SR_SHIFT) | (cur))
 
 /* Memory latency timer register */
-#define MLTR_ILK		_MMIO(0x11222)
+#define MLTR_ILK		_MMIO(MCHBAR_MIRROR_BASE + 0x1222)
 #define  MLTR_WM1_SHIFT		0
 #define  MLTR_WM2_SHIFT		8
 /* the unit of memory self-refresh latency time is 0.5us */
-- 
2.34.1

