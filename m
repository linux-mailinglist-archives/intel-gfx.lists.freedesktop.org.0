Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAF7933CF5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DC810EADF;
	Wed, 17 Jul 2024 12:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VRnwKW34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310FE10EAB1;
 Wed, 17 Jul 2024 12:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721219440; x=1752755440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Qas8+G+GTS52c5aG1HCCUGygm6knJTs3zuYcBqn9uE=;
 b=VRnwKW342hthVxBjX3kQNDmFOCtuaMXV9dfKtoqyu7+YauxcNUAgqOxU
 IjJMTnT9a5MIae6bEjKAuN3QMRqgg1p2hdfHmR3rYf9DWV5Hp85lI61Xp
 Te4pO1f3XjXLQxB/edohk3n8Q4eTtVCEr2n1HWq+3etLBKA8nOULFZd1L
 3dkpYJ9dxH9o/V+WCAXEfeAy2vSMpECri3Gd49oPJwGQaNVIN84S/Epo1
 1diOgnjj9umyqeMvpIE8rBqJVDTVOU2XbVaWTMJ2erGeNfhmeV7GJiIp3
 VBbbKZWpGsxdwS2xcZ4hn3TRPPaVcinYW4Lvj1xxh4/+75/pBXBFVBPqN g==;
X-CSE-ConnectionGUID: 2TmdnGMqTgmNfn2rffwpog==
X-CSE-MsgGUID: sZGBlFxOT7ukZjBC8IX78g==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18856397"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18856397"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:30:39 -0700
X-CSE-ConnectionGUID: Dkus1MlCQFe7IS5AYTVP1g==
X-CSE-MsgGUID: 2R0DRTQmTnmN5JkNMnN/kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50165234"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:29:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 3/5] lib/gem_engine_topology: Fix premature break
 from primary find loop
Date: Wed, 17 Jul 2024 14:26:14 +0200
Message-ID: <20240717122836.3481656-10-janusz.krzysztofik@linux.intel.com>
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

When looking for a primary counterpart of a render device, we try to open
each primary minor.  When one fails, we should continue rather then break,
since contiguity of minor numbers assigned to devices is not guaranteed.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 3e9bdf2e0a..55000f90ce 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -479,7 +479,7 @@ static int __open_primary(int dir)
 		sprintf(buf, "/sys/dev/char/%d:%d", major, minor);
 		dir = openat(fd, buf, O_RDONLY);
 		if (dir < 0)
-			break;
+			continue;
 
 		if (readlinkat(dir, "device", device, sizeof(device)) > 0 &&
 		    !strcmp(device, target))
-- 
2.45.2

