Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750D71B228C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 11:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7226E44F;
	Tue, 21 Apr 2020 09:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A342D6E44F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 09:20:42 +0000 (UTC)
IronPort-SDR: l/NWx2Nb3lJhc4/VlQul3gOEhqnW/aSzTEe5OM3o1yGovMvxFUOU2LLMi7k72EyLs24I1fou8P
 HXnabXLc7dFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 02:20:42 -0700
IronPort-SDR: soSmUkpk+X9c6Fwt2Xb2rZ6E2ofNyk/vlCqKqLyI+y42vSve81YpvRwpq33XO4RAK2a+aQuZmQ
 38Fz/s5hUatA==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="279572902"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 02:20:40 -0700
Date: Tue, 21 Apr 2020 12:19:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200421091947.GA29723@ideak-desk.fi.intel.com>
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200406112800.23762-6-pankaj.laxminarayan.bharadiya@intel.com>
 <87tv1dz34n.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tv1dz34n.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 05/18] drm/i915/display/display: Prefer
 drm_WARN_ON over WARN_ON
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 21, 2020 at 10:53:12AM +0300, Jani Nikula wrote:
> 
> Pankaj, the subject line is identical to patch 4, please update.
> 
> Imre, one question inline for you.
> 
> On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 433e5a81dd4d..5475f989df4c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1850,22 +1850,29 @@ static u64 __async_put_domains_mask(struct i915_power_domains *power_domains)
> >  static bool
> >  assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
> >  {
> > -	return !WARN_ON(power_domains->async_put_domains[0] &
> > -			power_domains->async_put_domains[1]);
> > +	struct drm_i915_private *i915 = container_of(power_domains,
> > +						     struct drm_i915_private,
> > +						     power_domains);
> > +	return !drm_WARN_ON(&i915->drm, power_domains->async_put_domains[0] &
> > +			    power_domains->async_put_domains[1]);
> >  }
> 
> Do we want to depend on struct i915_power_domains being a struct
> drm_i915_private member via container_of?

It looks ok to me, there is only one i915_power_domains struct per
device.

> BR,
> Jani.
> 
> >  
> >  static bool
> >  __async_put_domains_state_ok(struct i915_power_domains *power_domains)
> >  {
> > +	struct drm_i915_private *i915 = container_of(power_domains,
> > +						     struct drm_i915_private,
> > +						     power_domains);
> >  	enum intel_display_power_domain domain;
> >  	bool err = false;
> >  
> >  	err |= !assert_async_put_domain_masks_disjoint(power_domains);
> > -	err |= WARN_ON(!!power_domains->async_put_wakeref !=
> > -		       !!__async_put_domains_mask(power_domains));
> > +	err |= drm_WARN_ON(&i915->drm, !!power_domains->async_put_wakeref !=
> > +			   !!__async_put_domains_mask(power_domains));
> >  
> >  	for_each_power_domain(domain, __async_put_domains_mask(power_domains))
> > -		err |= WARN_ON(power_domains->domain_use_count[domain] != 1);
> > +		err |= drm_WARN_ON(&i915->drm,
> > +				   power_domains->domain_use_count[domain] != 1);
> >  
> >  	return !err;
> >  }
> > @@ -2107,11 +2114,14 @@ static void
> >  queue_async_put_domains_work(struct i915_power_domains *power_domains,
> >  			     intel_wakeref_t wakeref)
> >  {
> > -	WARN_ON(power_domains->async_put_wakeref);
> > +	struct drm_i915_private *i915 = container_of(power_domains,
> > +						     struct drm_i915_private,
> > +						     power_domains);
> > +	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
> >  	power_domains->async_put_wakeref = wakeref;
> > -	WARN_ON(!queue_delayed_work(system_unbound_wq,
> > -				    &power_domains->async_put_work,
> > -				    msecs_to_jiffies(100)));
> > +	drm_WARN_ON(&i915->drm, !queue_delayed_work(system_unbound_wq,
> > +						    &power_domains->async_put_work,
> > +						    msecs_to_jiffies(100)));
> >  }
> >  
> >  static void
> > @@ -4318,6 +4328,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >  		  const struct i915_power_well_desc *power_well_descs,
> >  		  int power_well_count)
> >  {
> > +	struct drm_i915_private *i915 = container_of(power_domains,
> > +						     struct drm_i915_private,
> > +						     power_domains);
> >  	u64 power_well_ids = 0;
> >  	int i;
> >  
> > @@ -4337,8 +4350,8 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >  		if (id == DISP_PW_ID_NONE)
> >  			continue;
> >  
> > -		WARN_ON(id >= sizeof(power_well_ids) * 8);
> > -		WARN_ON(power_well_ids & BIT_ULL(id));
> > +		drm_WARN_ON(&i915->drm, id >= sizeof(power_well_ids) * 8);
> > +		drm_WARN_ON(&i915->drm, power_well_ids & BIT_ULL(id));
> >  		power_well_ids |= BIT_ULL(id);
> >  	}
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
