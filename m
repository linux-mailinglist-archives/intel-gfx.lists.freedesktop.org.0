Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37D31B7AFF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177E76EAB1;
	Fri, 24 Apr 2020 16:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837786EAB1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:02:25 +0000 (UTC)
IronPort-SDR: PEny0PsUnKRIc9ORnvDahOma4ZttTaX19+1tazBZ+f+H7EBRJz/IiVEx1s8/NjjF3BtoqNKJel
 UkicIZPSuKeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:02:22 -0700
IronPort-SDR: sOUZhksYu0b4d9RKSsxjxDP84OEp8VnV+oJng/ApbuwLZz67ZQCfJJ/XbYkR1/xt+fL3Ejo4dN
 KePf9TF6CgEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="246627445"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 24 Apr 2020 09:02:22 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id E8C32843AD2; Fri, 24 Apr 2020 19:01:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 19:01:47 +0300
Message-Id: <20200424160150.19704-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Add engine scratch register to
 live_lrc_fixed
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

General purpose registers are per engine and
in a fixed location. Add to live_lrc_fixed.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h | 1 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c  | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index 93cb6c460508..008aa53e24a1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -26,6 +26,7 @@
 #define CTX_PDP0_UDW			(0x30 + 1)
 #define CTX_PDP0_LDW			(0x32 + 1)
 #define CTX_R_PWR_CLK_STATE		(0x42 + 1)
+#define CTX_CS_GPR_0			(0x74 + 1)
 
 #define GEN9_CTX_RING_MI_MODE		0x54
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e964c1402d29..4996d511f6fc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4613,6 +4613,11 @@ static int live_lrc_fixed(void *arg)
 				CTX_TIMESTAMP - 1,
 				"RING_CTX_TIMESTAMP"
 			},
+			{
+				i915_mmio_reg_offset(GEN8_RING_CS_GPR(engine->mmio_base, 0)),
+				CTX_CS_GPR_0 - 1,
+				"RING_CS_GPR_0"
+			},
 			{ },
 		}, *t;
 		u32 *hw;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
