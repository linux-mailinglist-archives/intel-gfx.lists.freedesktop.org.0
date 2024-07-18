Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29228934A94
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301A910E60A;
	Thu, 18 Jul 2024 08:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TD+ingWN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBAC10E603;
 Thu, 18 Jul 2024 08:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721293175; x=1752829175;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jOnhgscwg5Q24aqGNz91uBlYHIEbSIqCkbcD3mQArCg=;
 b=TD+ingWNzPJ6O4PfEG+EDpshbCHis/QmWr7duroX4GpWFdqYvFz3GBcN
 5vi6I7nX2CVaEDGfiKa9YI4uT23U0nq3aLP2MZ0rIHcSXVk04CXvyWBO4
 q4rgByOzLmXsbPZ/ju3wpGGmRQUUTcrMBoiYF4z9+A8KuISQzkPUwWQe1
 HGYIfHR5MpqDhRr/RtqC9c1mchnlfKPahnmjbajBXxzOqCh+riwbPlPUo
 tymZlKJb9zCGD64yduAz+Vgux2I8c3H29iSQQkksr6ODE6aXkOTvWV77X
 o++0L85KkqY+HXllkEkmMwUIv89LvVcBou7ZTrrMgJNWJN/061Lj7DhaL w==;
X-CSE-ConnectionGUID: jmaNnnGSSSOj/VFpsZ44rA==
X-CSE-MsgGUID: 2yTMhyV+R0Gcf+06EeE0KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30001910"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30001910"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:34 -0700
X-CSE-ConnectionGUID: jnb1l4jvSRS+/wXuina0dQ==
X-CSE-MsgGUID: a9Nhl/uyS2qSCMyJLQn2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="73929438"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:32 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v4 0/5] tests/gem_ctx_exec: Fix failing preempt timeout
 updates
Date: Thu, 18 Jul 2024 10:55:11 +0200
Message-ID: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
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

v2: Fix missing closing parenthesis.
v3: Don't fail on unsuccessful update of preempt_timeout_ms, older
    platforms don't support it but can still succeed,
  - add still more debug messages.
v4: Fix missing line termination.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268

Janusz Krzysztofik (5):
  tests/gem_ctx_exec: Fail on unsuccessful preempt timeout update
  lib: Add more debug messages to error paths
  lib/gem_engine_topology: Fix premature break from primary find loop
  lib/gem_engine_topology: Simplify the method of opening a primary
  lib/gem_engine_topology: Fix broken compare of device links

 lib/i915/gem_engine_topology.c | 33 ++++++++++++++++-----------------
 lib/igt_sysfs.c                |  4 ++--
 tests/intel/gem_ctx_exec.c     | 11 +++++++----
 3 files changed, 25 insertions(+), 23 deletions(-)

-- 
2.45.2

