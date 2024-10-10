Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F712998844
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 15:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A9310E90B;
	Thu, 10 Oct 2024 13:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMVmnUQM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E153510E8FC;
 Thu, 10 Oct 2024 13:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728568247; x=1760104247;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=39cI15fSHOlIbWFEMUL8X8+qLnMWjuXGOc60EjPJcTE=;
 b=mMVmnUQM9L3MtbqPsVlUT4691KvWwRj3JKXfKaZcQ5yai9QJdE9KePn4
 Cofz34/D2MsOKdpWPdPPM01tE/2BagANoUVY2Yx+01cjwIJnN2USidXpt
 7mtXTTMUkZcH5h1F4z8tsk/AFGDjw9n5k0xD4hR/M08r9IjxlZu+Bs4TD
 869pjhE+smAHVjFYxbDu6tB6q02LAbzIXlJib4srW41GO4c6cu9hYh5jQ
 n74/jBjdbC1WKj+UIa09QXmxIysZ6KlT0CALS1m0MT4pPKmPDegO4wUE4
 TGYzpTLJ1khqFGKAi5aFbsQHbf1p8XFfKzn7kYDp0GPH5rjceaaHR2qJ8 Q==;
X-CSE-ConnectionGUID: 5UnQrA1nSDyTHOfFrzVfCg==
X-CSE-MsgGUID: nSXp0+P0T9Oa4LvEHAxPUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45402737"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="45402737"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:50:46 -0700
X-CSE-ConnectionGUID: Ag5BPi8NS/KpKIc0FTKdrA==
X-CSE-MsgGUID: X6HsxArkQrmUQpeOKzjWwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="76781917"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.126])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:50:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] lib/gem_mman: Stop lying about I915_MMAP_OFFSET_GTT
 support
Date: Thu, 10 Oct 2024 15:49:06 +0200
Message-ID: <20241010135023.275507-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.46.2
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

A few tests depend on for_each_mmap_offset_type() helper used for
selection of device supported mmap_offset types in loops either around
dynamic sub-subtests or inside subtest bodies.  That helper in turn
calls gem_has_mmap_offset_type() to omit unsupported mmap_offset types.
Unfortunately, its code returns GTT as supported mmap_offset type also on
new platforms that no longer support that type.  Poorly coded subtests may
than take unexpected processing paths and return unexpected results that
are not easy to understand and explain.

Fix it.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11370
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_mman.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 0b41ba70dd..cd0c65e213 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -90,6 +90,8 @@ bool gem_has_mmap_offset_type(int fd, const struct mmap_offset *t)
 	if (gem_has_mmap_offset(fd))
 		if (gem_has_lmem(fd))
 			return t->type == I915_MMAP_OFFSET_FIXED;
+		else if (t->type == I915_MMAP_OFFSET_GTT)
+			return gem_has_mappable_ggtt(fd);
 		else
 			return t->type != I915_MMAP_OFFSET_FIXED;
 	else
-- 
2.46.2

