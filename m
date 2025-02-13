Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C50A33828
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC1A10EA11;
	Thu, 13 Feb 2025 06:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/RMSsf/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4B910EA0F;
 Thu, 13 Feb 2025 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429303; x=1770965303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SAGwH6LOxlieeoGWiBd3rvz4LM8WkVxTSI9Ts9Hlin0=;
 b=Q/RMSsf/OBC6w5Mf5Uo8/F5+j8i4EslVfypHYcCLWZf7u9uVjWrAGHVl
 O3bXpavyw/TcQqlM/bGS0Mu9q7ahUyMLO257kRJ9eKpWLSuixvObYAkOJ
 iXd6/UmM+H51zfXW+N+e/tp2c9c9nfb9LJJR4iDLQBtBdI4S6XD8eZgWG
 CtDFNEK2+wuy3H09XBpcxN9oOrDmJGX0qkfJaI9pz4m6rAv9DtKbT3/Ka
 iUyHhRYJgMJwgphLJNj2XluN7wmzhqi03YycYfmYiR+VOb4yb+s/W68Kc
 ErAXtMhjeA09eftNwx72HhIaQJ61nogd37w+GTHY9q81Fpbgg3WNa5Sbq Q==;
X-CSE-ConnectionGUID: a5gOGv0STj2LltnO/V0i6w==
X-CSE-MsgGUID: yt4kocMKSxWA4q/Diyjr3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764058"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764058"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:23 -0800
X-CSE-ConnectionGUID: gUfPEE+eRM+eqj5JJdDnjQ==
X-CSE-MsgGUID: 2uDEoUqcSnyxXAg+jqsW/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237156"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:21 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 04/13] drm/i915/psr: Add register definitions for SFF_CTL
 and CFF_CTL registers
Date: Thu, 13 Feb 2025 08:47:55 +0200
Message-ID: <20250213064804.2077127-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250213064804.2077127-1-jouni.hogander@intel.com>
References: <20250213064804.2077127-1-jouni.hogander@intel.com>
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

