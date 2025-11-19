Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E471C6E2A4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 12:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0808210E5DF;
	Wed, 19 Nov 2025 11:13:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QFp5Ff9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E1C10E5E7;
 Wed, 19 Nov 2025 11:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763550798; x=1795086798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zkMYoq/Q0BFSBigGA46xdb53hY4N2YGQdVNNQNDYvd4=;
 b=QFp5Ff9V8Ns+D7p92LdoA5Hp7vWQthVjgtaMt7U2GALy3tiT8Oc0063+
 P1GvbExSeN+5sCIm5Lm66JV9o/tSbvYtGKcLwXqDyjklV3EH7/WafIZDs
 43irwsrAZjUlmot9W9EPruOsl1OVrs7gF3Knf3H1S+GjfL2ZgN224nAJw
 cEFQlJu5NV5gl2l3NZeHF/Tvrs5Q6r+Xjpbom9KUcLE5pQqaj/+EWCXiN
 7MsgQ0WmAJIT0FWXJ5SNdo5D3lXPYNAtduzj07ZJqcmF1rABgcPWJcU0c
 lgz7GMn6W34McjXDm0YSQ/h/bTRmnITIS2EhUepdQBebKW637g0ujrmtO A==;
X-CSE-ConnectionGUID: OSP0eZliRrCa98+ggaJm7w==
X-CSE-MsgGUID: Zf87+zJ8RkiIxL/GORTCkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88241625"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="88241625"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:18 -0800
X-CSE-ConnectionGUID: pm4Arg7CTWWBNgBFLQRA/A==
X-CSE-MsgGUID: rEGW3ovdTG6FShBqAW4kHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191816436"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.203])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:16 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 3/3] tests/intel/gem_eio: Avoid skips in stress subtests
Date: Wed, 19 Nov 2025 11:57:22 +0100
Message-ID: <20251119111205.1297907-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
References: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
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

Now that the subtests have been converted to dymamic, and each dynamic
sub-subtest gets its own pre-test timeout slot, avoid skips on too few
measurements collected within a presumed time limit by still extending
that limit, now with no risk of per-test timeout expiration.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15178
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 5981ae4d71..16dbb57a04 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -931,7 +931,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
 	igt_stats_init(&stats);
-	igt_until_timeout(20) {
+	igt_until_timeout(30) {
 		const intel_ctx_t *ctx = context_create_safe(fd);
 		igt_spin_t *hang;
 		unsigned int i;
-- 
2.51.1

