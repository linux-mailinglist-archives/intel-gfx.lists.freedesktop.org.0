Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 260C9934A99
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0D210E639;
	Thu, 18 Jul 2024 08:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R7srPZWK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471BF10E62F;
 Thu, 18 Jul 2024 08:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721293184; x=1752829184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m1/z2ogr73VfnLqa//bnUxgCACtDE3NH77KBl3v+uyY=;
 b=R7srPZWKkkjnXOb4p8TnzFTetcUuy13VO7sd+9+aJWyieSIX7Ng1oHJO
 i+KEN05ZlfYbqD0PynElOzVp7pNEPhk2kbwsFJaq1VIIIn4ratIFvaNep
 mj4LcwmpLdAKxdZh2ozl8WC9YdOGhoYvCBaoU+QeeDWXaV9tfS/sY+K8k
 F0j6pjwsKzcgVMqHULHApTGouxVKdDzHQkNW5HjUgsixSY+X3YkPi1lrZ
 zTAOoh0UIFiiimC/OndNsVDhchCJMDV62Odlasl3RRfem3j+28WL+CnuD
 F/OOJ8uJu065wwVb08Kljl1aj0a91pbioYhmIK4B9KdCPUknuv24eG6SV w==;
X-CSE-ConnectionGUID: usD4Nj1SSfiIP7yUkXxsKg==
X-CSE-MsgGUID: vBIK8ADYSo+Cz+LGa1qbMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30001943"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30001943"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:44 -0700
X-CSE-ConnectionGUID: ic1R4cWjTim+lskU25J1eQ==
X-CSE-MsgGUID: yyhZvWqWThSvx1YRTeUXZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="73929473"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:42 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v4 5/5] lib/gem_engine_topology: Fix broken compare of
 device links
Date: Thu, 18 Jul 2024 10:55:16 +0200
Message-ID: <20240718085912.15434-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
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

When looking for a primary counterpart of a render device, we compare
"device" links of both nodes.  If those links point to the same device
then we know we've found the correct primary node.

However, readlinkat() function we use doesn't explicitly terminate read in
strings with null characters, and then the comparison occasionally fails.

Process the second (potential primary counterpart) node only if its
"device" link is of the same length as that of the render node, and limit
the number of compared characters to that length.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index c8c1079223..c251060341 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -467,7 +467,8 @@ static int __open_primary(int dir)
 	if (minor < 64)
 		return dir;
 
-	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
+	len = readlinkat(dir, "device", target, sizeof(target));
+	if (igt_debug_on(len <= 0))
 		return dir;
 
 	close(dir);
@@ -477,8 +478,8 @@ static int __open_primary(int dir)
 		if (dir < 0)
 			continue;
 
-		if (readlinkat(dir, "device", device, sizeof(device)) > 0 &&
-		    !strcmp(device, target))
+		if (readlinkat(dir, "device", device, sizeof(device)) == len &&
+		    !strncmp(device, target, len))
 			break;
 
 		close(dir);
-- 
2.45.2

