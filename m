Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358EC15AF5D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 19:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A5D6E0DC;
	Wed, 12 Feb 2020 18:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804306E0DC;
 Wed, 12 Feb 2020 18:02:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 10:02:17 -0800
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="227893449"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Feb 2020 10:02:17 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 10:01:41 -0800
Message-Id: <cover.1581381780.git.dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/3] mmio_base via debugfs infrastructure
 + gem_ctx_isolation
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

[This is an unchanged resubmission due to not being picked up by CI.]

This patch series provides infrastructure to allow determination of i915
per-engine mmio_base (which is otherwise sometimes hard to get).  The provided
method uses debugfs mmio_base information if present.  Otherwise, a default
determination is provided when possible.  Also, gem_ctx_isolation is modified
to use the new infrastructure.

For example, on TGL, gem_ctx_isolation (without these or similar changes)
will fail for subtests that use engine vcs1.

The patches in this series are as they are intended to be submitted (subject
to comments), except I would like to squash the two gem_ctx_isolation
"relative registers" patches into one (as discussed below).  Also, function
gem_engine_mmio_base_info_dump() could be removed.

On 2020-01-27, Chris wilson sent to the ML:
  [igt-dev] [PATCH i-g-t 1/5] i915: Start putting the mmio_base to wider use
  [igt-dev] [PATCH i-g-t 2/5] i915/gem_ctx_isolation: Check engine relative registers
plus the following, which are not addressed here:
  [igt-dev] [PATCH i-g-t 3/5] i915: Exercise preemption timeout controls in sysfs
  [igt-dev] [PATCH i-g-t 4/5] i915: Exercise sysfs heartbeat controls
  [igt-dev] [PATCH i-g-t 5/5] i915: Exercise timeslice sysfs property

This patch list is:
  i915/gem_mmio_base.c - get mmio_base from debugfs (if possible)
  i915/gem_ctx_isolation: Check engine relative registers
  i915/gem_ctx_isolation: Check engine relative registers - Part 2

The first 2020-01-27 patch obtains mmio_base information via sysfs, and depends
on a proposed kernel change that would provide the mmio_base information
via sysfs.  It is unclear when or whether that kernel change will progress.

The mmio_base information used by this patch series is available through
debugfs now (as of kernel 5.4).  If the per-engine mmio_base information is
ever added to sysfs, it would be easy to plug that into the infrastructure
proposed here as an additional higher-priority source of that information.

This submission replaces the first patch (switching from sysfs to debugfs),
retains the second 2020-01-27 patch
  i915/gem_ctx_isolation: Check engine relative registers
and has a third patch that modifies the original second patch to support the
altered API:
  i915/gem_ctx_isolation: Check engine relative registers - Part 2

I propose squashing the two gem_ctx_isolation "relative registers" patches
into one patch with author == "Chris Wilson" if Chris agrees.

Some differences from the 2020-01-27 patches:

The mmio_base information is fetched once into local data structures, and
is obtained from them thereafter instead of being fetched from the kernel
everytime it is wanted.

The function that obtains the mmio_base information is called by a particular
test that wants it, and returns a handle through which the mmio_base can be
requested for any particular engine.

These patches introduce new source files lib/i915/gem_mmio_base.c
and lib/i915/gem_mmio_base.h.  Should the code instead be placed into
lib/i915/gem_engine_topology.c?

Function gem_engine_mmio_base_info_dump presently exists to dump the
mmio_base information to stdout for debugging or informational purposes.
This function is not currently called.  I presume this function should
be removed.  Is there any desire to keep it around for future use?

The 2020-01-27 patches define function gem_engine_mmio_base() with its first
parameter as "fd".  The new patches replace the first parameter with the
mmio_base object handle.


Chris Wilson (1):
  i915/gem_ctx_isolation: Check engine relative registers

Dale B Stimson (2):
  i915/gem_mmio_base.c - get mmio_base from debugfs (if possible)
  i915/gem_ctx_isolation: Check engine relative registers - Part 2

 lib/Makefile.sources           |   2 +
 lib/i915/gem_mmio_base.c       | 346 +++++++++++++++++++++++++++++++++
 lib/i915/gem_mmio_base.h       |  19 ++
 lib/igt.h                      |   1 +
 lib/meson.build                |   1 +
 tests/i915/gem_ctx_isolation.c | 229 +++++++++++++---------
 6 files changed, 506 insertions(+), 92 deletions(-)
 create mode 100644 lib/i915/gem_mmio_base.c
 create mode 100644 lib/i915/gem_mmio_base.h

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
