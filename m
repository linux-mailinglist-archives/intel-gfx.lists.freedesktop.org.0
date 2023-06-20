Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F35B8737196
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 18:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B88B10E193;
	Tue, 20 Jun 2023 16:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0D310E192
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 16:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687278656; x=1718814656;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cKY1SYXTSLX/GpjJ7c5iOElt7zLKk+S2PXN2e59scnY=;
 b=cHLLw/zVJgS7jxxzkxNAUUEfdEDO5NxCKlfY3lbbpM9z9BsP9B8bhmAv
 SDkpMzjy16+OrQaRzzYO/cwJPpQV2rFNCr0z5tzStOZpHd8A7hcvYCz89
 kgt2IRuonuB9/JUKh58vgniTVaXXeHvB12stJmu+gBYaRLAqv5QGchlSV
 L/7N1XdnOLpt9Z/NcJn69EsOaLNQHY3oPwdzP38BWF7CR0xjUoEv7K3sC
 e8+os4kdnXmuLPD6vvHDIzvDMdb+1SqWnnTaJruCYXNRYSMs2u3Bkhs70
 N6pWFTVXyLI4dr90vXGJQZlRLoW3NjEC03CRwPrIxhXOtpiosR0+2Qm43 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="362452515"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="362452515"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 09:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="664323987"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="664323987"
Received: from dshvarts-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.204])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 09:30:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
Date: Tue, 20 Jun 2023 19:30:46 +0300
Message-ID: <87y1kef64p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform
 name in defines.
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Jun 2023, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> Replace all occurences of ADL with ALDERLAKE, TGL with TIGERLAKE, 
> MTL with METEORLAKE, RKL with ROCKETLAKE, JSL with JASPERLAKE, 
> KBL with KABYLAKE and SKL with SKYLAKE in platform and subplatform
> defines. This way there is a consistent pattern to how platforms 
> are referred. While the change is minor and could be combined to 
> have lesser patches, splitting to per subpaltform for easier 
> cherrypicks, if needed.

First of all, I'll note that changes like these need maintainer acks
before merging. Simple review for correctness is not enough!

While discussing this, there was perhaps a slight preference for moving
towards acronyms for brevity instead of expanding all of them to full
names. It can get a bit unwieldy.

For background, the reasons for having IS_<TLA>_DISPLAY_STEP() are
two-fold: the steppings used to be platform specific, so it made sense
to tie platform and stepping together, and IS_<LONG_NAME>_DISPLAY_STEP()
was considered too long combined.

Nowadays, we've abstracted steppings in code to be independent of
platforms, so we could use IS_<LONG_NAME>() && IS_DISPLAY_STEP(), and
throw out all the IS_<TLA>_DISPLAY_STEP() macros. They're orthogonal
things, and it actually bugs me to have so many platform specific
wrappers for the combos.

If in addition we moved to acronyms, we could have IS_<TLA>() &&
IS_DISPLAY_STEP(), and it would be pretty short and nice.

That said, all of these changes are a lot of churn, so I'd rather not
make them lightly.


BR,
Jani.




>
> v2:
>  - Fix the checkpatch warning.
>
> Anusha Srivatsa (5):
>   drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
>   drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
>   drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
>   drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines
>   drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
>
> Dnyaneshwar Bhadane (6):
>   drm/i915/TGL: s/TGL/TIGERLAKE for platform/subplatform defines
>   drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
>   drm/i915/TGL: s/RKL/ROCKETLAKE for platform/subplatform defines
>   drm/i915/JSL: s/JSL/JASPERLAKE for platform/subplatform defines
>   drm/i915/KBL: s/KBL/KABYLAKE for platform/subplatform defines
>   drm/i915/SKL: s/SKL/SKYLAKE for platform/subplatform defines
>
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  8 +--
>  .../gpu/drm/i915/display/intel_combo_phy.c    |  6 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
>  .../drm/i915/display/skl_universal_plane.c    | 10 +--
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 10 +--
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 54 ++++++++--------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 64 +++++++++----------
>  drivers/gpu/drm/i915/i915_perf.c              |  4 +-
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
>  drivers/gpu/drm/i915/intel_step.c             | 10 +--
>  drivers/gpu/drm/i915/soc/intel_pch.c          |  6 +-
>  34 files changed, 143 insertions(+), 143 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
