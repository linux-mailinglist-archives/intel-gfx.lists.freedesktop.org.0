Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E7FA06F14
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4D710ED05;
	Thu,  9 Jan 2025 07:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhL65SOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D0710ED1C;
 Thu,  9 Jan 2025 07:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407924; x=1767943924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M5l9UMthYSCFysJ9yB3yyzuZk6PSEmzJPYLdeSLG+94=;
 b=BhL65SOnad0ERF4tV7XJ2Fy6IS1uuD6av0oLslHNnMsoOhzMKcrn3zyo
 wGQYVXktFjF9hZGdCy6AV7wxiHV4fEU6Wy2dH59vIQ89eMi+u+ytYlXDx
 2CieiywSYZAYbDL8xua+y1E8J6ixdxYmR9pUnBhCY4ic4aXS9YMBm02pE
 gqYMX669g69Zj2HMQVVgz5varBPaV2nTyFRKOK/rlVPeX/2osmgryy0RO
 o/efW/zAvi0krlm7mtFwT2Lw1ZEWp45LCt1IYI/N/RYInKNg364bJ+F76
 +/f9y7vWY98QiEirUbOOYFsTC3HDM5wpOdTcioPWM4Go1z5/VUuXQvUcW A==;
X-CSE-ConnectionGUID: bcJiNJT1QzeHIQaXtoSD3A==
X-CSE-MsgGUID: DpM5xfPtQ0OIUaTOBbwEkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200568"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200568"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:04 -0800
X-CSE-ConnectionGUID: c5GT/5gfTviZ7nzY6mxWrQ==
X-CSE-MsgGUID: RF0PuZEwRcKSFcfrvOlHdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297858"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:03 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 04/10] drm/i915/psr: Add register definitions for SFF_CTL
 and CFF_CTL registers
Date: Thu,  9 Jan 2025 09:31:31 +0200
Message-ID: <20250109073137.1977494-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109073137.1977494-1-jouni.hogander@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
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

v2: use _MMIO_TRANS instead of _MMIO_TRANS2

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 9ad7611506e8..795e6b9cc575 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -251,6 +251,16 @@
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
 
+#define _LNL_SFF_CTL_A				0x60918
+#define _LNL_SFF_CTL_B				0x61918
+#define LNL_SFF_CTL(tran)			_MMIO_TRANS(tran, _LNL_SFF_CTL_A, _LNL_SFF_CTL_B)
+#define  LNL_SFF_CTL_SF_SINGLE_FULL_FRAME	REG_BIT(1)
+
+#define _LNL_CFF_CTL_A				0x6091c
+#define _LNL_CFF_CTL_B				0x6191c
+#define LNL_CFF_CTL(tran)			_MMIO_TRANS(tran, _LNL_CFF_CTL_A, _LNL_CFF_CTL_B)
+#define  LNL_CFF_CTL_SF_CONTINUOUS_FULL_FRAME	REG_BIT(1)
+
 /* PSR2 Early transport */
 #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
 #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
-- 
2.43.0

