Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B061260D2EE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 20:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C499010E03D;
	Tue, 25 Oct 2022 18:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC1888284
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 18:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666721020; x=1698257020;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8+vhA7ZanMNiIfu1a1WgtPwfIVV6K7KgusEIorkl0Vk=;
 b=Ip9Lwwbj0DNdHJQrwDo747+3HwJPGGOgp3waK62Jdnc6wxrIVTZcJ8Os
 ogjmJVX0HXCLXV2XR1rsZJF70HFc8oDZkMIhgAqcoR7h0AdaBbzd85c0p
 tfIOqeLbNP44Hpa/+voy7AY6XzQlQDgaUZnrasIvSpvTXZHUqpMGE8y43
 oowDfYH9V+t+HeCvy2+1ue5X/KH1VlgwYqzGSd9lInW6St5JIRnFO1hQg
 wgVwnupkQWF21X1hv1S9FE/KYY3NO6NILkXkwqqxpXQQcwEarAbbvtZTH
 Z5A1YKx2eucpPXIEBWitUJ8/LumKPCesPOZ0zU8VrXKhsP04/5tQG7jQb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394065054"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="394065054"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 11:03:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="720957940"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="720957940"
Received: from kdmorgan-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.212.35.13])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 11:03:38 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 11:03:34 -0700
Message-Id: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Introduce Wa_18018764978
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

Wa_18018764978 applies to specific steppings of DG2 (G11 C0+,
G11 and G12 A0+).

Bspec: 66622

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 36d95b79022c..e8372d4cd548 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -448,6 +448,9 @@
 #define GEN8_L3CNTLREG				_MMIO(0x7034)
 #define   GEN8_ERRDETBCTRL			(1 << 9)
 
+#define PSS_MODE2				_MMIO(0x703c)
+#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
+
 #define GEN7_SC_INSTDONE			_MMIO(0x7100)
 #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
 #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 63e1e6becf34..ced3a26cf7e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -743,6 +743,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
 		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
 
+	/* Wa_18018764978:dg2 */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
+		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
 }
-- 
2.37.3

