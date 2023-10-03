Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1F87B6521
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FCC10E2AD;
	Tue,  3 Oct 2023 09:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF4810E26F;
 Tue,  3 Oct 2023 09:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696324407; x=1727860407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gSF43gsTUeLo/9BscsXV0SubQpBgl6xhJTCloI7NOBg=;
 b=WS1PIatPbe0m4cd24x1ahD6LDlv11R3vDlyNBE7QKigZcdOxuVR3U7B6
 +z8KMYtQx2kK24VXI8dn/2ifdQ0vR6O7BpwZWBW4lsEWO9W4LxLYmGEbz
 uZfCgOy9TfvRSUvxXapn7XD2xIO84luzQvDXKpOsxB16/co5NqqKA3F7o
 7U3Ni/ft4rNRx5LhjJpiwnZN8GVZJZHfMbIKrGUbg/sV396QmUk4Ewgg8
 0dc90seYAY2oNt6h3XaBmVf5MOkipNmqUePsR4N79BRQmqnskt+tNzONs
 AGbchsHhd9mDFVpFafEuuyDu0yszy70oGxwKl/k6tTYpKAdMELoSSMXFu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1419695"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="1419695"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997935731"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="997935731"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.14.111])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Oct 2023 11:10:46 +0200
Message-ID: <20231003091044.407965-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/9] lib/kunit: Fix handling of potential
 errors from F_GETFL
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

