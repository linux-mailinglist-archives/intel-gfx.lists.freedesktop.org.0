Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA68D5B6CBD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 14:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CDA10E6C5;
	Tue, 13 Sep 2022 12:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA42610E6BA;
 Tue, 13 Sep 2022 12:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663070710; x=1694606710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+G3cKIXSKaajf1yOVXeKsE75470mn+BRZnCsXYPqABk=;
 b=H1oZ0K1IaIIN0aoHYajM0L885puWsCkH2oiyznvNI4L0e/eFeBbsLoHV
 WEm+4ISynXQKWb7OT+h4Dz5OXubU0Jn3yYeEwU4c5/za1/BPgMQPxgnda
 ftI5Ta2xxe6ySxufGo1Vm//tcmB3n6QFHW50aRhlu91QFSTqDQw994Uw4
 61uOFxnXcWe9L7SpbxreLAlsKPQ0ndkYC+0DSYRadweSIw7PnWbuaPtzK
 RBSpm5b5gLKb8TPMmRC1a0rQ0727XtXmTG5UMgeiD/4Gz6cUxrMy1xDf3
 M9ww+LP1VbYzlZ3VTmTfmC7W8UgTCjpdvw5I8mBuFvUBJiUubJJnIU3Mf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="281136836"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="281136836"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678538763"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:09 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 13 Sep 2022 14:04:41 +0200
Message-Id: <20220913120441.146757-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/4] tests/core_hotunplug: Select health
 checks for initially detected chipset
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As soon as we first time open a drm device to be exercised, we identify
its chipset, store that information, and perform some basic device
specific checks.  We also store a filter that matches the device bus
address to make sure we will exercise still one and the same device after
each driver unbind-rebind / device unplug-rediscover operation.

However, each time before we select device specific health checks, whether
before or after a driver unbind-rebind / device unplug-rediscover
operation, we identify the device chipset again.  Besides being more
expensive, that approach could also result in using different set of
health checks should device filters not work as expected.

Always use the stored chipset type instead of identifying it now and
again.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 29cb26ab12..7c7ed09e63 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -400,7 +400,7 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 	if (closed)	/* store fd for cleanup if not dirty */
 		priv->fd.drm_hc = fd_drm;
 
-	if (is_i915_device(fd_drm)) {
+	if (priv->chipset == DRIVER_INTEL) {
 		/* don't report library failed asserts as healthcheck failure */
 		priv->failure = "Unrecoverable test failure";
 		if (local_i915_healthcheck(fd_drm, "") &&
-- 
2.25.1

