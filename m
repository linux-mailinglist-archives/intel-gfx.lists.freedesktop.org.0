Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E98978C698
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 15:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BCB10E10D;
	Tue, 29 Aug 2023 13:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D7410E10D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693317593; x=1724853593;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I6nElAaC+42gyufoajQXAZVeHzKUv5Ij3+LKIlmP+DM=;
 b=nAeJsf7KSAuQhZpHsSpQRPb4UdHDRZLRhuQGQfyaNBlZVfDSRUgnaak1
 BhmwnA3516N7eAKv50M2vNyXGCNbM6VOrWOmnQhOwzwodQQT/8SJzvrJX
 zzr8F3J46WeZLfvaLXnlYZcAmYAv3kZxHdl2sMzvhCoXwVWGwuonZCvjX
 nX8RuAnctVLmkfwhfNJ1WcMgS6291SrdiBRO5b72UoCjR8fM7VWhx99dJ
 7WxA3PSFMgNaruBq0Ptk/NIs8ilJxq0Z3CPWN36+w39Idy6+s+LVyTPQ6
 upwxvUeglMb2oNTFf73L5grfyMRO3Gl0V2FXvpohAw/anNW2KWQOyZFa2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439323850"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="439323850"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 06:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="715537451"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="715537451"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Aug 2023 06:59:50 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Aug 2023 19:29:45 +0530
Message-Id: <20230829135945.1201574-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add support for new DG2-G12 revid
 0x1
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

The bspec has been updated with a new revision 0x1 that
translates to A1 GT stepping and C0 display stepping.

Bspec: 44477

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index c02a6f156a00..ee4e5a2c0220 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -124,6 +124,7 @@ static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
 
 static const struct intel_step_info dg2_g12_revid_step_tbl[] = {
 	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_C0 },
+	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_C0 },
 };
 
 static const struct intel_step_info adls_rpls_revids[] = {
-- 
2.25.1

