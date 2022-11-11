Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D14625A8C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 13:37:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5058410E170;
	Fri, 11 Nov 2022 12:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2628110E170
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668170240; x=1699706240;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pgDCjCZKhyaCOlnV6S468YawnKATo5fwzyE0ZJNhiXI=;
 b=aISH0H4gqJNB4fxghSQjuapv6T/GOtr7QOQUXYi+1+Ed8FCQci8IeET2
 V3Q8QbFlT440x5KWKlWwCVvIGMpYufKUUmcw16actWGSoomMZQGmP56gu
 VoYiSNh+LqLRbp9PjJWfDWRFwZyjKDZyo1vzkz0CnHlS29cFWA3QcvUCo
 nMsLd4BzN1fR8QYCZBkubTQhyHjaeW42uvpa9MNOx+RGhbJ3Ktjx0YBe6
 Rk/LKMY3wg4V5WEcMUFJf0a8LzvteTmbxWV7xyzw+6vNU86L0Bwqh6TaL
 zYhOOMcGFED829p8rJJ0vyP7bp6rRVdT5Q8jvdai6U7PVV9UHt+2T67/a Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397883999"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="397883999"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:37:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="670735670"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="670735670"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:37:18 -0800
Date: Fri, 11 Nov 2022 14:37:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y25B+Vk57kS5F/Br@ideak-desk.fi.intel.com>
References: <20221107170917.3566758-2-imre.deak@intel.com>
 <20221108151828.3761358-1-imre.deak@intel.com>
 <Y21M2J7lu3KdoMtX@intel.com>
 <Y21XS09xL2iJxuQ8@ideak-desk.fi.intel.com>
 <Y21x38HSQoznvzey@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y21x38HSQoznvzey@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 10, 2022 at 11:49:19PM +0200, Ville Syrjälä wrote:
> On Thu, Nov 10, 2022 at 09:55:55PM +0200, Imre Deak wrote:
> > On Thu, Nov 10, 2022 at 09:11:20PM +0200, Ville Syrjälä wrote:
> > > On Tue, Nov 08, 2022 at 05:18:23PM +0200, Imre Deak wrote:
> > > > Since the intel_display_power_domain_set struct, currently its current
> > > > size close to 1kB, can be allocated on the stack, it's better to
> > > > allocate the per-domain wakeref pointer array - used for debugging -
> > > > within the struct dynamically, so do this.
> > > > 
> > > > The memory freeing is guaranteed by the fact that the acquired domain
> > > > references tracked by the struct can't be leaked either.
> > > > 
> > > > v2:
> > > > - Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
> > > > - Simplify intel_display_power_get/put_in_set(). (Jani)
> > > > - Check in intel_crtc_destroy() that the wakerefs array has been freed.
> > > > v3:
> > > > - Add intel_display_power_set_disabled() and a separate assert
> > > >   function instead of open coding these. (Jani)
> > > > 
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  11 ++
> > > >  .../drm/i915/display/intel_display_power.c    | 109 ++++++++++++++----
> > > >  .../drm/i915/display/intel_display_power.h    |   6 +-
> > > >  3 files changed, 104 insertions(+), 22 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > index 037fc140b585c..c18d98bfe1a7c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > @@ -21,6 +21,7 @@
> > > >  #include "intel_crtc.h"
> > > >  #include "intel_cursor.h"
> > > >  #include "intel_display_debugfs.h"
> > > > +#include "intel_display_power.h"
> > > >  #include "intel_display_trace.h"
> > > >  #include "intel_display_types.h"
> > > >  #include "intel_drrs.h"
> > > > @@ -37,6 +38,14 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
> > > >  		drm_crtc_vblank_put(crtc);
> > > >  }
> > > >  
> > > > +static void assert_power_domains_disabled(struct intel_crtc *crtc)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > +
> > > > +	drm_WARN_ON(&i915->drm,
> > > > +		    !intel_display_power_set_disabled(i915, &crtc->enabled_power_domains));
> > > > +}
> > > > +
> > > >  struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
> > > >  {
> > > >  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
> > > > @@ -204,6 +213,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
> > > >  
> > > >  	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
> > > >  
> > > > +	assert_power_domains_disabled(crtc);
> > > > +
> > > >  	drm_crtc_cleanup(&crtc->base);
> > > >  	kfree(crtc);
> > > >  }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > index 4c1de91e56ff9..ca63b4f1af41b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > @@ -830,20 +830,85 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> > > >  }
> > > >  #endif
> > > >  
> > > > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > > > +static void
> > > > +add_domain_to_set(struct drm_i915_private *i915,
> > > > +		  struct intel_display_power_domain_set *power_domain_set,
> > > > +		  enum intel_display_power_domain domain,
> > > > +		  intel_wakeref_t wf)
> > > > +{
> > > > +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> > > > +
> > > > +	if (!power_domain_set->wakerefs)
> > > > +		power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> > > > +						     sizeof(*power_domain_set->wakerefs),
> > > > +						     GFP_KERNEL);
> > > > +
> > > > +	if (power_domain_set->wakerefs)
> > > > +		power_domain_set->wakerefs[domain] = wf;
> > > 
> > > So if the kcalloc() fails is it going to look like
> > > we're leaking power wakerefs?
> > 
> > Yes, along with the alloc failure which is also logged. I assumed this
> > is enough to explain why wakeref tracking doesn't work afterwards, but I
> > suppose the wakeref could be untracked here in this case.
> 
> I think a more clear message what is going on would be good.
> And probably preventing the spam from the wakerefs would
> also be good to make sure the whole thing doesn't get
> misdiagnosed as a real power ref leak.

Ok, I can add a debug print about the failure and untrack the wakeref.

> 
> -- 
> Ville Syrjälä
> Intel
