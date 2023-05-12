Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071667012CF
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 01:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB14010E6EC;
	Fri, 12 May 2023 23:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D67110E52D;
 Fri, 12 May 2023 23:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683935801; x=1715471801;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rxeJxGtXEX7FFu7/3AByuEk4KIHtC7aXGNYkYv0qgFQ=;
 b=CEXFV07QrysHNcrUSGDhzweKG87mqzSVgWfYAdCM2loiX8NsVv5QU+l4
 jkKm4paD6v/wGI1+bXhLpGDmTbK+Dxo0/pQy2Lkbwb+pEeFk9ijaGTGF/
 VVcePQt52PpYyXZh6HPapogGihzJw0Ry0Ta5Ktx29cXFByxMNhJaCmopQ
 TRtoD1UJG76mQVY54pGt+mqzISpnB0qKJUQrnMpEj8d1FE1pB3S5cPL4M
 7avbkGMw2GWCzv/d6QyLTgkjtA8+oKIEzGsEL/3jxdHdMnqhOErmKak0I
 f8RqLVbv5Ls37nMto6ZM79O8U3Ssw+0vIqIWOGFrcl0jxO22BPgm/PdPW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="414286537"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="414286537"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 16:56:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="844597720"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="844597720"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga001.fm.intel.com with ESMTP; 12 May 2023 16:56:39 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 12 May 2023 16:56:03 -0700
Message-Id: <20230512235603.431386-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc/slpc: Disable rps_boost debugfs
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

rps_boost debugfs shows host turbo related info. This is not valid
when SLPC is enabled. guc_slpc_info already shows the number of boosts.
Add num_waiters there as well and disable rps_boost when SLPC is
enabled.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7632
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 5 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 80dbbef86b1d..357e2f865727 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -539,7 +539,10 @@ static bool rps_eval(void *data)
 {
 	struct intel_gt *gt = data;
 
-	return HAS_RPS(gt->i915);
+	if (intel_guc_slpc_is_used(&gt->uc.guc))
+		return false;
+	else
+		return HAS_RPS(gt->i915);
 }
 
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 56dbba1ef668..01b75529311c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -837,6 +837,8 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 				   slpc_decode_min_freq(slpc));
 			drm_printf(p, "\twaitboosts: %u\n",
 				   slpc->num_boosts);
+			drm_printf(p, "\tBoosts outstanding: %u\n",
+				   atomic_read(&slpc->num_waiters));
 		}
 	}
 
-- 
2.38.1

