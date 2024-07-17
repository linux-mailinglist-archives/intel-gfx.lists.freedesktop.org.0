Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035AB933CF6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C61B10EAAE;
	Wed, 17 Jul 2024 12:30:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SCZhIIip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C2010EABE;
 Wed, 17 Jul 2024 12:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721219441; x=1752755441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EyEKYeHQlvMFS2YWacXk0Ux4WfWLDGJq/qpV2JkzUnU=;
 b=SCZhIIipC/udtyUtJSU9mx9in1YupSGiNrosM/jCmspGDjKdY2JAuTce
 VZx8Ef/e4dQtC+UmcRJKEevLjvoLjhD2qKSOy6wFR9kFUmpo7ylYU33N9
 ViM2dP/jjxVszF9645QMPQk+rq0HEnlUj4O2WpSMj+grPQOpFe8aHc8TP
 ib22i3UtTQO2UGIDMhFiZteailC+7C3Y50BtsHegYnu1zvLRUE7FShWYg
 PhVvjl5vhN5aESWlkfRKHp0Y+9SC2VCGOlM0xOGEU62EE0oQc3z11FK21
 C/HvaiNP2qohy1ayzSlXm48QhCqaSd3yJoDUskwuQt/nJC+Y0sIKicQc3 A==;
X-CSE-ConnectionGUID: +ephw6VQSOOMWWAmv80RWg==
X-CSE-MsgGUID: ail2jmtJSwqXe0nf+EJpWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18856398"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18856398"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:30:39 -0700
X-CSE-ConnectionGUID: nUk4ukAuTRKR+uhJyNLyKA==
X-CSE-MsgGUID: PUKSXd35R1OyCyJ0q80AUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50165235"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:29:05 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 4/5] lib/gem_engine_topology: Simplify the method of
 opening a primary
Date: Wed, 17 Jul 2024 14:26:15 +0200
Message-ID: <20240717122836.3481656-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
References: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
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
index 55000f90ce..8d21be3f1f 100644
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

