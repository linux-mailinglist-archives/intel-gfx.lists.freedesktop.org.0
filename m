Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A42C59D0900
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 06:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0BD10E313;
	Mon, 18 Nov 2024 05:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KFijyku5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB24310E313
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 05:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731908583; x=1763444583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hgs18MLeixs3BrQGFITjDP3gVLBQXgLxlix73sOJsW8=;
 b=KFijyku5lrAO0+WWhYs0OhSvDFkRQE1cT/hmLcIrEqw+XoJ/Pv/iL7i8
 U2zHapihyGsqL29HGoYYKouG+xKLc0ifliukNm2e+gkW96/AcHplIqv7h
 dM1OObCGb/Kb6xa/gsnfWFYuCHP8b5lbU4oRH7t5AcqmWR3VxqZ9XdEjv
 naA331m3toi3IxO4HZ3BiZDE7JyA5l/7+iR4xr0Y5LcmEHD/BO9DgaOXK
 am9HS4zcWfEOSv1ENFILtS7IzkGh90i9OZjJ9Y+O36oFYL9Mx6mbcTjL1
 VazFGk6Z7GNah7ME4sjtGnPJLWVJViBo1k1gK9RIk2SxBTa9ey+XSeT87 g==;
X-CSE-ConnectionGUID: Z103P5CoSz+x+NxJ9p+ZzQ==
X-CSE-MsgGUID: zQqHgljyTbSC6nSj43f5aA==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31255805"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="31255805"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 21:43:03 -0800
X-CSE-ConnectionGUID: u2CmAxfUQrStW2OPUY99XQ==
X-CSE-MsgGUID: EItKtJ/GSRqjUJSw5mp0bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="89905881"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 17 Nov 2024 21:43:01 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/display: Adjust Added Wake Time with PKG_C_LATENCY
Date: Mon, 18 Nov 2024 10:53:27 +0530
Message-Id: <20241118052327.2475743-1-animesh.manna@intel.com>
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

HSD: 14023564296
WA: 22020432604

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1a4c1fa24820..9be38ca5346d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2875,6 +2875,12 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 		added_wake_time = 0;
 	}
 
+	/* Wa_22020432604 */
+	if (DISPLAY_VER(i915) == 30) {
+		max_latency += added_wake_time;
+		added_wake_time = 0;
+	}
+
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
 	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
 	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
-- 
2.29.0

