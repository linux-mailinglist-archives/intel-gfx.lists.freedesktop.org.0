Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A115E7F3C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 18:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631B910E59C;
	Fri, 23 Sep 2022 16:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05DA10E59A;
 Fri, 23 Sep 2022 16:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663948921; x=1695484921;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cdXQirSBV8tHFFJKFpdQsqg3we2Mc0rnVkZvy+xfcaE=;
 b=RY2+vnJK9/L16NObqq0/JTQLURd5wtIziX1XGBAlv0s1/KhhjZqLCVh+
 lIQPYVho+KfcLUu7J2QzmZo1cH9zJeGjBf4X281xt+OzgV4k7XlR/l4r6
 TrWN3J7mhTXqE2NPT3dpJJOdWBZsestd4nt0j0qztG2DeTzkjvVVLGhKm
 2k5XF7T0OI2PcS13q02DiG1FmlTrjPLUX/bivVOcMwAz0cC7Lfu7TEBpB
 MubOxfXRT35SMT4inkT1i/U9rMUoQ2oB6LnyzNhS9JWdelk4xaj3cWZgK
 4aEDUkyE7C0qp8zxNfHsTls203G6a+L2grsWbN1RvMVU9yEPUqZOKMbSh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="280986100"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="280986100"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 09:01:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="709340142"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 09:01:45 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 23 Sep 2022 18:01:37 +0200
Message-Id: <20220923160137.1991101-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] gem_ctx_persistence: adjust reset timeout
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tests on DG2 show that context cancel can take even 350ms,
due to error state capturing in guc_handle_context_reset.
Since it happens only in debug mode and tests runs in debug mode
it should be fine to adjust the timeout.
Let's double this value, to be on safe side.
It should fix multiple test timeout failures.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 50196edb19f..a844439de19 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -1214,7 +1214,7 @@ static void do_test(void (*test)(int i915, const intel_ctx_cfg_t *cfg,
 	if (timeout != -1) {
 		igt_require(gem_engine_property_printf(i915, name,
 						       ATTR, "%d", 50) > 0);
-		reset_timeout_ms = 200;
+		reset_timeout_ms = 700;
 	}
 
 	test(i915, cfg, engine);
-- 
2.34.1

