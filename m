Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA1A625B5C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 14:44:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CFCB10E170;
	Fri, 11 Nov 2022 13:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C01E10E170
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668174238; x=1699710238;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yI3Izi6ts2xHDT2q/E+kcX5pydXiN4m2E9s22KHiczA=;
 b=Lfm6dAqZmXAgyViKh4GXvLj59KHvCbOXFEMMkV9zMfjoNMnhB0cLSrW9
 1H9D3Tk6xOpC+tQ7eSHXS2r8pkfxKqamm7ttjLNnCbVLo9kFQ/3LYkyDz
 /s4PG/c3+/+AaublChLugsciuwLYKNCp5xwXUNfAl/rjDV5sEjCjHyG17
 zYwV6IVJueST39nRQebZoQpi6slzWH20a+bk1ySKc1Kru32wPrAPIxUTm
 k7SHLU5BeffyUhn4GtWd0FgymYbKgEmE/aup8UMyeMNt6MQgm57HCosm7
 Cqtx4LRv+PNo9AIR5JSPTpslsGCv7imyzOA2bGkLIcgCvPssb+XHwDQ0+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="294955866"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="294955866"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 05:43:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="780184199"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="780184199"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 11 Nov 2022 05:43:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 15:43:54 +0200
Date: Fri, 11 Nov 2022 15:43:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y25Rmlqq6k2plwsP@intel.com>
References: <20221107170917.3566758-2-imre.deak@intel.com>
 <20221108151828.3761358-1-imre.deak@intel.com>
 <Y21M2J7lu3KdoMtX@intel.com>
 <Y21XS09xL2iJxuQ8@ideak-desk.fi.intel.com>
 <Y21x38HSQoznvzey@intel.com>
 <Y25B+Vk57kS5F/Br@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y25B+Vk57kS5F/Br@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 1/9] drm/i915: Allocate power domain set
 wakerefs dynamically
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 11, 2022 at 02:37:13PM +0200, Imre Deak wrote:
> On Thu, Nov 10, 2022 at 11:49:19PM +0200, Ville Syrjälä wrote:
> > On Thu, Nov 10, 2022 at 09:55:55PM +0200, Imre Deak wrote:
> > > On Thu, Nov 10, 2022 at 09:11:20PM +0200, Ville Syrjälä wrote:
> > > > On Tue, Nov 08, 2022 at 05:18:23PM +0200, Imre Deak wrote:
> > > > > Since the intel_display_power_domain_set struct, currently its current
> > > > > size close to 1kB, can be allocated on the stack, it's better to
> > > > > allocate the per-domain wakeref pointer array - used for debugging -
> > > > > within the struct dynamically, so do this.
> > > > > 
> > > > > The memory freeing is guaranteed by the fact that the acquired domain
> > > > > references tracked by the struct can't be leaked either.
> > > > > 
> > > > > v2:
> > > > > - Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
> > > > > - Simplify intel_display_power_get/put_in_set(). (Jani)
> > > > > - Check in intel_crtc_destroy() that the wakerefs array has been freed.
> > > > > v3:
> > > > > - Add intel_display_power_set_disabled() and a separate assert
> > > > >   function instead of open coding these. (Jani)
> > > > > 
> > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  11 ++
> > > > >  .../drm/i915/display/intel_display_power.c    | 109 ++++++++++++++----
> > > > >  .../drm/i915/display/intel_display_power.h    |   6 +-
> > > > >  3 files changed, 104 insertions(+), 22 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > index 037fc140b585c..c18d98bfe1a7c 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > @@ -21,6 +21,7 @@
> > > > >  #include "intel_crtc.h"
> > > > >  #include "intel_cursor.h"
> > > > >  #include "intel_display_debugfs.h"
> > > > > +#include "intel_display_power.h"
> > > > >  #include "intel_display_trace.h"
> > > > >  #include "intel_display_types.h"
> > > > >  #include "intel_drrs.h"
> > > > > @@ -37,6 +38,14 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
> > > > >  		drm_crtc_vblank_put(crtc);
> > > > >  }
> > > > >  
> > > > > +static void assert_power_domains_disabled(struct intel_crtc *crtc)
> > > > > +{
> > > > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > > +
> > > > > +	drm_WARN_ON(&i915->drm,
> > > > > +		    !intel_display_power_set_disabled(i915, &crtc->enabled_power_domains));
> > > > > +}
> > > > > +
> > > > >  struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
> > > > >  {
> > > > >  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
> > > > > @@ -204,6 +213,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
> > > > >  
> > > > >  	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
> > > > >  
> > > > > +	assert_power_domains_disabled(crtc);
> > > > > +
> > > > >  	drm_crtc_cleanup(&crtc->base);
> > > > >  	kfree(crtc);
> > > > >  }
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > index 4c1de91e56ff9..ca63b4f1af41b 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > @@ -830,20 +830,85 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> > > > >  }
> > > > >  #endif
> > > > >  
> > > > > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > > > > +static void
> > > > > +add_domain_to_set(struct drm_i915_private *i915,
> > > > > +		  struct intel_display_power_domain_set *power_domain_set,
> > > > > +		  enum intel_display_power_domain domain,
> > > > > +		  intel_wakeref_t wf)
> > > > > +{
> > > > > +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> > > > > +
> > > > > +	if (!power_domain_set->wakerefs)
> > > > > +		power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> > > > > +						     sizeof(*power_domain_set->wakerefs),
> > > > > +						     GFP_KERNEL);
> > > > > +
> > > > > +	if (power_domain_set->wakerefs)
> > > > > +		power_domain_set->wakerefs[domain] = wf;
> > > > 
> > > > So if the kcalloc() fails is it going to look like
> > > > we're leaking power wakerefs?
> > > 
> > > Yes, along with the alloc failure which is also logged. I assumed this
> > > is enough to explain why wakeref tracking doesn't work afterwards, but I
> > > suppose the wakeref could be untracked here in this case.
> > 
> > I think a more clear message what is going on would be good.
> > And probably preventing the spam from the wakerefs would
> > also be good to make sure the whole thing doesn't get
> > misdiagnosed as a real power ref leak.
> 
> Ok, I can add a debug print about the failure and untrack the wakeref.

The other idea that came to mind was to just preallocate this
somehow. Looks like the only place where this even matters
currently is hsw_get_pipe_config(). The other instance of
this structure is already embedded in a kmalloced thing
(struct intel_crtc).

-- 
Ville Syrjälä
Intel
