Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D30A357B80
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 06:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766DA6E9FD;
	Thu,  8 Apr 2021 04:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1A76E9F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 04:52:40 +0000 (UTC)
IronPort-SDR: zOEg012nIOf2vkSityd+ewMki3+ep/K5mJYDfkEVev59dauKvIPvk8pzN/Sme++S+3nhOg4wwu
 sdG2OPciWynA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193573110"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="193573110"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 21:52:39 -0700
IronPort-SDR: F5OObxgjvWun2yXnqaaUs0ktMt32PZsJB6TSsclGRqFr6ZzqIhi6ZtJIqJOTtBoKm0g6zlUt7H
 +6VxOPwm+Rrg==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="422064255"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 21:52:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 21:52:27 -0700
Message-Id: <20210408045227.985408-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408045227.985408-1-lucas.demarchi@intel.com>
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/i915: split dgfx features from gen 12
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

Make them independent so we can use DGFX_FEATURES more generically.
For future platforms that do not use the GEN nomenclature we will define
graphics, media and display separately, so we avoid setting graphics_ver
with the GEN() macro.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 1453c1436f31..44e7b94db63d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -907,8 +907,7 @@ static const struct intel_device_info rkl_info = {
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
 
-#define GEN12_DGFX_FEATURES \
-	GEN12_FEATURES, \
+#define DGFX_FEATURES \
 	.memory_regions = REGION_SMEM | REGION_LMEM, \
 	.has_master_unit_irq = 1, \
 	.has_llc = 0, \
@@ -916,7 +915,8 @@ static const struct intel_device_info rkl_info = {
 	.is_dgfx = 1
 
 static const struct intel_device_info dg1_info __maybe_unused = {
-	GEN12_DGFX_FEATURES,
+	GEN12_FEATURES,
+	DGFX_FEATURES,
 	PLATFORM(INTEL_DG1),
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
