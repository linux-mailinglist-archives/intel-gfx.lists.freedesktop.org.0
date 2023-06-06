Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03574723F8B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 12:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7C410E0FF;
	Tue,  6 Jun 2023 10:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC20F10E1A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686047553; x=1717583553;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QumV0kpkO5EuRHGKe+QuuoerxIBHr1uOhv6VuISNYts=;
 b=Bb983HP3r93jUlIo1N1Ge1VOEhDm3CCASkZuf4Hbzxca7NHzmNuNtfXj
 dhmdT+CeEGm6vQTuYoSaeXaSJ2HwFg5cj67YknUGpwvu/o2w6ZdQMB1Uq
 zjpTD1aPtMEofe4o0rvCEQ+z6uWJRFlJyE3bxeH8grtVi/4y85SIBWkF9
 n3KexAumpbYWL2rdP4gtjezTo4neAm+f0irRJoouaolHTjvEfsDJqfQ5c
 AqgkD7/A+uNdHHv8g+fX5UKyeLCotiGjxXRM5t13z5+BEjUy1Im/bpcSA
 S8xMthq7VpXIohotfBiI/CHV0OBCPs3huIs1so0J6btNALnyXZRRpmrNq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="355482610"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="355482610"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="798785622"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="798785622"
Received: from abobyr-mobl1.ccr.corp.intel.com (HELO localhost) ([10.252.59.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:32:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230606093509.221709-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230606093509.221709-1-vinod.govindapillai@intel.com>
Date: Tue, 06 Jun 2023 13:32:25 +0300
Message-ID: <87y1kwubie.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v14 0/7] mtl: add support for pmdemand
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

On Tue, 06 Jun 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> SAGV configuration support for MTL
>
> v2: added one missing patch in the previous version
>
> v3: chekcpatch warning fixes
>     update index handling for the icl/tgl QGV point handling
>     program pmdemand code simplified
>
> v4: update to debufs and pipe values pmdemand regiters
>     removed the macro usage in update_pmdemand_values
>
> V5: Addressing comments from Gustavo and Jani
>     And some other fixes for issues from CI
>
> v6: Addressing some comments from Gustavo
>     Updates to pmdemand state struct, active phys calculations
>     Got rid of suppress warning patch from v5
>
> v7: Rebased and updates to max ddiclk and active phys calculations
>
> v8: updates to active phys calcuations
>
> v9: Address styling issues
>
> v10: Updates to phys calculation, pmdemand state initialization during
>      HW readout / sanitization
>
> v11: Fix CI checkpatch warnings
>
> v12: Addressing comments
>
> v13: Updates based on imre's comments to handle non serialize cases,
>      updates tp phys mask during sanitize calls after HW readout
>
> v14: check display version before accessig pmdemand functions

Okay, please stop sending new versions now.

We don't want to reach v14 on any patch series. It's a burden on the
developer, the reviewers, the CI, everyone. Please adjust towards
waiting for more review comments before sending another version, and
making the most of each version sent. There are several versions of the
series that didn't receive any feedback; why send another version?

In this case, AFAICT, some of the patches in the series have Reviewed-by
but haven't been changed in the last ten versions of the series. Why
haven't they been merged already? What's the point in resending them
over and over again?


BR,
Jani.


>
> Mika Kahola (1):
>   drm/i915/mtl: Add support for PM DEMAND
>
> Vinod Govindapillai (6):
>   drm/i915: fix the derating percentage for MTL
>   drm/i915: update the QGV point frequency calculations
>   drm/i915: store the peak bw per QGV point
>   drm/i915: extract intel_bw_check_qgv_points()
>   drm/i915: modify max_bw to return index to intel_bw_info
>   drm/i915/mtl: find the best QGV point for the SAGV configuration
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_bw.c       | 345 ++++++---
>  drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  14 +
>  .../gpu/drm/i915/display/intel_display_core.h |  11 +
>  .../drm/i915/display/intel_display_driver.c   |   7 +
>  .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
>  .../drm/i915/display/intel_display_power.c    |  14 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  36 +
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 714 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pmdemand.h |  69 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  36 +-
>  12 files changed, 1153 insertions(+), 123 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
Jani Nikula, Intel Open Source Graphics Center
