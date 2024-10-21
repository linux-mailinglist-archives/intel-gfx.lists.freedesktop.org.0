Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111D39A9344
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A102F10E5BD;
	Mon, 21 Oct 2024 22:28:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvJnDIa4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D80310E5BB;
 Mon, 21 Oct 2024 22:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549684; x=1761085684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AQBMU5f8kCRcwnadCh6zn3Wc5+NfUYG768MigAw1gGA=;
 b=GvJnDIa4nq6q7qGsKHhURc8dc4xf92gkRsvPojiLoVmj43tqEiEObE2y
 nWeykHttCm95/yyVQaTwK3IOrD0qowQxyF5PcymLJMe4uoGAA2EvA8oRW
 DhIJvNmPw43Fw3M0ExbuqNn1/0j4AS6BWPElDZEjtOspkZ3Q9Z+C/p2xc
 4u+iXSpFOBozDCLpFN/KQnM8Y5xcPG7b2L/RqSxhFkOZTaXougAC1t1Si
 vdfE3mAIDJAZjPMvnSCtHZz6Mmio+Q4R0hR5QkODAqMb54845Q1nj58Fy
 SFUp9P6pFYqO4jKflLANh7dsa8xomq0Dfr3JkFM9ztvJhCgsxAJu9AQun Q==;
X-CSE-ConnectionGUID: dTgujp8eRaqHvI8wqML/+g==
X-CSE-MsgGUID: yqq5LDQVRBSyYixI0SZ2vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934449"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934449"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:04 -0700
X-CSE-ConnectionGUID: Gno/pEkkQlK4Fl6p6cpE/Q==
X-CSE-MsgGUID: s3b8ze0KSR6IBXYJHmWRrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009598"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:02 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 02/13] drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
Date: Mon, 21 Oct 2024 19:27:21 -0300
Message-ID: <20241021222744.294371-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Some display MMIO transactions for offsets in the range that requires
the DMC wakelock happen in atomic context (this has been confirmed
during tests on PTL). That means that we need to use a non-sleeping
variant of MMIO waiting function.

Implement __intel_de_wait_for_register_atomic_nowl() and use it when
waiting for acknowledgment of acquire/release.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 20 ++++++++++++--------
 2 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index e017cd4a8168..4116783a62dd 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -121,6 +121,17 @@ ____intel_de_wait_for_register_nowl(struct intel_display *display,
 }
 #define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
 
+static inline int
+____intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
+					   i915_reg_t reg,
+					   u32 mask, u32 value,
+					   unsigned int fast_timeout_us)
+{
+	return __intel_wait_for_register(__to_uncore(display), reg, mask,
+					 value, fast_timeout_us, 0, NULL);
+}
+#define __intel_de_wait_for_register_atomic_nowl(p,...) ____intel_de_wait_for_register_atomic_nowl(__to_intel_display(p), __VA_ARGS__)
+
 static inline int
 __intel_de_wait(struct intel_display *display, i915_reg_t reg,
 		u32 mask, u32 value, unsigned int timeout)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 5634ff07269d..8056a3c8666c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -39,7 +39,7 @@
  * potential future use.
  */
 
-#define DMC_WAKELOCK_CTL_TIMEOUT 5
+#define DMC_WAKELOCK_CTL_TIMEOUT_US 5000
 #define DMC_WAKELOCK_HOLD_TIME 50
 
 struct intel_dmc_wl_range {
@@ -78,9 +78,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
 
 	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
 
-	if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
-					      DMC_WAKELOCK_CTL_ACK, 0,
-					      DMC_WAKELOCK_CTL_TIMEOUT)) {
+	if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
+						     DMC_WAKELOCK_CTL_ACK, 0,
+						     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
 		WARN_RATELIMIT(1, "DMC wakelock release timed out");
 		goto out_unlock;
 	}
@@ -216,10 +216,14 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 		__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
 				    DMC_WAKELOCK_CTL_REQ);
 
-		if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
-						      DMC_WAKELOCK_CTL_ACK,
-						      DMC_WAKELOCK_CTL_ACK,
-						      DMC_WAKELOCK_CTL_TIMEOUT)) {
+		/*
+		 * We need to use the atomic variant of the waiting routine
+		 * because the DMC wakelock is also taken in atomic context.
+		 */
+		if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
+							     DMC_WAKELOCK_CTL_ACK,
+							     DMC_WAKELOCK_CTL_ACK,
+							     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
 			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
 			goto out_unlock;
 		}
-- 
2.47.0

