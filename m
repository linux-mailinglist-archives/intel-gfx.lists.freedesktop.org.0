Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF8D15B404
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 23:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A896E11D;
	Wed, 12 Feb 2020 22:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6136E11D;
 Wed, 12 Feb 2020 22:40:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 14:40:41 -0800
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="222442951"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 14:40:40 -0800
Date: Wed, 12 Feb 2020 14:40:39 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Message-ID: <20200212224038.GA9248@dbstims-dev.fm.intel.com>
References: <20200212223431.11060-1-dale.b.stimson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212223431.11060-1-dale.b.stimson@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/3] mmio_base via debugfs
 infrastructure + gem_ctx_isolation
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

My apologies for the multiple submissions of this patch series.  I had to
work out an issue with an unsuspected git config value in order to make the
references function with patchwork.


On 2020-02-12 14:34:28, Dale B Stimson wrote:
> This patch series provides infrastructure to allow determination of i915
> per-engine mmio_base (which is otherwise sometimes hard to get).  The provided
> method uses debugfs mmio_base information if present.  Otherwise, a default
> determination is provided when possible.  Also, gem_ctx_isolation is modified
> to use the new infrastructure.
> 
> For example, on TGL, gem_ctx_isolation (without these or similar changes)
> will fail for subtests that use engine vcs1.
> 
> The patches in this series are as they are intended to be submitted (subject
> to comments), except I would like to squash the two gem_ctx_isolation
> "relative registers" patches into one (as discussed below).  Also, function
> gem_engine_mmio_base_info_dump() could be removed.
> 
> On 2020-01-27, Chris wilson sent to the ML:
>   [igt-dev] [PATCH i-g-t 1/5] i915: Start putting the mmio_base to wider use
>   [igt-dev] [PATCH i-g-t 2/5] i915/gem_ctx_isolation: Check engine relative registers
> plus the following, which are not addressed here:
>   [igt-dev] [PATCH i-g-t 3/5] i915: Exercise preemption timeout controls in sysfs
>   [igt-dev] [PATCH i-g-t 4/5] i915: Exercise sysfs heartbeat controls
>   [igt-dev] [PATCH i-g-t 5/5] i915: Exercise timeslice sysfs property
> 
> This patch list is:
>   i915/gem_mmio_base.c - get mmio_base from debugfs (if possible)
>   i915/gem_ctx_isolation: Check engine relative registers
>   i915/gem_ctx_isolation: Check engine relative registers - Part 2
> 
> The first 2020-01-27 patch obtains mmio_base information via sysfs, and depends
> on a proposed kernel change that would provide the mmio_base information
> via sysfs.  It is unclear when or whether that kernel change will progress.
> 
> The mmio_base information used by this patch series is available through
> debugfs now (as of kernel 5.4).  If the per-engine mmio_base information is
> ever added to sysfs, it would be easy to plug that into the infrastructure
> proposed here as an additional higher-priority source of that information.
> 
> This submission replaces the first patch (switching from sysfs to debugfs),
> retains the second 2020-01-27 patch
>   i915/gem_ctx_isolation: Check engine relative registers
> and has a third patch that modifies the original second patch to support the
> altered API:
>   i915/gem_ctx_isolation: Check engine relative registers - Part 2
> 
> I propose squashing the two gem_ctx_isolation "relative registers" patches
> into one patch with author == "Chris Wilson" if Chris agrees.
> 
> Some differences from the 2020-01-27 patches:
> 
> The mmio_base information is fetched once into local data structures, and
> is obtained from them thereafter instead of being fetched from the kernel
> everytime it is wanted.
> 
> The function that obtains the mmio_base information is called by a particular
> test that wants it, and returns a handle through which the mmio_base can be
> requested for any particular engine.
> 
> These patches introduce new source files lib/i915/gem_mmio_base.c
> and lib/i915/gem_mmio_base.h.  Should the code instead be placed into
> lib/i915/gem_engine_topology.c?
> 
> Function gem_engine_mmio_base_info_dump presently exists to dump the
> mmio_base information to stdout for debugging or informational purposes.
> This function is not currently called.  I presume this function should
> be removed.  Is there any desire to keep it around for future use?
> 
> The 2020-01-27 patches define function gem_engine_mmio_base() with its first
> parameter as "fd".  The new patches replace the first parameter with the
> mmio_base object handle.
> 
> Chris Wilson (1):
>   i915/gem_ctx_isolation: Check engine relative registers
> 
> Dale B Stimson (2):
>   i915/gem_mmio_base.c - get mmio_base from debugfs (if possible)
>   i915/gem_ctx_isolation: Check engine relative registers - Part 2
> 
>  lib/Makefile.sources           |   2 +
>  lib/i915/gem_mmio_base.c       | 346 +++++++++++++++++++++++++++++++++
>  lib/i915/gem_mmio_base.h       |  19 ++
>  lib/igt.h                      |   1 +
>  lib/meson.build                |   1 +
>  tests/i915/gem_ctx_isolation.c | 229 +++++++++++++---------
>  6 files changed, 506 insertions(+), 92 deletions(-)
>  create mode 100644 lib/i915/gem_mmio_base.c
>  create mode 100644 lib/i915/gem_mmio_base.h
> 
> -- 
> 2.25.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
