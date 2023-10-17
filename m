Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C091E7CCA84
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 20:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13A8110E31B;
	Tue, 17 Oct 2023 18:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEE510E314
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 18:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697566731; x=1729102731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O27GmeXkzHE01PSctLoYlLYu7FN7gJFK2iCkhjS2Dzw=;
 b=KwCL+im9gSmfGE/aKZpKNd/PvlvIYFAMbrojHRwCFpo0HPY4TDfuLxB/
 AmgEJ2AsJqnjuJx2rtxjRP2VO5/VypgAmCRpuDUYsA0zwKp8wcwq+eZjR
 pPbiR3mynm8aPGRIBVafiVu2vjVjNIDTNQwQTLVB4Qs2NzgcQORbOw3nr
 HuwOI1Fm+pEJEZVR/y+vd+Ra1c2zKak3TLq7HqjKr5vAk+biMUEvhEx5C
 H58HZ1V+QvxahlgqygERFMRgJYJQH2o6ExrWHERdC3lkO69n3+R43Hfor
 XamD/j0ghUnpheCxv5T0yD3JgSJFYI8T8ZatpgEKvAJwS/9zJo2XHdK2D A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="472078890"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="472078890"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="4037643"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:17:43 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 11:08:06 -0700
Message-Id: <20231017180806.3054290-8-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v17 7/7] drm/i915: Enable GuC TLB invalidations
 for MTL
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable GuC TLB invalidations for MTL.  Though more platforms than just
MTL support GuC TLB invalidations, MTL is presently the only platform
that requires it for any purpose, so only enable it there for now to
minimize cross-platform impact.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 454467cfa52b9..e208e5c313967 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -829,6 +829,7 @@ static const struct intel_device_info mtl_info = {
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
 	.has_guc_deprivilege = 1,
+	.has_guc_tlb_invalidation = 1,
 	.has_llc = 0,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
-- 
2.25.1

