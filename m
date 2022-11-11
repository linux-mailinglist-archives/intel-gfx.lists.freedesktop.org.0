Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 485AA6263BB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 22:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0BB10E1A2;
	Fri, 11 Nov 2022 21:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D60B10E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 21:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668202705; x=1699738705;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kWA7TFYwOmD66ZnmzML7l54U1XJ8Llc4zN7L4OXfNBQ=;
 b=S/aZpdDfu8vBND22PAZ2oDAM9kKOzPD3t+vgn3tHxK93MtqqlWxRZDjd
 Ef1UJqk9sVHX9jsfd7PGkA8GomiePnHj4d8UOXlFrJvKUgwNrpOb18f+J
 KkzHiH5zWtd5ZsTrBOMkbUSkGnBGpglIerjv/JxTE0c2WTk6m6W+b72xl
 vJYAGyNwhSuczrYNO8NNktOwPZ0bPc3QlO2dnkCsPN32Ym+PBlxAHNAZi
 sVxm+ovWK3hcNz+w0qh8RYGZnTcS+D2WnwWaa9PW/Ti/bHDB65r9SuQuc
 JTL+Js4o2/kY40XTjzHfobofv3ugR67myxWYDlE8WY7BUCdLjRcRQAhy6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="309293915"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="309293915"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 13:38:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="966932926"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="966932926"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 13:38:23 -0800
Date: Fri, 11 Nov 2022 23:38:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y27Ay7OkKqXF35o7@ideak-desk.fi.intel.com>
References: <Y21M2J7lu3KdoMtX@intel.com>
 <Y21XS09xL2iJxuQ8@ideak-desk.fi.intel.com>
 <Y21x38HSQoznvzey@intel.com>
 <Y25B+Vk57kS5F/Br@ideak-desk.fi.intel.com>
 <Y25Rmlqq6k2plwsP@intel.com> <Y25TiP/Lr3xjb5bk@intel.com>
 <Y25ueaWBbV9Njrgr@ideak-desk.fi.intel.com>
 <Y26U0bq9h9KmXeaM@intel.com>
 <Y26a0PIFyA6AMjvf@ideak-desk.fi.intel.com>
 <Y26hT1qYC0EUknh9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y26hT1qYC0EUknh9@intel.com>
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

