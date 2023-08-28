Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A71E978B883
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 21:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CDF10E346;
	Mon, 28 Aug 2023 19:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B2710E341
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 19:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693251573; x=1724787573;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kkMxOQUSsc0ngER61uAYG574XtkcRzFfLy6WN28CjQQ=;
 b=KfY4yriGySNpocFwLcyGCgChpRtdjn/yLXJaOaprFf6tbyx5gtVFneaR
 mZcAd9nUZAwC+8wgjyz+YEpeYUz1TKm9/O9GAjIXMH2AE1eo0fs3t6ThA
 MC1RlHQSeFhx0PpVoLn2mvXp8qdJZwJ2j0KiKHsEpjs1yVZCkW+pba+z8
 YxtJ77QnIq0pYgtHX689ED4AgjY88FrfwkTFUFuHK3u7WApnfD/zCzBGC
 03B32OnsTSr++aLiWctHe115HzQO6sXa2ZwYakd79DZZbQe6fV2ilqACz
 BaM98EN4MZlVdIpEtgwgvMdxSa8aeEGoUbkFsGnrjq7pS5JqGfMGgdwck g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="375157719"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="375157719"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 12:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="767808777"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="767808777"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 12:39:32 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:28:51 -0700
Message-Id: <20230828192852.2894671-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/gt: Wait longer for tasks in
 migrate selftest
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
Cc: chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The thread_global_copy subtest of the live migrate selftest creates a
large number of threads and waits 10ms for them all to start.  This is
not enough time to wait for the threaded tasks to start, as some may
need to wait for additional ring space to be granted.  Threads that do
so are at risk of getting stopped (signaled) in the middle of waiting
for additional space, which can result in ERESTARTSYS getting reported
erroneously by i915_request_wait.

Instead of waiting a flat 10ms for the threads to start, wait 10ms per
thread.  This grants enough of a buffer for each thread to wait for
additional ring space when needed.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Andi Shyti <andi.shyti@intel.com>

Jonathan Cavitt (1):
  drm/i915/gt: Wait longer for tasks in migrate selftest

 drivers/gpu/drm/i915/gt/selftest_migrate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

