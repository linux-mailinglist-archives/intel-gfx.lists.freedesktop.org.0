Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6AB931A27
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62FDD10E4A4;
	Mon, 15 Jul 2024 18:16:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ig5UOzpV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C76C10E4A3;
 Mon, 15 Jul 2024 18:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721067363; x=1752603363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a91b1XxOob8ZGPSH/3tb0DMVjT6+lUrIgCuOYrLv5cM=;
 b=Ig5UOzpVikTd08cfopOZYl0xDklwPa67ifvG1EBmYdyOHgdeCZyceIKs
 h/FpSUl9NczoJ03PIlWnL1GMGV/V1qBMoxxQxZy8ZnGn+HjJdIvpWYVBr
 pHwSfhd+s0idrrGNpCxnM4wZAwvPW3ohXR9hx5CwfagnjJOwqKbewqGcL
 8I70fJZyKn4WLcpR4yTo7jHQribpgqIHSvbv3ret/n5oJ6XvYyc7tfn5P
 vXvbnfzNogZTUNhr6But65IZ5DAFOFjOLXnftd9Sp8bgpG9GyGBP5Iz0S
 82awTSyJROYs718SKnMILj4+Cm1qdadLqFc5PRZsbaRUo5Z+rurMX3O2q g==;
X-CSE-ConnectionGUID: z2uOUOn7S8moDELEPDLHig==
X-CSE-MsgGUID: FmF9RCMcTRmrk3AeS9ensw==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18597043"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18597043"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:16:03 -0700
X-CSE-ConnectionGUID: PJI1ICRASHmjNpdfcnH3JQ==
X-CSE-MsgGUID: dK+gFs8UQKCewaZ76DU1pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54627917"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:15:59 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 4/5] lib/gem_engine_topology: Simplify the method of
 opening a primary
Date: Mon, 15 Jul 2024 20:13:45 +0200
Message-ID: <20240715181523.2825921-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715181523.2825921-7-janusz.krzysztofik@linux.intel.com>
References: <20240715181523.2825921-7-janusz.krzysztofik@linux.intel.com>
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
index 79984421b2..d14190f253 100644
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

