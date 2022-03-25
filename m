Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E044E74F1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 15:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3ED310E409;
	Fri, 25 Mar 2022 14:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0CA810E409
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 14:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648218100; x=1679754100;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M6hnOpEgyPGJT78yf3E4P3vWlptU1h6kv/ZZIBUnRQ4=;
 b=eXXsyE++YfsnY9fZb953mNqPPnmlVo8af1lyMKa3ckPPFmy5JMFw9Ahy
 KwjECipinhT6KC3uJl3HO7JJ+VTH6qAA4WnDBT5H5vwSfexFxRCpVcoaT
 gra/mIEVp/S1+My+xxGVAsYzdIEUL+JwvKHlMSjq2lq3qWXDJExTxH011
 QYCZYyumaEQO4MfptFkU81wUbHUPDI1WlGdeTppWERUE9zCqOOcFeqa1S
 1vOyVR2fklsDIYzgHY6tfMTZ/AD6Uk//hwqi3hMbWMdPcoa4G/FmeooTs
 1UUEVTW7gESRuGIAjTQakxyTqg2GoVrO4Htvh4yLip07AiApjAA9U/Z+z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="321835661"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="321835661"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 07:21:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="786542377"
Received: from mymcglot-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.213.175.5])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 07:21:38 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 07:22:49 -0700
Message-Id: <20220325142249.81443-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_22014226127
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

New DG2 workaround added to specification.

BSpec: 54077
BSpec: 66622
BSpec: 54833
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 62e0f075b1de7..17432b075d970 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1088,6 +1088,7 @@
 #define EU_PERF_CNTL3				_MMIO(0xe758)
 
 #define LSC_CHICKEN_BIT_0			_MMIO(0xe7c8)
+#define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
 #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
 #define LSC_CHICKEN_BIT_0_UDW			_MMIO(0xe7c8 + 4)
 #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index dc0ffff6f655a..29c8cd0a81b6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2624,6 +2624,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
 				GLOBAL_INVALIDATION_MODE);
 	}
+
+	if (IS_DG2(i915)) {
+		/* Wa_22014226127:dg2 */
+		wa_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
+	}
 }
 
 static void
-- 
2.35.1

