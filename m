Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4C8181DA8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756176E9B9;
	Wed, 11 Mar 2020 16:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65B46E9B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 16:23:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 09:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="389312690"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2020 09:23:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 09:22:57 -0700
Message-Id: <20200311162300.1838847-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200311162300.1838847-1-matthew.d.roper@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915: Add Wa_1604278689:icl,ehl
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

The bspec description for this workaround tells us to program
0xFFFF_FFFF into both FBC_RT_BASE_ADDR_REGISTER_* registers, but we've
previously found that this leads to failures in CI.  Our suspicion is
that the failures are caused by this valid turning on the "address valid
bit" even though we're intentionally supplying an invalid address.
Experimentation has shown that setting all bits _except_ for the
RT_VALID bit seems to avoid these failures.

v2:
 - Mask off the RT_VALID bit.  Experimentation with CI trybot indicates
   that this is necessary to avoid reset failures on BCS.

v3:
 - Program RT_BASE before RT_BASE_UPPER so that the valid bit is turned
   off by the first write.  (Chris)

Bspec: 11388
Bspec: 33451
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3e352e2a5b79..3bbd89294279 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -575,6 +575,12 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* allow headerless messages for preemptible GPGPU context */
 	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE,
 			  GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
+
+	/* Wa_1604278689:icl,ehl */
+	wa_write(wal, IVB_FBC_RT_BASE, 0xFFFFFFFF & ~ILK_FBC_RT_VALID);
+	wa_write_masked_or(wal, IVB_FBC_RT_BASE_UPPER,
+			   0, /* write-only register; skip validation */
+			   0xFFFFFFFF);
 }
 
 static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 79ae9654dac9..92ae96cf5b64 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3285,6 +3285,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 /* Framebuffer compression for Ivybridge */
 #define IVB_FBC_RT_BASE			_MMIO(0x7020)
+#define IVB_FBC_RT_BASE_UPPER		_MMIO(0x7024)
 
 #define IPS_CTL		_MMIO(0x43408)
 #define   IPS_ENABLE	(1 << 31)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
