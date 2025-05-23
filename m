Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4983EAC21BE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 13:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9EC10E2BF;
	Fri, 23 May 2025 11:06:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L0ymT/3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD1810E299;
 Fri, 23 May 2025 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747998382; x=1779534382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PqGpipnmHS8UNfAOBcHUxUI6TSRwpToIXu1Dsm0zlpI=;
 b=L0ymT/3nYpB8BqPdIFU8Qum2qlU/kaozUSTGSP4VAdP8yV1RxkqMLspY
 lIRl7D10WcsQAbMSvyLOQugeYRHISmCmedaPYrZ3hDeZzGToOwoMARqGB
 BB3T/83AZn44PmzdCZlwajpt85p2LXyHTt7v+yYNhDe3CMxEHX5P++Mhf
 QU/knK28tw5vnhy2fihSu2pEPEbg9ttrMiCQdtQOMSP5cHbEZhAt5umLg
 HIxubRr5I1W1MednbDR6/iwmlR5m6SeYGDP2IZ1KdtDeF5ogm/R3W9qHv
 Ie+zKeuC0xL9gBAn81X4gdR5e78iyPFCoGKXm8S3heEptr5jaGukjx7NC Q==;
X-CSE-ConnectionGUID: Kkj+hC+qSDiAspSPO4oGFg==
X-CSE-MsgGUID: FLB1UAFnQwa/VVnb9k1S3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67463924"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67463924"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:19 -0700
X-CSE-ConnectionGUID: VpImVGIHSe+t3FDqJ0rYAg==
X-CSE-MsgGUID: 3C7c01L9R+2SkCH5f1WraQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="164341810"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.108])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 04:06:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 3/4] drm/i915/psr: Add TRANS_PUSH register bit definition
 for PSR
Date: Fri, 23 May 2025 14:05:54 +0300
Message-ID: <20250523110555.3494901-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250523110555.3494901-1-jouni.hogander@intel.com>
References: <20250523110555.3494901-1-jouni.hogander@intel.com>
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

Add TRANS_PUSH register bit LNL_TRANS_PUSH_PSR_PR_EN definition for PSR
usage.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 09cdd50d6187..2b8c70471b68 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -100,6 +100,7 @@
 #define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
 #define  TRANS_PUSH_EN				REG_BIT(31)
 #define  TRANS_PUSH_SEND			REG_BIT(30)
+#define  LNL_TRANS_PUSH_PSR_PR_EN		REG_BIT(16)
 
 #define _TRANS_VRR_VSYNC_A			0x60078
 #define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
-- 
2.43.0

