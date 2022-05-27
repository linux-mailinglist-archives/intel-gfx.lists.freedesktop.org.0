Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F23535EAB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 12:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039D010EF35;
	Fri, 27 May 2022 10:50:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CA710E066;
 Fri, 27 May 2022 10:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653648652; x=1685184652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wsuymuwxlq2BN9bs/rjeDMAwrcGerv+qNnnnby9Xed8=;
 b=K3Pheesb70drROIE1LKoE4szu0AtigbpVdua6XrsYrPK/dm/3nqVPdy/
 rmCspYjnV3MPmeNmQi6UOJx/IXNL1JlpSSADAhS1Pttz74etZSwmXXpdo
 PKzh7VJisZnS7fLUf4azxSD5474bBSvZZB+GbliuhBBms2SP18+KIFuKf
 kIKd0aTFkEHAVWQKSeD5wXEvKPzuJIPUbsZy2IuKXgILz1OGGcSyTLuaF
 BfqKsmqMwzFTBAXaVkjLz5yczspd1XUiHgpfUdI54MvZibNIN3OF6o1zC
 GGMLyVEZQzC8aCLU59KxEoeiKVRIKnnwIxOxbJKxj+zgmg25yMU2eDUKc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="262066135"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="262066135"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 03:50:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="550155692"
Received: from dnanduri-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.215.174])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 03:50:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 27 May 2022 11:50:41 +0100
Message-Id: <20220527105042.2233128-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
References: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] lib/drm_fdinfo: Ensure buffer is null
 terminated
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Ensure buffer is null terminated at the point where the read ended and not
at the end of the whole buffer. Otherwise string parsing can stray into
un-initialised memory.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_fdinfo.c | 8 ++++----
 lib/igt_drm_fdinfo.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
index b422f67a4ace..250d9e8917f2 100644
--- a/lib/igt_drm_fdinfo.c
+++ b/lib/igt_drm_fdinfo.c
@@ -44,12 +44,12 @@ static size_t read_fdinfo(char *buf, const size_t sz, int at, const char *name)
 	if (fd < 0)
 		return 0;
 
-	buf[sz - 1] = 0;
-	count = read(fd, buf, sz);
-	buf[sz - 1] = 0;
+	count = read(fd, buf, sz - 1);
+	if (count > 0)
+		buf[count - 1] = 0;
 	close(fd);
 
-	return count;
+	return count > 0 ? count : 0;
 }
 
 static int parse_engine(char *line, struct drm_client_fdinfo *info,
diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
index 5db63e28b07e..8759471615bd 100644
--- a/lib/igt_drm_fdinfo.h
+++ b/lib/igt_drm_fdinfo.h
@@ -46,7 +46,7 @@ struct drm_client_fdinfo {
  * igt_parse_drm_fdinfo: Parses the drm fdinfo file
  *
  * @drm_fd: DRM file descriptor
- * @info: Structure to populate with read data
+ * @info: Structure to populate with read data. Must be zeroed.
  *
  * Returns the number of valid drm fdinfo keys found or zero if not all
  * mandatory keys were present or no engines found.
@@ -58,7 +58,7 @@ unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info);
  *
  * @dir: File descriptor pointing to /proc/pid/fdinfo directory
  * @fd: String representation of the file descriptor number to parse.
- * @info: Structure to populate with read data
+ * @info: Structure to populate with read data. Must be zeroed.
  *
  * Returns the number of valid drm fdinfo keys found or zero if not all
  * mandatory keys were present or no engines found.
-- 
2.32.0

