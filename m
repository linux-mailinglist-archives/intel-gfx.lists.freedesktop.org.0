Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4124955D4A7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 15:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F2B10E200;
	Tue, 28 Jun 2022 13:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 889AC10E200;
 Tue, 28 Jun 2022 13:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656422054; x=1687958054;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xkaz6kMSi4gKNz+qZaraLNUFnrcFpZnyheRaJsaYV38=;
 b=PFM+/huX6QqMC42X3lWcsXKcmC5+7ZAKoiaIBrKInNDVxQCKx47W6+Sg
 ty/ffteQEP9QhceKtlaSmRzoYnAOe80NKE668+Iy/IQhjTcgwDHrBhvwh
 ITbtaZBtj7V3H5LWJCB+JTHmO8ci9t9kxA7zXZY6c4Qb+mK26q6VHu3ES
 yXJbLr932oCP2Yx70LVVd9gkbZlBvXEEMm1pte+tC0waGCjXdOTmJ79m7
 XeNL5QyB3wBczW1JwRc1E1iIfBjPpWvXZros5ekuvlY41a9/3EWjLzz5Q
 lhJ+POmbxdevl/nsLJ7g24Gl8B+wvbo7WFoMAfeE8eyesQWvPDPxJ5tyP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343427295"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343427295"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:14:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="594790361"
Received: from dlee-mobl1.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.214.144.75])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:14:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 28 Jun 2022 14:13:16 +0100
Message-Id: <20220628131318.197965-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] lib/igt_device_scan: fix dangling
 pointer
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It looks like the linkto is out of scope:

../lib/igt_device_scan.c: In function ‘igt_device_add_attr’:
../lib/igt_device_scan.c:368:57: warning: dangling pointer ‘v’ to ‘linkto’ may be used [-Wdangling-pointer=]
  368 |         g_hash_table_insert(dev->attrs_ht, strdup(key), strdup(v));
      |                                                         ^~~~~~~~~
../lib/igt_device_scan.c:351:22: note: ‘linkto’ declared here
  351 |                 char linkto[PATH_MAX];

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 lib/igt_device_scan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index a1cee7a4..5d1d4258 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -338,6 +338,7 @@ static void igt_device_add_attr(struct igt_device *dev,
 				const char *key, const char *value)
 {
 	const char *v = value;
+	char linkto[PATH_MAX];
 
 	if (!key)
 		return;
@@ -348,7 +349,6 @@ static void igt_device_add_attr(struct igt_device *dev,
 	if (!v) {
 		struct stat st;
 		char path[PATH_MAX];
-		char linkto[PATH_MAX];
 		int len;
 
 		snprintf(path, sizeof(path), "%s/%s", dev->syspath, key);
-- 
2.36.1

