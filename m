Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B965ABB32
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A845E10E945;
	Fri,  2 Sep 2022 23:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C4A10E93D;
 Fri,  2 Sep 2022 23:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662161593; x=1693697593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OQxjNsVh+dPYkcIueVTx2hi/zWD88addn/6FfSaKlSY=;
 b=l6p/EV4shbonPX15L0y5lfwuZBVJ2IK87MG70aSgvRXmuotXoHivzGw+
 qNHoawOw1T/Sl3g6P2emmwqm6KfkES/QFzuxhzCH4kCYw3eLNygU8x/rI
 qtkuvtN2shv1+rLLi0b9WJ6BQV2WCIqbEYClqmcQMyFJxfL4FNEgmX172
 Kku8XKigINN6jKfyc4j9pLMBEMHcy1EUpx8W8UUWUlAQP9+6f1TEMk9iT
 GDy0oHxeNnpnQj9hwwFXv/SzGgk2dPVYjp4gM8DJ3+KOsTbJE7UaIe7vL
 E36h1daFkSL0hrYv2IqfOz3h89qwN9ycIszlDK5XBh/Y5eVndut167oIi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="360064661"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="360064661"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:33:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="941464189"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:33:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:32:48 -0700
Message-Id: <20220902233257.3088492-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220902233257.3088492-1-matthew.d.roper@intel.com>
References: <20220902233257.3088492-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/12] drm/i915: Use managed allocations for
 extra uncore objects
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're slowly transitioning the init-time kzalloc's of the driver over to
DRM-managed allocations; let's make sure the uncore objects allocated
for non-root GTs are thus allocated.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a82b5e2e0d83..cf7aab7adb30 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -783,7 +783,7 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 	if (!gt_is_root(gt)) {
 		struct intel_uncore *uncore;
 
-		uncore = kzalloc(sizeof(*uncore), GFP_KERNEL);
+		uncore = drmm_kzalloc(&gt->i915->drm, sizeof(*uncore), GFP_KERNEL);
 		if (!uncore)
 			return -ENOMEM;
 
@@ -808,10 +808,8 @@ intel_gt_tile_cleanup(struct intel_gt *gt)
 {
 	intel_uncore_cleanup_mmio(gt->uncore);
 
-	if (!gt_is_root(gt)) {
-		kfree(gt->uncore);
+	if (!gt_is_root(gt))
 		kfree(gt);
-	}
 }
 
 int intel_gt_probe_all(struct drm_i915_private *i915)
-- 
2.37.2

