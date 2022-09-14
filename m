Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DCF5B8FB8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 22:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8B410EA05;
	Wed, 14 Sep 2022 20:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF8C10E9FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663188248; x=1694724248;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dInC9xiA/y4FKSYGl2EbjYL8MYd0vjVRMTfFJUnT0WE=;
 b=TcQsLGaAWqLwN33HhpyhFg4gw+5kn5ki1nD5qw5bGFtBA4sfun3FSOZT
 9yyGmg4hOSadys0xD3yL3Fr69vcaUlBEUn5BDJ76HvVP3USRm69py146w
 0Rulbz0GfS6pU+l+6Lx0fL4v9yjNxWRBKxGU4w63Oxb4cjjQQ37aN6frJ
 rWv3vPQRbwupwp7o9Q2EOvLcfoWhXtuCJhhK8UZZ9it2IZ2VG+Ma3QZvx
 9eH0xXeuVyp0bn+cefo5x2vdh5drSd2is+RsGXrsj5lpsQS4GHGCF4ha5
 KyuIbcXzIa3oLP7xaHlsZEPyN7OJK7Tr8Xx+0je7POhv3enIe4437LViK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299350196"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299350196"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:44:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="650211842"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:44:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 13:43:39 -0700
Message-Id: <20220914204339.4063942-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: Force compilation with
 intel-iommu for CI validation"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 9e54866e25e7919ab9704a7680bd8df0c9ee9cdd.

To be removed from topic/core-for-CI branch. If I got the location right
for the CI config
(https://gitlab.freedesktop.org/gfx-ci/i915-infra/-/blob/master/kconfig/debug),
it should be safe to remove this as it already has
CONFIG_INTEL_IOMMU_DEFAULT_ON=y. And if it's somewhere else and my
premise is false, we will know from the CI execution of this patch.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a2..93dfb7ed9705 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -21,14 +21,6 @@ config DRM_I915_DEBUG
 	depends on DRM_I915
 	depends on EXPERT # only for developers
 	depends on !COMPILE_TEST # never built by robots
-	select PCI_MSI # ... for iommu enabled by default
-	select IOMMU_API
-	select IOMMU_IOVA
-	select IOMMU_SUPPORT
-	select NEED_DMA_MAP_STATE
-	select DMAR_TABLE
-	select INTEL_IOMMU
-	select INTEL_IOMMU_DEFAULT_ON
 	select DEBUG_FS
 	select PREEMPT_COUNT
 	select I2C_CHARDEV
-- 
2.37.3

