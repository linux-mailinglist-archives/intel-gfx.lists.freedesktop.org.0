Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC3FA1D47B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E98F10E4F7;
	Mon, 27 Jan 2025 10:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RbvU4H+X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564FD10E4F2;
 Mon, 27 Jan 2025 10:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973753; x=1769509753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lVQz+o+X353SdVWqyVBYfaMAcJ0/ZNHivFGwPNv3ACA=;
 b=RbvU4H+Xtx+BKwlBCMtR8oC7a9ErxGxTZPCJHQGmazpvjyuxxsVZisSF
 ZzOjSNPPOCSj0rwwEY6g6li0oY8AGU1nO8MkTamXdOOqf+9dAGrX3+XyV
 0kXTKKzxOiiCuR3/kEnwhwcAhK+kMbWpRJSV44zq+HCpAkeVZkiBC/Y6i
 k4A02aYPqV3x3/LibRkYzfKnl/sFITO+hI/5xyAS3hwIwXFLWhIrtIU9L
 FJLShfV9KPKQHMGQ9SpVNMsBuYvt5S9w+QuW70pXrIiS7xFDazqTWdMEm
 giRgpm7AkIs4Q1VxLS531ZaRQA0d1plo6wcPZCbHhI/tXQ2I9kN6OXOK+ w==;
X-CSE-ConnectionGUID: IHjUJItBQmOJQ5sbW9Fjhg==
X-CSE-MsgGUID: YHjYlGAkRM+J/7sHfjyWAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529860"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529860"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:13 -0800
X-CSE-ConnectionGUID: e3Wvjkz6SGi32YFWbP39Ng==
X-CSE-MsgGUID: DuGHvabVQx2SUk+0cDgoQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837847"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:12 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 04/12] drm/i915/psr: Add register definitions for SFF_CTL
 and CFF_CTL registers
Date: Mon, 27 Jan 2025 12:28:38 +0200
Message-ID: <20250127102846.1237560-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 9ad7611506e88..795e6b9cc575c 100644
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

