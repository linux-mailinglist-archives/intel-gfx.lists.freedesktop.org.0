Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA19C22691
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 22:26:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB8010EA58;
	Thu, 30 Oct 2025 21:26:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lx8CeXum";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F07210EA3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Oct 2025 21:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761859605; x=1793395605;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4/TWUu+MPz/CYwhpeh02To/5538WZ6Pn3xWu/TuFI70=;
 b=lx8CeXumfN8cwmWtst2kwTPPyCzHfWumJcPjCz7LSQ7q0cJwTyjNo2O+
 2e+gWeGt70ZjWYEshAx/h0FdcDukHf2ievamw/ScuovxLkxJmv+XlxPX1
 hWn8R4vE0CBonG0kK/MSbKzf9psNt/EXDDUAAFvc4J+cLiGYbW+I8Byy0
 0p3KHQV1Up3a5ZOiVnDhL/K4zRqZSescD9SB8m+FgcJiwaYD8d9jGvTso
 KLfgyLkic34u2UKdCGzoEhAHr0pDqTR+zkao1yBnZExLjJKg+h6P5PJo+
 vrFhALdGmb0AtacCBexJ9WqqnBX9piG2jKzuHGdhaaGN82yvsu1G11Qu1 g==;
X-CSE-ConnectionGUID: vwoSp+NOQiGkR5eWofMmQg==
X-CSE-MsgGUID: Jf9IoTBHTUmmqHQPKdbNgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="75465690"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="75465690"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:26:44 -0700
X-CSE-ConnectionGUID: Uag9CwouRIGAs+2kZgi9eA==
X-CSE-MsgGUID: OlU3Gu/WQRCWkomzO+H7cg==
X-ExtLoopCount2: 2 from 10.245.245.234
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="186400488"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.234])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:26:44 -0700
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Thu, 30 Oct 2025 23:26:41 +0200
Resent-Message-ID: <aQPYEQ6asmhMXptq@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.korsu.shacknet.nu with IMAP (fetchmail-6.5.4)
 for <vsyrjala@localhost> (single-drop); Wed, 29 Oct 2025 22:45:42 +0200 (EET)
Received: from orviesa002.jf.intel.com (ORVIESA002.jf.intel.com
 [10.64.159.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 1D4FA20B92E9
 for <ville.syrjala@linux.intel.com>; Wed, 29 Oct 2025 13:42:26 -0700 (PDT)
X-CSE-ConnectionGUID: +ZOcI/vZTu2ZEbZg1gHVKQ==
X-CSE-MsgGUID: DqJaxIGzTRav45IFAxzYNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="216427355"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/dram: Sort SKL+ DIMM register bits
Date: Wed, 29 Oct 2025 22:42:14 +0200
Message-ID: <20251029204215.12292-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use the customary big endian order when defining the
SKL/ICL DIMM registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_mchbar_regs.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 378dc7c69f7d..a46a45b9d2e1 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -161,24 +161,24 @@
 #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
 #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
 #define   SKL_DRAM_S_SHIFT			16
-#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
+#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
+#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
+#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
 #define   SKL_DRAM_WIDTH_MASK			REG_GENMASK(9, 8)
 #define   SKL_DRAM_WIDTH_X8			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 0)
 #define   SKL_DRAM_WIDTH_X16			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 1)
 #define   SKL_DRAM_WIDTH_X32			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 2)
-#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
-#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
-#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
-#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
-#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
-#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
-#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
-#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
+#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
 #define   ICL_DRAM_RANK_MASK			REG_GENMASK(10, 9)
 #define   ICL_DRAM_RANK_1			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 0)
 #define   ICL_DRAM_RANK_2			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 1)
 #define   ICL_DRAM_RANK_3			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 2)
 #define   ICL_DRAM_RANK_4			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 3)
+#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
+#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
+#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
+#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
+#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
 
 #define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
-- 
2.49.1
