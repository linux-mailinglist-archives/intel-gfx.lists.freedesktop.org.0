Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A1336FE60
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 18:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B516F571;
	Fri, 30 Apr 2021 16:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F4C6F565;
 Fri, 30 Apr 2021 16:18:26 +0000 (UTC)
IronPort-SDR: g6/A4uWBYBYNYMUDr1YCUAtATnfQ1RAqAeD8MKp7TROjVmVXMlG0ALJ2bfDJ37ZS+aDMl5b8Tz
 9McWI2FJM8hQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="261256707"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="261256707"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 09:18:26 -0700
IronPort-SDR: aXarZG1zHQB49xQ6Fwz/FuEwas1UgaAU0AUezVeVIanaazg+F4u3WcnYd5lQjyf0QsCuW7NS3K
 abeRgi8F1y5A==
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="466872159"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.23.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 09:18:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 30 Apr 2021 18:18:08 +0200
Message-Id: <20210430161808.323225-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t] lib/i915/perf: Fix non-card0
 processing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

IGT i915/perf library functions now always operate on sysfs perf
attributes of card0 device node, no matter which DRM device fd a user
passes.  The intention was to always switch to primary device node if
a user passes a render device node fd, but that breaks handling of
non-card0 devices.

Instead of forcibly using DRM device minor number 0 when opening a
device sysfs area, convert device minor number of a user passed device
fd to the minor number of respective primary (cardX) device node.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/i915/perf.c b/lib/i915/perf.c
index 56d5c0b3a..336824df7 100644
--- a/lib/i915/perf.c
+++ b/lib/i915/perf.c
@@ -376,8 +376,8 @@ open_master_sysfs_dir(int drm_fd)
 	if (fstat(drm_fd, &st) || !S_ISCHR(st.st_mode))
                 return -1;
 
-        snprintf(path, sizeof(path), "/sys/dev/char/%d:0",
-                 major(st.st_rdev));
+        snprintf(path, sizeof(path), "/sys/dev/char/%d:%d",
+                 major(st.st_rdev), minor(st.st_rdev) & ~128);
 
 	return open(path, O_DIRECTORY);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
