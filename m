Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731AC9C1D86
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACBD10E9A1;
	Fri,  8 Nov 2024 13:03:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZrGZ6htz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C0310E980;
 Fri,  8 Nov 2024 13:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070983; x=1762606983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mBIY7pSU8m8SQP+gRuQ3qa81qmpOpi0OGk7F4PaP3s0=;
 b=ZrGZ6htzBVE/rfkJOeE9/wxbyewf45e5P2MS3zR7Ivmau2PTvUBrd0I2
 3iTdoJYQErapeUJqNh7gfe9LYltkYkJVmAlSpIybMSKKXx/qK+1180dx2
 OsbY2tPUe/iqqDqlZiq3emhwhIwqxzeLJ6qNmrtk5cuNTaN29tlZKtkfl
 CqiU5MGY2aEouhS5pJh/CttCmy7mYf9mZogpm74JqdaVGGAlb9+JQ8oxv
 xQuQvzJiShxwUJWSmR95fGY1mQ1DyGs7MUzJeVL6iAF379aiELE5GBg+N
 1F+5i0k4J9vnExha4jkezEdRDHRUWI/ejU2A54Qws267X5/Z2oLcSZ9GC g==;
X-CSE-ConnectionGUID: 77g7uAj7Sg+PPn3G+0liiw==
X-CSE-MsgGUID: iswslDzjQKq6h2vNS6iQkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513124"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513124"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:03 -0800
X-CSE-ConnectionGUID: e+7TRj9JTgmvird81LBEhg==
X-CSE-MsgGUID: kJ/o2XGNTKCXe0HfrK4HrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692468"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:44 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 02/15] drm/xe: Mimic i915 behavior for non-sleeping MMIO
 wait
Date: Fri,  8 Nov 2024 09:57:07 -0300
Message-ID: <20241108130218.24125-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

