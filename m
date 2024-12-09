Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28D9E8D0A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 09:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF4010E4A1;
	Mon,  9 Dec 2024 08:07:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g7yhAb9n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2594810E4A0;
 Mon,  9 Dec 2024 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733731629; x=1765267629;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AiBiLhyODGumEZjyg2/3ZB71dqK/8Geiawsm2o0fcZ8=;
 b=g7yhAb9nRsbtR2piWL6DZ4EsOFNgkbCUfWy/ysREwFp4FVqoNCpHdNUH
 N3Zniqsr/SXAWYPQfwTyOyROiBhOh/K+KGJFhYFJXamKnV+oF8+o2VNhd
 0EBoyhnHR2cFAbizFbY73GreS3hVbUknSAMCV5vYTPcei1b/dPy/VDT0L
 fPFpjyhPPnxBzq0Wc38pZALa0B2uTon0e4gspH8Etla5e6TUnQh7kimNl
 WV6XScYSmDyLez1GzRh7aQa5Iv+p64UPNS8pbIii/4RL7HQ/Kc4RKjfaB
 uBlnZ3SINToCDvmlI/b1Lj0E9VPwiqCTqy6uvXIZPn8gDzmNgrQaQgizr Q==;
X-CSE-ConnectionGUID: 3FP5p705RAaAR0cMUhFw0A==
X-CSE-MsgGUID: tG0UpmVoRP6efVmb372Q5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="33939102"
X-IronPort-AV: E=Sophos;i="6.12,218,1728975600"; d="scan'208";a="33939102"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 00:07:08 -0800
X-CSE-ConnectionGUID: u2a3LgiuR2m9CaVpcN+bAw==
X-CSE-MsgGUID: hGr/LPrJRH+17gAdwOqv1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,218,1728975600"; d="scan'208";a="95446363"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa007.jf.intel.com with ESMTP; 09 Dec 2024 00:07:02 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/display: Adjust Added Wake Time with PKG_C_LATENCY
Date: Mon,  9 Dec 2024 13:17:02 +0530
Message-Id: <20241209074702.3975702-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
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

The PKG_C_LATENCY Added Wake Time field is not working.
When added wake time is needed, such as for flip queue
DSB execution, increase the PKG_C_LATENCY Pkg C Latency
field by the added wake time.

WA: 22020432604

v1: Initial version.
v2: Rebase and cosmetic changes.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d93f6786db0e..f6f7205e06eb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2894,6 +2894,12 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 			display->sagv.block_time_us;
 	}
 
+	/* Wa_22020432604 */
+	if (DISPLAY_VER(i915) == 30) {
+		latency += added_wake_time;
+		added_wake_time = 0;
+	}
+
 	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
 	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
-- 
2.29.0

