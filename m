Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A601A2CE1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 02:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148A16EB17;
	Thu,  9 Apr 2020 00:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B8D6EB17
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 00:31:33 +0000 (UTC)
IronPort-SDR: MICTHb3N2g5SrP+XH9rE8hPaZh8bww03okGHZ9g+2e1Btl87qtXOK31xcB5OdEdZKoqy9SO25/
 i5DtBj3ddFUg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 17:31:32 -0700
IronPort-SDR: 9VDB6qS6yaSuZ7DyHCEh8D3yZcTxP63rxsGdQNcg3l4FvvCz6/XbcRRepERZ7rzoA4jHgBw8Nk
 cfrRyjo1fjLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; d="scan'208";a="297379396"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Apr 2020 17:31:32 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 17:31:09 -0700
Message-Id: <20200409003111.36589-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: re-enable ARAT expired
 interrupt when using GuC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is required for GuC to be able to handle timeouts. This is mainly
needed when using GuC submission, but there is no rule saying this won't
be used to handle HuC-related actions so turn it always on when using
the GuC. The routing bit name has also been renamed to indicate what it
actually does, i.e. setting the bit enables the routing to GuC (the bit
name was flipped because we use it in a mbz mask, in which we set the
bits we don't want to be set in the register).

Note that the ARAT interrupt used to be enabled in GuC submission mode,
but was then removed in commit 1cdc2330e8d3 ("drm/i915/guc: Properly
capture & release GuC interrupts on Gen11+"). While it is true that, as
stated in that patch, the host and the GuC have independent masks for
the interrupts, the PM interrupts still need to be additionally globally
unmasked in the PMINTRMSK register.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 21 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h     |  2 +-
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 86110458e2a7..f5e26b3e61c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1684,8 +1684,25 @@ void intel_rps_init(struct intel_rps *rps)
 	if (INTEL_GEN(i915) <= 7)
 		rps->pm_intrmsk_mbz |= GEN6_PM_RP_UP_EI_EXPIRED;
 
-	if (INTEL_GEN(i915) >= 8 && INTEL_GEN(i915) < 11)
-		rps->pm_intrmsk_mbz |= GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC;
+	if (INTEL_GEN(i915) >= 8) {
+		/*
+		 * The PMINTRMSK is not replicated on the GuC side, even on
+		 * gen11+ where GuC has additional control over its own
+		 * interrupts. The GuC does update the register during load to
+		 * unmask the ARAT interrupt, but we still need to make sure our
+		 * handler doesn't overwrite the setting.
+		 * On Gen11+ the ARAT interrupt is sent only to the GuC, while
+		 * on older gens we need to explicitly redirect it using the
+		 * GEN8_PMINTR_REDIRECT_TO_GUC bit; this bit is on the same
+		 * register, but it is not a mask and therefore we need to make
+		 * sure we leave it to one after GuC sets it (i.e. it is not a
+		 * mbz bit when GuC is enabled).
+		 */
+		if (intel_uc_uses_guc(&rps_to_gt(rps)->uc))
+			rps->pm_intrmsk_mbz |= ARAT_EXPIRED_INTRMSK;
+		else if (INTEL_GEN(i915) < 11)
+			rps->pm_intrmsk_mbz |= GEN8_PMINTR_REDIRECT_TO_GUC;
+	}
 }
 
 u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b39b9abf8a4..b65517f7d57a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9010,7 +9010,7 @@ enum {
 #define VLV_RCEDATA				_MMIO(0xA0BC)
 #define GEN6_RC6pp_THRESHOLD			_MMIO(0xA0C0)
 #define GEN6_PMINTRMSK				_MMIO(0xA168)
-#define   GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC	(1 << 31)
+#define   GEN8_PMINTR_REDIRECT_TO_GUC		(1 << 31)
 #define   ARAT_EXPIRED_INTRMSK			(1 << 9)
 #define GEN8_MISC_CTRL0				_MMIO(0xA180)
 #define VLV_PWRDWNUPCTL				_MMIO(0xA294)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
