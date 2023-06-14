Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E828B730AD1
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 00:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA6489149;
	Wed, 14 Jun 2023 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A1D89149
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 22:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686782216; x=1718318216;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fWRMU1jRU9sH0TBwO5y4b1HdOdxuhpDRvzVBX8gNkGc=;
 b=QZMernipqExaWzbl4655VXyG+HXzkTBGes603cmEN6VF1MeOHH55LbEb
 GYoj/ZESsgMvRvnPjionZFd6kJeaEfqTyY75BdQunW/fgtB72w9ZmtC8q
 U0n8oIW5ho3h0fYIcVnY3WzF02QqzyGUcupUIxK1qGCGqETcFtL1yHSSm
 BEyrqrDsttWiw+ezPYlJnQPIUnLT/nkOlqzOoTHKCIYqMWhmiqcv2TV4T
 E7qfeKKqpENvz40EvakXZwyBMFSsSN5NsxbmNkh12SebQMrP7i6gzSbIU
 2dByYvna70ZA6gD2DpvJdMhXqgdsWi+P/qjIL4Xlj97eU9pUzCTvQeNuh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="422353086"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="422353086"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 15:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="782268621"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="782268621"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 15:36:54 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jun 2023 15:36:46 -0700
Message-Id: <20230614223646.2583633-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/huc: Fix missing error code in
 intel_huc_init()
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
Cc: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>

Smatch warns:
	drivers/gpu/drm/i915/gt/uc/intel_huc.c:388
	    intel_huc_init() warn: missing error code 'err'

When the allocation of VMAs fail: The value of err is zero at this
point and it is passed to PTR_ERR and also finally returning zero which
is success instead of failure.

Fix this by adding the missing error code when VMA allocation fails.

Fixes: 08872cb13a71 ("drm/i915/mtl/huc: auth HuC via GSC")
Signed-off-by: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---

Re-sending for testing, because it looks like the original didn't make
it to intel-gfx and patchwork.

 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index d3a7219e9ed1..bb95bdd1c3f9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -384,6 +384,7 @@ int intel_huc_init(struct intel_huc *huc)
 
 		vma = intel_guc_allocate_vma(&gt->uc.guc, PXP43_HUC_AUTH_INOUT_SIZE * 2);
 		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
 			huc_info(huc, "Failed to allocate heci pkt\n");
 			goto out;
 		}
-- 
2.40.0