On Fri, Nov 11, 2022 at 09:23:59PM +0200, Ville Syrjälä wrote:
> On Fri, Nov 11, 2022 at 08:56:16PM +0200, Imre Deak wrote:
> > On Fri, Nov 11, 2022 at 08:30:41PM +0200, Ville Syrjälä wrote:
> > > On Fri, Nov 11, 2022 at 05:47:05PM +0200, Imre Deak wrote:
> > > > On Fri, Nov 11, 2022 at 03:52:08PM +0200, Ville Syrjälä wrote:
> > > > > On Fri, Nov 11, 2022 at 03:43:54PM +0200, Ville Syrjälä wrote:
> > > > > > On Fri, Nov 11, 2022 at 02:37:13PM +0200, Imre Deak wrote:
> > > > > > > On Thu, Nov 10, 2022 at 11:49:19PM +0200, Ville Syrjälä wrote:
> > > > > > > > On Thu, Nov 10, 2022 at 09:55:55PM +0200, Imre Deak wrote:
> > > > > > > > > On Thu, Nov 10, 2022 at 09:11:20PM +0200, Ville Syrjälä wrote:
> > > > > > > > > > On Tue, Nov 08, 2022 at 05:18:23PM +0200, Imre Deak wrote:
> > > > > > > > > > > Since the intel_display_power_domain_set struct, currently its current
> > > > > > > > > > > size close to 1kB, can be allocated on the stack, it's better to
> > > > > > > > > > > allocate the per-domain wakeref pointer array - used for debugging -
> > > > > > > > > > > within the struct dynamically, so do this.
> > > > > > > > > > > 
> > > > > > > > > > > The memory freeing is guaranteed by the fact that the acquired domain
> > > > > > > > > > > references tracked by the struct can't be leaked either.
> > > > > > > > > > > 
> > > > > > > > > > > v2:
> > > > > > > > > > > - Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
> > > > > > > > > > > - Simplify intel_display_power_get/put_in_set(). (Jani)
> > > > > > > > > > > - Check in intel_crtc_destroy() that the wakerefs array has been freed.
> > > > > > > > > > > v3:
> > > > > > > > > > > - Add intel_display_power_set_disabled() and a separate assert
> > > > > > > > > > >   function instead of open coding these. (Jani)
> > > > > > > > > > > 
> > > > > > > > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > > > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > > > > > > ---
> > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  11 ++
> > > > > > > > > > >  .../drm/i915/display/intel_display_power.c    | 109 ++++++++++++++----
> > > > > > > > > > >  .../drm/i915/display/intel_display_power.h    |   6 +-
> > > > > > > > > > >  3 files changed, 104 insertions(+), 22 deletions(-)
> > > > > > > > > > > 
> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > > > > > index 037fc140b585c..c18d98bfe1a7c 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > > > > > @@ -21,6 +21,7 @@
> > > > > > > > > > >  #include "intel_crtc.h"
> > > > > > > > > > >  #include "intel_cursor.h"
> > > > > > > > > > >  #include "intel_display_debugfs.h"
> > > > > > > > > > > +#include "intel_display_power.h"
> > > > > > > > > > >  #include "intel_display_trace.h"
> > > > > > > > > > >  #include "intel_display_types.h"
> > > > > > > > > > >  #include "intel_drrs.h"
> > > > > > > > > > > @@ -37,6 +38,14 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
> > > > > > > > > > >  		drm_crtc_vblank_put(crtc);
> > > > > > > > > > >  }
> > > > > > > > > > >  
> > > > > > > > > > > +static void assert_power_domains_disabled(struct intel_crtc *crtc)
> > > > > > > > > > > +{
> > > > > > > > > > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > > > > > > > > +
> > > > > > > > > > > +	drm_WARN_ON(&i915->drm,
> > > > > > > > > > > +		    !intel_display_power_set_disabled(i915, &crtc->enabled_power_domains));
> > > > > > > > > > > +}
> > > > > > > > > > > +
> > > > > > > > > > >  struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
> > > > > > > > > > >  {
> > > > > > > > > > >  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
> > > > > > > > > > > @@ -204,6 +213,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
> > > > > > > > > > >  
> > > > > > > > > > >  	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
> > > > > > > > > > >  
> > > > > > > > > > > +	assert_power_domains_disabled(crtc);
> > > > > > > > > > > +
> > > > > > > > > > >  	drm_crtc_cleanup(&crtc->base);
> > > > > > > > > > >  	kfree(crtc);
> > > > > > > > > > >  }
> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > > > > > > > index 4c1de91e56ff9..ca63b4f1af41b 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > > > > > > > @@ -830,20 +830,85 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> > > > > > > > > > >  }
> > > > > > > > > > >  #endif
> > > > > > > > > > >  
> > > > > > > > > > > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > > > > > > > > > > +static void
> > > > > > > > > > > +add_domain_to_set(struct drm_i915_private *i915,
> > > > > > > > > > > +		  struct intel_display_power_domain_set *power_domain_set,
> > > > > > > > > > > +		  enum intel_display_power_domain domain,
> > > > > > > > > > > +		  intel_wakeref_t wf)
> > > > > > > > > > > +{
> > > > > > > > > > > +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> > > > > > > > > > > +
> > > > > > > > > > > +	if (!power_domain_set->wakerefs)
> > > > > > > > > > > +		power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> > > > > > > > > > > +						     sizeof(*power_domain_set->wakerefs),
> > > > > > > > > > > +						     GFP_KERNEL);
> > > > > > > > > > > +
> > > > > > > > > > > +	if (power_domain_set->wakerefs)
> > > > > > > > > > > +		power_domain_set->wakerefs[domain] = wf;
> > > > > > > > > > 
> > > > > > > > > > So if the kcalloc() fails is it going to look like
> > > > > > > > > > we're leaking power wakerefs?
> > > > > > > > > 
> > > > > > > > > Yes, along with the alloc failure which is also logged. I assumed this
> > > > > > > > > is enough to explain why wakeref tracking doesn't work afterwards, but I
> > > > > > > > > suppose the wakeref could be untracked here in this case.
> > > > > > > > 
> > > > > > > > I think a more clear message what is going on would be good.
> > > > > > > > And probably preventing the spam from the wakerefs would
> > > > > > > > also be good to make sure the whole thing doesn't get
> > > > > > > > misdiagnosed as a real power ref leak.
> > > > > > > 
> > > > > > > Ok, I can add a debug print about the failure and untrack the wakeref.
> > > > > > 
> > > > > > The other idea that came to mind was to just preallocate this
> > > > > > somehow. Looks like the only place where this even matters
> > > > > > currently is hsw_get_pipe_config(). The other instance of
> > > > > > this structure is already embedded in a kmalloced thing
> > > > > > (struct intel_crtc).
> > > > 
> > > > Can't think of a good way to allocate the whole struct, as the domain
> > > > mask within it is still needed if the allocation failed. The API is
> > > > simpler imo if the allocation happens internally, but yes not a big
> > > > change if there is a good way to allocate only the array part.
> > > 
> > > I mean just allocate eg. during driver init.
> > 
> > Ok, it'd work for this case if it's per-crtc. We could add a
> > 'readout_hw_domains' power_domain_set struct to intel_crtc and simply
> > use that in hsw_get_pipe_config() instead of this patch, would that be
> > ok?
> 
> That seems like an easier fix for now at least. I think we could
> live with it. But if you can make the internal alloc handle the
> failures a bit more gracefully I think that would be ok too.
> I'll let you pick ;)

Ok. The simpler approach looks better, making it more generic would make
sense only with more users for it.

> > > > > Hmm. I wonder if this wakeref tracking is even really useful
> > > > > in the readout path. We just do a put_all_in_set() in the end,
> > > > > so can it even leak?
> > > > 
> > > > If the function would incorrectly do an early return, the domains
> > > > wouldn't be put. I think it makes sense to keep wakerefs working for
> > > > this case as well.
> > > > 
> > > > > -- 
> > > > > Ville Syrjälä
> > > > > Intel
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
