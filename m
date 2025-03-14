Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C97A60FBD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 12:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D707310E9D2;
	Fri, 14 Mar 2025 11:18:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jNNrrMe9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCEC210E9CA;
 Fri, 14 Mar 2025 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741951137; x=1773487137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V99WV+OkzvdDvMl7o4EnvDIU/oM0BjMn0dMrS2bwNo8=;
 b=jNNrrMe97ZKXybjLx8siIkt5bpCeLZdt3IDT5Yu4Ds/MghRfh38eu5E7
 0oy82ezwvtO8NqkllVKDJKeEEbMV2xIGG2g8qPomyTXwhqFUjNVrNsS0C
 UmMxtgxX9w5bXkJTNQwhc7ibK/Bbk5KzPLV3Wc9bYhhfXxEcAUG8DqRtk
 VA6nhHh1mjlaMkMoUjW9wswEIwTRQi0yn542c33p5MD4WsPrxS/mqdQgW
 ZL0KqVGiSDIWTfmKpOwcb9D2rDHV6ZdqD05gcoXl0lortcwu6JjeSA3mi
 8tFcCXZq5iIrDLpGBRaO63c4doe6P9VySTDwwiZszH9hjylpy5KNl/aRh g==;
X-CSE-ConnectionGUID: ZsMhYf2OTiy64jWI4tWAtQ==
X-CSE-MsgGUID: dxa93QuXRViceW243S6Sog==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68467019"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68467019"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:57 -0700
X-CSE-ConnectionGUID: ZQ1fJuWQQOWuIYSRhoSKVA==
X-CSE-MsgGUID: YM4CiuR7S+CmsmJrueKWAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126289646"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 03/11] drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
Date: Fri, 14 Mar 2025 13:18:31 +0200
Message-ID: <20250314111839.1051945-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314111839.1051945-1-jouni.hogander@intel.com>
References: <20250314111839.1051945-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We need PIPEDMC_BLOCK_PKGC_SW definitions to implement workaround for
underrun on idle PSR HW issue (Wa_16025596647). Add PIPEDMC_BLOCK_PKGC_SW
register definitions.

Bspec: 71265

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 2f1e3cb1a2477..e16ea3f16ed88 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -27,6 +27,14 @@
 						   _MTL_PIPEDMC_EVT_CTL_4_A, \
 						   _MTL_PIPEDMC_EVT_CTL_4_B)
 
+#define PIPEDMC_BLOCK_PKGC_SW_A	0x5f1d0
+#define PIPEDMC_BLOCK_PKGC_SW_B	0x5F5d0
+#define PIPEDMC_BLOCK_PKGC_SW(pipe)				_MMIO_PIPE(pipe, \
+									   PIPEDMC_BLOCK_PKGC_SW_A, \
+									   PIPEDMC_BLOCK_PKGC_SW_B)
+#define PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS			BIT(31)
+#define PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_UNTIL_NEXT_FRAMESTART	BIT(15)
+
 #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
 #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
 
-- 
2.43.0

