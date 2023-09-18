Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4B17A505E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DFD10E2A3;
	Mon, 18 Sep 2023 17:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524C710E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056631; x=1726592631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pzRDXgAPXw83opVIweFBKzHmQSTdBuVs/CoSJx21GBc=;
 b=d55Z6RgTNiIhJTebOOiFi4jy4C0Kq8mlVMn9XsZQjerZgTSOAtKu0zfh
 exNEx+lpBY1aIrQdL3VLQpbJQCkBAnTo60k1TTDLjg8pH3YZd5jW7NmMg
 R2AVUiO9bsMBa9jeuuQK6IzHz/Tj/tCkOO+ePJmhZrnLHTmZFB6NAly/F
 /v4DjxGdpI79IDXWceXu+W/AFYlMnOgrsi5hoAgUkzsWUlllNvpI3BvGY
 AveX4R/GLdWk6n1RLmHbCZzRFBKIKP+rIE6WWjbc9OqZZ+Ygqp5FaRtLG
 TTPY0M0uAxaTIky8vApXUd1mqngi+TuJTUKigCyxGDsb1zBLVGM7vZiTx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="378626130"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="378626130"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="816109802"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="816109802"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:13 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 19:02:54 +0200
Message-ID: <20230918170257.8586-5-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
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
index 0a58fe812ec5..9d44ca70fef5 100644
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

