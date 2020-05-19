Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1148F1DA260
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 22:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C3D6E38A;
	Tue, 19 May 2020 20:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A236E38A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 20:17:11 +0000 (UTC)
IronPort-SDR: HQXXSWElucTfyFBhE2HDdzWmldICvHtmF2PJKne0Sph+/XkK1V/79l9QH5KkGYKdICyH6XUbUQ
 NsTzcQjiGU3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 13:17:10 -0700
IronPort-SDR: q/tu3ILSlP6TOCu4vIvcDaJI4aRPRlb2+rsDwjTxOSbgamHc9duz60kQ36fRl4B3hfwhYT9W/f
 xCTm6cLFXASg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="466265148"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 13:17:10 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 13:12:56 -0700
Message-Id: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
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

This is a permanent w/a for JSL/EHL.This is to be applied to the
PCH types on JSL/EHL ie JSP/MCC
Bspec: 52888

v2: Fixed the wrong usage of logical OR(ville)

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 4dc601dffc08..d60a66d8eb40 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2902,8 +2902,9 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
 
-	/* Wa_14010685332:icl */
-	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP) {
+	/* Wa_14010685332:icl,jsl,ehl */
+	if ((INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) &&
+	   (INTEL_PCH_TYPE(dev_priv) <= PCH_MCC)) {
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
 				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
