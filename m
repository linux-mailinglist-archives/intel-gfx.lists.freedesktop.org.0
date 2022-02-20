Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4103E4BCFEC
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Feb 2022 17:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E374110E27A;
	Sun, 20 Feb 2022 16:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE1610E267
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Feb 2022 16:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645375077; x=1676911077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6LkqrtOc8hqQG9QFDCt/UOAgZ0zXLGyIw7fCN3cF88w=;
 b=i7RfHqsxT+73kaDtLMnS6AJNwCK6laE6Uam8oFhc37XHyKED+2rsi7j8
 INo9TI8vrcmMPeBZpXrqImRjBfDv9ZzAag1twuD9QTFZvG4Hh2+sZ/ukv
 anHhUgvn6CmmRGCSORML8JooIhyvlC7nnwOsn6C/SKzeGfJIJuBBiynyU
 QLMa6Ab+98YV8Nd+0U4EgH6eh75sQweMBdBVofILzCXhsd3j9qZXQeAZv
 TbiTNOZCX93mh5x6sbYvheOPboLHlsRfcBe8HupfZJ7Bo+AASq0Zeyt7u
 UqgQYNszCYYjSSUiMRdEsOmOHXeRNnuHtlXVGX/hY30LCDaXOD9rCn17Q A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314650647"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314650647"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="490199537"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:55 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Feb 2022 22:07:28 +0530
Message-Id: <20220220163730.5021-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220220163730.5021-1-anshuman.gupta@intel.com>
References: <20220220163730.5021-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915/opregion: Cond dgfx opregion
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

Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index eca2d3a4f72b..562161a929d6 100644
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
@@ -1348,9 +1351,9 @@ int intel_opregion_init(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->opregion;
 
-	if (IS_DGFX(i915))
+	if (IS_DGFX(i915) && HAS_DISPLAY(i915))
 		opregion->opregion_func = &dgfx_opregion_func;
-	else
+	else if (!IS_DGFX(i915))
 		opregion->opregion_func = &igfx_opregion_func;
 
 	return intel_opregion_setup(i915);
-- 
2.26.2

