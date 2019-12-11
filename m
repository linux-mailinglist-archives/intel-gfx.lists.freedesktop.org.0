Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 443AA11BEDA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:12:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB566EBD7;
	Wed, 11 Dec 2019 21:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970706EBD7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:12:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:12:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="215904948"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 11 Dec 2019 13:12:40 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 13:12:39 -0800
Message-Id: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/5] Split up intel_lrc.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The new GuC submission code will get rid of the execlists emulation and
move towards being a more independent submission flow. However, given
that the HW underneath is still the same, the generic engine HW setup
and context handling can be shared between the GuC and execlists
submission paths. Currently, the execlists submission code and the more
generic handlers are mixed together in intel_lrc.c, which makes code
sharing trickier and makes it harder to isolate the 2 submission
mechanisms. Therefore, this series proposes to split the intel_lrc file
to divide the common parts from the submission-specific ones. Apart from
execlists submission and context management, the virtual engine code has
also been split in a generic part to be re-used and a back-end specific
one.

The status of the intel_lrc.c file gets a bit more confusing in the
first patch as execlists_* and lr_context_* functions are mixed
together, but that is solved at the end of the series when all the
execlists_* code is moved away.

I'm not too sure where the functions to emit commands in the ring belong
to, because most of them are common but there will be some small
differences between the GuC and execlist paths (e.g. no busywait with
the GuC). I've left them in intel_lrc.c for now, with a plan to
reconsider once the new GuC code lands and it becomes clearer what the
differences are.

Very lightly tested.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>

Daniele Ceraolo Spurio (4):
  drm/i915: introduce logical_ring and lr_context naming
  drm/i915: split out virtual engine code
  drm/i915: move execlists selftests to their own file
  drm/i915: introduce intel_execlists_submission.<c/h>

Matthew Brost (1):
  drm/i915: Move struct intel_virtual_engine to its own header

 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |    5 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |   27 +
 .../drm/i915/gem/selftests/igt_gem_utils.h    |    3 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |    1 +
 drivers/gpu/drm/i915/gt/intel_engine_pool.c   |    1 +
 .../drm/i915/gt/intel_execlists_submission.c  | 2485 ++++++++++++
 .../drm/i915/gt/intel_execlists_submission.h  |   58 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 3132 +--------------
 drivers/gpu/drm/i915/gt/intel_lrc.h           |   59 +-
 .../gpu/drm/i915/gt/intel_virtual_engine.c    |  360 ++
 .../gpu/drm/i915/gt/intel_virtual_engine.h    |   48 +
 .../drm/i915/gt/intel_virtual_engine_types.h  |   57 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 3316 ++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 3346 +----------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |   30 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |    1 +
 drivers/gpu/drm/i915/gvt/scheduler.c          |    1 +
 drivers/gpu/drm/i915/i915_perf.c              |    1 +
 19 files changed, 6547 insertions(+), 6386 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_execlists_submission.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_execlists_submission.h
 create mode 100644 drivers/gpu/drm/i915/gt/intel_virtual_engine.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_virtual_engine.h
 create mode 100644 drivers/gpu/drm/i915/gt/intel_virtual_engine_types.h
 create mode 100644 drivers/gpu/drm/i915/gt/selftest_execlists.c

-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
