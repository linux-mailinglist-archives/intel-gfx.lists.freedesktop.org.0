Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B37EA87CDB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704B310E546;
	Mon, 14 Apr 2025 10:05:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfzvVB6+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC6C10E542;
 Mon, 14 Apr 2025 10:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625128; x=1776161128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WdsG6+gtsvZKvEHMIITfScY/2uzJdAYd3VZhrihXCuw=;
 b=HfzvVB6+oGRvZlpi/9dCLuN6AivQaZu/Ef/ogGB9nk4J/tPNmwikNDbe
 MB3NtYj2VM5/dY5TR5kX1brwLEwBM14YUabbZOP/+czr+22dDmA/kjSeu
 /dl6hxDJwcNkayPrXt1f+rUPDAUmXetKPdGdtO1XH1bp8Kay2P//2820i
 NE0ktCAa/J2SCkG8j7r95xQZ+6nlJx6KNqraVT2cWWwvrMqvkYpDCxhrE
 O3XPgz+znj2d8IPLLpQIMsyB+MLOTrbwoVLwbxn8UhxlCR0WS7qkeXx8J
 QlaIoHsbGnXBAEjn+J2M42EoBqcmCSrr74ZpgFWkonCD9/vu3298E+ngS g==;
X-CSE-ConnectionGUID: PVZkGOhvRPSb7MMQ2fQp6A==
X-CSE-MsgGUID: J1hQdYtRQQiYQswv2W/PdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789114"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789114"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:28 -0700
X-CSE-ConnectionGUID: /0NZxX9oSVuLv3o056gQCg==
X-CSE-MsgGUID: gMPK2ZOBQIKIA06JGaS3ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743192"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 04/13] drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
Date: Mon, 14 Apr 2025 13:04:59 +0300
Message-ID: <20250414100508.1208774-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 2f1e3cb1a247..e16ea3f16ed8 100644
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

