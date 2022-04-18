Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 245D4504F16
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 12:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD4310F587;
	Mon, 18 Apr 2022 10:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E97610F585
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 10:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650279281; x=1681815281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kY49xia2wvZJZrDoCe0k4OMg4tqLHRChDHiaLqMoKG0=;
 b=gFWMinJ3k/Zair4QepkR+4ZXCrtVW/nzMQCluV4IvcHLh/FdLFqEhGpt
 Hxr8YdS7xsDB62RuURqMjxphKTMFRnmPEwbzOU7X+AummJeDNCsNQMSPH
 KF7lkwLOwYmPvC5SNmXYxYCgEab0Huspltxq6dsewgT+fyNvkKIrXjLKh
 /4wYMjscC+BY0ypiLaZs95CdyIdacNw/fA5Et0Q+oWIukT7wsoP4T5vjP
 PjFgvLepk91w38e8olnKv0GnjaIj1LbIJKxSiyUg7li5AC4YlHwDBDVn4
 X1zIEEp4gA+lusiTGkXUDhIcZ1cmw3wODcMs8+mSiZZYicJ9Ub4uNIktw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="250798283"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="250798283"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="665139446"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:38 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 16:24:08 +0530
Message-Id: <20220418105408.13444-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220418105408.13444-1-anshuman.gupta@intel.com>
References: <20220418105408.13444-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/6] drm/i915/dgfx: Get VBT from rvda
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
v4:
- Added IS_ERR(rvda)in free_rvda(). [Jani]
- Fix free_{opregion, rvda} abstraction level. [Jani]

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
index 18770e564044..0548fea0f2bc 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1620,11 +1620,28 @@ static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
 
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
 
 static void intel_dgfx_free_rvda(struct drm_i915_private *i915, void *rvda)
 {
+	if (IS_ERR(rvda))
+		return;
+
+	kfree(rvda);
 }
 
 static void intel_dgfx_free_opregion(struct drm_i915_private *i915, void *opreg)
-- 
2.26.2

