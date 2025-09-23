Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 520B2B9600A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D491410E514;
	Tue, 23 Sep 2025 13:24:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZbyD+6RL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8632610E616;
 Tue, 23 Sep 2025 13:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633858; x=1790169858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1HYKEpq/YuroElje67sa0p6qvUE7jUfOpcmcMDq88yA=;
 b=ZbyD+6RLnBGV6vaJCeVGXWA8xwo9MWIb5oWqQ6+IvKgG6BBpiZsK5q8L
 cZvrU+5mJRXa3fN6tY0j+jyLXHcvkmjC6rTDLvZzEnhDNVBaUR24qsr6v
 8/eYBfwybXKYaFf9JW43g2miZKd5O7gG7rIXwx07MkGltbKF6knV6pimD
 DHwL9w2f0RPmJvKAKi66Z1WHWa3L9m0bQShvzpeR/9S3O0EDE9rZKbI9q
 TCDEcXnIMBc3a38DGASmX5St4tD20U2ogHjCNFoXhsb9gLh9Q3QnsAUSN
 w08KP9V5uMYmgJrvYVROkdAitCJvdr7Gxu53MmLGOv8IyKKCS5J3dmk5W g==;
X-CSE-ConnectionGUID: hBZI2Dh+SIGih99qJ3o5WA==
X-CSE-MsgGUID: YLF+g+FlQGOoGghPQyo1Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480568"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480568"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:18 -0700
X-CSE-ConnectionGUID: C7jsxC7ORfaWRcIP3YgyTg==
X-CSE-MsgGUID: 0YEjJt2RRb+iMuxZYr6s8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689577"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/9] drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for
 FIELD_MAX()
Date: Tue, 23 Sep 2025 18:40:42 +0530
Message-ID: <20250923131043.2628282-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

Introduce REG_FIELD_MAX macro as local wrapper around FIELD_MAX() to return
the maximum value representable by a bit mask. The value is cast to u32
for consistency with other REG_* macros and assumes the bitfield fits
within 32 bits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index bfe98cb9a038..50967f887790 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -174,6 +174,16 @@
  */
 #define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
 
+/**
+ * REG_FIELD_MAX() - produce the maximum value representable by a field
+ * @_mask: shifted mask defining the field's length and position
+ *
+ * Local wrapper for FIELD_MAX() to return the maximum bit value that can
+ * be held in the field specified by @_mask, cast to u32 for consistency
+ * with other macros.
+ */
+#define REG_FIELD_MAX(_mask)	((u32)FIELD_MAX(_mask))
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.45.2

