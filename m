Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 374179DB65C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C938410E343;
	Thu, 28 Nov 2024 11:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R78phttC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A13EA10E337;
 Thu, 28 Nov 2024 11:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732792724; x=1764328724;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RVdUlgnz9OMV9YSr4TxTiBlogfGcnCZEVRKdAU/WPCQ=;
 b=R78phttCQoJBxm365y0E8K/4xmciFWIGIJ5VFWdIrSI530is39C94h9Q
 Y8Wz3DmyyrdyVb97clOKmjYut2kfzCMxqKTo1pNSGeLjy/lJDgZ8Qkbav
 fYVxuV9nU7hZtfI4ymnWXn6b5/CDjgav7xia5fBMG1j/EOL6KomIj2Rp3
 tjxcgsV6XvytbZit4pjFIK5hVQkeHqz6IM+/2G1iJa/3OsfLQdCaB8+ix
 LrDbOpjsrfa5I9U0Za/eDqx1IaWMPxESOxlmkKZmK00/7D8AGQPHuk+K+
 xu0tWvuWlQ8VPI4b+0giZDU1e1kSLjlQoHS1AscH79nkhvaJgf6XZ0QHv g==;
X-CSE-ConnectionGUID: 4OfZIEapSp2zJIqpPwzuyg==
X-CSE-MsgGUID: 6OSqO05pQQCts8pD2mrrYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36806592"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="36806592"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:18:43 -0800
X-CSE-ConnectionGUID: OGoDgU1URu+TsRRwcf40wA==
X-CSE-MsgGUID: o1ko4yYCRhW758H/CJhsYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92143087"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.170])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:18:41 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 0/2] tests/gem_mmap_offset: Fix OOM hits
Date: Thu, 28 Nov 2024 12:16:34 +0100
Message-ID: <20241128111822.836089-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.47.0
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

The 'clear' subtest used to exercise correctness of object memory clearing
on passing a batch with the object to GPU for processing.  However, commit
e25913a1a79d ("i915/gem_mmap_offset: Ignore ENOSPC error for making
residency execbuf"), while resolving an issue of unnecessary failures on
ENOSPC errors, introduced an alternative method of clearing the object
memory, with random selection of one of those methods on each iteration.
The new method expects the memory to be cleared in pagefault handler path.
Since those two methods may give different results, mixing them in one
exercise may make the picture unclear, especially if something goes wrong.

The exercise is executed in several parallel threads, one per CPU.  Each
thread repeats the exercise in a time only limited loop, with no delay
between consecutive iterations.  In case of passing system memory objects
to execbuf, that happens to exhaust all available physical memory, which
is neither the matter nor the goal nor requirement of the exercise.

Move the pagefault method, free from the issue, to a new separate subtest,
and make sure sufficient amount of physical memory is available before
calling another execbuf.

v2: Limit the scope of the fix to SMEM exercise.

Janusz Krzysztofik (2):
  tests/gem_mmap_offset: Split 'clear' subtest
  tests/gem_mmap_offset: Fix OOM hits

 tests/intel/gem_mmap_offset.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

-- 
2.47.0

