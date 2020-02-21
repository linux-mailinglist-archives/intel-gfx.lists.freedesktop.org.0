Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412FD167BDC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 12:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B13A6F407;
	Fri, 21 Feb 2020 11:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E4F6F406;
 Fri, 21 Feb 2020 11:17:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 03:17:31 -0800
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; d="scan'208";a="225190764"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 03:17:30 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Feb 2020 12:16:59 +0100
Message-Id: <20200221111701.30006-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 0/2] tests/gem_userptr_blits:
 Exercise mmap-offset mapping to userptr
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Submitted in series with PATCH 1/2 "lib/i915: Restrict mmap types to
GTT if no MMAP_OFFSET support", which I'm resubmitting without changes
as a dependency required for CI to be able to process PATCH 2/2.  
Please focus on PATCH 2/2 "tests/gem_userptr_blits: Exercise mmap-offset
mapping to userptr".

Thanks, 
Janusz

Janusz Krzysztofik (2):
  lib/i915: Restrict mmap types to GTT if no MMAP_OFFSET support
  tests/gem_userptr_blits: Exercise mmap-offset mapping to userptr

 lib/i915/gem_mman.c            |  5 ++++
 lib/i915/gem_mman.h            |  7 ++++--
 tests/i915/gem_ctx_sseu.c      |  2 +-
 tests/i915/gem_exec_params.c   |  2 +-
 tests/i915/gem_madvise.c       | 18 +++++++++++----
 tests/i915/gem_mmap_offset.c   | 10 ++++----
 tests/i915/gem_userptr_blits.c | 42 ++++++++++++++++++++++++++++++++++
 tests/i915/i915_pm_rpm.c       |  2 +-
 8 files changed, 74 insertions(+), 14 deletions(-)

-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
