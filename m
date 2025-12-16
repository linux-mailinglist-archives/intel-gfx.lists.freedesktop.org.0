Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46349CC04A0
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 01:02:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EED10E5B2;
	Tue, 16 Dec 2025 00:02:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OWF7ypeX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4509610E5B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 00:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765843347; x=1797379347;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IfxLDcruypX4wrf69FrOY+iSzEbJu1dEvy47POZPvko=;
 b=OWF7ypeXSX3gasZb2Qkg5voDjtgUQro6SjH35AakSKVDCxU4Ilzlvvmq
 hq1HOIARCNr/adlrkhlsNX5n/QR3mCLH0Ir1Z3NICsVLc8Y7wWs3pwnFP
 1cfoo3CoLu3LyN5RF9JKv/+SVRw8e06Z6TPQ9PGDdx60hx6tQEMoiCwPo
 eJqtAI3L19e8ZMpUFPi6wJb3YasDGCbv/oXtPSdNxuf+skmL0Kzl+2yIb
 vz5tf14pxduy+HK6QRlWIa49c185cmg/Vj0Bh0xVO7X9H+9+0U4dgSBLb
 7vCG9tyxbJMvAeKpKSvVvrpVY3ccisGAaB4s+gIwg7f8dBXcotUdFnLFj g==;
X-CSE-ConnectionGUID: xGqZ0lsYTwGxXvr/9ty5gQ==
X-CSE-MsgGUID: 8cjm04ZwRgCP4MbbpB+JGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="55320811"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="55320811"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 16:02:27 -0800
X-CSE-ConnectionGUID: SqFQLMMHTAeD3CSw9PoXHg==
X-CSE-MsgGUID: s7AnXEPZQiCYtX0dvz3b+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="228521060"
Received: from osgcshtiger.sh.intel.com ([10.239.70.161])
 by orviesa002.jf.intel.com with ESMTP; 15 Dec 2025 16:02:25 -0800
From: Jia Yao <jia.yao@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jia Yao <jia.yao@intel.com>, Alex Zuo <alex.zuo@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>, Xin Wang <x.wang@intel.com>,
 stable@vger.kernel.org, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915/dg2: Update workaround 22013059131
Date: Tue, 16 Dec 2025 00:02:21 +0000
Message-Id: <20251216000221.3496541-1-jia.yao@intel.com>
X-Mailer: git-send-email 2.34.1
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

Previous fix enabled LSC chicken bit FORCE_1_SUB_MESSAGE_PER_FRAGMENT.
This caused side effects on 128EU SKUs. Updated solution limits SLM
allocation to 96KB which is done at UMD to avoid these issues and
ensure stable behavior.

Bspec: 54833
Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine workarounds")
Signed-off-by: Jia Yao <jia.yao@intel.com>
Cc: Alex Zuo <alex.zuo@intel.com>
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Xin Wang  <x.wang@intel.com>
Cc: stable@vger.kernel.org
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index ece88c612e27..abb47c65f43a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2866,10 +2866,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				     MAXREQS_PER_BANK,
 				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
 
-		/* Wa_22013059131:dg2 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
-				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
-
 		/*
 		 * Wa_22012654132
 		 *
-- 
2.34.1

