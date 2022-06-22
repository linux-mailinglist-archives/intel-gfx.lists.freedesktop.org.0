Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A32F9554C4B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 16:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6787F1123A3;
	Wed, 22 Jun 2022 14:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D25112399;
 Wed, 22 Jun 2022 14:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655907084; x=1687443084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gbUlw16UDUqVSxjjdEPkbkxixvGFHLKs3gJCdC/gq0s=;
 b=bivVSyH29eKuoeozAdYh3pLzrdKVBjWBzab9SV+Fjy9Ff19PtCB43grW
 6hyqbWWJczq+ciVX5eLpzhfSRChm1n01Fa+YliQvIvH8wpZXeb6hRlLmM
 6BDgnZdnR7Kr4EkBpheFS0hxcdIfBwmrSadNSdM/q0JYCnqEJwVLflQdu
 8Gw9gP3QJTmcV2vzrbp9spn1eClxaaNvetrG4R3lBdEP+llkoItsL3DCb
 qN6M7K5yDaPeKrxiKd6eJ3IjIWmJtINsCL/WGnQRVTrIBlwyiiNBHlZqG
 xsGnC1AnfidbjxwgP5yvciqTgiH8pak4s7S9aMLY5GJeHqApUh6zaYbqE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="305878371"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="305878371"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 07:11:23 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="834130504"
Received: from conormag-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.201.124])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 07:11:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 15:11:04 +0100
Message-Id: <20220622141104.334432-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Increase timeout for
 live_parallel_switch
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

With GuC submission, it takes a little bit longer switching contexts
among all available engines simultaneously, when running
live_parallel_switch subtest. Increase the timeout.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5885
Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 93a67422ca3b..c6ad67b90e8a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -212,7 +212,7 @@ static int __live_parallel_switch1(void *data)
 
 			i915_request_add(rq);
 		}
-		if (i915_request_wait(rq, 0, HZ / 5) < 0)
+		if (i915_request_wait(rq, 0, HZ) < 0)
 			err = -ETIME;
 		i915_request_put(rq);
 		if (err)
-- 
2.36.1

