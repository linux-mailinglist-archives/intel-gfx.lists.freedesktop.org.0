Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C9E931A23
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EBF10E1AB;
	Mon, 15 Jul 2024 18:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIncU0K0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD3410E1AB;
 Mon, 15 Jul 2024 18:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721067352; x=1752603352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=APUYdLaHIyhm/Gll8/ra1nbR3Iv74wrnYKbix553TSU=;
 b=aIncU0K08VDQ18LqBuAiPvw+6U/+/tCcWiio5B5G8NmLMqpgdw/DyDsm
 wavmOoJ0totgVr2IlAXxZ9Jcf2L5wG+eOJyVveClldsmWU5SovKRqK5eF
 8tYn369JBT0eTjykEoqRh+IoUi+eFFuRp9WogocmoYBhIFAsUvw6vZ5Hq
 LCZ/S1VqIBLkT6c/PWlL8kxGHx/N3o+cMubmcly2fO+A2kvKH8ZzZvnC0
 MkVbad/gmVMwQgMja8cIqw0Z2FLD6JSXToVFi0C2n0xU6VbgxxpKD224P
 ndWutcKP5FUyaxVWjALfhDmOtprmoyV/UAeSlOewwcBFREdg0KtTqQ2Y+ Q==;
X-CSE-ConnectionGUID: zN2v//uDQaWcEb9PLLRpTQ==
X-CSE-MsgGUID: QY4TxqyVSJCbotUqTnwr4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18597034"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18597034"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:15:52 -0700
X-CSE-ConnectionGUID: 12oFfk2bQO6LfbG94edfPg==
X-CSE-MsgGUID: 4ZbjN3NRSPW5p+Br02JoMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54627889"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:15:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 0/5] tests/gem_ctx_exec: Fix failing preempt timeout
 updates
Date: Mon, 15 Jul 2024 20:13:41 +0200
Message-ID: <20240715181523.2825921-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

CI reports the following failures from basic-nohangcheck subtest:

(gem_ctx_exec:1115) CRITICAL: Test assertion failure function nohangcheck_hostile, file ../../../usr/src/igt-gpu-tools/tests/intel/gem_ctx_exec.c:374:
(gem_ctx_exec:1115) CRITICAL: Failed assertion: err == 0
(gem_ctx_exec:1115) CRITICAL: Last errno: 2, No such file or directory
(gem_ctx_exec:1115) CRITICAL: Hostile unpreemptable context was not cancelled immediately upon closure

The subtest sets 50 ms preempt timeout on each engine before proceding
with submission of spins, then it waits up to 1 second for those spins to
be terminated.  However, dump of engines' debugfs data performed by the
subtest after the failure shows preempt timeouts still at their default
values: 7500 ms on rcs0 and 640 ms on other class engines.  Dmesg records
confirm preemption timeouts triggered on other engines after 640 ms and
not on rcs0 within the 1 second limit.

Fix the issue.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268

Janusz Krzysztofik (5):
  tests/gem_ctx_exec: Fail on unsuccessful preempt timeout update
  lib: Add more debug messages to error paths
  lib/gem_engine_topology: Fix premature break from primary find loop
  lib/gem_engine_topology: Simplify the method of opening a primary
  lib/gem_engine_topology: Fix broken compare of device links

 lib/i915/gem_engine_topology.c | 24 ++++++++++--------------
 lib/igt_sysfs.c                |  4 ++--
 tests/intel/gem_ctx_exec.c     |  5 +++--
 3 files changed, 15 insertions(+), 18 deletions(-)

-- 
2.45.2

