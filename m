Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A83BF64B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 09:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B39FE6E879;
	Thu,  8 Jul 2021 07:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F8D6E879
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 07:33:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="209421840"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="209421840"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 00:33:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487450327"
Received: from victorge-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 00:33:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
Date: Thu, 08 Jul 2021 10:32:58 +0300
Message-ID: <87h7h56z11.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/7] Minor revid/stepping and workaround
 cleanup
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

On Wed, 07 Jul 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> PCI revision IDs don't always map to GT and display IP steppings in an
> intuitive/sensible way.  On many of our recent platforms we've switched
> to using revid->stepping lookup tables with the infrastructure in
> intel_step.c to handle stepping lookups and comparisons.  Since it's
> confusing to have some of our platforms using the new lookup tables and
> some still using old revid comparisons, let's migrate all the old
> platforms over to the table approach since that's what we want to
> standardize on going forward.  The only place that revision ID's should
> really get used directly now is when checking to see if we're running on
> pre-production hardware.

Anusha, Matt, please sort this out between the two of you. :)

https://patchwork.freedesktop.org/series/92257/


BR,
Jani.


>
> Let's also take the opportunity to drop a bit of effectively dead code
> in the workarounds file too.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>
> Matt Roper (7):
>   drm/i915: Make pre-production detection use direct revid comparison
>   drm/i915/skl: Use revid->stepping tables
>   drm/i915/icl: Use revid->stepping tables
>   drm/i915/jsl_ehl: Use revid->stepping tables
>   drm/i915/rkl: Use revid->stepping tables
>   drm/i915/dg1: Use revid->stepping tables
>   drm/i915/cnl: Drop all workarounds
>
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 81 +++----------------
>  drivers/gpu/drm/i915/i915_drv.c               |  8 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 80 +++---------------
>  drivers/gpu/drm/i915/intel_pm.c               |  2 +-
>  drivers/gpu/drm/i915/intel_step.c             | 72 +++++++++++++++--
>  drivers/gpu/drm/i915/intel_step.h             |  7 ++
>  10 files changed, 107 insertions(+), 153 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
