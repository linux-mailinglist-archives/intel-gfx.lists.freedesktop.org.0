Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF80248CDEE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 22:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3A210EA30;
	Wed, 12 Jan 2022 21:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BAD10EA30
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 21:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642023706; x=1673559706;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CFY6XumYEa7QF+P5vgVXZNtBSoUcQkSdnN6D8n1Q/Xw=;
 b=Ul2xj2fxq4bW6PzKqsv085dk3NtftK/Yk11j11Ux44B5J/OIAAFcbZIX
 CW8yEhM5Zr2p4XR9CTKHUwOXghirOFY4NEbYEoDSrPM5/iR4ak0g7U0b2
 95MwIfK08alDglClGezIh4zo1uRSnBZybJGY082miMeOVaLlXq7gY554h
 Lj5CNSRhRYnbqv6MO6tdb6fbLNiNmNizJLEhHNNEggvvkgXhz0xCLwYZm
 0d+7KPKe62fENGFUBE2MRak6R90l0SWrTQjn4CWjtLvGgIL6KUiVOpgAJ
 fhEOB9KE4Ds2U0XhHQ68OPuWwkIouD4krtU1QiW/18nYmLgJUx/2c4VJH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="242677442"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="242677442"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 13:41:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="529384948"
Received: from sramagir-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 13:41:44 -0800
Date: Wed, 12 Jan 2022 16:41:43 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Yd9LFygL5q43ziNW@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 00/11] Start cleaning up register
 definitions
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 10, 2022 at 09:15:49PM -0800, Matt Roper wrote:
> Let's start splitting up and cleaning up parts of i915_reg.h.  Rather
> than starting with dead code removal as we did in v1, this time we'll
> switch a few macros to parameterized style, and then move a few types of
> registers (engine registers, SNPS PHY registers) off to their own header
> files.
> 
> v3:
>  - Split out i915_reg_defs.h in its own patch
>  - Also split out combo PHY and MG/DKL PHY sets of registers
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Matt Roper (11):
>   drm/i915: Use parameterized GPR register definitions everywhere
>   drm/i915: Parameterize PWRCTX_MAXCNT
>   drm/i915: Parameterize ECOSKPD
>   drm/i915: Use RING_PSMI_CTL rather than per-engine macros
>   drm/i915: Replace GFX_MODE_GEN7 with RING_MODE_GEN7
>   drm/i915: Introduce i915_reg_defs.h
>   drm/i915/gt: Move engine registers to their own header
>   drm/i915: Move SNPS PHY registers to their own header
>   drm/i915: Move combo PHY registers to their own header
>   drm/i915: Move TC PHY registers to their own header
>   drm/i915: Drop unused _PORT3 and _PORT4 TC phy register offsets
> 
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>  .../gpu/drm/i915/display/intel_combo_phy.c    |   1 +
>  .../drm/i915/display/intel_combo_phy_regs.h   | 162 ++++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
>  .../drm/i915/display/intel_display_power.c    |   1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   1 +
>  .../drm/i915/display/intel_snps_phy_regs.h    |  75 ++
>  drivers/gpu/drm/i915/display/intel_tc.c       |   1 +
>  .../gpu/drm/i915/display/intel_tc_phy_regs.h  | 280 ++++++
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   1 +
>  drivers/gpu/drm/i915/gt/gen6_engine_cs.c      |   1 +
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h   | 197 ++++
>  .../drm/i915/gt/intel_execlists_submission.c  |   1 +
>  drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |   1 +
>  drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |  15 -
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |   9 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
>  drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  11 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |   7 +-
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   1 +
>  drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   1 +
>  drivers/gpu/drm/i915/gt/selftest_rps.c        |   1 +
>  drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   3 +-
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |   5 +-
>  drivers/gpu/drm/i915/gvt/mmio_context.h       |   1 +
>  drivers/gpu/drm/i915/i915_cmd_parser.c        |  69 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
>  drivers/gpu/drm/i915/i915_perf.c              |   1 +
>  drivers/gpu/drm/i915/i915_pmu.c               |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 841 +-----------------
>  drivers/gpu/drm/i915/i915_reg_defs.h          |  98 ++
>  drivers/gpu/drm/i915/i915_request.c           |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               |  11 +-
>  drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
>  44 files changed, 911 insertions(+), 907 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_regs.h
>  create mode 100644 drivers/gpu/drm/i915/i915_reg_defs.h

I understand that I'm late to the fun here, but I got myself wondering if
we couldn't separated the registers in a "regs" directory
and find some way to organize them in IP blocks matching the hw...

mainly thinking about 2 cases:

1. searching for registers usages...
2. the idea of having some sort of auto generation from spec...

> 
> -- 
> 2.34.1
> 
