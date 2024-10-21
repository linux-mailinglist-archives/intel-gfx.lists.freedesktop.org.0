Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 803749A9343
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7BA10E184;
	Mon, 21 Oct 2024 22:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TF46CCR6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A395610E15A;
 Mon, 21 Oct 2024 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549682; x=1761085682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zbNtOTpWskn3pOjBnhoNyzXP4riFkX/c9WK1wKiLYqU=;
 b=TF46CCR6qlg4KEbNzpTmUwsfIQEx6wqRSIBGv58AJcW5pLctvhyVk4Eb
 5AEgO/YqO1gOGcnLhBF0HKoqzUlc3W/HFk2L00FHEUGEw2MdD3dQ4J4FZ
 07bnay3sQyb1b+0ZOEjqAkFiAfWV1x7KZkXqGMQE8kU/KGevaVhjvixP2
 9Do/JKEGT++bGPSKbZtYq4xchfivf8jLyBzfPJ3p3vdS/dRzBNFdMpqYV
 I2zWOGl5VSVrTAOK1jQXW6Yl3nKxT3LkJ6qs0S6K3nkZ4HdMhkKceGE3Z
 4Cj8y5ypKvDN2zs2E5GK0RLZzbmzjAi7ZuCUKvy6QQDPi0CosO3c+wlVT A==;
X-CSE-ConnectionGUID: nnHOb3vYSdixjE9+hg9aWA==
X-CSE-MsgGUID: 3OeL8XW1QCeMQsnY7z7XOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934448"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934448"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:02 -0700
X-CSE-ConnectionGUID: e7j2ur4JQbWEhj4F7eVB5g==
X-CSE-MsgGUID: iincAdIMQ3ylHOk+Z08C2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009595"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:01 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 01/13] drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
Date: Mon, 21 Oct 2024 19:27:20 -0300
Message-ID: <20241021222744.294371-2-gustavo.sousa@intel.com>
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

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/intel_uncore.h   | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 0382beb4035b..5a57f76c1760 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -117,10 +117,21 @@ __intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_reg,
 			  unsigned int slow_timeout_ms, u32 *out_value)
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
+	bool atomic;
+
+	/*
+	 * FIXME: We are trying to replicate the behavior from i915 here, in
+	 * which sleep is not performed if slow_timeout_ms == 0. This hack is
+	 * necessary because of paths in display code that are executed in
+	 * atomic context. Setting the atomic flag based on timeout values
+	 * doesn't feel very robust. Ideally, we should have a proper interface
+	 * for explicitly choosing non-sleeping behavior.
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

