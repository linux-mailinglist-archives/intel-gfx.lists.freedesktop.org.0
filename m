Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AE07D6CEC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 15:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F91910E659;
	Wed, 25 Oct 2023 13:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB08310E659
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 13:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698239834; x=1729775834;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QsTz1MuiqOeciuJ4cBW6nSGOi0sFhyvPIE2ocEw7ezg=;
 b=k0JwUd8Bg0lAzvB/pVB0ACc881NGFvFtYfDWUpnxO7DAb+7ZBAgJc5AD
 8YPW8x3d5AgC9lcdRbOXI+vqvv24x65u/gSMEl4m5guk/iwoX4lSUZVGu
 FP7A5fKw3Polrp0SyuJuqIlurm6eNv5zCsquWsORUrEu3241oHPppT+wM
 0XN2scP9/o0sTk1+7X0R3Hob+VGam7FQvtTQAYO/LgKouekbWw3tJwhQI
 2PlLF3+2tpd7ICEasBFzRlkuzG2jPyz8EYNgyNTz1kFLsqkTqxvri+XDk
 l1BnhUy6qWKRZNxGZ+wlfzeMG5hPjWR0g7w7MgdeMB8bGv+ZnE2P2f/Bm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="473540575"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="473540575"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 06:17:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="793834036"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="793834036"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2023 06:17:12 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 18:47:09 +0530
Message-Id: <20231025131709.3368517-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_22016670082
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

Implemented workaround for XeLPM+
BSpec: 51762

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 192ac0e59afa..6ae7a4de83b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1674,6 +1674,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
 
+	/* Wa_22016670082 */
+	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
+
 	debug_dump_steering(gt);
 }
 
-- 
2.34.1

