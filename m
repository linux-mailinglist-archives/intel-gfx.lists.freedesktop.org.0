Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA564896D8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 11:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A2A14A3B0;
	Mon, 10 Jan 2022 10:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CDA14A3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 10:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641812359; x=1673348359;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c+rEwMdZd5yrmUuehqxq8ukeFFvUmBMt5qGVKLadT40=;
 b=ghe+3RcEHrW/OF5HptaD+99/N+EKkwmo+RPR1F+mTd/khRzr6r+sWZ/0
 K5paQh47imbyIE88E+Hyv+fezVBfryB57B2H+IIaNKxMICdsGPW97x7/O
 TvWTE/V9J4dg1eCkL3djGE7WuH9SJ8HJcCXoeMepXNU4bUwjHNDqYVpd9
 NsQ6GeN4cXIxxcZ24UbxytLabjUlxtXf+ZiY0fGlN1koeeJ22KLWlcBKM
 5fA9eNuHHMVssDtTWvAGxMpwzLei6UAlRS6jyMDLK3fE+fjN2jlCJRRUb
 0SbbzJpr48kuF8xmoHgLQk7XSzIDZtPvSrMo9GjgI/6FM1zO6TQUpGMm1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267528557"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="267528557"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 02:59:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="514635009"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 02:59:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220108044055.3123418-7-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-7-matthew.d.roper@intel.com>
Date: Mon, 10 Jan 2022 12:59:13 +0200
Message-ID: <87y23nambi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915/gt: Move engine registers
 to their own header
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

On Fri, 07 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> Let's start breaking up and cleaning up the massive i915_reg.h file.
> We'll start by moving all registers that are defined in relation to an
> engine base to their own header.
>
> There are probably a bunch of other "engine registers" that we haven't
> moved yet (especially those that belong to the render engine in the
> 0x2??? range), but this is a relatively straightforward first step.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   1 +
>  drivers/gpu/drm/i915/gt/gen6_engine_cs.c      |   1 +
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h   | 197 +++++++++++++
>  .../drm/i915/gt/intel_execlists_submission.c  |   1 +
>  drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |   1 +
>  drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |  15 -
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |   1 +
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
>  drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |   1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |   1 +
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   1 +
>  drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   1 +
>  drivers/gpu/drm/i915/gt/selftest_rps.c        |   1 +
>  drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   3 +-
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |   1 +
>  drivers/gpu/drm/i915/gvt/mmio_context.h       |   1 +
>  drivers/gpu/drm/i915/i915_cmd_parser.c        |   1 +
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
>  drivers/gpu/drm/i915/i915_perf.c              |   1 +
>  drivers/gpu/drm/i915/i915_pmu.c               |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 267 +-----------------
>  drivers/gpu/drm/i915/i915_reg_defs.h          |  98 +++++++

I think I would've liked to see this file split up as a separate prep
patch.

BR,
Jani.

>  drivers/gpu/drm/i915/i915_request.c           |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               |   1 +
>  drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
>  32 files changed, 327 insertions(+), 281 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_regs.h
>  create mode 100644 drivers/gpu/drm/i915/i915_reg_defs.h
>

-- 
Jani Nikula, Intel Open Source Graphics Center
