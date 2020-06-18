Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFA91FDA6F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EB46E8D6;
	Thu, 18 Jun 2020 00:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25F56E209
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:53 +0000 (UTC)
IronPort-SDR: oHJKdRn16AxLCx0M7BZxq/QWCc/1xi2P3fyt+q+4eJXe5UUV5lIvvrktM7TQhvjLzvNHw5ghqP
 WfeuzHY4jD2Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:53 -0700
IronPort-SDR: 1DFPoo31NWfz+Egm3YjObmhuRFLM6sLRESE8mIwmiAI3xCXH4/0ia/LaX34YdnAKuZ77k5lKrE
 rgSdqzFqbHyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011905"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:33 -0700
Message-Id: <20200618004240.16263-26-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 25/32] drm/i915/dg1: Update comp master/slave
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
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 336d18f3d1c52..ba6a21c5ef15d 100644
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
