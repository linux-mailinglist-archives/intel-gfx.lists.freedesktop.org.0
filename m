Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE03B933CFA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D5510EAC5;
	Wed, 17 Jul 2024 12:31:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/McQBDq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B0C10EAC6;
 Wed, 17 Jul 2024 12:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721219441; x=1752755441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UieCCKP9YK0Xkkkq+t80oZ9Zl8uTf4I2GnvmI347x7M=;
 b=h/McQBDqIhClLPNN10szTdRPB4IoBHBt4oIp/tYl1+9tYifnPoDOuSD3
 WkVDB8bXdX3cPfLXXOPP7/PCVXEnEc0FEbR39d+Vh77fvmLwl88Jd53Xz
 xlYomRlBpAQxvGpM8qJ1m6nl9GgktNm9Fgq2ZGEIkVlL20uGiupwYi71S
 jwW0Xi3QkM2dVd+lDPglwcmFaPCvby799EKN3C4HXqrXJPTKN0KFGxlH3
 e0sYwfcAFLCrE4yQiqkgMhpsFk+BSe8sDvvUSTSQIbK+Wx/a4AnW8CTmT
 wcemieukb9PFPM9UslW2rzGV9+H8i+ewhOP2lrY20w+NfUKg8n3KL9p2K w==;
X-CSE-ConnectionGUID: QWbhWNB5TEuBSKfmQeIvNQ==
X-CSE-MsgGUID: ep8e0+5vQfGP0TY8tz6zvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18856399"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18856399"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:30:39 -0700
X-CSE-ConnectionGUID: 7f/7g5BKSHSWlVCORcfOsA==
X-CSE-MsgGUID: 5AiN/8/uRjqvJS+Pagy7CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50165236"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:29:07 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 5/5] lib/gem_engine_topology: Fix broken compare of
 device links
Date: Wed, 17 Jul 2024 14:26:16 +0200
Message-ID: <20240717122836.3481656-12-janusz.krzysztofik@linux.intel.com>
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

When looking for a primary counterpart of a render device, we compare
"device" links of both nodes.  If those links point to the same device
then we know we've found the correct primary node.

However, readlinkat() function we use doesn't explicitly terminate read in
strings with null characters, and then the comparison occasionally fails.

Process the second (potential primary counterpart) node only if its
"device" link is of the same length as that of the render node, and limit
the number of compared characters to that length.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 8d21be3f1f..ada150a659 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -467,7 +467,8 @@ static int __open_primary(int dir)
 	if (minor < 64)
 		return dir;
 
-	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
+	len = readlinkat(dir, "device", target, sizeof(target));
+	if (igt_debug_on(len <= 0))
 		return dir;
 
 	close(dir);
@@ -477,8 +478,8 @@ static int __open_primary(int dir)
 		if (dir < 0)
 			continue;
 
-		if (readlinkat(dir, "device", device, sizeof(device)) > 0 &&
-		    !strcmp(device, target))
+		if (readlinkat(dir, "device", device, sizeof(device)) == len &&
+		    !strncmp(device, target, len))
 			break;
 
 		close(dir);
-- 
2.45.2

