Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FA262066D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 03:04:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3749910E410;
	Tue,  8 Nov 2022 02:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76D510E406
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 02:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667873027; x=1699409027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rp82UGbfyVLYXxtEu0mamcr3bKRsxYzVT+Q2UlXX6s0=;
 b=bj9YkwIjzf9p40zi9yhRUt9C/cDuW/PXvXMDuIBrQyXqq7o+WVWy1FPE
 ghH19AaNnFIjOVXVl3yv9PdYixywQIV0TwJbNo2GNnY1H7zj1JaH+inSX
 c4P2iKgY6jvqvMlerJ+txwjAK8neXsm4162KaFdciB4EJ2u6Vi9eiQGvG
 Lfv6yOdciCdeGmyiUvvXHdzm6Ml/nMn28pgNOp7Ks1XUr46LZj0v9OJR6
 +lKse9bnJpxU7kNfhSZNHBmbZRHn3OF8EhCKWfU7P9hYzF/yiyiG76sYi
 FMo8dyLZ3pOFzZbL5oHQD6qh/HIDeKgmQCNeCPogKVFBBsQIrCQzk8pwf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374850079"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374850079"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614097252"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="614097252"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:06 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 18:05:57 -0800
Message-Id: <20221108020600.3575467-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/7] drm/i915/guc: Add GuC deprivilege feature to
 MTL
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

From: Stuart Summers <stuart.summers@intel.com>

MTL supports GuC deprivilege. Add the feature flag to this platform.

Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 211913be40ce..cf3b28d71d2b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1146,6 +1146,7 @@ static const struct intel_device_info mtl_info = {
 	.extra_gt_list = xelpmp_extra_gt,
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
+	.has_guc_deprivilege = 1,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
-- 
2.37.3

