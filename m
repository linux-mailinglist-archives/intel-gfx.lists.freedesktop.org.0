Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F4249C7D6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 11:46:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED8510E722;
	Wed, 26 Jan 2022 10:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E433C10E808
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 10:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643193983; x=1674729983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wFSyKtHFunA1xqqRQX3rKiZs/QZD+tUlaRysPWFpQR8=;
 b=BMAHBNAl7/6xblpr28nOLQfqrMQb1DW0tEMO8solgLIjumR6Pumv+iy2
 qJo/XsPkXI4aDnfqYWxl9G1A4ChZEdTNvrr9uT8jdggrPuAJDk5LuT7kN
 zc6VQzI2vA2BEw/T0HKD7U4+z8js5BKradYRfKtcDPfBoBaBk+pSVcyLJ
 bkC+ohPIwFVaGcuVLHU0A/KbLfbb3B0SwQ6OGFtV2CkXr2Z2jWlPNYkeD
 B3kFPUJxUxvNuATeOawBnIHyrtb19nvt/V0Bf/vALhhD04HstUICsuYik
 GmNcHIXg177oQPDco1N25njDPMrDuvwjljMfpmAzGlB2oNRnyBVdTD1Zq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246301886"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="246301886"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 02:46:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="477445991"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2022 02:46:22 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 02:48:21 -0800
Message-Id: <20220126104822.3653079-10-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 09/10] drm/i915/guc: Follow legacy register
 names
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before we print the GuC provided register dumps, modify the
register tables to use string names as per the legacy error
capture execlist codes.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 70 +++++++++----------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 2f5dc413dddc..506496058daf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -22,7 +22,7 @@
  *       from the engine-mmio-base
  */
 #define COMMON_BASE_GLOBAL() \
-	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}
+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}
 
 #define COMMON_GEN9BASE_GLOBAL() \
 	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
@@ -34,43 +34,43 @@
 #define COMMON_GEN12BASE_GLOBAL() \
 	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
 	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
-	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
-	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
-	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
+	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
+	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
+	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}
 
 #define COMMON_BASE_ENGINE_INSTANCE() \
-	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
-	{RING_ESR(0),              0,      0, "RING_ESR"}, \
-	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LOW32"}, \
-	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UP32"}, \
-	{RING_IPEIR(0),            0,      0, "RING_IPEIR"}, \
-	{RING_IPEHR(0),            0,      0, "RING_IPEHR"}, \
-	{RING_INSTPS(0),           0,      0, "RING_INSTPS"}, \
+	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
+	{RING_ESR(0),              0,      0, "ESR"}, \
+	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
+	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UDW"}, \
+	{RING_IPEIR(0),            0,      0, "IPEIR"}, \
+	{RING_IPEHR(0),            0,      0, "IPEHR"}, \
+	{RING_INSTPS(0),           0,      0, "INSTPS"}, \
 	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
 	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
-	{RING_BBSTATE(0),          0,      0, "RING_BBSTATE"}, \
+	{RING_BBSTATE(0),          0,      0, "BB_STATE"}, \
 	{CCID(0),                  0,      0, "CCID"}, \
-	{RING_ACTHD(0),            0,      0, "RING_ACTHD_LOW32"}, \
-	{RING_ACTHD_UDW(0),        0,      0, "RING_ACTHD_UP32"}, \
-	{RING_INSTPM(0),           0,      0, "RING_INSTPM"}, \
+	{RING_ACTHD(0),            0,      0, "ACTHD_LDW"}, \
+	{RING_ACTHD_UDW(0),        0,      0, "ACTHD_UDW"}, \
+	{RING_INSTPM(0),           0,      0, "INSTPM"}, \
+	{RING_INSTDONE(0),         0,      0, "INSTDONE"}, \
 	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
-	{RING_START(0),            0,      0, "RING_START"}, \
-	{RING_HEAD(0),             0,      0, "RING_HEAD"}, \
-	{RING_TAIL(0),             0,      0, "RING_TAIL"}, \
-	{RING_CTL(0),              0,      0, "RING_CTL"}, \
-	{RING_MI_MODE(0),          0,      0, "RING_MI_MODE"}, \
+	{RING_START(0),            0,      0, "START"}, \
+	{RING_HEAD(0),             0,      0, "HEAD"}, \
+	{RING_TAIL(0),             0,      0, "TAIL"}, \
+	{RING_CTL(0),              0,      0, "CTL"}, \
+	{RING_MI_MODE(0),          0,      0, "MODE"}, \
 	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
-	{RING_INSTDONE(0),         0,      0, "RING_INSTDONE"}, \
-	{RING_HWS_PGA(0),          0,      0, "RING_HWS_PGA"}, \
-	{RING_MODE_GEN7(0),        0,      0, "RING_MODE_GEN7"}, \
-	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "GEN8_RING_PDP0_LDW"}, \
-	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "GEN8_RING_PDP0_UDW"}, \
-	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "GEN8_RING_PDP1_LDW"}, \
-	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "GEN8_RING_PDP1_UDW"}, \
-	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "GEN8_RING_PDP2_LDW"}, \
-	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "GEN8_RING_PDP2_UDW"}, \
-	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "GEN8_RING_PDP3_LDW"}, \
-	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "GEN8_RING_PDP3_UDW"}
+	{RING_HWS_PGA(0),          0,      0, "HWS"}, \
+	{RING_MODE_GEN7(0),        0,      0, "GFX_MODE"}, \
+	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "PDP0_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "PDP0_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "PDP1_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "PDP1_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "PDP2_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "PDP2_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}
 
 #define COMMON_BASE_HAS_EU() \
 	{EIR,                      0,      0, "EIR"}
@@ -83,10 +83,10 @@
 	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
 
 #define COMMON_GEN12BASE_VEC() \
-	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
-	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
-	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
-	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}
+	{GEN12_SFC_DONE(0),        0,      0, "SFC_DONE[0]"}, \
+	{GEN12_SFC_DONE(1),        0,      0, "SFC_DONE[1]"}, \
+	{GEN12_SFC_DONE(2),        0,      0, "SFC_DONE[2]"}, \
+	{GEN12_SFC_DONE(3),        0,      0, "SFC_DONE[3]"}
 
 /* XE_LPD - Global */
 static struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
-- 
2.25.1

