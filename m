Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DAA8B317B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 09:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBDB11225F;
	Fri, 26 Apr 2024 07:36:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCApB84o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA78C11225F
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 07:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714117001; x=1745653001;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=swSutxSKgzyPdlhwXfK2QLgvn5GMwJUU2e5qW4dBzVI=;
 b=YCApB84o9sXwT0D0GmFT1Ml9pmvD3bN4oOoOVJuYZJpLAA6t1GU8cnaI
 OBVzq/Y1ZA3Vm3m1dy2PHZB2hIAXgO2qecN8miDCTEOvAeYo4egLXJ7UR
 TyOXnoe+UOC1btfNWE1VLHPu573+k+LdsFJV4/JKdf5vU8g36IoHcZoyp
 PgAeFz/MvlZZIak13TtwsjFDKdYslLghEKHiTuX02l+TkXS3g/dSkBf3u
 zHm29tP3zSiaV+4PbLktLYqbUsvd27u1gzlzvxU2Zc7cCLpYjthTB2AET
 Hb/kULv9h1rDBlQWZI4fPs/ADFN1trRh12dq6Ima+0gVwZ8OG2B87SN4K g==;
X-CSE-ConnectionGUID: nikrKIA0QieQNmgSMgPUmA==
X-CSE-MsgGUID: +4fcOdKeQra+7nBr+u2Xhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9697303"
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; 
   d="scan'208";a="9697303"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 00:36:40 -0700
X-CSE-ConnectionGUID: ZCeN/NTjQjGn/JKFUe/w9g==
X-CSE-MsgGUID: lYzG4O2CRI+rxrvkStW/Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="25752105"
Received: from unknown (HELO localhost.localdomain.iind.intel.com)
 ([10.49.75.6])
 by orviesa006.jf.intel.com with ESMTP; 26 Apr 2024 00:36:40 -0700
From: "Chen, Angus" <angus.chen@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/mtl: Update workaround 14018778641
Date: Fri, 26 Apr 2024 07:36:38 +0000
Message-Id: <20240426073638.45775-1-angus.chen@intel.com>
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

The WA should be extended to cover VDBOX engine. We found that
28-channels 1080p VP9 encoding may hit this issue.

Signed-off-by: Chen, Angus <angus.chen@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d1ab560fcdfc..bf14749f5792 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1586,6 +1586,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
 
+	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
-- 
2.34.1

