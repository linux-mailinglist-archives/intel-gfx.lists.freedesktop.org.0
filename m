Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED3CA60762
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 03:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E74810E260;
	Fri, 14 Mar 2025 02:12:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZkfcVL2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AEF110E259
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 02:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741918364; x=1773454364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lCfluYjvRIY0yj5Rd/gWPaCoQG3GcUZbD8xDyAi5Upo=;
 b=ZkfcVL2jDa2nedpWTFoQMiggf75RDNpbAtxfm3NbvuKlnEjcUVmP5Bod
 gjnoUDV58lPp8LFaCZfe3uBzrxLnUkWUXjdARjYGeTCEcPrw7GUBMyIjJ
 MKN7rkM8cOxckIE10JxX35lx1PhkdNyR7HvyB4WK5/tg3UdjW2IIZYkKs
 CgY6sBCWnez0VzuIG9KfeyxvkQ4qmsfdUJnHNiBSsZsajJNq/XH0SDfM9
 zccF+ApCB/hrilGFKcFuz3uPtfdO2Sr9vv55Bw5MrHZ7PDDlYtEb646NR
 2YTWZlxiDYJsTu2n+5GCHCREkVvdiOMofdrBjlRh55fHkqP0oEZQ+VxDf Q==;
X-CSE-ConnectionGUID: zB1s7mK3QQqR26a1HOO/Og==
X-CSE-MsgGUID: Um43c4ATSnWYZPcuQTrEQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65520023"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65520023"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:43 -0700
X-CSE-ConnectionGUID: L58MzXfdTPyelC7dqAK3eQ==
X-CSE-MsgGUID: l2ysjwwSScCsyJUeGooZqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126009266"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:38 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH 1/4] drm/i915/gt: Fix typos in comments
Date: Fri, 14 Mar 2025 03:12:21 +0100
Message-ID: <20250314021225.11813-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250314021225.11813-1-andi.shyti@linux.intel.com>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

upto -> up to
acknowledgement -> acknowledgment

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index aff5aca591e6..86927e0c76e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -643,7 +643,7 @@ calculate_chunk_sz(struct drm_i915_private *i915, bool src_is_lmem,
 {
 	if (ccs_bytes_to_cpy && !src_is_lmem)
 		/*
-		 * When CHUNK_SZ is passed all the pages upto CHUNK_SZ
+		 * When CHUNK_SZ is passed all the pages up to CHUNK_SZ
 		 * will be taken for the blt. in Flat-ccs supported
 		 * platform Smem obj will have more pages than required
 		 * for main memory hence limit it to the required size
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index dbdcfe130ad4..82e8df40f5b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -162,7 +162,7 @@ static int i915_do_reset(struct intel_gt *gt,
 	struct pci_dev *pdev = to_pci_dev(gt->i915->drm.dev);
 	int err;
 
-	/* Assert reset for at least 50 usec, and wait for acknowledgement. */
+	/* Assert reset for at least 50 usec, and wait for acknowledgment */
 	pci_write_config_byte(pdev, I915_GDRST, GRDOM_RESET_ENABLE);
 	udelay(50);
 	err = _wait_for_atomic(i915_in_reset(pdev), 50000, 0);
-- 
2.47.2

