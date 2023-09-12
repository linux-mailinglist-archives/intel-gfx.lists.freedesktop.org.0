Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A879C4DF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F5010E3A3;
	Tue, 12 Sep 2023 04:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C1F10E33B;
 Tue, 12 Sep 2023 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494113; x=1726030113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+VG9ESQlNzM9HtZpmCeE/wWAypMARShXKl9W9qAoV3A=;
 b=HXtigwbYcrHqhDsMMhFnnGC6FwmpdSt1RR8SRjRu4PtCbEYrVye8BzR/
 dE7fiOvhVOKdjJUn8s2ORuRkMKa6I24OgdwkDGN2SRjaxMPst67AiUzeB
 DSPnZoU/8rfRckVLnILNuzAE3WO7bGMYyv/TXRTVAvAY5YJeVf8RE+AMJ
 pInyRJMsLDfada+yVe6sgkAyzCEBxq9E1SPmnGoR/e3/7WVE/E39kpf9g
 9tdERe/NICAMxOedhU+ec5tuY5y//ESzKfFZaTP8xvcZKDf/abCepxcTX
 QZBGc+ho6yUHbs/c7riIfbyk1Yxo/W+jttlsvjjlY2yLGBeGf05qrmONT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182314"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182314"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419926"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419926"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:14 -0700
Message-Id: <20230912044837.1672060-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/29] drm/i915/xe2lpd: Add fake PCH
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

Xe2_LPD doesn't have south display engine on a PCH, it's actually
on the SoC die (while north display engine is on compute die). As
such it makes no sense to go through the PCI devices looking for
an ISA bridge. The approach used by BXT/GLK can't be used here since
leaving it with PCH_NONE would mean taking the wrong code paths.

For the places we currently use a PCH check, it's enough for now to just
check the north display version. Use that to define a fake PCH to be
used across the driver. Eventually these PCH checks may need to be
re-designed as this is already the third platform using/needing a
fake PCH.

v2: Match on display IP version rather than on platform (Matt Roper)
v3: Extend and clarify commit message (Matt Roper / Ville)

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 5 ++++-
 drivers/gpu/drm/i915/soc/intel_pch.h | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index dfffdfa50b97..240beafb38ed 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -222,7 +222,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * South display engine on the same PCI device: just assign the fake
 	 * PCH.
 	 */
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		dev_priv->pch_type = PCH_LNL;
+		return;
+	} else if (IS_DG2(dev_priv)) {
 		dev_priv->pch_type = PCH_DG2;
 		return;
 	} else if (IS_DG1(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
index 32aff5a70d04..1b03ea60a7a8 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.h
+++ b/drivers/gpu/drm/i915/soc/intel_pch.h
@@ -30,6 +30,7 @@ enum intel_pch {
 	/* Fake PCHs, functionality handled on the same PCI dev */
 	PCH_DG1 = 1024,
 	PCH_DG2,
+	PCH_LNL,
 };
 
 #define INTEL_PCH_DEVICE_ID_MASK		0xff80
@@ -66,6 +67,7 @@ enum intel_pch {
 
 #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
 #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
+#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
 #define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
 #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
-- 
2.40.1

