Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D08442D75A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 12:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876966EC69;
	Thu, 14 Oct 2021 10:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394C76EC69
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 10:45:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227548334"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="227548334"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="626760887"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 14 Oct 2021 03:45:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Oct 2021 13:45:35 +0300
Date: Thu, 14 Oct 2021 13:45:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YWgKTynZctcXUIL1@intel.com>
References: <cover.1634207064.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1634207064.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915: intel sbi/pcode cleanup
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

On Thu, Oct 14, 2021 at 01:28:56PM +0300, Jani Nikula wrote:
> Split out the sbi and pcode code to separate files.
> 
> There's potential for follow-up work that's not included here:
> 
> - vlv_sideband, intel_sbi and intel_pcode all use
>   i915->sb_lock. Technically it's fine, but the appearance is confusing.
> 
> - The pcode function naming could use some cleanup.
> 
> - Slightly unrelated, all the functions in intel_display.c using
>   intel_sbi should be moved out of intel_display.c as a group.

I was initialy thinking to just shovel it into intel_fdi.c since
that's more or less the only user atm. But after another thought
intel_pch_refclk.c could be a decent idea. The related ibx/cpt/ppt
code could go there as well.

> 
> 
> BR,
> Jani.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Jani Nikula (2):
>   drm/i915: split out intel_pcode.[ch] to separate file
>   drm/i915: rename intel_sideband.[ch] to intel_sbi.[ch]

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |  3 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/gt/intel_llc.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
>  drivers/gpu/drm/i915/i915_drv.c               |  2 +-
>  drivers/gpu/drm/i915/intel_dram.c             |  2 +-
>  .../i915/{intel_sideband.c => intel_pcode.c}  | 91 +------------------
>  .../i915/{intel_sideband.h => intel_pcode.h}  | 19 ++--
>  drivers/gpu/drm/i915/intel_pm.c               |  2 +-
>  drivers/gpu/drm/i915/intel_sbi.c              | 73 +++++++++++++++
>  drivers/gpu/drm/i915/intel_sbi.h              | 23 +++++
>  18 files changed, 124 insertions(+), 118 deletions(-)
>  rename drivers/gpu/drm/i915/{intel_sideband.c => intel_pcode.c} (69%)
>  rename drivers/gpu/drm/i915/{intel_sideband.h => intel_pcode.h} (63%)
>  create mode 100644 drivers/gpu/drm/i915/intel_sbi.c
>  create mode 100644 drivers/gpu/drm/i915/intel_sbi.h
> 
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
