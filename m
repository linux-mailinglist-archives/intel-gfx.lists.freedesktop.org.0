Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B701B6346
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 20:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DBF6E977;
	Thu, 23 Apr 2020 18:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E528B6E98A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 18:24:29 +0000 (UTC)
IronPort-SDR: CrfuS+CqpBJSrWpd7Je7coGwxVTKmjvcNewTo0p0+/k5t2/3P/sdfZoHSAxwQIvYIQpbQbiirr
 sr8KCKCoM1QQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 11:24:27 -0700
IronPort-SDR: aGvXKpuOSaTQIPlkAWBnwjBOyY+KSmdCim4mYPg2oamV/EYlWrwfxsnTq5VHZTGewXivjUdG3n
 /vTIl6ItCv2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="291269837"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 23 Apr 2020 11:24:26 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 17EC1843AD2; Thu, 23 Apr 2020 21:23:57 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 21:23:50 +0300
Message-Id: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Add engine scratch register to
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
index d39b72590e40..c7db2ecc375f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -27,6 +27,7 @@
 #define CTX_PDP0_UDW			(0x30 + 1)
 #define CTX_PDP0_LDW			(0x32 + 1)
 #define CTX_R_PWR_CLK_STATE		(0x42 + 1)
+#define CTX_CS_GPR_0			(0x74 + 1)
 
 #define GEN9_CTX_RING_MI_MODE		0x54
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index fc3f9a248764..da66303e0149 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4598,6 +4598,11 @@ static int live_lrc_fixed(void *arg)
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
