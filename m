Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EC42116EE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5366E4FE;
	Wed,  1 Jul 2020 23:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FABE6EA13
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:52 +0000 (UTC)
IronPort-SDR: MtII/VCbW5HMFpv59fFU/iaAYfTA7gE4bDT44E9daajOthXho1uz/o6tnuPeNpkHGiwYoK6H9k
 SVBBlLrf7Wqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164785969"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="164785969"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:51 -0700
IronPort-SDR: 3Oo6KHtqJD650IEGD8PE/GIN0VcLp9BHRUUVwCDLeX2I8F+806tgAeXijy+ewbdhVJzFdOUVEV
 3XozMNK9nZQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276403"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:30 -0700
Message-Id: <20200701235339.32608-20-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 19/28] drm/i915/dg1: Don't program PHY_MISC
 for PHY-C and PHY-D
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

The only bit we use in PHY_MISC is DE_IO_COMP_PWR_DOWN, and the bspec
details for that bit tell us that it need only be set for PHY-A and
PHY-B.  It also turns out that there isn't even an instance of the
PHY_MISC register for PHY-D on this platform.  Let's extend the EHL/RKL
logic that conditionally skips PHY_MISC usage to DG1 as well.

Bspec: 50107
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 77b04bb3ec62..8604d4392e6a 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -189,7 +189,8 @@ static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy)
 	 * other combo PHY's.
 	 */
 	if (IS_ELKHARTLAKE(i915) ||
-	    IS_ROCKETLAKE(i915))
+	    IS_ROCKETLAKE(i915) ||
+	    IS_DG1(i915))
 		return phy < PHY_C;
 
 	return true;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
