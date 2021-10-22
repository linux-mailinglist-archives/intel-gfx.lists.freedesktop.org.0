Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9476B4374CE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 11:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F6B6E928;
	Fri, 22 Oct 2021 09:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C6D6E925;
 Fri, 22 Oct 2021 09:35:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="209370887"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="209370887"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 02:35:11 -0700
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="495601872"
Received: from aeremina-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.254.107])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 02:35:07 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210624070516.21893-1-matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: daniele.ceraolospurio@intel.com, john.c.harrison@intel.com
To: Matthew Brost <matthew.brost@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163489530491.10153.576017085715728906@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 22 Oct 2021 12:35:04 +0300
Subject: Re: [Intel-gfx] [PATCH 00/47] GuC submission support
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

Hi Matt & John,

Can you please queue patches with the right Fixes: references to convert
all the GuC tracepoints to be protected by the LOW_LEVEL_TRACEPOINTS
protection for now. Please do so before next Wednesday so we get it
queued in drm-intel-next-fixes.

There's the orthogonal track to discuss what would be the stable set of
tracepoints we could expose. However, before that discussion is closed,
let's keep a rather strict line to avoid potential maintenance burned.

We can then relax in the future as needed.

Regards, Joonas

Quoting Matthew Brost (2021-06-24 10:04:29)
> As discussed in [1], [2] we are enabling GuC submission support in the
> i915. This is a subset of the patches in step 5 described in [1],
> basically it is absolute to enable CI with GuC submission on gen11+
> platforms.
>=20
> This series itself will likely be broken down into smaller patch sets to
> merge. Likely into CTBs changes, basic submission, virtual engines, and
> resets.
>=20
> A following series will address the missing patches remaining from [1].
>=20
> Locally tested on TGL machine and basic tests seem to be passing.
>=20
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>=20
> [1] https://patchwork.freedesktop.org/series/89844/
> [2] https://patchwork.freedesktop.org/series/91417/
>=20
> Daniele Ceraolo Spurio (1):
>   drm/i915/guc: Unblock GuC submission on Gen11+
>=20
> John Harrison (10):
>   drm/i915/guc: Module load failure test for CT buffer creation
>   drm/i915: Track 'serial' counts for virtual engines
>   drm/i915/guc: Provide mmio list to be saved/restored on engine reset
>   drm/i915/guc: Don't complain about reset races
>   drm/i915/guc: Enable GuC engine reset
>   drm/i915/guc: Fix for error capture after full GPU reset with GuC
>   drm/i915/guc: Hook GuC scheduling policies up
>   drm/i915/guc: Connect reset modparam updates to GuC policy flags
>   drm/i915/guc: Include scheduling policies in the debugfs state dump
>   drm/i915/guc: Add golden context to GuC ADS
>=20
> Matthew Brost (36):
>   drm/i915/guc: Relax CTB response timeout
>   drm/i915/guc: Improve error message for unsolicited CT response
>   drm/i915/guc: Increase size of CTB buffers
>   drm/i915/guc: Add non blocking CTB send function
>   drm/i915/guc: Add stall timer to non blocking CTB send function
>   drm/i915/guc: Optimize CTB writes and reads
>   drm/i915/guc: Add new GuC interface defines and structures
>   drm/i915/guc: Remove GuC stage descriptor, add lrc descriptor
>   drm/i915/guc: Add lrc descriptor context lookup array
>   drm/i915/guc: Implement GuC submission tasklet
>   drm/i915/guc: Add bypass tasklet submission path to GuC
>   drm/i915/guc: Implement GuC context operations for new inteface
>   drm/i915/guc: Insert fence on context when deregistering
>   drm/i915/guc: Defer context unpin until scheduling is disabled
>   drm/i915/guc: Disable engine barriers with GuC during unpin
>   drm/i915/guc: Extend deregistration fence to schedule disable
>   drm/i915: Disable preempt busywait when using GuC scheduling
>   drm/i915/guc: Ensure request ordering via completion fences
>   drm/i915/guc: Disable semaphores when using GuC scheduling
>   drm/i915/guc: Ensure G2H response has space in buffer
>   drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC
>   drm/i915/guc: Update GuC debugfs to support new GuC
>   drm/i915/guc: Add several request trace points
>   drm/i915: Add intel_context tracing
>   drm/i915/guc: GuC virtual engines
>   drm/i915: Hold reference to intel_context over life of i915_request
>   drm/i915/guc: Disable bonding extension with GuC submission
>   drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
>   drm/i915/guc: Reset implementation for new GuC interface
>   drm/i915: Reset GPU immediately if submission is disabled
>   drm/i915/guc: Add disable interrupts to guc sanitize
>   drm/i915/guc: Suspend/resume implementation for new interface
>   drm/i915/guc: Handle context reset notification
>   drm/i915/guc: Handle engine reset failure notification
>   drm/i915/guc: Enable the timer expired interrupt for GuC
>   drm/i915/guc: Capture error state on context reset
>=20
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   |   30 +-
>  drivers/gpu/drm/i915/gem/i915_gem_context.h   |    1 +
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |    3 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |    6 +-
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |   41 +-
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.h   |   14 +-
>  .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |    7 +
>  drivers/gpu/drm/i915/gt/intel_context.c       |   41 +-
>  drivers/gpu/drm/i915/gt/intel_context.h       |   31 +-
>  drivers/gpu/drm/i915/gt/intel_context_types.h |   49 +
>  drivers/gpu/drm/i915/gt/intel_engine.h        |   72 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  182 +-
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   71 +-
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.h  |    4 +
>  drivers/gpu/drm/i915/gt/intel_engine_types.h  |   12 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  234 +-
>  .../drm/i915/gt/intel_execlists_submission.h  |   11 -
>  drivers/gpu/drm/i915/gt/intel_gt.c            |   21 +
>  drivers/gpu/drm/i915/gt/intel_gt.h            |    2 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |    6 +-
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c   |   22 +-
>  drivers/gpu/drm/i915/gt/intel_gt_requests.h   |    9 +-
>  drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |    1 -
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   20 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |   28 +
>  drivers/gpu/drm/i915/gt/intel_rps.c           |    4 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |   46 +-
>  .../gpu/drm/i915/gt/intel_workarounds_types.h |    1 +
>  drivers/gpu/drm/i915/gt/mock_engine.c         |   41 +-
>  drivers/gpu/drm/i915/gt/selftest_context.c    |   10 +
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  |   20 +-
>  .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   15 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   82 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  106 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  460 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h    |    3 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  318 ++-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   22 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |   25 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   88 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 2197 +++++++++++++++--
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   17 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  102 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   11 +
>  drivers/gpu/drm/i915/i915_debugfs.c           |    2 +
>  drivers/gpu/drm/i915/i915_debugfs_params.c    |   31 +
>  drivers/gpu/drm/i915/i915_gem_evict.c         |    1 +
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   25 +-
>  drivers/gpu/drm/i915/i915_reg.h               |    2 +
>  drivers/gpu/drm/i915/i915_request.c           |  159 +-
>  drivers/gpu/drm/i915/i915_request.h           |   21 +
>  drivers/gpu/drm/i915/i915_scheduler.c         |    6 +
>  drivers/gpu/drm/i915/i915_scheduler.h         |    6 +
>  drivers/gpu/drm/i915/i915_scheduler_types.h   |    5 +
>  drivers/gpu/drm/i915/i915_trace.h             |  197 +-
>  .../gpu/drm/i915/selftests/igt_live_test.c    |    2 +-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |    3 +-
>  57 files changed, 4159 insertions(+), 787 deletions(-)
>=20
> --=20
> 2.28.0
>=20
