Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFEA682B87
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 12:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F1910E343;
	Tue, 31 Jan 2023 11:33:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B62E10E32A;
 Tue, 31 Jan 2023 11:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675164777; x=1706700777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z2kT0bQZvocH3okAW+0SZfN2R5pq5QWrNUFJDy4VNMI=;
 b=dGKyGEb8FQx9a3c6ZpLZEwnGiZuRHUKVcxQfkEZwRMo4HnSjXcxb3zKN
 /t+L/CUReNF680tjZB949avkVfQL8mh6IT3TLfvR9OF4P2EXFS2Gu4F2R
 GvRJu+oV9yplDi+IynFvcYJm7sV4KKSKmvI1rWVJQf4lQbjrL80ooHtwP
 eqtcOWmiDBwaCSNzSgLGdBuyQ6nwzFV18UMZJ61SyKrD1WDReo/t3zyIg
 ibwB9wx0eO0zmAKQWP6B020sE1Fph5JnkySy5HFoKgjid2WsTUMzMmO/2
 nUG7r55cQuApYHeM/V/QGCfff64ciKp1H9nRmDtfULsovjk36huRAIG51 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308159821"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308159821"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:32:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="993235732"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="993235732"
Received: from rdorchar-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.217.6])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:32:52 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 11:32:34 +0000
Message-Id: <20230131113237.3707217-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
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
index 68c89ad2c17e..b850d2210ae7 100644
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
2.34.1

