Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA076E45DB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7EF10E420;
	Mon, 17 Apr 2023 10:57:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2BB10E415;
 Mon, 17 Apr 2023 10:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729069; x=1713265069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BeLNU26y/iJTDz0RSFLiHsyW5YpGy1msVCki5bA1/R0=;
 b=hZSLmJN97DoXWq0jXuaBFJfDk+txdzQVi/O9Bv7Ys3+imOlBbOf1hTji
 aUKBzd258mVWyC3ICHkOGMScYI9RvJYt+ZfBMyetNnBnDERp8NqMcs0Lq
 f9myOYSlouJCPk/cNghzmLV8tcLziNI6bFtQGAnDV3gWUsMBHJNLFYd45
 DXQbD2jQhbcDbCN8fOOCUP6q4/QgxE0t+I+ovFCmlHHgRZPr8Pz0XHpaJ
 hVs5gpjxdCXCfykSrXiXMNsqWZuDF7XoGAMcjgT0o7ZaSFuBYcypCdwG4
 DVzqcFbrpQNRXL17GoCuXM6nafSjH7ZPFSmc92CtFSjwX7R9cFH0Phaf+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="410073197"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="410073197"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="834363429"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="834363429"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.210])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 11:57:31 +0100
Message-Id: <20230417105734.3945840-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
References: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 5/8] lib/igt_drm_fdinfo: Track largest
 engine index
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Prep code for incoming work.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_fdinfo.c | 2 ++
 lib/igt_drm_fdinfo.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
index 3f4f0e88b0d8..b5f8a8679a71 100644
--- a/lib/igt_drm_fdinfo.c
+++ b/lib/igt_drm_fdinfo.c
@@ -162,6 +162,8 @@ __igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info,
 					info->capacity[idx] = 1;
 				info->busy[idx] = val;
 				info->num_engines++;
+				if (idx > info->last_engine_index)
+					info->last_engine_index = idx;
 			}
 		} else if (!strncmp(l, "drm-engine-capacity-", 20)) {
 			idx = parse_engine(l, info,
diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
index fa4982f4030e..6284e05e868a 100644
--- a/lib/igt_drm_fdinfo.h
+++ b/lib/igt_drm_fdinfo.h
@@ -38,6 +38,7 @@ struct drm_client_fdinfo {
 	unsigned long id;
 
 	unsigned int num_engines;
+	unsigned int last_engine_index;
 	unsigned int capacity[DRM_CLIENT_FDINFO_MAX_ENGINES];
 	char names[DRM_CLIENT_FDINFO_MAX_ENGINES][256];
 	uint64_t busy[DRM_CLIENT_FDINFO_MAX_ENGINES];
-- 
2.37.2

