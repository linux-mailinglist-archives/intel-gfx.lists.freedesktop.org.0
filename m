Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C9AE3E34
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D1910E36D;
	Mon, 23 Jun 2025 11:44:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WC90ooUs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B55610E368;
 Mon, 23 Jun 2025 11:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679046; x=1782215046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I8/k4QM6kPJIUKtaMWZEkhjka1PTVcvsOz+1aA9GqzA=;
 b=WC90ooUslFYVJIaFGxumoz0KEpyFOVAEv6lNz1FsfeI+6CF+M8eE+RCi
 CrP4xcuXvAydyTULsZXLIU5UFgXVq/mCAzEf9NHpdQ2epDtLPbwbdOGj3
 4vcxPiWgENA7b7i/BOSLd5b46WQpNZkriJyUNzgkUYdXLDfaU3n47+OYw
 1DSTy/YBTXvWcbl21x0erYLWec37otrnffS2HNJJqoP/zVy9IOWbUVogA
 DWEDr6kSVdmh6rVC7bxq8/M6LDET6V49sAHbwXX+FTY9A/gzefd/tXKRn
 nM+Uog/TutLrK4utHNAPYYQfCeDBkWGIXbwFFePXN3gT1dKhQwo0psQNf A==;
X-CSE-ConnectionGUID: hrbXrCMhR7u1VaGRb7N04g==
X-CSE-MsgGUID: xu3+N+84Rwata9uCHpf8AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52969470"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52969470"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:06 -0700
X-CSE-ConnectionGUID: KBsQ5PjCTY2HPH/mjbKFig==
X-CSE-MsgGUID: ekO+sz9cQiOb8gnBrhkwEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152093826"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 2/6] drm/i915/pcode: add struct drm_device based interface
Date: Mon, 23 Jun 2025 14:43:45 +0300
Message-Id: <e4ee176ca5454cfc636cbe71feb9f55d9e91f4ea.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750678991.git.jani.nikula@intel.com>
References: <cover.1750678991.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

In preparation for dropping the dependency on struct intel_uncore from
display code, add a struct drm_device based interface to pcode.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h | 10 ++++++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index b7e9b4ee1425..81da75108c60 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -272,3 +272,27 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
 
 	return err;
 }
+
+/* Helpers with drm device */
+int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return snb_pcode_read(&i915->uncore, mbox, val, val1);
+}
+
+int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return snb_pcode_write_timeout(&i915->uncore, mbox, val, timeout_ms);
+}
+
+int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return skl_pcode_request(&i915->uncore, mbox, request, reply_mask, reply,
+				 timeout_base_ms);
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 401ce27f72d4..c91a821a88d4 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_device;
 struct intel_uncore;
 
 int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
@@ -26,4 +27,13 @@ int intel_pcode_init(struct intel_uncore *uncore);
 int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val);
 int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val);
 
+/* Helpers with drm device */
+int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
+int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
+#define intel_pcode_write(drm, mbox, val) \
+	intel_pcode_write_timeout((drm), (mbox), (val), 1)
+
+int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms);
+
 #endif /* _INTEL_PCODE_H */
-- 
2.39.5

