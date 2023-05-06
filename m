Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F269A6F9287
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 16:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7F910E013;
	Sat,  6 May 2023 14:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EB5C10E013
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 May 2023 14:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683384141; x=1714920141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=brMMUEQ/UYUVB8Up51VOjyCzHFMawoBk7Lss0vF5S7s=;
 b=BcacRY07YWO6XJRsFhhG7DNI0Q9zEJqZmLRaIRR81QTU/wHhQN648WhR
 ahqjvD2KN1NaHsxpNo5hCzKnIZ1j8CCbc2MRHsabkbjyq6mgsdsi9qQVW
 6rShTPqlf8Y6pEyCT5jkViA/WAOW+kk1sE2Secf4TmT/Iqhl9RcljzQTA
 S6BW1YsgnG+UbIBa6PtAKyAE4BY/QJZlvJzmg4MTN1wWAP+8sIEgyIFDL
 P1ncLBw5nEUegHaxvTr7JVzJr3y+QlSMEKqvXLDQYthSaAO0w6qwHPlBu
 D7D7uVp1XrN1RvHISwdki5IpKEqggAgN99+yMuhr73zX3PsN/s8N/vSL7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10702"; a="377469331"
X-IronPort-AV: E=Sophos;i="5.99,255,1677571200"; d="scan'208";a="377469331"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2023 07:42:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10702"; a="692059026"
X-IronPort-AV: E=Sophos;i="5.99,255,1677571200"; d="scan'208";a="692059026"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 06 May 2023 07:42:18 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  6 May 2023 17:42:17 +0300
Message-Id: <20230506144217.26075-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix wrong condition in bxt_set_cdclk
 for DG2
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

By my own mistake, after adding !IS_DG2 into wrong branch,
bxt_set_cdclk started to execute code intended for platforms
gen < 11, which is wrong.
Move IS_DG2 check to better place.

Fixes: ceb0cc3b4288 ("drm/i915: Communicate display power demands to pcode")
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a11092deaba6..6bed75f1541a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1896,9 +1896,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	 * mailbox communication, skip
 	 * this step.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
 		/* NOOP */;
-	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 					SKL_CDCLK_PREPARE_FOR_CHANGE,
 					SKL_CDCLK_READY_FOR_CHANGE,
-- 
2.37.3

