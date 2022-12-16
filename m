Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B5164E54A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9D910E5A6;
	Fri, 16 Dec 2022 00:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E40010E5B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151132; x=1702687132;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+PVdtyKNWAhfBAxSvdmOtymr8l32NSwN+MX2oe+JH88=;
 b=aQVHyAkc1mH+VUp3Cti3sVblD1psPcKQZfQvsB0oA75LJoLMrsfFkEba
 x0Xnn+cSzS0chRPw4wMj4tKq4jkO5fhmGVWrTIlNT5FPQ3zgro+Yey9m+
 tONLLWVZB8AgmfRENAvgswMBpbIQZdRMoprDrDX76zj0+fQB+FoIettPv
 JWDVhkg/PnIczXeppkM8zeKvCvqlN43m4Bgvcomu85cpY5XAuhn5bASS6
 tc2GPR/h58GSwVggc/5/+bPvWgtVofsT9ssZcgHA5cqbV7ihRVCKK/EeR
 2s28YEloSCiNf4KKH2YR6s2MLpvtuRgvUYorf5zdb1eV0iWHn6ZzpIQc6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103890"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103890"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100229"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100229"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:09 +0200
Message-Id: <20221216003810.13338-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/13] drm/i915/dsb: Define more DSB registers
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
index ed989e749635..3b0d07880c30 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8103,8 +8103,54 @@ enum skl_power_gate {
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
2.37.4

