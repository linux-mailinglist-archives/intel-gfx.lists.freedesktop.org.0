Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DD3625E44
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 16:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A597610E849;
	Fri, 11 Nov 2022 15:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8751410E849
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 15:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668180191; x=1699716191;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6IrafOLFxP9eY2yjzcs3mBPcGPxJF1Um6TTaSjpuGTE=;
 b=aJ5OvkpWoodgbAPueWa8t+lFtwW3F9mFqpmyYvbaHDPoTRqLJhJIssz1
 b7re0ngL/GnWziOJnoKZZIgmNJxQi+tgt28jQeBP3fJkxqVqc5WJ4F1Ui
 kuDO4Y8159onqJmbIHhBEcWs+sLUTlFvKGKnHTID0m/tG5dnrG15Ikvus
 sEGA0sC4ORY6JrULKY2HNPE+Q+xB+FKBByJqL0nDG+u4CtbHF4Dm1ovS3
 E8q0er/0BTdSdDLuwZPHy19ZdQuodYRVKjMCSovsIVu8dTHa3Y7D6gFYd
 YSHaXAFgbl1oiPWSL4F++kSxhu546f/KVZSnw3g/FRHJ06IFh3eLc/x7P A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="309238666"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="309238666"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:23:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="706567574"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="706567574"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 07:23:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20221109174928.d73bus3khugxwclp@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1668008071.git.jani.nikula@intel.com>
 <20221109174928.d73bus3khugxwclp@ldmartin-desk2.lan>
Date: Fri, 11 Nov 2022 17:23:07 +0200
Message-ID: <87o7td4isk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915: header cleanups, cont'd
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 09 Nov 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Nov 09, 2022 at 05:35:18PM +0200, Jani Nikula wrote:
>>The remaining patches from [1], rebased.
>>
>>I also realized this conflicts with what Lucas is doing so I'd like to
>>get feedback.
>
> if you are talking about
> https://patchwork.freedesktop.org/series/109606/,  then that series
> pretty much stalled on my request for comments on the suggestions I
> gave.
>
> I do think what we have in that patch series could be viewed as a small
> improvement and the redesign, if at all, could be done regardless. If we are
> redesigning it, I will need feedback on possible paths forward.
>
> My main motivation for that series, besides the space reduction was to
> make it easier to cover cases where register addresses moved from the
> traditional A, B, TC1, TC2, .. to TC1, TC2, A, B. The fact that it saves
> code and replaces most of the _PICK() uses come as a bonus. That PICK()
> macro creating an array and accessing it by index is very easy to blow
> up with out of bounds accesses AFAICS.
>
> I don't mind rebasing it on top of this series that is moving the
> definitions around.

I've pushed this one, and acked the path forward you originally
presented in the series you reference. Again, sorry for the indecision.

BR,
Jani.



>
> Lucas De Marchi
>
>>
>>[1] https://patchwork.freedesktop.org/series/110404/
>>
>>Jani Nikula (4):
>>  drm/i915/reg: move masked field helpers to i915_reg_defs.h
>>  drm/i915/reg: move pick even and pick to reg defs
>>  drm/i915: split out intel_display_reg_defs.h
>>  drm/i915: stop including i915_irq.h from i915_trace.h
>>
>> drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
>> drivers/gpu/drm/i915/display/g4x_hdmi.c       |  1 +
>> drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
>> drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>> drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
>> .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
>> .../gpu/drm/i915/display/intel_backlight.c    |  1 +
>> .../drm/i915/display/intel_backlight_regs.h   |  2 +-
>> drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
>> drivers/gpu/drm/i915/display/intel_color.c    |  1 +
>> .../gpu/drm/i915/display/intel_combo_phy.c    |  1 +
>> drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
>> drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
>> drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>> .../drm/i915/display/intel_display_debugfs.c  |  2 +
>> .../drm/i915/display/intel_display_reg_defs.h | 53 ++++++++++++++
>> drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>> drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
>> drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
>> drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>> drivers/gpu/drm/i915/display/intel_dpio_phy.c |  1 +
>> drivers/gpu/drm/i915/display/intel_dpll.c     |  1 +
>> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
>> drivers/gpu/drm/i915/display/intel_drrs.c     |  1 +
>> drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +
>> .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
>> drivers/gpu/drm/i915/display/intel_hdmi.c     |  1 +
>> .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +
>> drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
>> drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>> .../gpu/drm/i915/display/intel_mg_phy_regs.h  |  2 +-
>> .../drm/i915/display/intel_modeset_setup.c    |  1 +
>> drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
>> .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
>> .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
>> drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +
>> drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>> drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
>> .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
>> drivers/gpu/drm/i915/display/intel_sprite.c   |  1 +
>> drivers/gpu/drm/i915/display/intel_tv.c       |  2 +
>> drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
>> drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
>> drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
>> drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +
>> .../drm/i915/display/skl_universal_plane.c    |  2 +
>> drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>> drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  2 +-
>> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
>> .../drm/i915/gem/selftests/i915_gem_mman.c    |  1 +
>> drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
>> .../drm/i915/gt/intel_execlists_submission.c  |  1 +
>> drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
>> drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  1 +
>> drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
>> drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
>> .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +
>> drivers/gpu/drm/i915/gt/intel_workarounds.c   |  1 +
>> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 +
>> drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
>> drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
>> drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
>> drivers/gpu/drm/i915/i915_perf.c              |  1 +
>> drivers/gpu/drm/i915/i915_reg.h               | 70 +------------------
>> drivers/gpu/drm/i915/i915_reg_defs.h          | 30 +++++++-
>> drivers/gpu/drm/i915/i915_trace.h             |  1 -
>> drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
>> drivers/gpu/drm/i915/intel_uncore.c           |  1 +
>> 74 files changed, 166 insertions(+), 82 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h
>>
>>-- 
>>2.34.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
