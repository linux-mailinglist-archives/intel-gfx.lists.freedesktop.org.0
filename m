Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0697C523772
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 17:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EAF10FB92;
	Wed, 11 May 2022 15:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C3010FB8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 15:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652283476; x=1683819476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=thIhsGv4+19IoRGStAJTZBDMkFxh0bhs8YAD76vbN1A=;
 b=DKk6DiFG0XtzuMzid9NkZH8nsOAwJFX/p+JZ41QTENOzGW+Y4UMnWxW3
 zZukh7UXSsWufwgi/jttAL01bnI/Bc5PcPuGfiyqY2+b1nMLfkZG/sg9Q
 kjgFjA8PuBpyK+fRxzxs8IViFhs2ja8yua1a977/eSXhfkiy2mSOjBVuF
 9iB+3Y/JkfBac9ozlApcdLKkRm8kdOQwgpOgkF4E5vb7UPESdFGXHIszZ
 SCJA4SvhlJVDtwroRKgM6WcPW5FN8SKwAXLgrA+HAvF4mQNp7HOtEdxHP
 GuNq4jcPdTvA56wklX6YAOlcHWw6dm7C7AxxtrSQONDEsTmEFezerjBxR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="257277578"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="257277578"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:37:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="566231966"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:37:55 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 17:37:46 +0200
Message-Id: <20220511153746.14142-3-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511153746.14142-1-nirmoy.das@intel.com>
References: <20220511153746.14142-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: error out on platform with
 small-bar and CCS
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

Until we enable small-bar, we can't support CCS so error
out gracefully on such platforms.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index cd105ec10429..43caf8052ffb 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -111,6 +111,13 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
 		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
 
+		/* FIXME: Remove this when we have small-bar enabled */
+		if (pci_resource_len(pdev, 2) < lmem_size) {
+			drm_err(&i915->drm, "CCS isn't supported on platforms with small-bar\n");
+			return ERR_PTR(-EINVAL);
+
+		}
+
 		if (GEM_WARN_ON(lmem_size < flat_ccs_base))
 			return ERR_PTR(-EIO);
 
-- 
2.35.1

