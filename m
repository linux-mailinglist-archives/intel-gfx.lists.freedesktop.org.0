Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDFE523771
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 17:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5E710FB8F;
	Wed, 11 May 2022 15:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0B710FB8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 15:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652283475; x=1683819475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cXXWC2jYNLSFm8opIdWjnqzcyI4yJpofYvjOj9WG6q0=;
 b=fSA+51VTDoMNhWMMDxd0vHLbM9XmOg1uFCGSL9ibXOYHLPO1wUEOpJrm
 d3zTOBsgkCRd5Orxf1RnBcO58jY4x5gs72ws2VtrQq5S6H7R9SIx3jqev
 HkJlPB3EZ6imP3gM96KAOoIC0BZEqyI36jZUZXQQBd2UHCMXQBo31nDzd
 KrhMh1PZq2KRngUDBsIRT0+dHj5v5BXYyuLMoIixp69fJmmUWoUY0JDU3
 MbjdgK9BSr4SOLm5UlF0IW0MRDaZ/xC7/k4LKRBTI6hZf16UGb6+fg1g8
 /68QtHaOwyRYIWJFWsP4N4dBGTx9aqj5Vz/ynQoSbkYrviivHeoR7JquP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="257277571"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="257277571"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:37:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="566231934"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:37:53 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 17:37:45 +0200
Message-Id: <20220511153746.14142-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511153746.14142-1-nirmoy.das@intel.com>
References: <20220511153746.14142-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: determine lmem_size properly
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Determine lmem_size using ADDR_RANGE register so that lmem_setup()
works on platform with small-bar as well.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 5a7c403d718a..cd105ec10429 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -101,9 +101,13 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		return ERR_PTR(-ENODEV);
 
 	if (HAS_FLAT_CCS(i915)) {
+		resource_size_t lmem_range;
 		u64 tile_stolen, flat_ccs_base;
 
-		lmem_size = pci_resource_len(pdev, 2);
+		lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
+		lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
+		lmem_size *= SZ_1G;
+
 		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
 		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
 
-- 
2.35.1

