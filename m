Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FB89F890C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 01:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2178610EE24;
	Fri, 20 Dec 2024 00:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9Fmrcb/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23B410EE25;
 Fri, 20 Dec 2024 00:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734655256; x=1766191256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uzk+TLE1jhOnAF8n4Q9KUx38PqfJR+jbhLo1+ksn0eI=;
 b=d9Fmrcb/xGfQp5NwOKPR3X3prvutO/dpAHXLShgnhSqKo2raIQX0VxUG
 tfpW5gTwu2hMrxU7VjhXseT8rlrzp6/CR6alfQOgF5DdK+rsXFSPNCbm5
 GdsDR8UmRLlGWHAXuavj3gICX4H1XB9KZznDR2IZV7RH0rtbHoUw6Y+Jl
 i5u81IPlMcGWvWYR5y5zVNDYnywmvwSYupCtOz/d7ZwVNm80WmubBWcmO
 lpnBcN1dqFGLamsAyAinKDTWectDKB083vDuGfpuZ1sgmvwwWwQH0uSwQ
 1yZR3bSZBVKCKP41ub64ynB1MuQirt3OUIGwQ5fUHbxFfw0MgCpF5OAsn Q==;
X-CSE-ConnectionGUID: rzNWDJkVSFqkeq3/hzxQkw==
X-CSE-MsgGUID: RTQoCve1ToCKj7JJfCyK0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46576433"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="46576433"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 16:40:56 -0800
X-CSE-ConnectionGUID: CcaJcGW6Rvaxd4H3C27Iyg==
X-CSE-MsgGUID: aAKy2Ky0S5qBtDBoVUwxbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="103233330"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 19 Dec 2024 16:40:55 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t v2 2/4] lib/igt_drm_clients: Add pdev and driver info
Date: Thu, 19 Dec 2024 16:37:32 -0800
Message-Id: <20241220003734.69174-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
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

This will be used for gathering PMU event information.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

This will be used for gathering PMU event information.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
/igt_debugfs.c.orig
---
 lib/igt_drm_clients.c | 6 ++++++
 lib/igt_drm_clients.h | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index 858cd3645..e30e3243e 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -190,6 +190,12 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 	c->drm_minor = drm_minor;
 	c->clients = clients;
 
+	/* Save driver and pdev info for later use */
+	if (info->driver && info->pdev) {
+		strncpy(c->driver, info->driver, sizeof(c->driver));
+		strncpy(c->pdev, info->pdev, sizeof(c->pdev));
+	}
+
 	/* Engines */
 	c->engines = calloc(1, sizeof(*c->engines));
 	assert(c->engines);
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index 946d709de..6d2a48997 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -86,6 +86,10 @@ struct igt_drm_client {
 		uint64_t last_total_cycles; /* Engine total cycles data as parsed from fdinfo. */
 	} *utilization; /* Array of engine utilization */
 
+	void *pmu_info; /* Pointer to structure that holds client PMU info */
+	char driver[128];
+	char pdev[128];
+
 	struct drm_client_meminfo *memory; /* Array of region memory utilisation as parsed from fdinfo. */
 };
 
-- 
2.38.1

