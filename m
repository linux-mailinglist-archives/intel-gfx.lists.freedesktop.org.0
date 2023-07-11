Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA2574FAA2
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 00:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB1C10E449;
	Tue, 11 Jul 2023 22:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20BAF10E449
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 22:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689113222; x=1720649222;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ffKa50WXtjxxu/pM5iIbvMaUukrVo1T7rOkDM8txNXs=;
 b=BTjbGOmYwCWWd4dbaXeJWA1M7sV35YTQGm1uo8bL23IaX5Wm82DhLOuX
 O6C4V3NOlwu80GHrQSYSCNrpQUclUMyO5tzoKKzkPfXjPfvKyuX1CSd64
 XMaBTdLa/ZBd1hdTDylnVQ6Z/KJIon/TWkVUObHEp2vrj+Vc7Dg1Z5+PD
 d3KGugUDIbTGpr8NVa0FtrpiBjEHX5TXkeDOrca5m+Qele5XGNn2gngz1
 OS4G9nAdSTE+8GDY0Ysttm1XIzNCATnBPGHDwc8uwa6CdAik/q+fMG00F
 Apb3d5nKyh03Nq4HvH5SQGLdvHfbDXeVQqVY//Xv138T0SZaauCbRvJ7M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="368283952"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="368283952"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:06:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="967982044"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="967982044"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:06:56 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jul 2023 00:06:47 +0200
Message-Id: <20230711220648.17108-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use smem on MTL due to a HW bug in MTL that prevents
reading from stolen memory using LMEM BAR.

Cc: Oak Zeng <oak.zeng@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 33a61046ba58..9f64d61dd5fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	obj = i915_gem_object_create_lmem(i915, size,
 					  I915_BO_ALLOC_VOLATILE |
 					  I915_BO_ALLOC_GPU_ONLY);
-	if (IS_ERR(obj))
+	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
 		obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
-- 
2.39.0

