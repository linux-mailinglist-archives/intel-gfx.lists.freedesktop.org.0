Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0E4357E0E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 10:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672B06EA20;
	Thu,  8 Apr 2021 08:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78DB86EA20
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 08:30:48 +0000 (UTC)
IronPort-SDR: CxuqIwM//KXkf7++FpLfdKixsh1qoNLUSRYr+LK/DLRJwY2CLJbN1coQdOyBrz8KINsJD/n+m2
 OCpCcgbXYp4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="173571201"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="173571201"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 01:30:48 -0700
IronPort-SDR: 8EdEtlppgMOVw2Tv0ij/bRnwvOuGGafWP0YgPq1k0oEgDhozcQ9CgeJAomup30f0BwzjSsdFwc
 no2E+kQK3vPA==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="415659780"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.1.187])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 01:30:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.oef
Date: Thu,  8 Apr 2021 10:30:09 +0200
Message-Id: <20210408083009.22860-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210408083009.22860-1-janusz.krzysztofik@linux.intel.com>
References: <20210408083009.22860-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 2/2] intel-ci: Unblock
 core_hotunplug@*hot*bind* subtests
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

Commit be529747d8ea ("intel-ci: Broaden core_hotunplug blacklist")
blamed issues triggered by hot variants[*] as responsible for random
failures in subsequently executed tests,

According to the issue history[*], last reported occurrences were
not related to core_hotunplug.  Remove *hot*bind* subtests from CI
blocklist.

[*] https://gitlab.freedesktop.org/drm/intel/-/issues/2644.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel-ci/blacklist.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
index 33f92e37f..595fd0ca6 100644
--- a/tests/intel-ci/blacklist.txt
+++ b/tests/intel-ci/blacklist.txt
@@ -112,10 +112,10 @@ igt@.*@.*pipe-f($|-.*)
 # Temporary workarounds for CI-impacting bugs
 ###############################################
 
-# Currently fails and leaves the machine in a very bad state, and
-# causes coverage loss for other tests. IOMMU related.
-# https://gitlab.freedesktop.org/drm/intel/-/issues/2644
-igt@core_hotunplug@.*(hot|plug).*
+# *plug* subtests still fail and leave the
+# machine in a very bad state, causing coverage
+# loss for other tests.  IOMMU related.
+igt@core_hotunplug@.*plug.*
 
 # hangs several gens of hosts, and has no immediate fix
 igt@device_reset@reset-bound
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
