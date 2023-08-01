Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B142876B602
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5647D10E070;
	Tue,  1 Aug 2023 13:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89AAA10E070
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690897017; x=1722433017;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ezxdV30jVXBDzXVoXXNWBRk7Kw1BZCJ0y9nc3L6PuEY=;
 b=cpiajaf9QlTUlLwVHsIFrCDhqJSP/uXN8U99nxgM1EvBN/M6gHeeLVe5
 htAzkrwhtWbyBXS+tkqPHNWvBupp5PFWmUqkVGpl/tlX83wH4LqxKT1Oc
 Lvef9X0s6bUJlsDtLOOR7thZ6D493Rj8FpEaVK3EMisWd6jI1Bnb8pHOq
 Ra3/dIqZ6WAYxmmbSc+azAP1ILhp3V0dsen2KOTJPJZPDe0Q7ErIBDjWp
 O71FfShoFI7I6n7qfUEYDUMwrZRx8/hPFlN6AQb9d9HbM8FaDIpFVErFg
 D4D5upJpp89NIn2EPv9k+jCjqEv7a3gspnReP01nAY7WWfxrULstzguDo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="400246220"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="400246220"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:36:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="763763001"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="763763001"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.188])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:36:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
Date: Tue, 01 Aug 2023 16:36:52 +0300
Message-ID: <87a5vax4sr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 00/14] Replace acronym with full platform
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Jul 2023, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> Replacing the acronym used in platform/sub platform defines.
> This series covers Haswell, Broadwell, Skylake, Kabylake, Coffeelake,
> Cometlake, Rocketlake, Jasperlake, Elkhartlake, Tigerlake, Alderlake,
> platform define.This way there is a consistent pattern 
> to how platforms are referred.splitting to per paltform for easier 
> cherrypicks, if needed.
>
> v2:
>  - Reordered patches by incrementing platform generations.(Anusha)
>  - Changeed the commit subject with lowercase platform names.
> v3:
>  - The IS_PLATFORM_(DISPLAY/MEDIA/GRAPHICS)_STEPS replace with Unrolled
>  format. i.e. IS_PLATFORM_FULL_NAME () && IS_DISPLAY_STEPS()
>
> v4:
>  - Removed the MTL platform from the renaming series (Mat Ropper)
>  - Removed the unused display steps macro.
>  - Resolved conflicts.
>
> Anusha Srivatsa (1):
>   drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
>
> Dnyaneshwar Bhadane (13):
>   drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
>   drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
>   drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
>   Follow consistent naming convention. Replace KBL with KABYLAKE.Replace
>     IS_KBL_GRAPHICS_STEP with IS_KABYLAKE () && IS_GRAPHICS_STEP().
>   drm/i915/cfl: s/CFL/COFFEELAKE for platform/subplatform defines
>   drm/i915/cml: s/CML/COMETLAKE for platform/subplatform defines
>   drm/i915/rkl: s/RKL/ROCKETLAKE for platform/subplatform defines
>   drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines

With the checkpatch warnings fixed in the above patch, the series is

Acked-by: Jani Nikula <jani.nikula@intel.com>


>   drm/i915/tgl: s/TGL/TIGERLAKE for platform/subplatform defines
>   drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
>   drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
>   drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
>   drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform
>     defines
>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
> Cc: matthew Atwood <matthew.s.atwood@intel.com>
>
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  5 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 14 +--
>  .../gpu/drm/i915/display/intel_combo_phy.c    |  7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  7 +-
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_device.h   |  2 +-
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 33 ++++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 10 +-
>  .../drm/i915/display/skl_universal_plane.c    |  6 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +-
>  drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 13 +--
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 94 +++++++------------
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
>  drivers/gpu/drm/i915/intel_step.c             | 10 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c          | 18 ++--
>  28 files changed, 127 insertions(+), 142 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
