Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B9F7A2520
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804E188D18;
	Fri, 15 Sep 2023 17:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3812088D18;
 Fri, 15 Sep 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800011; x=1726336011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+VG9ESQlNzM9HtZpmCeE/wWAypMARShXKl9W9qAoV3A=;
 b=YFLtifgf9ipwDp1508Z4bXt2yD5Mi6vKL8vTMu2bj7fS9m14FGI6bon/
 FkjtA4eeTfhA0DWOFBWYDlfeCGIoGvqCpz9K/eXr1Mugb4ZES4xuA69dn
 8UrWm7DZtU77Uc4wPvFlZnNidXEluiW7AqomZCWl2fexfp0tlAn2jd1Os
 2D4jbT53861PjaAV8eL+bZjZpvL0hrO42zvgp1Lj2mY0W5GVrKMxPppRf
 Ittxle35WExVRqL/iM4tN5COHjrzlHbAI33A/kpjd53DVeHyYMkW0XHcN
 Ftlwn2A82CpYb9WVx2iX4c655rMh2VhCGU6P70AKaGO7uG3L67BG46h5t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779265"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779265"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818246"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818246"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:27 -0700
Message-Id: <20230915174651.1928176-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/30] drm/i915/xe2lpd: Add fake PCH
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
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
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

