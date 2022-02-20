Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A606D4BCFEE
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Feb 2022 17:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D3310E28F;
	Sun, 20 Feb 2022 16:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D323510E28F
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Feb 2022 16:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645375083; x=1676911083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=REj5crru6ygWhjmpE5TYKRMGIFdFRTe/zHduLeVGBY0=;
 b=Q8ciUBjBL7BJe0W7/N/F1fESQGSRKRCmJ/n7r0oZpTgR3n8cS3gJIV/y
 pN1LljBkWQnwPPPMDfM25YrPDTBpCTGu5U5Si6gaoPBo6mIriaYxoN5vr
 W47qu3yS6bRpEQd3OBZZsEy75gHkEIfcdr5e2kIApE3DkMz/Lov5zr2hL
 SnjVRP2IF6o8GFNhgPfSZtlhchB+nHu+RReHUgDtYSl0ymohPTwPNPZCo
 YjgOpOoenvPTEu/cvOdTYMjwlngDpNyETcOr+kCKQJKSmwi8rXyYSVMDm
 8fi9icW9CsvMLNJ1olzjFNiKrz/SVGvFBJgrVTcx53fjY6FoBfzPQRRA5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314650652"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314650652"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:38:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="490199548"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:38:00 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Feb 2022 22:07:30 +0530
Message-Id: <20220220163730.5021-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220220163730.5021-1-anshuman.gupta@intel.com>
References: <20220220163730.5021-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/dgfx: Get VBT from rvda
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

Since OpRegion ver 2.1 MBOX3 RVDA field is Relative address of Raw
VBT data from OpRegion Base.
Populate the opreion->rvda accordingly.
As Intel DGFX cards supports OpRegion version 2.2 or greater,
RVDA as an absolute VBT physical address (Ver 2.0) doesn't applicable
to DGFX cards.

v2:
- Add kzalloc NULL check for opreg_rvda pointer.

v3:
- Added kmemdup() insead of kzalloc() + memcpy() in
  intel_dgfx_alloc_rvda(), and added necessary
  credit to Manasi.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index ea201c602755..5de1bc3e6e69 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1621,11 +1621,28 @@ static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
 
 static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
 {
-	return ERR_PTR(-EOPNOTSUPP);
+	struct intel_opregion *opregion = &i915->opregion;
+	void *opreg_rvda;
+
+	if (!opregion->dgfx_oprom_opreg)
+		return ERR_PTR(-EINVAL);
+
+	opreg_rvda = kmemdup(opregion->dgfx_oprom_opreg + opregion->asle->rvda,
+			     opregion->asle->rvds, GFP_KERNEL);
+
+	/* We got RVDA, OPROM opregion + vbt image not nedded anymore */
+	kfree(opregion->dgfx_oprom_opreg);
+	opregion->dgfx_oprom_opreg = NULL;
+
+	return opreg_rvda ?: ERR_PTR(-ENOMEM);
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

