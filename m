Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C3F1D8CD1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 03:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91466E293;
	Tue, 19 May 2020 01:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19396E293
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 01:02:47 +0000 (UTC)
IronPort-SDR: nfPiz+dYqHy7of8yGuAYfrV/vTvf2FgoSUCzlr8SLpYdnkDxtpZyf/oFtVG1xT5YfDKpf07D6d
 1NXoSqL4Sixw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 18:02:47 -0700
IronPort-SDR: bPQ8RpD4vLDb/UmF0zzusA4Qo25qhq3ed10+smrgzMx830HiT4r8DVl/rKoaETo+J2xB9syMPv
 mixxD27IN1Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; d="scan'208";a="373566809"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by fmsmga001.fm.intel.com with ESMTP; 18 May 2020 18:02:47 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 17:58:32 -0700
Message-Id: <20200519005832.27748-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC
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

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 4dc601dffc08..1974369cebb8 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2902,8 +2902,8 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
 
-	/* Wa_14010685332:icl */
-	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP) {
+	/* Wa_14010685332:icl,jsl,ehl */
+	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP || PCH_JSP || PCH_MCC) {
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
 				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
