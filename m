Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2021B4B6DBF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B3910E4EE;
	Tue, 15 Feb 2022 13:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D62210E4E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644932273; x=1676468273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ItFXZGOgggAMQPxDBHLlMKJHX5P0ggmAQQUiJKxtPSg=;
 b=JqSw52QLfLxkAzljSwVBlMR4d6+F+0fxr4ciBuSCBA+Vpr3f3wJWvxBe
 hHebsZq9e11bYAaxNgG1MmJZwjZ1+dKKRHc9IGFGdXYYXB2lEcyfoSTuU
 GnFgj/h/D+QhBDvN7U/z6zxQRQBvDrAFQAhce5CaH2GVwHnkJBp8H+usL
 AV6pygoQnh4NgLlgY/cEYxVCrnKYOQFnyedyz6kGKC44Zh5A8TS9BZcgw
 3m0fUAwXCxfD96+ZUgxLbNbomRBZmJ2QY8888DjivW+/MDjUlcwqWEllk
 2DcWWoZXkgaB2tSV2Dl2mY0iQirXzU0bIQy+BVQrMT7Fz1SXKBdxTWjSo g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313625935"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="313625935"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="603828876"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:50 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 19:07:27 +0530
Message-Id: <20220215133727.13450-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220215133727.13450-1-anshuman.gupta@intel.com>
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/dgfx: Get VBT from rvda
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

Since OpRegion ver 2.1 MBOX3 RVDA field is Relative address of Raw
VBT data from OpRegion Base.
Populate the opreion->rvda accordingly.
As Intel DGFX cards supports OpRegion version 2.2 or greater,
RVDA as an absolute VBT physical address (Ver 2.0) doesn't applicable
to DGFX cards.

v2:
- Add kzalloc NULL check for opreg_rvda pointer.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 8af3a92582cb..9907dae8f3cd 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1625,11 +1625,31 @@ static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
 
 static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
 {
-	return ERR_PTR(-EOPNOTSUPP);
+	struct intel_opregion *opregion = &i915->opregion;
+	void *opreg_rvda;
+
+	if (!opregion->dgfx_oprom_opreg)
+		return ERR_PTR(-EINVAL);
+
+	opreg_rvda = kzalloc(opregion->asle->rvds, GFP_KERNEL);
+	if (!opreg_rvda)
+		return ERR_PTR(-ENOMEM);
+
+	memcpy(opreg_rvda, opregion->dgfx_oprom_opreg + opregion->asle->rvda, opregion->asle->rvds);
+
+	/* We got RVDA, OPROM opregion + vbt image not nedded anymore */
+	kfree(opregion->dgfx_oprom_opreg);
+	opregion->dgfx_oprom_opreg = NULL;
+
+	return opreg_rvda;
 }
 
 static void intel_dgfx_free_rvda(struct drm_i915_private *i915)
 {
+	struct intel_opregion *opregion = &i915->opregion;
+
+	kfree(opregion->rvda);
+	opregion->rvda = NULL;
 }
 
 static void intel_dgfx_free_opregion(struct drm_i915_private *i915)
-- 
2.26.2

