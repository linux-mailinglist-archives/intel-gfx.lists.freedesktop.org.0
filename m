Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E91B81BC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 23:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935726E0C4;
	Fri, 24 Apr 2020 21:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906886E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 21:49:15 +0000 (UTC)
IronPort-SDR: eyawuBzTC4EE4k9X/tb9fVN+/kSOZVHPSqMTPI2qm1jhL914ESPD538wRlUhKwnBc3RFM1qbaM
 b6DE+7NWuEOg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 14:49:15 -0700
IronPort-SDR: W0GX7C32wTOWTaumkFeszUIh2D7nibSHhvh+k1cnNE7N/pBty8wjPqrUyt+rWAXA6Eyg4QaDJM
 uL0a5nzUFzcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="366493959"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga001.fm.intel.com with ESMTP; 24 Apr 2020 14:49:13 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 56A96843AD2; Sat, 25 Apr 2020 00:48:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 25 Apr 2020 00:48:38 +0300
Message-Id: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

General purpose registers are per engine and
in a fixed location. Add to live_lrc_fixed.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 12 ++++++++++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c |  5 +++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 214ea2a34693..c1f30fe12d5d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -250,6 +250,18 @@ static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
 		return -1;
 }
 
+static int lrc_ring_gpr0(const struct intel_engine_cs *engine)
+{
+	if (INTEL_GEN(engine->i915) >= 12)
+		return 0x74;
+	else if (INTEL_GEN(engine->i915) >= 9)
+		return 0x68;
+	else if (engine->class == RENDER_CLASS)
+		return 0xd8;
+	else
+		return -1;
+}
+
 static int lrc_ring_wa_bb_per_ctx(const struct intel_engine_cs *engine)
 {
 	if (INTEL_GEN(engine->i915) >= 12)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e964c1402d29..d10c38aec500 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4613,6 +4613,11 @@ static int live_lrc_fixed(void *arg)
 				CTX_TIMESTAMP - 1,
 				"RING_CTX_TIMESTAMP"
 			},
+			{
+				i915_mmio_reg_offset(GEN8_RING_CS_GPR(engine->mmio_base, 0)),
+				lrc_ring_gpr0(engine),
+				"RING_CS_GPR0"
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
