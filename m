Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC3A265DF3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 12:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F407D6EA0C;
	Fri, 11 Sep 2020 10:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119046EA12;
 Fri, 11 Sep 2020 10:31:43 +0000 (UTC)
IronPort-SDR: 89mrhyAH63iYqf3kRkvI9dYXfu2RqweSrQ8kNcwz31R4qWCgdvc7qV2iySuDomLXcRokhNj97J
 jFEzkUEA0SRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156185814"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="156185814"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:42 -0700
IronPort-SDR: ZJp/ZIPDJxvAiU343Pj09EqnuNMB53aI6XSPNixyU3Km2+pTn76/cuQk95akawjso39gU6nErs
 w7LVpFo9tujw==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="334474886"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:41 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Sep 2020 12:30:38 +0200
Message-Id: <20200911103039.4574-24-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v6 23/24] tests/core_hotunplug:
 Un-blocklist *bind* subtests
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Subtests which don't remove the device, only unbind the driver from it,
seem relatively safe and harmless for CI.  Remove them from the CI
blocklist.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel-ci/blacklist.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
index f9a57cb54..25b567038 100644
--- a/tests/intel-ci/blacklist.txt
+++ b/tests/intel-ci/blacklist.txt
@@ -120,7 +120,7 @@ igt@perf_pmu@cpu-hotplug
 
 # Currently fails and leaves the machine in a very bad state, and
 # causes coverage loss for other tests.
-igt@core_hotunplug@.*
+igt@core_hotunplug@.*plug.*
 
 # hangs several gens of hosts, and has no immediate fix
 igt@device_reset@reset-bound
\ No newline at end of file
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
