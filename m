Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD41546FD7
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 01:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACA611AB93;
	Fri, 10 Jun 2022 23:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0469C11AB93
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 23:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654902485; x=1686438485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bJQJjArlvC1QjEfgeqvfnj2fK7jEJq0GskA9OPwblwo=;
 b=J1nrmGwbwF2Mb7PgPW/yxLavEZ8ro5qomf/sk5TH3wbXhjSF9QEStGwr
 WXJRG6ZzdiEY1GD0lbD8Vz8mxtsoGUosfB68fte65MW3rPVT0wOwJ21xT
 x0/mXkMCOMxI4JNF777S4lMFPYi1Maw51pNM8+Cu0kisZ4n9ukyflEEMx
 yza0fu0Qe6RRVEWZrAaPKgHCZTGjoReQOw5nom4l3n0+ltLFtrZtj/3kP
 MVGNnuvpbqsbLUgC+3U1/pnrerH87Do3j6gwkYzyirg6ylqck4lplM/Md
 H5qKiY6McpUKMnqrVNws6aw/me/iN8spjThDuZezOh/R1E9wz3d7IDeG/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="266540705"
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="266540705"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 16:08:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="684813610"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 16:08:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 16:08:01 -0700
Message-Id: <20220610230801.459577-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pvc: Adjust EU per SS according to
 HAS_ONE_EU_PER_FUSE_BIT()
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

If we're treating each bit in the EU fuse register as a single EU
instead of a pair of EUs, then that also cuts the number of potential
EUs per subslice in half.

Fixes: 5ac342ef84d7 ("drm/i915/pvc: Add SSEU changes")
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 7ef75f0d9c9e..c6d3050604c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -229,7 +229,7 @@ static void xehp_sseu_info_init(struct intel_gt *gt)
 	 */
 	intel_sseu_set_info(sseu, 1,
 			    32 * max(num_geometry_regs, num_compute_regs),
-			    16);
+			    HAS_ONE_EU_PER_FUSE_BIT(gt->i915) ? 8 : 16);
 	sseu->has_xehp_dss = 1;
 
 	xehp_load_dss_mask(uncore, &sseu->geometry_subslice_mask,
-- 
2.35.3

