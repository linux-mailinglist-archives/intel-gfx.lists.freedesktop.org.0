Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD28A724CBE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF14C10E3B2;
	Tue,  6 Jun 2023 19:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F8110E3A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078919; x=1717614919;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MIrjJkakCuwz3AnptQlYuj5XCEN4GeQH37X+5nF47Mw=;
 b=cOVxeQMRswRcBm5/AhfRI+207s6//riXlJx3EcN5tP71c8qIl6wncNP2
 Y1BkTn5byQQcv6maMiUXljAgySamwV2tUPh2TkJYScGOUjU+QaEsSpqhA
 rozOpZdLSVXva+QDtqadotM2Gds5gsNZ4LsMQuJcH0qWyk5q4aoVq0G0w
 l1UkdtqVRrCPCN+9V24W8tiFV83MIjOAIjcoEnPDhNXPtbohQ4q7GId3V
 45iTIUoKwbjb0LApPmCL5z7LGFjc16SpuDQIr6S9Rd9/POEeNWbe1Navu
 BkYMYylzAbrN18ze5MLLIitTYBcQOgfwYRkxRM+MKdvIaF9Grk4ca4j4W A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146250"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146250"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187025"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187025"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:49 +0300
Message-Id: <20230606191504.18099-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/19] drm/i915/dsb: Define more DSB bits
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

Define all the DSB register bits so I don't have to look through
bspec to find them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
index 12535d478775..210e2665441d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
@@ -37,6 +37,19 @@
 #define DSB_DEBUG(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x14)
 #define DSB_POLLMASK(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x1c)
 #define DSB_STATUS(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x24)
+#define   DSB_HP_IDLE_STATUS		REG_BIT(31)
+#define   DSB_DEWAKE_STATUS		REG_BIT(30)
+#define   DSB_REQARB_SM_STATE_MASK	REG_GENMASK(29, 27)
+#define   DSB_SAFE_WINDOW_LIVE		REG_BIT(26)
+#define   DSB_VTDFAULT_ARB_SM_STATE_MASK	REG_GENMASK(25, 23)
+#define   DSB_TLBTRANS_SM_STATE_MASK	REG_GENMASK(21, 20)
+#define   DSB_SAFE_WINDOW		REG_BIT(19)
+#define   DSB_POINTERS_SM_STATE_MASK	REG_GENMASK(18, 17)
+#define   DSB_BUSY_ON_DELAYED_VBLANK	REG_BIT(16)
+#define   DSB_MMIO_ARB_SM_STATE_MASK	REG_GENMASK(15, 13)
+#define   DSB_MMIO_INST_SM_STATE_MASK	REG_GENMASK(11, 7)
+#define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
+#define   DSB_RUN_SM_STATE_MASK		REG_GENMASK(2, 0)
 #define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
 #define   DSB_ATS_FAULT_INT_EN		REG_BIT(20)
 #define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
@@ -58,10 +71,28 @@
 #define   DSB_RM_READY_TIMEOUT_VALUE(x)	REG_FIELD_PREP(DSB_RM_READY_TIMEOUT_VALUE, (x)) /* usec */
 #define DSB_RMTIMEOUTREG_CAPTURE(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x34)
 #define DSB_PMCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x38)
+#define   DSB_ENABLE_DEWAKE		REG_BIT(31)
+#define   DSB_SCANLINE_FOR_DEWAKE_MASK	REG_GENMASK(30, 0)
+#define   DSB_SCANLINE_FOR_DEWAKE(x)	REG_FIELD_PREP(DSB_SCANLINE_FOR_DEWAKE_MASK, (x))
 #define DSB_PMCTRL_2(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x3c)
+#define   DSB_MMIOGEN_DEWAKE_DIS	REG_BIT(31)
+#define   DSB_FORCE_DEWAKE		REG_BIT(23)
+#define   DSB_BLOCK_DEWAKE_EXTENSION	REG_BIT(15)
+#define   DSB_OVERRIDE_DC5_DC6_OK	REG_BIT(7)
 #define DSB_PF_LN_LOWER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x40)
 #define DSB_PF_LN_UPPER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x44)
 #define DSB_BUFRPT_CNT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x48)
 #define DSB_CHICKEN(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xf0)
+#define   DSB_FORCE_DMA_SYNC_RESET	REG_BIT(31)
+#define   DSB_FORCE_VTD_ENGIE_RESET	REG_BIT(30)
+#define   DSB_DISABLE_IPC_DEMOTE	REG_BIT(29)
+#define   DSB_SKIP_WAITS_EN		REG_BIT(23)
+#define   DSB_EXTEND_HP_IDLE		REG_BIT(16)
+#define   DSB_CTRL_WAIT_SAFE_WINDOW	REG_BIT(15)
+#define   DSB_CTRL_NO_WAIT_VBLANK	REG_BIT(14)
+#define   DSB_INST_WAIT_SAFE_WINDOW	REG_BIT(7)
+#define   DSB_INST_NO_WAIT_VBLANK	REG_BIT(6)
+#define   DSB_MMIOGEN_DEWAKE_DIS_CHICKEN	REG_BIT(2)
+#define   DSB_DISABLE_MMIO_COUNT_FOR_INDEXED	REG_BIT(0)
 
 #endif /* __INTEL_DSB_REGS_H__ */
-- 
2.39.3

