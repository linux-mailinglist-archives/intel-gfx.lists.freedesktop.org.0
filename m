Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D11E931A4F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9724710E4CD;
	Mon, 15 Jul 2024 18:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oIrQYkyX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FAE10E4CB;
 Mon, 15 Jul 2024 18:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721068229; x=1752604229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pJV396RRAwv3xHjezjwP8+GrBzsbtQZ4DA+s/iiJZdE=;
 b=oIrQYkyXC6/CceXHnvSAJ/nq6HsNPYZlLSaO8zhlhUZgBZ+rNmGXezNT
 gKL97Bhghs8e3RKAAx3AKazc/NsXEAL8wq7OMbBi28S89CtZBu6MSFTs3
 Qc9XRr5+rB5ZCILFCl6P33cuv4Agxz1yLA4SqZlZwLQMHFQTJlqN0qwrt
 3gSNyxySaH925LsSx1jEvxsXebRx1pvKelKbRM02wSGB3FDdIUlCkGMbw
 jguRkXUeuNpQ3j+TJYvbSI3FQyopfZqVSWZVC6uuGLJiryHfi33P6eFxD
 QJD3YZ5Ic0lLBLu4KRegzMReh9/JOXuOtCpEyVEG3+7dKsFPfd1SYbFRR Q==;
X-CSE-ConnectionGUID: wAhy8+3YQNuDmIYSrp/Q8Q==
X-CSE-MsgGUID: Eli0Fp/SRsaOyftaKoyybA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18618865"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18618865"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:29 -0700
X-CSE-ConnectionGUID: OJCuFSeNTWWs9BHKCO8S6w==
X-CSE-MsgGUID: JEjFrwF0SjmNXVeyRmTXrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54886889"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:27 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 5/5] lib/gem_engine_topology: Fix broken compare of
 device links
Date: Mon, 15 Jul 2024 20:27:33 +0200
Message-ID: <20240715183000.2828719-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
References: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
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

v2: Fix missing closing parenthesis.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index d14190f253..617a12ccaf 100644
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

