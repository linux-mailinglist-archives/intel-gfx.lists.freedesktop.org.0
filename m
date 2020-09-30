Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E57B27E17C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0289D6E514;
	Wed, 30 Sep 2020 06:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412DA6E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:51 +0000 (UTC)
IronPort-SDR: kfsn/n7Bt4Zh2Vx1uHDyoxwGzl72fRpyad7yAzvIC9XByUSRXQlhH90sudNHnJtUOHWVU+kiQO
 FBvC6EbxPMgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387768"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387768"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:51 -0700
IronPort-SDR: BLFXQvln/ctIu9KUpmd/sxuFKaqtOFYZVHCFVSeZvWH2MyLr3um63BAFhIkxoAvG3tavn4mzJC
 7ycoaZbdGprA==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487739"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:25 -0700
Message-Id: <20200930064234.85769-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 15/24] drm/i915/dg1: Update comp master/slave
 relationships for PHYs
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

As with RKL, DG1's PHY C acts as a comp master for PHY D.

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 07c9fa2fb835..932265f1ac90 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -243,14 +243,14 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 	 *
 	 * ICL,TGL:
 	 *   A(master) -> B(slave), C(slave)
-	 * RKL:
+	 * RKL,DG1:
 	 *   A(master) -> B(slave)
 	 *   C(master) -> D(slave)
 	 *
 	 * We must set the IREFGEN bit for any PHY acting as a master
 	 * to another PHY.
 	 */
-	if (IS_ROCKETLAKE(dev_priv) && phy == PHY_C)
+	if ((IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) && phy == PHY_C)
 		return true;
 
 	return phy == PHY_A;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
