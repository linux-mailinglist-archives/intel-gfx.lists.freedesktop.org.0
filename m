Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4265C7A18F3
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 10:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9512B10E5CE;
	Fri, 15 Sep 2023 08:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812EA10E5D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 08:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694766877; x=1726302877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pzLxU9rtyEQeCDABtAh3GinjcD9MaGJ2j3xjv4KHD48=;
 b=n/uYQk9w7iwB7Sk2ZMbB2WW5dLqpwNUW4wGSEeDYpSul+3qJJ8665eEy
 D8ZGrERVdD0ofTAYMqkYs0n41+f3ni/P07b6tcBcRC0V6Ns+wZAGY1zA9
 6CWXcsx334YBnvwIaEvEYF76KhGOE2bfa3kF+P3gynfbyjvNJ5w9ATDD0
 ZJ9J3j+rLKFm8u/FYJhJhU0ZeJzyF1kkwS2yYuCIBBw8cfXN4FwYDvZNK
 Qpu/zxIi8o7K+kUB945wAK85Btm/73DAMunJRYBfMhVsgqJjFby43uYxI
 q7ExxrvOhj4wqo9AZ4SJ67lHUuIj8npu8anzNN9aQpmtHqYTOoKtc/HNa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="381925580"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="381925580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694647752"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="694647752"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:35 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:34:09 +0200
Message-ID: <20230915083412.4572-5-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230915083412.4572-1-nirmoy.das@intel.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
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
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c       | 4 ++++
 drivers/gpu/drm/i915/gt/intel_gtt.h       | 2 ++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 18ae56ea012a..25c8afca440a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1478,7 +1478,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	 * engines as well but BCS should be less busy engine so pick that for
 	 * GGTT updates.
 	 */
-	if (engine->id == BCS0) {
+	if (i915_ggtt_require_binder(engine->i915) && engine->id == BCS0) {
 		bce = create_ggtt_bind_context(engine);
 		if (IS_ERR(bce)) {
 			intel_engine_destroy_pinned_context(ce);
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

