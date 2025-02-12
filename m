Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F83CA32067
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A32210E7E8;
	Wed, 12 Feb 2025 07:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgj10j/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 593B210E7E3;
 Wed, 12 Feb 2025 07:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347078; x=1770883078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SAGwH6LOxlieeoGWiBd3rvz4LM8WkVxTSI9Ts9Hlin0=;
 b=bgj10j/vq8g3P4OoB1K6n77dfj5xyS3AcZzsezZ4b4KyVzdM1cVO+DZ2
 +et8sAauyGuJ7tVcLP4SvwScrF2GJtUq5e2Evd175rtv1t5hIRo18MXFy
 1GI5rqGFI4cDotNyd/1oVh5DGxAyJbZr9fu+v25pWYE1x1W0+NCo0O3QH
 01wKOhGJKqOpzDGArI02FsGRjC0iN4+YLAk2NC8LOtVQWEbm9h0fjEaiI
 h7i4LKa1nO0hGJ+hin13OIc18uZbqFU4yiQoSUgRezDY0Ve/txLHdGc9C
 QarwB82EMXgv48IPQr+8grDngKvoqD4dfcSj6aAdPXK67Bvro2qoUqkzP Q==;
X-CSE-ConnectionGUID: +kNxonf6Sbqr3mFQL/Zltw==
X-CSE-MsgGUID: D8HRWo22RX6DFXzG4K/5mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973629"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973629"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:58 -0800
X-CSE-ConnectionGUID: eviXjWXvQw2Mje18ky7VsA==
X-CSE-MsgGUID: AhwrA86AQwunN59nExDUhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836888"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 04/13] drm/i915/psr: Add register definitions for SFF_CTL
 and CFF_CTL registers
Date: Wed, 12 Feb 2025 09:57:32 +0200
Message-ID: <20250212075742.995022-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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

