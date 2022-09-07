Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158195B0B72
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 19:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E020310E7FB;
	Wed,  7 Sep 2022 17:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813F510E7FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 17:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662571611; x=1694107611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l/qyN9p2O/y2/pi4vvFn93YwqKuPPW0frk5pG2zeJys=;
 b=NauCaSVSUWdvHD3TOLZ78Vbi+mscv+l36SwKt3Fz0Dfd44qyttaQUJSc
 LPGWia++F6Nx+jDNF75yw/L8tF2Nfxy6akoTu4lvUMHu2I/wyPWqDEfLc
 MubNApA0/jz4hAF3rghvDn/JoJbA7SVJ3Mttb5oFoOilehZYVeZVV4EKM
 /oReYEjezX92WTs6T0tQLZ2fl2BQ8yQ+VB5lxl2hIdToRgI83wuWPbnAJ
 WzkzTz7lfhg9SsNr8P9Gh5PFGQi0oILc7/6xARCRpeTRMnpeiZeUWnOeb
 CxWfCIdZ6LQyv6OVyLY/V5CIR4ZQXdJgMizRqxnekifSLr4kRf1qlgMpq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="360911133"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="360911133"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 10:26:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="644717799"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 10:26:49 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 19:26:41 +0200
Message-Id: <20220907172641.12555-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Set correct domains values at
 _i915_vma_move_to_active
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
Cc: andrzej.hajda@intel.com, matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix regression introduced by commit:
"drm/i915: Individualize fences before adding to dma_resv obj"
which sets obj->read_domains to 0 for both read and write paths.
Also set obj->write_domain to 0 on read path which was removed by
the commit.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6639
Fixes: 842d9346b2fd ("drm/i915: Individualize fences before adding to dma_resv obj")
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Cc: <stable@vger.kernel.org> # v5.16+
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 260371716490..373582cfd8f3 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1882,12 +1882,13 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		enum dma_resv_usage usage;
 		int idx;
 
-		obj->read_domains = 0;
 		if (flags & EXEC_OBJECT_WRITE) {
 			usage = DMA_RESV_USAGE_WRITE;
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
+			obj->read_domains = 0;
 		} else {
 			usage = DMA_RESV_USAGE_READ;
+			obj->write_domain = 0;
 		}
 
 		dma_fence_array_for_each(curr, idx, fence)
-- 
2.37.3

