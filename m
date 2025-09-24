Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB558B9A3E6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781A910E743;
	Wed, 24 Sep 2025 14:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TjVhaTf1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26ED410E73C;
 Wed, 24 Sep 2025 14:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758724159; x=1790260159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PIOy3HOp7X5q6w8a7jjcT2TXg/O5cD/5yTPZ8aCA17g=;
 b=TjVhaTf1dVZQ4FgY/5ACew3nLkdTWE8SEe7Pudd1h1n0+nCPgjkJvAYN
 U8c3kY7ikZzrLzsN+pv1yNfJUutnaykKJKVRO2BIvzt9EdkKwTntilFj8
 rpn+lv3fd88mLp+x+1kmI7jcdSDCFKEP4eRxQqTGjjCCQzdn731wiwdHu
 qyhO3s0ccVnF8DY0m8t8PJuqGvwZ9NY93u0OxDuOd2jT9CiQs9vvhpcGQ
 Vlfv174QuSSaHiw8mWCOvzLyzTjWBR0y+bQqdcOXhRgJLOw3ywynlXp88
 wnSnVpCTJJ8sDyKxrxGevDnUYsfJ9ut9vZiyR8ir5Ze27NSXMX8ZPl9zn A==;
X-CSE-ConnectionGUID: fgqOWNsMTvSxW48Efv2x4w==
X-CSE-MsgGUID: Z+5xjH80SR+VLOwilQwmyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61075918"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61075918"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:19 -0700
X-CSE-ConnectionGUID: VE/SNNSDQSajk2PtpZtStA==
X-CSE-MsgGUID: LeTy2dEFRa6VealkD784gA==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH 07/10] drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for
 FIELD_MAX()
Date: Wed, 24 Sep 2025 19:45:39 +0530
Message-ID: <20250924141542.3122126-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Introduce REG_FIELD_MAX macro as local wrapper around FIELD_MAX() to return
the maximum value representable by a bit mask. The value is cast to u32
for consistency with other REG_* macros and assumes the bitfield fits
within 32 bits.

v2: Use __mask as macro argument aligning with other macros. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index bfe98cb9a038..e81fac8ab51b 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -174,6 +174,16 @@
  */
 #define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
 
+/**
+ * REG_FIELD_MAX() - produce the maximum value representable by a field
+ * @__mask: shifted mask defining the field's length and position
+ *
+ * Local wrapper for FIELD_MAX() to return the maximum bit value that can
+ * be held in the field specified by @_mask, cast to u32 for consistency
+ * with other macros.
+ */
+#define REG_FIELD_MAX(__mask)	((u32)FIELD_MAX(__mask))
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.45.2

