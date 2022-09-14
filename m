Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D58F5B8FB0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 22:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38EB410E9F1;
	Wed, 14 Sep 2022 20:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A44E10E9F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 20:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663187777; x=1694723777;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ydT6RiqRRmJGdbT0Q8L5b5OYEv/tlZxz4OJ92pMFKv4=;
 b=fEn8WKt998u5QL8z4/PUK5QSvt6yttylcRU6A8LE7prnTVcllU/kn1cO
 +Bn+KDvCAVAZtXRtVv1/4ikkZhyFvI79kTnchG+8RCGneHGjuxTlFwGYG
 UUQ86+E1MaHCAYTcLsOJnG/ZYHyxqXnK1cop97X7KzKOu3B3ui8VUyY/H
 oo5+aMgUsU9JjrODLfD+uTKxYSD+i/0IZz6fDDHAkzU4rXJvUUWaddz9i
 3v9Ne7m2jRhza/U0eA7Q7cYDr3R+PRygkRWUtTktmId1SalE0nXnBO9tU
 9Lc+kp9Ile+GevW8x6Gg3IiOsNfqllTsY+s3LKNZea1PZ2Mk5mZwQ4V5R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281568410"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="281568410"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:36:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="720715565"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:36:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 13:35:45 -0700
Message-Id: <20220914203545.4057637-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "HAX iommu/intel: Ignore igfx_off"
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

This reverts commit 58f44e349cfc10a4f2208fd806829c8fd046480b.

To be removed from the topic/core-for-CI branch. If CI's config is
setting that, it just shouldn't do it. Looking at a random current CI
execution, the command line is:

Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 \
	rootwait fsck.repair=yes nmi_watchdog=panic,auto panic=5 \
	softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M trace_clock=global 3 \
	modprobe.blacklist=i915,snd_hda_intel ro

So it should be safe to remove this commit.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/iommu/intel/iommu.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 598c9b86dfd8..1f2cd43cf9bc 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -323,6 +323,8 @@ static int __init intel_iommu_setup(char *str)
 			no_platform_optin = 1;
 			pr_info("IOMMU disabled\n");
 		} else if (!strncmp(str, "igfx_off", 8)) {
+			dmar_map_gfx = 0;
+			pr_info("Disable GFX device mapping\n");
 		} else if (!strncmp(str, "forcedac", 8)) {
 			pr_warn("intel_iommu=forcedac deprecated; use iommu.forcedac instead\n");
 			iommu_dma_forcedac = true;
-- 
2.37.3

