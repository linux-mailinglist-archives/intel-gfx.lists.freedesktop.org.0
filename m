Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349DF672344
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1474110E78F;
	Wed, 18 Jan 2023 16:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A34510E1F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059453; x=1705595453;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WwxCdbk50E4I74BtlGiBcVzs8IM6pkgtDayphPS/uLE=;
 b=TBGp4m/HClidawiEu8IWD64r/+e3yrLhROeJitgoicLoq/D+PRbvGmPR
 Hl/sp6FJvandLNeAgzdOOYfCWlKhJyL5Expbh6TL0vM1udwy5GQoJi71n
 caj0Hi7D3RkxniUYS6MjfnvYEp7JhPqBjbkS4XqQLP2pRoPDs/BJ14xxm
 jeedM5DdB6t7aSJviufz8+FalCEOqIKpB8ZpeY43QsjVrCbs5m4eTea22
 uMeUspMaUzou9dv3fpkavXfHKqNd96rT5ZenZS6HMxGICxL+7w+ZWhGYN
 ytuVCJ5VNkVPoP4+bMMRsP5BmEEfI/jNaBV3HF8ks+fQMnTjzQKyeHkuu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289733"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289733"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:30:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060415"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060415"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:28 +0200
Message-Id: <20230118163040.29808-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915/dsb: Define more DSB registers
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

Add definitions for more DSB registers. Less annoying spec
trawling when working on the DSB code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 50 +++++++++++++++++++++++++++++++--
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index bad36a67d873..ea2722fdaa41 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8105,8 +8105,54 @@ enum skl_power_gate {
 #define DSB_HEAD(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x0)
 #define DSB_TAIL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x4)
 #define DSB_CTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x8)
-#define   DSB_ENABLE			(1 << 31)
-#define   DSB_STATUS_BUSY		(1 << 0)
+#define   DSB_ENABLE			REG_BIT(31)
+#define   DSB_BUF_REITERATE		REG_BIT(29)
+#define   DSB_WAIT_FOR_VBLANK		REG_BIT(28)
+#define   DSB_WAIT_FOR_LINE_IN		REG_BIT(27)
+#define   DSB_HALT			REG_BIT(16)
+#define   DSB_NON_POSTED		REG_BIT(8)
+#define   DSB_STATUS_BUSY		REG_BIT(0)
+#define DSB_MMIOCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xc)
+#define   DSB_MMIO_DEAD_CLOCKS_ENABLE	REG_BIT(31)
+#define   DSB_MMIO_DEAD_CLOCKS_COUNT_MASK	REG_GENMASK(15, 8)
+#define   DSB_MMIO_DEAD_CLOCKS_COUNT(x)	REG_FIELD_PREP(DSB_MMIO_DEAD_CLOCK_COUNT_MASK, (x))
+#define   DSB_MMIO_CYCLES_MASK		REG_GENMASK(7, 0)
+#define   DSB_MMIO_CYCLES(x)		REG_FIELD_PREP(DSB_MMIO_CYCLES_MASK, (x))
+#define DSB_POLLFUNC(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x10)
+#define   DSB_POLL_ENABLE		REG_BIT(31)
+#define   DSB_POLL_WAIT_MASK		REG_GENMASK(30, 23)
+#define   DSB_POLL_WAIT(x)		REG_FIELD_PREP(DSB_POLL_WAIT_MASK, (x)) /* usec */
+#define   DSB_POLL_COUNT_MASK		REG_GENMASK(22, 15)
+#define   DSB_POLL_COUNT(x)		REG_FIELD_PREP(DSB_POLL_COUNT_MASK, (x))
+#define DSB_DEBUG(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x14)
+#define DSB_POLLMASK(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x1c)
+#define DSB_STATUS(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x24)
+#define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
+#define   DSB_ATS_FAULT_INT_EN		REG_BIT(20)
+#define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
+#define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
+#define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
+#define   DSB_PROG_INT_EN		REG_BIT(16)
+#define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4)
+#define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
+#define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
+#define   DSB_POLL_ERR_INT_STATUS	REG_BIT(1)
+#define   DSB_PROG_INT_STATUS		REG_BIT(0)
+#define DSB_CURRENT_HEAD(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x2c)
+#define DSB_RM_TIMEOUT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x30)
+#define   DSB_RM_CLAIM_TIMEOUT		REG_BIT(31)
+#define   DSB_RM_READY_TIMEOUT		REG_BIT(30)
+#define   DSB_RM_CLAIM_TIMEOUT_COUNT_MASK	REG_GENMASK(23, 16)
+#define   DSB_RM_CLAIM_TIMEOUT_COUNT(x)	REG_FIELD_PREP(DSB_RM_CLAIM_TIMEOUT_COUNT_MASK, (x)) /* clocks */
+#define   DSB_RM_READY_TIMEOUT_VALUE_MASK	REG_GENMASK(15, 0)
+#define   DSB_RM_READY_TIMEOUT_VALUE(x)	REG_FIELD_PREP(DSB_RM_READY_TIMEOUT_VALUE, (x)) /* usec */
+#define DSB_RMTIMEOUTREG_CAPTURE(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x34)
+#define DSB_PMCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x38)
+#define DSB_PMCTRL_2(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x3c)
+#define DSB_PF_LN_LOWER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x40)
+#define DSB_PF_LN_UPPER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x44)
+#define DSB_BUFRPT_CNT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x48)
+#define DSB_CHICKEN(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xf0)
 
 #define CLKREQ_POLICY			_MMIO(0x101038)
 #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
-- 
2.38.2

