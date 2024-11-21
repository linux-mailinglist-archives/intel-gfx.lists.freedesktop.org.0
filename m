Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C519D4AF9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 11:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B3010E8DC;
	Thu, 21 Nov 2024 10:41:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QDX8JvC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ADD710E0FB;
 Thu, 21 Nov 2024 10:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732185699; x=1763721699;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z2Og3so7mp5RNexJO559BWLlvCofbh38EUzYlIS7nf0=;
 b=QDX8JvC34lAAwStoSEzTUDdO63j0h0QXk4uJY0hCAEDYyhWS3N9m9s99
 yvDVaEeKNfc1I1D8MOg2kIOUcQ8DGMfYQ9juFo1xRXkpyCikxBZCMWViO
 2YN6KVXA2k1AcR3cgtRizqwwUw3S5qq51cwoGOEWJ5oLYTuPNsmsXRQbd
 WbUex+eIiQfzzYvvg3Afdngkhm2YM7ajTitr0cb2qQey22mmFAj8OT2Ay
 iDrTPFdFjlRiQAzgbAE8s1btIijaDSS12qfoyhWM+CZXpep81h5VhJD3Z
 YO2OTAM+xQtbp45a3L32yWRJ5rorqszQP6Yog8Y2ujh4uRCKgOC4okGD5 g==;
X-CSE-ConnectionGUID: NPpw3iDzSVaGGWOnbqPsNA==
X-CSE-MsgGUID: gN20eG1cTbWrrA+pmPectQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="32406853"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="32406853"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 02:41:38 -0800
X-CSE-ConnectionGUID: +EgKYpoMRDKfPeiefyoWBQ==
X-CSE-MsgGUID: 0ThdCkE6TXqisdf1DanXWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="91022930"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.105])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 02:41:35 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 0/2] tests/gem_mmap_offset: Fix OOM hits
Date: Thu, 21 Nov 2024 11:39:26 +0100
Message-ID: <20241121104039.314188-4-janusz.krzysztofik@linux.intel.com>
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

Janusz Krzysztofik (2):
  tests/gem_mmap_offset: Split 'clear' subtest
  tests/gem_mmap_offset: Fix OOM hits

 tests/intel/gem_mmap_offset.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

-- 
2.47.0

