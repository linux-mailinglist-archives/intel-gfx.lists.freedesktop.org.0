Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3C47B327B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3DD210E713;
	Fri, 29 Sep 2023 12:25:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7812310E708;
 Fri, 29 Sep 2023 12:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990334; x=1727526334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yt46lnO79fw85Z3m8LKQvMLLP745R4hvjLbFZi57wa0=;
 b=MKkukp018IghU8yxaljZcvzibEov+bkmIlCM8nWFFfn0ylq6EZ22pP/J
 XxpVjQn5jFVhZR7lCF6y2Iz+02dFAAc67l/Z9BVt3zJqA8bYR+qKNccWD
 Rb3vVaeg+U+0fUFmlFxNsVSAHZH0WaZQLuyiU/AWUAN0q+p/4XHLHahj9
 ZgOrJgdht/+v05UQ2TAHu+AJNA55zEfWwLCdzlnIUF2U5V39REkMdE5s2
 JM084nknMB3O3U6Cx5vc5tNtnEvjszAv6Jqs841kC6z9zNtbsatoxOmVH
 hlNqh9tVw+oAUEl1qXBuUShTJxPjPIkk6EBLXZkFZ37st5VhBxKY1oS6W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443776"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443776"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577159"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577159"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:33 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:12 +0100
Message-Id: <20230929122517.349348-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
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

