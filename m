Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE4B624D4C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 22:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F075410E056;
	Thu, 10 Nov 2022 21:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0087110E056
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 21:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668116963; x=1699652963;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hE5OkpuJcWeFOkizvkjQ22Yx7pYQDyZIlFAfj+uAIX0=;
 b=GUnazzskXsUnEsV7GOXdMk0SnDaUb0YUp2jS9xbMrX40WYVeCoudMxuf
 +Ov/33k3sx/V4EXmaKGwaLA1WZazuTI1iFVAmeSNNZ50paGJGgcQRXYNy
 mqoByQP8m5G7NMdiv9fUn3O41M4zDt1v0dDXWvI/1oa5Y20MipUTguaQ4
 AUtDSAnXHQCQRp5ZzKK4aLcafKZodj2UEPOvn+Orv3rkVuDMs1dB1vEIc
 A7AubVshD/t+HrPlH7NuYGv//Amf5bNbYM+EEI4wga70hwL9c62q2O5Aw
 1l4PIxEISIdo0PRu49cqgQ+LuI7LWv2lt383TZZx8EMRGFPC310H5XDkH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="338215893"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="338215893"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 13:49:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="812212331"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="812212331"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga005.jf.intel.com with SMTP; 10 Nov 2022 13:49:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 23:49:19 +0200
Date: Thu, 10 Nov 2022 23:49:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y21x38HSQoznvzey@intel.com>
References: <20221107170917.3566758-2-imre.deak@intel.com>
 <20221108151828.3761358-1-imre.deak@intel.com>
 <Y21M2J7lu3KdoMtX@intel.com>
 <Y21XS09xL2iJxuQ8@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y21XS09xL2iJxuQ8@ideak-desk.fi.intel.com>
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

On Thu, Nov 10, 2022 at 09:55:55PM +0200, Imre Deak wrote:
> On Thu, Nov 10, 2022 at 09:11:20PM +0200, Ville Syrjälä wrote:
> > On Tue, Nov 08, 2022 at 05:18:23PM +0200, Imre Deak wrote:
> > > Since the intel_display_power_domain_set struct, currently its current
> > > size close to 1kB, can be allocated on the stack, it's better to
> > > allocate the per-domain wakeref pointer array - used for debugging -
> > > within the struct dynamically, so do this.
> > > 
> > > The memory freeing is guaranteed by the fact that the acquired domain
> > > references tracked by the struct can't be leaked either.
> > > 
> > > v2:
> > > - Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
> > > - Simplify intel_display_power_get/put_in_set(). (Jani)
> > > - Check in intel_crtc_destroy() that the wakerefs array has been freed.
> > > v3:
> > > - Add intel_display_power_set_disabled() and a separate assert
> > >   function instead of open coding these. (Jani)
> > > 
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  11 ++
> > >  .../drm/i915/display/intel_display_power.c    | 109 ++++++++++++++----
> > >  .../drm/i915/display/intel_display_power.h    |   6 +-
> > >  3 files changed, 104 insertions(+), 22 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > index 037fc140b585c..c18d98bfe1a7c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -21,6 +21,7 @@
> > >  #include "intel_crtc.h"
> > >  #include "intel_cursor.h"
> > >  #include "intel_display_debugfs.h"
> > > +#include "intel_display_power.h"
> > >  #include "intel_display_trace.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_drrs.h"
> > > @@ -37,6 +38,14 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
> > >  		drm_crtc_vblank_put(crtc);
> > >  }
> > >  
> > > +static void assert_power_domains_disabled(struct intel_crtc *crtc)
> > > +{
> > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > +
> > > +	drm_WARN_ON(&i915->drm,
> > > +		    !intel_display_power_set_disabled(i915, &crtc->enabled_power_domains));
> > > +}
> > > +
> > >  struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
> > >  {
> > >  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
> > > @@ -204,6 +213,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
> > >  
> > >  	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
> > >  
> > > +	assert_power_domains_disabled(crtc);
> > > +
> > >  	drm_crtc_cleanup(&crtc->base);
> > >  	kfree(crtc);
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 4c1de91e56ff9..ca63b4f1af41b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -830,20 +830,85 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> > >  }
> > >  #endif
> > >  
> > > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > > +static void
> > > +add_domain_to_set(struct drm_i915_private *i915,
> > > +		  struct intel_display_power_domain_set *power_domain_set,
> > > +		  enum intel_display_power_domain domain,
> > > +		  intel_wakeref_t wf)
> > > +{
> > > +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> > > +
> > > +	if (!power_domain_set->wakerefs)
> > > +		power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> > > +						     sizeof(*power_domain_set->wakerefs),
> > > +						     GFP_KERNEL);
> > > +
> > > +	if (power_domain_set->wakerefs)
> > > +		power_domain_set->wakerefs[domain] = wf;
> > 
> > So if the kcalloc() fails is it going to look like
> > we're leaking power wakerefs?
> 
> Yes, along with the alloc failure which is also logged. I assumed this
> is enough to explain why wakeref tracking doesn't work afterwards, but I
> suppose the wakeref could be untracked here in this case.

I think a more clear message what is going on would be good.
And probably preventing the spam from the wakerefs would
also be good to make sure the whole thing doesn't get
misdiagnosed as a real power ref leak.

-- 
Ville Syrjälä
Intel
