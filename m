Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D77167AB5B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 09:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ECB710E74F;
	Wed, 25 Jan 2023 08:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F392810E73B;
 Wed, 25 Jan 2023 08:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674634016; x=1706170016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vA9rM8tnefeGMgbrEaRzNawRYUX8aar4AwXZjWAWxsg=;
 b=FxkBRCKlxJqQWwxZT8D0lTjxakqA0WYcnijssIw0v3hk0GEsHJ7/+HDX
 udkZC0Gg/Pcl2PIIwWjNg4SFt9Fai2//XPQA+NkXljy85jnMgoPAz7JHQ
 nVxo5uHhs+NroXmB37r3BiaV4TJyWE6B3GNHnJZ2zvdnityf6wcbp7Okf
 k/QkC8f0TGFpzT3rzfWz2w6hLp4cSC4uQXJMUV+ooJMyBL45YCVIgic5G
 FU99+jRsuTuXTYpuchEVQ7FzPQM8iXEZ7l81CVU0i5WwFmFbCsPrw6KpL
 HpWwpibpUORnnk85MC0lWeurBL9veEDZSX3rGdt1BcDeM+RWcgk35JQDb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="310079377"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="310079377"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 00:06:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="991180694"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="991180694"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jan 2023 00:06:54 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 00:06:51 -0800
Message-Id: <20230125080651.100223-9-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230125080651.100223-1-alan.previn.teres.alexis@intel.com>
References: <20230125080651.100223-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 8/8] drm/i915/pxp: Enable PXP with MTL-GSC-CS
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable PXP with MTL-GSC-CS: add the has_pxp into device info
and increase the timeouts for new GSC-CS + firmware specs.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c              | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6b4a66734e09..8f7c751a2f64 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1149,6 +1149,7 @@ static const struct intel_device_info mtl_info = {
 	.has_guc_deprivilege = 1,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
+	.has_pxp = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index a4917d517e23..2fafd39cea47 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -44,7 +44,7 @@ static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_pla
 				      KCR_SIP(pxp->kcr_base),
 				      mask,
 				      in_play ? mask : 0,
-				      100);
+				      250);
 
 	intel_runtime_pm_put(uncore->rpm, wakeref);
 
-- 
2.39.0

