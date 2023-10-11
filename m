Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC5E7C56D5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B15910E8BA;
	Wed, 11 Oct 2023 14:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4761810E8BA;
 Wed, 11 Oct 2023 14:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034704; x=1728570704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KXcU60l+B2Pe8oGTg/ujLfCTJLWW5czT2nkdjrjHMAY=;
 b=Vc06z0ZYncQ1sgAAzJ9NzCRZ/gvTN6M3inkEcPA9EiLCDiEqJGer/+oU
 N1Mq+y5lG7O2ipBSiLzxQvkTZOZKWaTdRBi82QbShvR4E/uJ2SVCsO4nR
 0J1RcWoMjh+LMUtwGkyM/FUTlSnc0/I07hcnY7lj7sE8kfriKJQVan480
 a/YfXdbWceKFR7Wf5nexsk/Q+2XifnVLUsho2QH4OVA8d9XFev2n9Jjfk
 wYlNzuXNJa4cDGC2iFYUWiY9Ty0sHCUOMyi43dlkVR2SB5ZArXDzo5g/5
 Ceps9xJ0FLG/4RADCubf4dqb680a8LgxCDei72PJKMh/g6UQwuYl1QT7f A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042015"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042015"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641531"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641531"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:29:56 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:36 +0200
Message-ID: <20231011141734.590321-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 01/11] lib/ktap: Improve TODO
 workaround description
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A workaround was implemented in IGT KTAP parser so it could accepted KTAP
reports with missing top level KTAP version and test suite plan headers.
While the issue has been fixed by a kernel side commit c95e7c05c139
("kunit: Report the count of test suites in a module"), included in the
mainline kernel since v6.6-rc1, we still need to keep that workaround in
place to preserve IGT compatibility with LTS kernel version 6.1 as long as
it is used by major Linux distributions.

Update the comment with a reference to the kernel side fix and a
clarification on why we need to keep the workaround in place.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_ktap.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 5eac102417..3df4d6950d 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -91,9 +91,16 @@ int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap)
 				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
 				       &n, &len) == 1 && len == strlen(buf))) {
 		/*
-		 * TODO: drop the following workaround as soon as
-		 * kernel side issue of missing lines with top level
-		 * KTAP version and test suite plan is fixed.
+		 * TODO: drop the following workaround, which addresses a kernel
+		 * side issue of missing lines that provide top level KTAP
+		 * version and test suite plan, as soon as no longer needed.
+		 *
+		 * The issue has been fixed in v6.6-rc1, commit c95e7c05c139
+		 * ("kunit: Report the count of test suites in a module"),
+		 * but we still need this workaround for as long as LTS kernel
+		 * version 6.1, with DRM selftests already converted to Kunit,
+		 * but without that missing Kunit headers issue fixed, is used
+		 * by major Linux distributions.
 		 */
 		if (ktap->expect == KTAP_START) {
 			ktap->suite_count = 1;
-- 
2.42.0

