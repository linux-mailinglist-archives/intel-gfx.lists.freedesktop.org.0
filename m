Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC462CF96
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 430D210E50D;
	Thu, 17 Nov 2022 00:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8046F10E509
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668644890; x=1700180890;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=66746lkdTlKIVsnhTdEaXzkBVgYPhaxVi01xEEKBH44=;
 b=UPGoXf7CGik8V+7tvMeQZGSp0eqXgCtt/3KXyiffPLQGJQXvGjO/cOBE
 KAzI+cwTPEa9i1LNRTzJLRbrWGP7DDKKGNlVKeN4M0U2oWBnQdn8J7+H4
 VUVcDX90Vza6QqAzzW1GAdvBhiq+reEVVnloT2Iva9z7i98ZtlBoxuNs8
 fCsE00k3SW6+cVgUDNFmiOzgee8kcMgsoOrRWNCBJnUTw2RGEzZp5YYA6
 ExRU+jN/uLsoHQnLD0+NS2T96W7ac6Mua570sa8HQyRzN3L9OUPxYVg7c
 Z2MVcPWQqoJ4dqLocitBl8XO++v0PfBCXtkJlauC7mAxtvRoMuLV0TiV2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312722096"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312722096"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:27:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="781985086"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="781985086"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2022 16:27:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 16:30:17 -0800
Message-Id: <20221117003018.1433115-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/6] drm/i915/pxp: Make intel_pxp_start
 implicitly sort PXP-owning-GT
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

Make intel_pxp_is_start implicitly find the PXP-owning-GT.
Callers of this function shall now pass in i915 since PXP
is a global GPU feature. Make intel_pxp_start implicitly
find the right gt to start PXP arb session so
it's transparent to the callers.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c        | 9 ++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h        | 2 +-
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 165be45a3c13..15c3d435093a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -272,7 +272,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 		if (!intel_pxp_is_active(i915))
-			ret = intel_pxp_start(&to_gt(i915)->pxp);
+			ret = intel_pxp_start(i915);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 6a78b6ef0235..43f3790e1520 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -246,10 +246,17 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
  */
-int intel_pxp_start(struct intel_pxp *pxp)
+int intel_pxp_start(struct drm_i915_private *i915)
 {
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
 	int ret = 0;
 
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
 	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index c798c3bde957..7b2b93a2ba94 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -32,7 +32,7 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
-int intel_pxp_start(struct intel_pxp *pxp);
+int intel_pxp_start(struct drm_i915_private *i915);
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
-- 
2.34.1

