Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AF9A64506
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F2410E3B8;
	Mon, 17 Mar 2025 08:19:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QFauOwPB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7404E10E3AF;
 Mon, 17 Mar 2025 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199563; x=1773735563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V99WV+OkzvdDvMl7o4EnvDIU/oM0BjMn0dMrS2bwNo8=;
 b=QFauOwPByhRQ1YSRog9U06UG6o3cENORtm6OGaZNtp+lQkDBuAb/sPk7
 UqSbRVmlxTsfghtCptUvVacdFLRW35Q1lz1Cz2SuW7k6yaD0DkHCeaueY
 lpEjr9k3Vze6xtkdcxg7ObqcUUiRFtN315m3sI3hCta1Dc+DvHXTmJ+dT
 8k67J8RrjF5IoCsfs7aLKMn5SWseM1wSGC88bJp0Q64U1L4XitxDzYolc
 w5Kq/7V/DfEX9OYif16g4E/h3Byl8jv2AMsabmXUvXJexGj22FmONntHa
 FWgspDUy4rqS93XjGYRgLm7AjcGJQ+cSHBJRc9LHG6W29AZJwgw2z6hhE A==;
X-CSE-ConnectionGUID: QM6VHfyuSxKPTsWOGd20cA==
X-CSE-MsgGUID: uO9h9tx8RbiIcd+VcE+f1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653500"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653500"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:23 -0700
X-CSE-ConnectionGUID: //tBlai1T52zvwC4ppCOlQ==
X-CSE-MsgGUID: 3+shaOUGRRWYT2DXRGG+lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677147"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 04/11] drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
Date: Mon, 17 Mar 2025 10:18:58 +0200
Message-ID: <20250317081905.3683654-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

