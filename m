Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8027931A4D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B3310E4C7;
	Mon, 15 Jul 2024 18:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKLO9gTB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C9B10E4C3;
 Mon, 15 Jul 2024 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721068224; x=1752604224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NYSQ4N2twsmyDHw1BLqN4yc2Z/lXhMpi8UpitfTNj4o=;
 b=QKLO9gTBAT1L9cHIY7QQ065U1t5m4SehH7ASNk//y4B2qO9KkG9CAMfF
 lS85psR8OZKzX2EW5a7ieFdLgyccp1dwLAV3asj6Lww5fOhsCuQ9+fP1D
 T9ams32sGHMB1fqH+Q7ImGWafH9Fo33Y713ZM56kLmuBD3Wn7ncghr79o
 1t3O6au8EyboktcO8r6PYauTc6ALhoSRsF9q5g+YHwAiu0jQ38SemC9Wa
 5D/UfixOan7i99MMEkxWam0KHbLt8K7GYQ3Xt+2LT3jomAxNszSCvFlVO
 sp0n4ieUNEpgqPQq4Ezy4nftOXgMu9BjssnW3uW4+CJPCmZuQZ+OWZ0zY A==;
X-CSE-ConnectionGUID: SylntbooRR2FdZkyKzzh7Q==
X-CSE-MsgGUID: TqugLj0qT0irT5B+6nJMSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18618859"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18618859"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:24 -0700
X-CSE-ConnectionGUID: 7Og4Vw9PRH+KJgAoSQHlKQ==
X-CSE-MsgGUID: jdl3qW6tQfyfwhRqjmPh1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54886881"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:22 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 3/5] lib/gem_engine_topology: Fix premature break
 from primary find loop
Date: Mon, 15 Jul 2024 20:27:31 +0200
Message-ID: <20240715183000.2828719-10-janusz.krzysztofik@linux.intel.com>
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

