Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0255E9BF8AC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1689610E77B;
	Wed,  6 Nov 2024 21:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BTVuBU2+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19D410E774;
 Wed,  6 Nov 2024 21:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929968; x=1762465968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mBIY7pSU8m8SQP+gRuQ3qa81qmpOpi0OGk7F4PaP3s0=;
 b=BTVuBU2+f6LQCmkqYqf30BUYjEhh5VTizatm0g/Bl+B4qio6cl7RUa98
 mVwcCz91rncmwwZn/l8NxIgR2R8Q2FvNALkdThJBLlBSDitrVOAF4WW38
 kKQ0mYwUyNjWtyoRmAkWV+edEVwhhfsb1HYH4CN9Oe1itEwhf+52w8+eJ
 RMN4X1zH0LE5JRaJLrvDeiHrUMAeLDCOC8nkqc+RS/P/hhwGXKeYueOFJ
 n6jeYl1xAT/e60egoUc5UJ2xkuTComdZ8q3l+XSrGA0a0Ae5I+tA0Kqhz
 HUSTSmuWkKwAf3jH1tX7ZQXyyXZDi+/FuZ7Wjr4K1Am6M7woRmutnHaUD w==;
X-CSE-ConnectionGUID: XibHaZ0jSoGkQ7UiJu5LzQ==
X-CSE-MsgGUID: 7sf5XyZwTXuAhHHHk6ZJ4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212141"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212141"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:48 -0800
X-CSE-ConnectionGUID: yB94yn3NQ2qYzR7Hv4O0KA==
X-CSE-MsgGUID: 2IPsf5kHTSW/fYCzVgxC0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882461"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:46 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/17] drm/xe: Mimic i915 behavior for non-sleeping MMIO
 wait
Date: Wed,  6 Nov 2024 18:50:28 -0300
Message-ID: <20241106215231.103474-3-gustavo.sousa@intel.com>
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

In upcoming display changes, we will modify the DMC wakelock MMIO
waiting code to choose a non-sleeping variant implementation, because
the wakelock is also taking in atomic context.

While xe provides an explicit parameter (namely "atomic") to prevent
xe_mmio_wait32() from sleeping, i915 does not and implements that
behavior when slow_timeout_ms is zero.

So, for now, let's mimic what i915 does to allow for display to use
non-sleeping MMIO wait. In the future, we should come up with a better
and explicit interface for this behavior in i915, at least while display
code is not an independent entity with proper interfaces between xe and
i915.

v2:
  - Make the tone in comment the comment added in
    __intel_wait_for_register() more explanatory than a FIXME-like text.
    (Luca)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 0382beb4035b..686c39f320e4 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -117,10 +117,19 @@ __intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_reg,
 			  unsigned int slow_timeout_ms, u32 *out_value)
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
+	bool atomic;
+
+	/*
+	 * Replicate the behavior from i915 here, in which sleep is not
+	 * performed if slow_timeout_ms == 0. This is necessary because
+	 * of some paths in display code where waits are done in atomic
+	 * context.
+	 */
+	atomic = !slow_timeout_ms && fast_timeout_us > 0;
 
 	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
 			      fast_timeout_us + 1000 * slow_timeout_ms,
-			      out_value, false);
+			      out_value, atomic);
 }
 
 static inline u32 intel_uncore_read_fw(struct intel_uncore *uncore,
-- 
2.47.0

