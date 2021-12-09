Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EC446EF4E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA8B10EB1D;
	Thu,  9 Dec 2021 16:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49DA10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 14:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639059500; x=1670595500;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6hrcccuoU2vKSKAg776SFKEJcdCVPWBY5nhuuJHafkg=;
 b=EWhqusNGCypYdyp9lveo1YTTQ4BcK6wt4bDGVP7GDWybPTsahRjvw1Nq
 bgKc+Y08wxgBCIZ2/zjYWi1LVII9UDq85dR/zxrnVhbVvk4DZuBtdDpPq
 ZXGXscve0leT7n0MJtLpE/GDMiZfg3e8XVaB0j99nVBmPz+dS+ftdbMeT
 1Egd0eAYsxlLjp7bg9RgT7P5K1jALm3u/m1JnYVT8edFNEFBJOaVQ7cU/
 Xn1jOpVpsDDGIcKJXOVYmrQqPODIHTok1rTrTUzdeZE9Ob//uaomLEdLR
 NvuDtxNP596J8WdQjhg7Nf7zYOK5lyadyJR0QeahywNCDWIFVeWUPqqBH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="298894817"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="298894817"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 06:18:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="601565824"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.167])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Dec 2021 06:18:18 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 16:18:17 +0200
Message-Id: <20211209141817.16038-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Use I915_BO_ALLOC_CONTIGUOUS flag
 for DPT
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

Do mapping using CONTIGUOUS flag - otherwise
i915_gem_object_is_contiguous warn is triggered.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 963ca7155b06..f66346dcf2d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -244,7 +244,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
 	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
 
 	if (HAS_LMEM(i915))
-		dpt_obj = i915_gem_object_create_lmem(i915, size, 0);
+		dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
 	else
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(dpt_obj))
-- 
2.24.1.485.gad05a3d8e5

