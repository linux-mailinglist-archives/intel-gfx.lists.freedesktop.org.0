Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9580934A98
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A1310E628;
	Thu, 18 Jul 2024 08:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXRsDrxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A6910E627;
 Thu, 18 Jul 2024 08:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721293182; x=1752829182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XTPq2zuJmb+3MLwHlTnOexYIKiw4ZW3eYHoUGsSb9Co=;
 b=kXRsDrxVLhJ8iY+9DZVgzYecZqWTW1oHcvXVUN8AKZQ1B4Fby2HkPyx5
 ZnQvJZVgf0UZZJCfe/H+25JFSRWDehLHeR7CzZbuJdPl+zYufxGLxWLHo
 yZws3UC6R+4GExB/EptUi8Bs9+X78OjDQRn7zmy1UGyCHsTy4peB1E0ia
 O/aAaKk5gFOxA4ye8yISvzbXb9y7X7MBSx9t7WhC1tUmgFqKX4VbRcUG7
 GgLhv8EvHLWdO5IpLq/de2utv+t+xhPGkgk91XmBIgyppVAguyukF1Asq
 S2RTgIppQEDvGqP8g4EOQ3t+9ZzFW6sYMcXnKxyCFNxImIOnhCyhLqIli Q==;
X-CSE-ConnectionGUID: jVdOS0iURZmp2VzZX1U5Cg==
X-CSE-MsgGUID: 3DRgzOiNTZ6uerD058QFCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30001934"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30001934"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:42 -0700
X-CSE-ConnectionGUID: Ko2u/ybmTLGQtV5GlwsXoQ==
X-CSE-MsgGUID: VNxz8rX8RSScVGB11hAbXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="73929467"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:40 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v4 4/5] lib/gem_engine_topology: Simplify the method of
 opening a primary
Date: Thu, 18 Jul 2024 10:55:15 +0200
Message-ID: <20240718085912.15434-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When opening a potential primary counterpart of a render device, we first
open a parent directory of the render node and pass it to openat() that
can open a path relative to that directory.  But on the other hand, we
build and pass to that function a path of that primary that is absolute,
not relative.  While that construct gives the expected result anyway, it
makes the picture unclear.

Use open() and drop unused code.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 8589af5c1a..c8c1079223 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -470,14 +470,10 @@ static int __open_primary(int dir)
 	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
 		return dir;
 
-	fd = openat(dir, "..", O_RDONLY);
-	if (fd < 0)
-		return dir;
-
 	close(dir);
 	for (minor = 0; minor < 64; minor++) {
 		sprintf(buf, "/sys/dev/char/%d:%d", major, minor);
-		dir = openat(fd, buf, O_RDONLY);
+		dir = open(buf, O_RDONLY);
 		if (dir < 0)
 			continue;
 
@@ -488,7 +484,6 @@ static int __open_primary(int dir)
 		close(dir);
 		dir = -1;
 	}
-	close(fd);
 
 	return dir;
 }
-- 
2.45.2

