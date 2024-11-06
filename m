Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293E69BF8AD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B007510E780;
	Wed,  6 Nov 2024 21:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edrzuY64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FEE510E77E;
 Wed,  6 Nov 2024 21:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929969; x=1762465969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i8lrPsOkg6hr/Rhmdam8cfRc/1q276nrkzJfy5o6HmY=;
 b=edrzuY64cP8MJ16Cr6ioJUCqAChETvAMOAitXUkmcahRum+Ua7hRhrtD
 lH0buoIcjkkF65fJhbA9jLilfqsXGfTnp1hn73GVNqZYoj4hkk3Jo5OO4
 zWSsVm/XWOMQwSGPK2np8jIp5nhl2jzr9sFl+XdS1Gjw5PswTEkBUZLqE
 5KDwsULbHpVq5PreMxlLoAlyNsq7zfKxqb0GCaT2T6nKbNSYVeVF+QmxO
 XoamZaBGA5pFgRq9MP8hHuCmZc/jA7YQZDisi0GS+V9+N5VWfg7kpKP/f
 fvx1p+sYSn1kZ0epxZseLjZnBailtsqoROaTkNPNyLKcYqFiyI2CDx+Qm A==;
X-CSE-ConnectionGUID: 5DTOxVHTQWunThEEjK7TZA==
X-CSE-MsgGUID: qyWGwvULSBKDydfkx3ks9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212149"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212149"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:49 -0800
X-CSE-ConnectionGUID: 9OaK2MYtTny/BEQEySzDlQ==
X-CSE-MsgGUID: x7WPX2s4Qv6/8gt86ujBmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882464"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:48 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/17] drm/i915/dmc_wl: Use non-sleeping variant of MMIO
 wait
Date: Wed,  6 Nov 2024 18:50:29 -0300
Message-ID: <20241106215231.103474-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

v2:
  - No __intel_de_wait_for_register_atomic_nowl() wrapper to convert
    i915 to display. (Jani)
  - Add a quick explanation why DMC_WAKELOCK_CTL_TIMEOUT_US is defined
    in microseconds. (Luca)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     | 10 +++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 24 ++++++++++++++-------
 2 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index bb51f974e9e2..4561de5d5e10 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -117,6 +117,16 @@ __intel_de_wait_for_register_nowl(struct intel_display *display,
 				       value, timeout);
 }
 
+static inline int
+__intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
+					 i915_reg_t reg,
+					 u32 mask, u32 value,
+					 unsigned int fast_timeout_us)
+{
+	return __intel_wait_for_register(__to_uncore(display), reg, mask,
+					 value, fast_timeout_us, 0, NULL);
+}
+
 static inline int
 intel_de_wait(struct intel_display *display, i915_reg_t reg,
 	      u32 mask, u32 value, unsigned int timeout)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 05892a237d3a..9255505437d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -39,7 +39,11 @@
  * potential future use.
  */
 
-#define DMC_WAKELOCK_CTL_TIMEOUT 5
+/*
+ * Define DMC_WAKELOCK_CTL_TIMEOUT_US in microseconds because we use the
+ * atomic variant of waiting MMIO.
+ */
+#define DMC_WAKELOCK_CTL_TIMEOUT_US 5000
 #define DMC_WAKELOCK_HOLD_TIME 50
 
 struct intel_dmc_wl_range {
@@ -78,9 +82,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
 
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
@@ -217,10 +221,14 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
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

