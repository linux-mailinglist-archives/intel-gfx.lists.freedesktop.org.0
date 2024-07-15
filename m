Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943F8931A28
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3408A10E4A9;
	Mon, 15 Jul 2024 18:16:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fc9Bmehd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B5D10E4A7;
 Mon, 15 Jul 2024 18:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721067365; x=1752603365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p0HdEl/S2n+BCH2QfwMS+sMOZ5Drl1FJiU3mBKobU9I=;
 b=fc9BmehdnZRsGZfBakLEncvbFnR4R2gqastcqeeE8nyT6HjBjgzwTuSr
 2PlsEotkvl0ezct3JW1zcCnm0tppLM4FyRrB8QZNRBR8cHNqOX7+QXCAH
 ihHs6mDta/QkHqOBDBKks2abgLgxSfZXVXIqLnAV1z/lYsfZ+lZ1x4JP7
 IuerVab77DI18aJ5tOkHSEZqKWuOaFfZjIuf2opWoFoUKN1jvO0XpsECC
 oXc2dpGNr4uk9SyzjWq8Z573KPZuaj9b6irWJG7AhVZqsFUJuMeXB1tu8
 LjVs8AOyOTX3SrgcEwFTmTgUxPIGKtwjbVOiCWTV1TugKvu2rsdt6zB6/ w==;
X-CSE-ConnectionGUID: w+vAq2cjSyShXDIjG8SO8g==
X-CSE-MsgGUID: 1UtZ/UWySZOpF+g9FMxmvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18597046"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18597046"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:16:05 -0700
X-CSE-ConnectionGUID: ZZ2nb/SWTBmBHirOVqh8Ig==
X-CSE-MsgGUID: cQ0DUzvcQQWSmFAwfngOlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54627923"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:16:02 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 5/5] lib/gem_engine_topology: Fix broken compare of
 device links
Date: Mon, 15 Jul 2024 20:13:46 +0200
Message-ID: <20240715181523.2825921-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715181523.2825921-7-janusz.krzysztofik@linux.intel.com>
References: <20240715181523.2825921-7-janusz.krzysztofik@linux.intel.com>
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
index d14190f253..777fbca938 100644
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
+		    !strncmp(device, target, len)
 			break;
 
 		close(dir);
-- 
2.45.2

