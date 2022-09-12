Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA09E5B5990
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA1FD10E3E4;
	Mon, 12 Sep 2022 11:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B0F10E3DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983143; x=1694519143;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J5ofhfZojjMlNq8hungrqo4vsFVnoLTfrW6RiLoIAQE=;
 b=DPxXq+JWFXJUSiMUSN3e2MpXmK3sMr1etBjgNlObYLmswW5wWC5imtq5
 vAXrnKI/PE2pmirZSVeIveHstCmg2+8/BIfT3NI2sznrMAZSxxPnvvyD0
 2p6+JWt5h+yGxpBuIWj3DlAbxTt8++faCNTNOi6uHF1Aa1DNkH1DfDtm9
 Ra3Z2JKNGsTbWTlZBgLoZAjPvcgdFuRPL8y83qu6t9Oebfxvm0dJVk81p
 gii5Xw3Q6ytvuR80Lej4Ah6FU9V2bDcrGMqbWizFSkOiT/3BsHTbbT6/G
 aMauEy9NrFEn1I1v7BVCZyLNOkM4BeTNItkjE+nkz9lLgGnrxfgMeqVXp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="299184217"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="299184217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646426295"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:45:16 +0300
Message-Id: <113a17cd18401b0e4c83396575b67aa6efb07346.1662983005.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662983005.git.jani.nikula@intel.com>
References: <cover.1662983005.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/ipc: use intel_uncore_rmw() to
 enable/disable
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't duplicate the rmw function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ab7fc41d325a..c70d811163f6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3121,19 +3121,11 @@ bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
 
 void skl_watermark_ipc_update(struct drm_i915_private *i915)
 {
-	u32 val;
-
 	if (!HAS_IPC(i915))
 		return;
 
-	val = intel_uncore_read(&i915->uncore, DISP_ARB_CTL2);
-
-	if (skl_watermark_ipc_enabled(i915))
-		val |= DISP_IPC_ENABLE;
-	else
-		val &= ~DISP_IPC_ENABLE;
-
-	intel_uncore_write(&i915->uncore, DISP_ARB_CTL2, val);
+	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL2, DISP_IPC_ENABLE,
+			 skl_watermark_ipc_enabled(i915) ? DISP_IPC_ENABLE : 0);
 }
 
 static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
-- 
2.34.1

