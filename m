Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E0F4D6944
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 21:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6280C10E0E7;
	Fri, 11 Mar 2022 20:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D7510E0E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 20:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647028832; x=1678564832;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FrqI4nTy990ei/8tqyEdxsofcgHPgrvQAa0wA1eqnEk=;
 b=DnMl9KoTHOP3US6YVs6CwKvohItSGXmAhhGGUeDSzUcwjZM83gAm7bpc
 e23HKNJ9aRLFSHvafVUxgFFxs2ffJvsJ5Ty4x8WXFHWAJukU+GaMQ+P6U
 2228QIk0DeBFQ2FSqYNj/FXSXnCbquOlgt9B8mk7w2zqxq+4ZzhFHmiaA
 8kR2zCC5akXRd41JZ5tW4BVl6Tv8QqbfGmDw9gpbQs4tbp3Oj75coE9OE
 tzv3PrVgKMSXjWM5UoNY4zeC1yAUWQycho4e2N1gvlW5wbC4ZwDN80Uwy
 xosU1Li9BRvvtFurfOkFJpVaYu6zmJmb+gau3YPhkO+IMVxM3s+UKvdUy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="253206328"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="253206328"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 12:00:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="597217475"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 12:00:32 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 12:00:27 -0800
Message-Id: <20220311200027.33701-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Drop redundant IS_VALLEYVIEW
 check in __get_rc6()
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

Because VLV_GT_RENDER_RC6 == GEN6_GT_GFX_RC6, the IS_VALLEYVIEW() check is
not needed. Neither is the check present in other code paths which call
intel_rc6_residency_ns() (in functions gen6_drpc(), rc6_residency() and
rc6_residency_ms_show()).

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index cfc21042499d..3e3b09588fd3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -148,10 +148,7 @@ static u64 __get_rc6(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 	u64 val;
 
-	val = intel_rc6_residency_ns(&gt->rc6,
-				     IS_VALLEYVIEW(i915) ?
-				     VLV_GT_RENDER_RC6 :
-				     GEN6_GT_GFX_RC6);
+	val = intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6);
 
 	if (HAS_RC6p(i915))
 		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6p);
-- 
2.34.1

