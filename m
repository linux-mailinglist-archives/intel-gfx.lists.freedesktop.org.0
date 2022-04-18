Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88A3504F14
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 12:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0404F10F584;
	Mon, 18 Apr 2022 10:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF3010F582
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 10:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650279275; x=1681815275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AhQNzAHAU4k1A9ssUslI/owF+XXEY1s/dpk0Ht2gesU=;
 b=dZy+GYdXAxuNfKioPMxeY773FNjDRO1anL5tgbTurCb4DobPbKbjlrT7
 jhouiGNzhpFdYs9x8PaeGaRMcQYR0BzLzdV/4mBBrmiMNHmJBrqLwCH5m
 9GEl1G45GbM2EV2g7xvGA2OyIqmtPMjZ9DFJlAPRmRih7PStxLWRu078z
 mdMpk5aCGAI0csvY8o+iEybZXnDGz7lnZ7pTkWdrxfkQxgNrRu8aCkRnP
 JgP5zvgYIq+A2x+eh6bKdYvwJKz82NG9kvDy3TJjuoIEWYyaZ9f/kfIWD
 KZE4D4emUxpk6teTcIx3L0VqqedlUKoPpEAkj784puN4mdKcOpD4GKVz/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="250798271"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="250798271"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="665139389"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:32 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 16:24:06 +0530
Message-Id: <20220418105408.13444-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220418105408.13444-1-anshuman.gupta@intel.com>
References: <20220418105408.13444-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/6] drm/i915/opregion: Cond dgfx opregion
 func registration
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DGFX ASLS and OPROM OpRegion are only supported on the GFX Cards,
which supports Display Engine. Register opregion function accordingly
using the HAS_DISPLAY(). And early return intel_opregion_setup()
if no opregion func to avoid NULL pointer oops.

v2:
- Change the commit log.
v3:
- Use nested condition for IS_DGFX() and HAS_DISPLAY(). [Jani]

Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 6bba0e2cff72..8e5960ec30de 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -894,6 +894,9 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	BUILD_BUG_ON(sizeof(struct opregion_asle) != 0x100);
 	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
 
+	if (!opregion->opregion_func)
+		return 0;
+
 	INIT_WORK(&opregion->asle_work, asle_work);
 
 	base = opregion->opregion_func->alloc_opregion(dev_priv);
@@ -1348,10 +1351,12 @@ int intel_opregion_init(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->opregion;
 
-	if (IS_DGFX(i915))
-		opregion->opregion_func = &dgfx_opregion_func;
-	else
+	if (IS_DGFX(i915)) {
+		if (HAS_DISPLAY(i915))
+			opregion->opregion_func = &dgfx_opregion_func;
+	} else {
 		opregion->opregion_func = &igfx_opregion_func;
+	}
 
 	return intel_opregion_setup(i915);
 }
-- 
2.26.2

