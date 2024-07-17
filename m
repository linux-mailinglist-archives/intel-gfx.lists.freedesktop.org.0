Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766B7933CF7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E0810EABB;
	Wed, 17 Jul 2024 12:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dd5TgypJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 693C610EAAE;
 Wed, 17 Jul 2024 12:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721219439; x=1752755439;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZmV6Y23MWit/JDE7okfxV4BSVvtKfKdhKYOxpG+Zpmg=;
 b=dd5TgypJ+pYR7Z+DpFDWwoUUcx1oNHHgeOYkGO09cgnx21bQJqI5ijqI
 Tz9Va0LNclgoxfKIEE6ScuCc+OVZhZ+UMIzVc2P4/NItdwZRqZLJeWSPN
 HJWczsiaFIlXjEb5Tbyr63KZTBWDZZCTTbEglHW5g5/HHB/Szwlx6qmyU
 dB4op1Swj0j5vrjCZwyLmcGzhEUbM1HC3+nqLckKRTc0zTcvBd+h6o5GN
 +bpg1KJWoTkoZfD+yyYptFvVqz14i8VpPlCNNSbkc1OlptJ/L991vQovS
 pHzY+9//J5wFEPLx/8HsOW7kn3SXwco7/QSo5B2pS0XmDo7vWYL+nfbe5 g==;
X-CSE-ConnectionGUID: VVIfENwxQwifhK8+AJkqLQ==
X-CSE-MsgGUID: sZB6DTR0TH+ZHKPYF6Safw==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18856394"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18856394"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:30:39 -0700
X-CSE-ConnectionGUID: Fd5bKPLISSaJMDI5to/8+w==
X-CSE-MsgGUID: DuMB7AnuRqGp8KcSJF2HvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50165229"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:28:57 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 0/5] tests/gem_ctx_exec: Fix failing preempt timeout
 updates
Date: Wed, 17 Jul 2024 14:26:11 +0200
Message-ID: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
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

v2: Fix missing closing parenthesis.
v3: Don't fail on unsuccessful update of preempt_timeout_ms, older
    platforms don't support it but can still succeed,
  - add still more debug messages.

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

