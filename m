Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8B91DC72B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 08:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B016E904;
	Thu, 21 May 2020 06:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911C16E112
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 06:49:01 +0000 (UTC)
IronPort-SDR: r83KXIQEG1krNJyJJJDmN+e2SeCccayIL57QYwrYB9gFMWi/twblwk3nCi2jFNr8kx3gELJyHh
 Xglo6iICaRVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 23:49:01 -0700
IronPort-SDR: IJR5ZaBQS9XvDvYhBCFzsw/iXMfCW1dAHlRvxxWr/Tq9S+7ZAkwsomhDcKnGTJlsrCEg275AuP
 LDUYJkem8bMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,416,1583222400"; d="scan'208";a="440332563"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga005.jf.intel.com with ESMTP; 20 May 2020 23:49:00 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 23:44:48 -0700
Message-Id: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/ehl: Extend w/a 14010685332 to
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
v3: Removed extra braces, changed the check(jose)

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 4dc601dffc08..bc82d0d8ad5b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2902,8 +2902,10 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
 
-	/* Wa_14010685332:icl */
-	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP) {
+	/* Wa_14010685332:icl,jsl,ehl */
+	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP ||
+	    INTEL_PCH_TYPE(dev_priv) == PCH_JSP ||
+	    INTEL_PCH_TYPE(dev_priv) == PCH_MCC) {
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
 				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
