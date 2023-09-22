Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E257AB2E5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4705610E192;
	Fri, 22 Sep 2023 13:46:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F381010E676;
 Fri, 22 Sep 2023 13:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390338; x=1726926338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yt46lnO79fw85Z3m8LKQvMLLP745R4hvjLbFZi57wa0=;
 b=BNGTQEy1402pkOuWozSalVNweb2EJX/8Q71pxtq0xEJ7VG1cBMY7cDlX
 K5yO7ME7O9ejt6gmxGXnmsQqcWxWyrmokbSOzb9Yye7guaFL0GYDa+5jE
 Yvq5CeGdQQjwgkgUdsb/jTWTPbwXcJLSI0mGPCK8Gfr9X7blrXYiR+1w/
 +vqw7UGHgOYxR2H83vq8GKvdDigeA0BDQDc4tA9pJAGv9sbMBeNtQPsHW
 SRIJkneU/9RjKFp7y4sWL1hY9rOuJH/8Rbr5yY1RKQ/jM2zJjxWZytWB/
 ortbxQECLq1d4Pa5gkSmbn5FOB4U1a9HixQN6nOQxlsZPMKqUw22DMdDs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117149"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117149"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243598"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243598"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:52 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:32 +0100
Message-Id: <20230922134437.234888-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 07/12] lib/igt_drm_fdinfo: Copy over
 region map name on match
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

I will need some record of which regions were found for intel_gpu_top so
lets just copy over the region name from the map on the first match.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_fdinfo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
index b72822894782..222ccbfb1fd6 100644
--- a/lib/igt_drm_fdinfo.c
+++ b/lib/igt_drm_fdinfo.c
@@ -148,6 +148,10 @@ static int parse_region(char *line, struct drm_client_fdinfo *info,
 		for (i = 0; i < region_entries; i++) {
 			if (!strncmp(name, region_map[i], name_len)) {
 				found = i;
+				if (!info->region_names[info->num_regions][0]) {
+					assert(name_len < sizeof(info->region_names[i]));
+					strncpy(info->region_names[i], name, name_len);
+				}
 				break;
 			}
 		}
-- 
2.39.2

