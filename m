Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A785931A4E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A1A10E4C9;
	Mon, 15 Jul 2024 18:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRT1fo8N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B345910E4C6;
 Mon, 15 Jul 2024 18:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721068227; x=1752604227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a91b1XxOob8ZGPSH/3tb0DMVjT6+lUrIgCuOYrLv5cM=;
 b=cRT1fo8No77130LxDcGzbZ0az7wERyI2ySQ8vBvZvPmCCyK1R1UnctUT
 pwFJl8c7bysFtNDra7d4NIfcYhmL3hsBTZ2Kz0qU9Y/ZB/snt+5u+hrcy
 SmjVBbFq2EjqwTJYD3G7Pb9aFC7qwd1IxV8158pGsw4+9vjB9440hjsWm
 bx+cUrfh5InwlCMM4afhlaxbqh78epBDQ56vV5e9woXeAclw/Y4TlHPW3
 lGiss/iSO5RbmklYyPhp0SnioEL6F5JgT9/IiqroP66REGpNJsHiNkT9C
 V9g3uyJ/AWdeTYMfgSVhKYqDPDLJIEVFI2eryfjlAO7FQUmLW4PL+S4Me A==;
X-CSE-ConnectionGUID: nxW7rraTTRasvExMysrmeg==
X-CSE-MsgGUID: f9Kv5Xk2S8eV5W0iUJ/g8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18618862"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18618862"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:26 -0700
X-CSE-ConnectionGUID: cS/wmCFgRvWphgctay8TRA==
X-CSE-MsgGUID: GST/j2UIQZGsIrqHIxJ7fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54886882"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:25 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 4/5] lib/gem_engine_topology: Simplify the method of
 opening a primary
Date: Mon, 15 Jul 2024 20:27:32 +0200
Message-ID: <20240715183000.2828719-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
References: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
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

