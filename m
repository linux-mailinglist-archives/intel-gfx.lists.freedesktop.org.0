Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7767C6776
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 531B310E454;
	Thu, 12 Oct 2023 08:16:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19AEF10E47D;
 Thu, 12 Oct 2023 08:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098562; x=1728634562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yt46lnO79fw85Z3m8LKQvMLLP745R4hvjLbFZi57wa0=;
 b=V06LLESw3eq/KVsVa82+s6wWNLm49H62uwhydXSTzLVBRifPy8T1DDsp
 8R3+9qcQWiRwkY9gAg2LpWZk+jtUW3FNIu6/SbZvTthSB8egX7+KipKi9
 eNdBAdX6pvC5hPPpkbp0/QzfDqN4X/X0Xm+gPHaAW8JdAUo7TfLeDma8E
 dI9ERQijW6uMEUadpSZ7QbPfDnRrz9H0LnYiBoJzaKpzOxC0/pWabBdyP
 YYdv84TBcDxuN2wuLlY6cQ7A3wY+Azdu/BnZzlhf+4dLBXomZn3syffIF
 vC6GE8ewiyFmOZ+Z1uVXwR/QYYtC2ZC39/vebtYTv7FwKo8EtblynIDpl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3454683"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3454683"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783599319"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="783599319"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:15:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 09:15:42 +0100
Message-Id: <20231012081547.852052-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/9] lib/igt_drm_fdinfo: Copy over region
 map name on match
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

