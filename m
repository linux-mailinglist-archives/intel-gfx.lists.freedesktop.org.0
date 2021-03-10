Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC18334B4D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F56E89E5B;
	Wed, 10 Mar 2021 22:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97A589E06
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:41 +0000 (UTC)
IronPort-SDR: YJDRkL/mrzso4e7f0iK8RE/x9kmp1G8zvDatbHYP6TkXAi66zXlKsgh8GH3CgGlskD4VH8ziRF
 j16X+L+7jJeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592051"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592051"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:41 -0800
IronPort-SDR: LvXjYKEzLm3ZMaoSthCSvE9BaQ35OfYEhNJP1Wk3njAkRu40VAuyxocfOXKCmjrn2rvtiBPSXn
 hr92ToplG18A==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852170"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:15 +0200
Message-Id: <20210310221736.2963264-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/23] drm/i915/selftest: Fix error handling in
 igt_vma_remapped_gtt()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An inner scope version of err shadows the variable in the outer scope,
and err doesn't get set after a failure, fix these.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_vma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 065a9d82ad5c..2c067343d65f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -890,7 +890,6 @@ static int igt_vma_remapped_gtt(void *arg)
 			struct i915_vma *vma;
 			u32 __iomem *map;
 			unsigned int x, y;
-			int err;
 
 			vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, PIN_MAPPABLE);
 			if (IS_ERR(vma)) {
@@ -956,6 +955,7 @@ static int igt_vma_remapped_gtt(void *arg)
 						       *t == I915_GGTT_VIEW_ROTATED ? "Rotated" : "Remapped",
 						       val, exp);
 						i915_vma_unpin_iomap(vma);
+						err = -EINVAL;
 						goto out;
 					}
 				}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
