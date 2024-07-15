Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9507A931A26
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE0110E499;
	Mon, 15 Jul 2024 18:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hKyOdtYZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CB510E4A1;
 Mon, 15 Jul 2024 18:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721067360; x=1752603360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NYSQ4N2twsmyDHw1BLqN4yc2Z/lXhMpi8UpitfTNj4o=;
 b=hKyOdtYZxu8ZW9ik/ashjdekJjc1IcZ3Tw4YtP66uQMwW8uwq7V3dmGA
 XYTjrTb4wGtkq+vu1D773jfgjDOvQLE8/cZVUYTpUtR9WBDvOqFIz5oG1
 2F2IsRTBEBr7JxU0/NqX5LFlpy4Qq7ZzNkkQfoZUYkX9iX+b04M8muZvv
 gGDAtVDWPrRspwJOnPEOoW+F5v8v4sFra+ZjfOD/Huy25eblax+mDIWjJ
 KKyesEtgET0yRB46+UX3lCj+BTClP8m3pAtWUolG2g96m0XZllizPJw4a
 tKjj6iA90BayGPJnuQGFLbSRmzKxJP8Y9N7E39vmQNRhEthj259FR7FOS g==;
X-CSE-ConnectionGUID: pVkMdsx9T3S1drrsYA1IVA==
X-CSE-MsgGUID: 8ZVK8tXaSjSqSHqDHaadzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18597041"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18597041"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:16:00 -0700
X-CSE-ConnectionGUID: 9nTckMuHR7+Oa0tN9U9oTQ==
X-CSE-MsgGUID: fZpJH0zrSZWveyDTYnfRDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54627911"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:15:57 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 3/5] lib/gem_engine_topology: Fix premature break from
 primary find loop
Date: Mon, 15 Jul 2024 20:13:44 +0200
Message-ID: <20240715181523.2825921-10-janusz.krzysztofik@linux.intel.com>
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

When looking for a primary counterpart of a render device, we try to open
each primary minor.  When one fails, we should continue rather then break,
since contiguity of minor numbers assigned to devices is not guaranteed.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index ac9e8e9b1b..79984421b2 100644
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

