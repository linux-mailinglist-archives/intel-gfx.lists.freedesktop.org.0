Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6859C7AE831
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 542B810E384;
	Tue, 26 Sep 2023 08:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A06A10E37B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717482; x=1727253482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f7RTHiHWdv+3BKPhcI5v+XT852ZiSlIBVslSx6GIj1E=;
 b=lE3Ta8U67RoU4q2+sY2+z1vT/TdqzsNSbRr7jMoYsxLQAx1OohYLzYLY
 Jt/bJHnJulAtC5jZB63fk02XMhIDoNPCRzPY5davr1Y+2HxzhP0WkzQKB
 24fpEHv8g3OTNxc4ldy+9ppJZ/MqNyXAyNQwKbndp87aL07GrehS8D/J3
 eHZ3CkTGpg5wHN33l1hq/cNm33XnC8B+S9tJGRNFvd4JNe3YSSsjL5t5L
 lgotSPyJgelnXQp2ZYS4JHYZO7CTwBpGpMXuqPEMEhRCwWlzk5VeqWKYu
 ZzPCYTrvMCcgcDk6b2L8g8W3BntFOzpN6q7+sFuoTG+OwtyAzXh+4erYB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381419225"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="381419225"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="1079623529"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="1079623529"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:59 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 10:37:39 +0200
Message-ID: <20230926083742.14740-5-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
References: <20230926083742.14740-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Parameterize binder context
 creation
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add i915_ggtt_require_binder() to indicate that i915
needs to create binder context which will be used
by subsequent patch to enable i915_address_space vfuncs
that will use GPU commands to update GGTT.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c       | 4 ++++
 drivers/gpu/drm/i915/gt/intel_gtt.h       | 2 ++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 64f51defc2cb..b1a1d07e2e21 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1477,7 +1477,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	 * engines as well but BCS should be less busy engine so pick that for
 	 * GGTT updates.
 	 */
-	if (engine->id == BCS0) {
+	if (i915_ggtt_require_binder(engine->i915) && engine->id == BCS0) {
 		bce = create_ggtt_bind_context(engine);
 		if (IS_ERR(bce)) {
 			ret = PTR_ERR(bce);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 13944a14ea2d..4c89eb8d9af7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -21,6 +21,10 @@
 #include "intel_gt_regs.h"
 #include "intel_gtt.h"
 
+bool i915_ggtt_require_binder(struct drm_i915_private *i915)
+{
+	return false;
+}
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 41e530d0a4e9..b471edac2699 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -691,4 +691,6 @@ static inline struct sgt_dma {
 	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
 }
 
+bool i915_ggtt_require_binder(struct drm_i915_private *i915);
+
 #endif
-- 
2.41.0

