Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BDE48A70D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8948A10FF49;
	Tue, 11 Jan 2022 05:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF60010FF49
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878165; x=1673414165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7BpfS2KE11fqSnYyj9Kb+HqX6G0Fdw9Terzh6v6hxWc=;
 b=RDnJ8VtIgRdmLluDHTl6/Yu9QW7Lql/9EGS6TdhiQElWU09iFRu/XLdL
 jaZ8JSF1fpddSD13p3o7/t1ZwxPuI/PldqQhg00fyXFh5XOREnPsKsOtX
 vvkbifd9VymEpm52ShBLpN6sf2oqSH98ydhtBVUDXs7pMB4C/iM8tN8oW
 HERMt09fU1p70vhvmwI+tOzZp2bXxezZGf+b01L10UhJetUXwEUEoGnFF
 Hzxnp1xeQwLC7BbxFQhnKW4pbl0sUDq/HvhyMRTB+swIzkeAa2hxD2I8k
 Jy80UTDzK/+IHzjdra4eUUf02ivRJyXmmUd/E4FFuOQrO2xXNYL/bgp5M A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358338"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358338"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399148"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:51 -0800
Message-Id: <20220111051600.3429104-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/11] drm/i915: Parameterize PWRCTX_MAXCNT
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than having separate definitions for each engine, create a single
parameterized macro that takes the engine base offset.  This will also
ensure we get to the proper offset if we ever need to use these
registers on newer platforms (where the media engine offsets have
changed).

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h     | 6 +-----
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index c3155ee58689..45891e6f0b98 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -449,10 +449,10 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 		enable_rc6 = false;
 	}
 
-	if (!((intel_uncore_read(uncore, PWRCTX_MAXCNT_RCSUNIT) & IDLE_TIME_MASK) > 1 &&
-	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1 &&
-	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1 &&
-	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1)) {
+	if (!((intel_uncore_read(uncore, PWRCTX_MAXCNT(RENDER_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
+	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(GEN6_BSD_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
+	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(BLT_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
+	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(VEBOX_RING_BASE)) & IDLE_TIME_MASK) > 1)) {
 		drm_dbg(&i915->drm,
 			"Engine Idle wait time not set properly.\n");
 		enable_rc6 = false;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 149cf4d25569..3ef332833c4c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9048,11 +9048,7 @@ enum {
 #define	   RC6_CTX_IN_DRAM			(1 << 0)
 #define  RC6_CTX_BASE				_MMIO(0xD48)
 #define    RC6_CTX_BASE_MASK			0xFFFFFFF0
-#define  PWRCTX_MAXCNT_RCSUNIT			_MMIO(0x2054)
-#define  PWRCTX_MAXCNT_VCSUNIT0			_MMIO(0x12054)
-#define  PWRCTX_MAXCNT_BCSUNIT			_MMIO(0x22054)
-#define  PWRCTX_MAXCNT_VECSUNIT			_MMIO(0x1A054)
-#define  PWRCTX_MAXCNT_VCSUNIT1			_MMIO(0x1C054)
+#define  PWRCTX_MAXCNT(base)			_MMIO((base) + 0x54)
 #define    IDLE_TIME_MASK			0xFFFFF
 #define  FORCEWAKE				_MMIO(0xA18C)
 #define  FORCEWAKE_VLV				_MMIO(0x1300b0)
-- 
2.34.1

