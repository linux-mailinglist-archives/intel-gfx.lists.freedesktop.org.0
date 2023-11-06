Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD347E21EF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40E110E2EF;
	Mon,  6 Nov 2023 12:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF7310E2EE;
 Mon,  6 Nov 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274487; x=1730810487;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tin5at6g+aCnWnHDBCks7edCPP8uK/BV3MXuC1ocNfQ=;
 b=Zihmc4clHuZUsdbkeno1rHpKsJxqQ19wuI9xLVsTrttgRDfq+OaAuqoA
 B9AUY0k7dBKTeNxYHu485LMIHsEN94a8wIzDB1xgzcN8dqdyZTumQ3A6Y
 RTWaiEHTjQuyObPlBR0dnBBPzGUpVMhFTUeyc2d1h5u+REi9WKEU2E4ak
 F4RVoM2QHVD6pfMtZXW7wH84JdadMAUqoN+9vCarffxNJGxhOiVMf2C35
 FnbfmZfoNIlyj/9/qzDKZHNLDACrCBLk5Y+WAraCi2tejgdc8JHOUI9tY
 UNRnsm62PPTewuGoZo4vL9Gt8CJ38R2VG4Adt2cirTQ3hAGQ6ovPmSL/K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="392132715"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="392132715"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="762307918"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="762307918"
Received: from lpilolli-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.222])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:41:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <4844651.GXAFRqVoOG@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106091603.231100-2-janusz.krzysztofik@linux.intel.com>
 <87bkc71a48.fsf@intel.com>
 <4844651.GXAFRqVoOG@jkrzyszt-mobl2.ger.corp.intel.com>
Date: Mon, 06 Nov 2023 14:41:20 +0200
Message-ID: <87pm0nyryn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vma: Fix potential UAF on
 multi-tile platforms
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Nov 2023, Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> Hi Jani,
>
> Thanks for looking at this.
>
> On Monday, 6 November 2023 10:53:11 CET Jani Nikula wrote:
>> On Mon, 06 Nov 2023, Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> 
> wrote:
>> > Object debugging tools were sporadically reporting illegal attempts to
>> > free a still active i915 VMA object from when parking a GPU tile believed
>> > to be idle.
>> >
>> > [161.359441] ODEBUG: free active (active state 0) object: ffff88811643b958 
> object type: i915_active hint: __i915_vma_active+0x0/0x50 [i915]
>> > [161.360082] WARNING: CPU: 5 PID: 276 at lib/debugobjects.c:514 
> debug_print_object+0x80/0xb0
>> > ...
>> > [161.360304] CPU: 5 PID: 276 Comm: kworker/5:2 Not tainted 6.5.0-rc1-
> CI_DRM_13375-g003f860e5577+ #1
>> > [161.360314] Hardware name: Intel Corporation Rocket Lake Client Platform/
> RocketLake S UDIMM 6L RVP, BIOS RKLSFWI1.R00.3173.A03.2204210138 04/21/2022
>> > [161.360322] Workqueue: i915-unordered __intel_wakeref_put_work [i915]
>> > [161.360592] RIP: 0010:debug_print_object+0x80/0xb0
>> > ...
>> > [161.361347] debug_object_free+0xeb/0x110
>> > [161.361362] i915_active_fini+0x14/0x130 [i915]
>> > [161.361866] release_references+0xfe/0x1f0 [i915]
>> > [161.362543] i915_vma_parked+0x1db/0x380 [i915]
>> > [161.363129] __gt_park+0x121/0x230 [i915]
>> > [161.363515] ____intel_wakeref_put_last+0x1f/0x70 [i915]
>> >
>> > That has been tracked down to be happening when another thread was
>> > deactivating the VMA inside __active_retire() helper, after the VMA's
>> > active counter was already decremented to 0, but before deactivation of
>> > the VMA's object was reported to the object debugging tools.  Root cause
>> > has been identified as premature release of last wakeref for the GPU tile
>> > to which the active VMA belonged.
>> >
>> > In case of single tile platforms, an engine associated with a request that
>> > uses the VMA is keeping the tile's wakeref long enough for that VMA to be
>> > deactivated on time, before it is going to be freed.  However, on multi-
>> > tile platforms, a request may use a VMA from a tile other than the one
>> > that hosts the request's engine, then, not protected with the engine's
>> > wakeref.
>> >
>> > Get an extra wakeref for the VMA's tile when activating it, and put that
>> > wakeref only after the VMA is deactivated.  However, exclude GGTT from
>> > that processing path, otherwise the GPU never goes idle.  Since
>> > __i915_vma_retire() may be called from atomic contexts, use async variant
>> > of wakeref put.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/8875
>> > Fixes: Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' 
> requirement for Meteor Lake")
>> 
>> I get the motivation, but this is hardly true. 
>
> Hmm, do you suggest to blame a commit that was actually guilty, or to drop the 
> Fixes: tag completely?  IOW, are we interested in fixing former stable 
> releases that had no single multi-tile platform officially supported?

IMO Fixes: should only point at the actually broken commits.

If you want to get the backport to a specific stable kernel, please use

Cc: stable@vger.kernel.org # v6.6+

or similar.

IIUC in this case you want the fix to go to v6.7 which doesn't exist
yet, so you'll just have to ask the maintainers to pick it up in fixes.


BR,
Jani.



>
>> Also, double Fixes.
>
> Ops, sorry.
>
> Janusz
>
>> 
>> BR,
>> Jani.
>> 
>> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_vma.c | 18 ++++++++++++++++--
>> >  1 file changed, 16 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/
> i915_vma.c
>> > index d09aad34ba37f..70c68f614c6db 100644
>> > --- a/drivers/gpu/drm/i915/i915_vma.c
>> > +++ b/drivers/gpu/drm/i915/i915_vma.c
>> > @@ -34,6 +34,7 @@
>> >  #include "gt/intel_engine.h"
>> >  #include "gt/intel_engine_heartbeat.h"
>> >  #include "gt/intel_gt.h"
>> > +#include "gt/intel_gt_pm.h"
>> >  #include "gt/intel_gt_requests.h"
>> >  #include "gt/intel_tlb.h"
>> >  
>> > @@ -103,12 +104,25 @@ static inline struct i915_vma *active_to_vma(struct 
> i915_active *ref)
>> >  
>> >  static int __i915_vma_active(struct i915_active *ref)
>> >  {
>> > -	return i915_vma_tryget(active_to_vma(ref)) ? 0 : -ENOENT;
>> > +	struct i915_vma *vma = active_to_vma(ref);
>> > +
>> > +	if (!i915_vma_tryget(vma))
>> > +		return -ENOENT;
>> > +
>> > +	if (!i915_vma_is_ggtt(vma))
>> > +		intel_gt_pm_get(vma->vm->gt);
>> > +
>> > +	return 0;
>> >  }
>> >  
>> >  static void __i915_vma_retire(struct i915_active *ref)
>> >  {
>> > -	i915_vma_put(active_to_vma(ref));
>> > +	struct i915_vma *vma = active_to_vma(ref);
>> > +
>> > +	if (!i915_vma_is_ggtt(vma))
>> > +		intel_gt_pm_put_async(vma->vm->gt);
>> > +
>> > +	i915_vma_put(vma);
>> >  }
>> >  
>> >  static struct i915_vma *
>> 
>> 
>
>
>
>

-- 
Jani Nikula, Intel
