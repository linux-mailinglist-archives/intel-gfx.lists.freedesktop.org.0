Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 280539F04DA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44B610EF14;
	Fri, 13 Dec 2024 06:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bGWyxa5b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A0D10EF11;
 Fri, 13 Dec 2024 06:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071747; x=1765607747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2hUt0LZtwXqbtp/Pl8lFzh/2LNk74Cz7N5urkR3gHK4=;
 b=bGWyxa5bQAkeL4GCRqmCPnGkIqSsA6j1SGFQs++LCmTCY/t+6NUl5MIo
 nXQoteOgfu9jLO1d7mUQ4xYPuPdgJNp2LGKDL5mQUmgPB+e94GuTgVLFW
 KTp0pGnMARVbdNlErhjxjWgzSLqAWIGDOsf807qnHpDAnzNZ9pEJ3gAyg
 kaz2/09nPAgdjpBEHns8UHa7jKA/Fi3pX1cL7efLv6Ay4egwCFHMLUZiB
 syBUTuLLHHJ//gZCM93C8E/rR0SX55XV7amlJ7hJPLGEtymX/HJM3M59D
 7RX5Qjqy8fLJ4qTp2zGqBPuAgtVobg3sjDQv+pXOp7uuXtdwF6NhOt/ea Q==;
X-CSE-ConnectionGUID: eowkjpcXRpihuktN/6ijnw==
X-CSE-MsgGUID: 7pGLeQQjQqCsJ84Y3oBOmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846833"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846833"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:47 -0800
X-CSE-ConnectionGUID: FrsRqcujSm6C2vIA6Io3BA==
X-CSE-MsgGUID: gf2B4J+6S2a3Ya2lh327uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307736"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:46 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 04/10] drm/i915/psr: Add register definitions for SFF_CTL and
 CFF_CTL registers
Date: Fri, 13 Dec 2024 08:35:22 +0200
Message-Id: <20241213063528.2759659-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
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

Add register definitions for SFF_CTL and CFF_CTL registers. Name them as
LNL_SFF_CTL and LNL_CFF_CTL.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 9ad7611506e8..a24f4d76c98a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -251,6 +251,14 @@
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
 
+#define _LNL_SFF_CTL_A						0x60918
+#define LNL_SFF_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _LNL_SFF_CTL_A)
+#define  LNL_SFF_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(1)
+
+#define _LNL_CFF_CTL_A						0x6091c
+#define LNL_CFF_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _LNL_CFF_CTL_A)
+#define  LNL_CFF_CTL_SF_CONTINUOUS_FULL_FRAME			REG_BIT(1)
+
 /* PSR2 Early transport */
 #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
 #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
-- 
2.34.1

