Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BC8612FFC
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 06:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A66410E118;
	Mon, 31 Oct 2022 05:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D534610E118
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 05:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667195511; x=1698731511;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DsF4EiJMHk7FMEzjIbyKLMyRWgQo6+NdSxTqPlfs1mA=;
 b=f2k+GSrbiPdxb6vsQnMiHTQIItpzO39PZxi5pSRTY84VdXT2UyafLxsv
 lwQrfqOSGICAf1JLdBj3TEfRynATUIOee8v2SN6rqewHXUUvxObfl1xtb
 F4Yy/BvyGm1GV2TaISiNh3Y4ea6Fc0SKXcpTD5O0wVsswyZZgl9VfqaRG
 61oWJmmMLJuOBrgofly/DT6tw/ad+zSXVb4RERNEnbAl89vKzA4pvHCth
 dCkLnZPWyyU1PloULYIlWjzApHMLf5arNjF0D4pDqz0O8CQnRhS3f5vQf
 VLzElMbfSfQ6Pfc94K2DnhE8ohLftmE7txpcoGyZ4tq63JXxfjD7CNaNm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="370894986"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="370894986"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 22:51:50 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="635929930"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="635929930"
Received: from sannilnx.jer.intel.com ([10.12.26.175])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 22:51:47 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Mon, 31 Oct 2022 07:51:17 +0200
Message-Id: <20221031055117.1043830-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: José Roberto de Souza <jose.souza@intel.com>

For multi-tile setups the GSC operational only on the tile 0.
Skip GSC auxiliary device creation for all other tiles.

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 2e796ffad911..92ad8cd45ddb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -456,7 +456,10 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
 
 void intel_gt_driver_register(struct intel_gt *gt)
 {
-	intel_gsc_init(&gt->gsc, gt->i915);
+	if (gt->info.id == 0)
+		intel_gsc_init(&gt->gsc, gt->i915);
+	else
+		drm_dbg(&gt->i915->drm, "Not initializing gsc for remote tiles\n");
 
 	intel_rps_driver_register(&gt->rps);
 
@@ -787,7 +790,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 
 	intel_gt_sysfs_unregister(gt);
 	intel_rps_driver_unregister(&gt->rps);
-	intel_gsc_fini(&gt->gsc);
+	if (gt->info.id == 0)
+		intel_gsc_fini(&gt->gsc);
 
 	intel_pxp_fini(&gt->pxp);
 
-- 
2.34.1

