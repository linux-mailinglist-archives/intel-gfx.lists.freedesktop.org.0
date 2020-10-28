Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D47D29CCC4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 01:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18A96E423;
	Wed, 28 Oct 2020 00:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31506E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 00:06:16 +0000 (UTC)
IronPort-SDR: JQyj4gzI58RwEv3MafoFbwMvJtZ5qvTQWNGZjL7zqzFpWYMhGfyGdceywQuAolMGyW3zBE1NwP
 iHW6uiigJ5xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="185933151"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="185933151"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 17:06:15 -0700
IronPort-SDR: 0HEC7GRCt2Mz0V9oKn5alnWq0Y6Oqe+1f62URavgABDwvk0j2vC/lWaPcQemAK9Y8u5BmcyUiu
 CBO2Yxg0KU8A==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="526132242"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 17:06:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 17:06:10 -0700
Message-Id: <20201028000610.932524-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Fix unbalanced braces
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

Missing braces after rebase and surprisingly not caught by checkpatch.

Fixes: 229f31e2d370 ("drm/i915/dg1: add hpd interrupt handling")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index dc33c96d741d..9087fff662c3 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3666,9 +3666,9 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
 	I915_WRITE(SDEIMR, ~mask);
 
-	if (HAS_PCH_DG1(dev_priv))
+	if (HAS_PCH_DG1(dev_priv)) {
 		icp_ddi_hpd_detection_setup(dev_priv, DG1_DDI_HPD_ENABLE_MASK);
-	else if (HAS_PCH_TGP(dev_priv)) {
+	} else if (HAS_PCH_TGP(dev_priv)) {
 		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
 		icp_tc_hpd_detection_setup(dev_priv, TGP_TC_HPD_ENABLE_MASK);
 	} else if (HAS_PCH_JSP(dev_priv)) {
-- 
2.29.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
