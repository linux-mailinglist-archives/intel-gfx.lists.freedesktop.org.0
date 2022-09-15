Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8175B9AAE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 14:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E500310E1B1;
	Thu, 15 Sep 2022 12:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BD910E1B1;
 Thu, 15 Sep 2022 12:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663244724; x=1694780724;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=L82vbEkgB+Fh/tCmRQ1IHa+UNcLaoXrntwFbM0PRRx0=;
 b=Uj6eg9tGbiD6xnvVfoUvd1iBkEuA5CJbShYCJ+/Q5TxzcDG2fcuh1eDb
 VptYeVWZGKXqv5SkNmsblqzucA61TWmrLlChuUgnMeD7huigtCtzpDP24
 z/EZ3a8qDh923FHeH4FxgK6nrweZbXo2N7ODWC+vXsuP03V7OUMBVsC+K
 6d28+YwcKfzAKRcfiKq38dZD5TJx+aep8qmNhYGR+kmotodRJ+mg/rVO9
 ZzZnomBs7rfKf7MEg822lX0c+hcsepUGKrUO+/T6/eGF9cdII7FPrU+5J
 KxuWTh8rZhhRhBeULHLCD8tWbg1Weh1vGy5dhjDvIqXQkfhT7MKYtz3Iy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299508674"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="299508674"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 05:25:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="792684497"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.146])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 05:25:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220914220427.3091448-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220914220427.3091448-1-matthew.d.roper@intel.com>
Date: Thu, 15 Sep 2022 15:25:15 +0300
Message-ID: <87czbwsu38.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/4] Further multi-gt handling
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 14 Sep 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> Now that MTL is going to start providing two GTs, there are a few more
> places in the driver that need to iterate over each GT instead of
> operating directly on gt0.  Also some more deliberate cleanup is needed,
> in cases where we fail GT/engine initialization after the first GT has
> been fully setup.

Hijacking the thread a bit, not to be considered a blocker for this
series:

Is there a plan to kzalloc i915->gt[0] too in intel_gt_probe_all() so we
wouldn't need to have intel_gt gt0 in struct drm_i915_private? And the
to_gt() inline would return i915->gt[0] instead of &i915->gt0? (And
maybe i915_drv.h wouldn't need the definition of intel_gt anymore! :o)

BR,
Jani.


>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>
> Chris Wilson (1):
>   drm/i915/gt: Cleanup partial engine discovery failures
>
> Tvrtko Ursulin (3):
>   drm/i915: Make GEM resume all engines
>   drm/i915: Make GEM suspend all GTs
>   drm/i915: Handle all GTs on driver (un)load paths
>
>  drivers/gpu/drm/i915/gem/i915_gem_pm.c    | 33 ++++++++++++++--
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 16 ++++++--
>  drivers/gpu/drm/i915/i915_driver.c        |  3 +-
>  drivers/gpu/drm/i915/i915_gem.c           | 46 +++++++++++++++++------
>  4 files changed, 78 insertions(+), 20 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
