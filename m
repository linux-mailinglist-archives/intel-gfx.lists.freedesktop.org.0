Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0C7A87CD7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D20BA10E540;
	Mon, 14 Apr 2025 10:05:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iqbg+ro2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB55F10E53F;
 Mon, 14 Apr 2025 10:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625126; x=1776161126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VEuzruUgAHJn4jpTWHJ15d6soITmSTRigC0gYYcd8As=;
 b=Iqbg+ro2CrKHYewsMHJ44LDkCTDvSQWSI6QW7h85KYknFTbmbJMLJKGF
 U4vWfezsGzDPaqe2kw9UCEnwRi/9ekL2wu0w481MgRkvAH3BHQX4kFSXl
 qe/5f/PV/XwTpSSnobvEwzWQN/SlLg0+RaJC7CncKng8lrpR9Ojdvpi8n
 OqhnCeYCcqHlsSyH3cDdF9obvSsdc/a1waObFgyTzo39UMq2ZsKMtY0vK
 CVJ81ThtS8hlrliB6r4KcJO1/bwYDNHhgoTGiNGmaUgqw+mn5dgNOUzFO
 UP5hwpz1okwmQUv8xp9r4MjrlHcBvaQWTcrm2J2QBDvn4Yh9LchgUEA/y Q==;
X-CSE-ConnectionGUID: N/ccqlIHT42aMscCvYTSjw==
X-CSE-MsgGUID: s0KyeX8rQJm/sArV/njK8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789113"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789113"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:26 -0700
X-CSE-ConnectionGUID: 1NxgYLqyTSCF40NdlMZRAQ==
X-CSE-MsgGUID: OXjmyBJDSnm8P2woWgktgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743189"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 03/13] drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
Date: Mon, 14 Apr 2025 13:04:58 +0300
Message-ID: <20250414100508.1208774-4-jouni.hogander@intel.com>
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

To implement workaround for underrun on idle PSR HW issue (Wa_16025596647)
we need PIPEDMC_EVT_CTL_4 register. Add PIPEDMC_EVT_CTL_4 register
definitions.

Bspec: 67576

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 1bf446f96a10..2f1e3cb1a247 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -21,6 +21,12 @@
 #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
 #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
 
+#define _MTL_PIPEDMC_EVT_CTL_4_A	0x5f044
+#define _MTL_PIPEDMC_EVT_CTL_4_B	0x5f444
+#define MTL_PIPEDMC_EVT_CTL_4(pipe)	_MMIO_PIPE(pipe,		\
+						   _MTL_PIPEDMC_EVT_CTL_4_A, \
+						   _MTL_PIPEDMC_EVT_CTL_4_B)
+
 #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
 #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
 
-- 
2.43.0

