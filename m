Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE757C56D7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E937510E8C2;
	Wed, 11 Oct 2023 14:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B32910E8BF;
 Wed, 11 Oct 2023 14:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034706; x=1728570706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/RIDSrKU9FdqsdvZzlKw77yW3mncuRgCUOVcczpa/w8=;
 b=nbBNDekwJhJ/bNx/UVBNiJK8KN3VbUaFj86tRxIhjK0byTyv7NBi3ICr
 R9NzZiSVnltrwrvmyl+t3FbNwdU1Zt4+7EVJrvm8XZUUNEMYgrOADVzvR
 AXr35SPQ/KxAzeamwe+4bH3Yey0be04r0hdZMWbbVNX6c/7XKNs04R/nI
 c7j312HWq6+DgId3uYDIm0WhT7nU5hESFW7+B3eKxh75gbCEUkp3FNf6u
 8IGnd6CrssAvP/vfbCc2ydHHMEgVwWAhCPJ8A3mRcXX8/BmLksNkD069f
 an80VCi4OJM1HIqhDMAfCCR8nxBsDXMsg/9TTP8hvUYgPkCAZFPEL8b6i w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042023"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042023"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641538"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641538"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:29:58 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:37 +0200
Message-ID: <20231011141734.590321-15-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 02/11] lib/kunit: Fix handling of
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

