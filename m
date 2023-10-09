Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6869D7BDC98
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C1A10E267;
	Mon,  9 Oct 2023 12:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8B610E108;
 Mon,  9 Oct 2023 12:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855411; x=1728391411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/RIDSrKU9FdqsdvZzlKw77yW3mncuRgCUOVcczpa/w8=;
 b=gM+XB2PV530QHsr+NcsWrq3r0uV5ysUE/bdbaCvtA9XBDHwr0mgjswxc
 L2JlpiOpg8BlZP5OuvQlQSvFAaTXka64mb3iSTlqY4mJwbH8sK2QmE2Ep
 JXmpCuBv/qfpFbwy0NBMtJPP3nM5Y0U5nIpPTe9F57IWlOTvo7aSWN9Lm
 fgF0GvNBrx/qFb9M25GBAqnGq38d3VXiEebG/l68rXeUnLm3EFYGZC/GZ
 Jk4QnlWlBLNRnlk68gRFjwIVyJ9/knOLt95U4CB0NugCV0bhcPku85Hiy
 3/XrXrv11uA08yuqfMt+4NB9CdsZKqQAkuIXLyRkCSkNAlFbwl+klAqQc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010561"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010561"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326813"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326813"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:29 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:27:52 +0200
Message-ID: <20231009122750.519112-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 01/11] lib/kunit: Fix handling of
 potential errors from F_GETFL
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

Function fcntl(..., F_GETFL, ...) that returns file status flags may also
return a negative error code.  Handle that error instead of blindly using
the returned value as flags.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_kmod.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index d98e6c5f9e..05ff178b27 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -783,8 +783,8 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 
 	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
 
-	flags = fcntl(tst->kmsg, F_GETFL, 0) & ~O_NONBLOCK;
-	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags) == -1,
+	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
+	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
 		      "Could not set /dev/kmsg to blocking mode\n");
 
 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
-- 
2.42.0

