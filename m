Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4671A7A4ACD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A1B10E289;
	Mon, 18 Sep 2023 13:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA6F10E18E;
 Mon, 18 Sep 2023 13:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045151; x=1726581151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t6IqFNp2j8xWD+lDsrlKMG9k1FdJ/Q8PzsqPz7SegME=;
 b=CMONc+0DSWsjtYqzS9NrYIOvfgRYZAELAcfrCryjDR9ySoSkL6FV721L
 7C9ISfDx9B5Wt++PDTH7cE6330yZd8tvfiM3OtjcleaKEMo58xuGd7W0m
 X6oPTntnneW0kyuCaFaCdMGy4F7qFBKFOYs4fpgyMhwhGeNJrKwu+cXN4
 HpJxemrnG55PWI6ZOQwLHIyEvylyeUdkXOQHXLGUS9XbLCmbUSvAvZoNu
 xnojjhaVyj1tXK62MJm2hjmixQcRvqgIQ+9YS22WDVZu0h4lRdOrGoR66
 NP9aB//sWszVRIPszornOQR3RgjgzZT7JUZCG6eK5h30djSvu3DAi7kM9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969520"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969520"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030465"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030465"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:28 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:53 +0200
Message-ID: <20230918134249.31645-22-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 03/17] lib/kunit: Fix struct
 kmod_module kunit_kmod not freed
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Dominik=20Karol=20Pi=C4=85tkowski?=
 <dominik.karol.piatkowski@intel.com>, Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We obtain a kmod_module structure for kunit module in order to check if
it is modular or built-in, then we never release that structure.  Fix it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_kmod.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index faf31afabc..34ddec3fad 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -797,6 +797,7 @@ static void __igt_kunit(const char *module_name, const char *opts)
 	}
 
 	is_builtin = kmod_module_get_initstate(kunit_kmod) == KMOD_MODULE_BUILTIN;
+	kmod_module_unref(kunit_kmod);
 
 	results = ktap_parser_start(tst.kmsg, is_builtin);
 
-- 
2.41.0

