Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5615A5F7F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 11:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076B110E027;
	Tue, 30 Aug 2022 09:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2812B10E027
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 09:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661852066; x=1693388066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IGrPmKYwb6iykR7hgUurCWympqbgPeVEKPmywcUZRhs=;
 b=Gi+aqR7nzD3+TC6LRr/0rgbRMGQxtrf0rso1wxQ/mAuSLVKS7W6trYFn
 9f659g+AcK2BzrhxeDNmo09VihqwDTnmYb9JcWVgmDGDYxU8c3ucguio2
 k0Url0vSP4xSXegbfeO4KeyAVwdCmDhUtx2ONW6nMPXsseKDJGCkgmBra
 xO+noxCLt7BykEu13hQCf/05E1O58U7sQ5ln+UHPF3KXh42pwWb82XT1O
 DMJfWE9EQCmFn58QaK14BpZHl6lqLY9AkZX6e2CYAEgr8+SpCIj3xF6cJ
 4RnWJrk7SxLHmhMhw5oeEU84fVC8XQ39jUoyBZeFoiJb0e8qRhzGdP0ee Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="296409243"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="296409243"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="939953347"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 12:34:08 +0300
Message-Id: <20220830093411.1511040-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220830093411.1511040-1-jani.nikula@intel.com>
References: <20220830093411.1511040-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915/dpll: replace BUG_ON() with
 drm_WARN_ON()
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

Avoid BUG_ON(). Actually check the dpll count and bail out loudly with
drm_WARN_ON() from the loop before overflowing
i915->dpll.shared_dplls[].

v2: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bbe142056c7c..ed267c918009 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4199,6 +4199,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	dpll_info = dpll_mgr->dpll_info;
 
 	for (i = 0; dpll_info[i].name; i++) {
+		if (drm_WARN_ON(&dev_priv->drm,
+				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
+			break;
+
 		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
 		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
 	}
@@ -4206,8 +4210,6 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	dev_priv->display.dpll.mgr = dpll_mgr;
 	dev_priv->display.dpll.num_shared_dpll = i;
 	mutex_init(&dev_priv->display.dpll.lock);
-
-	BUG_ON(dev_priv->display.dpll.num_shared_dpll > I915_NUM_PLLS);
 }
 
 /**
-- 
2.34.1

