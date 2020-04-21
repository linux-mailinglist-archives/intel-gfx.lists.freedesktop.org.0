Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FFA1B205F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 09:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE59A6E21F;
	Tue, 21 Apr 2020 07:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87886E21F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 07:53:17 +0000 (UTC)
IronPort-SDR: WE+JbZE6b7SdBHh2w0OH8Ud9uvFfws7YR2ZNCuvsKEC2DFDkBbAhtu++dPJNafnxe9mjNcgqP2
 FCLtFesTZGmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 00:53:17 -0700
IronPort-SDR: xHVsIVKYGkRHgyXeoMGdyFB8j9PDYeNh11CGLR3cczl0E2JnoR2hlC8yYsX8zBdAWdSPFgPNa4
 3LtdGRQyUYeg==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="429439811"
Received: from parkernx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.46.80])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 00:53:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 intel-gfx@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>
In-Reply-To: <20200406112800.23762-6-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200406112800.23762-6-pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 21 Apr 2020 10:53:12 +0300
Message-ID: <87tv1dz34n.fsf@intel.com>
MIME-Version: 1.0
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Pankaj, the subject line is identical to patch 4, please update.

Imre, one question inline for you.

On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..5475f989df4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1850,22 +1850,29 @@ static u64 __async_put_domains_mask(struct i915_power_domains *power_domains)
>  static bool
>  assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
>  {
> -	return !WARN_ON(power_domains->async_put_domains[0] &
> -			power_domains->async_put_domains[1]);
> +	struct drm_i915_private *i915 = container_of(power_domains,
> +						     struct drm_i915_private,
> +						     power_domains);
> +	return !drm_WARN_ON(&i915->drm, power_domains->async_put_domains[0] &
> +			    power_domains->async_put_domains[1]);
>  }

Do we want to depend on struct i915_power_domains being a struct
drm_i915_private member via container_of?

BR,
Jani.

>  
>  static bool
>  __async_put_domains_state_ok(struct i915_power_domains *power_domains)
>  {
> +	struct drm_i915_private *i915 = container_of(power_domains,
> +						     struct drm_i915_private,
> +						     power_domains);
>  	enum intel_display_power_domain domain;
>  	bool err = false;
>  
>  	err |= !assert_async_put_domain_masks_disjoint(power_domains);
> -	err |= WARN_ON(!!power_domains->async_put_wakeref !=
> -		       !!__async_put_domains_mask(power_domains));
> +	err |= drm_WARN_ON(&i915->drm, !!power_domains->async_put_wakeref !=
> +			   !!__async_put_domains_mask(power_domains));
>  
>  	for_each_power_domain(domain, __async_put_domains_mask(power_domains))
> -		err |= WARN_ON(power_domains->domain_use_count[domain] != 1);
> +		err |= drm_WARN_ON(&i915->drm,
> +				   power_domains->domain_use_count[domain] != 1);
>  
>  	return !err;
>  }
> @@ -2107,11 +2114,14 @@ static void
>  queue_async_put_domains_work(struct i915_power_domains *power_domains,
>  			     intel_wakeref_t wakeref)
>  {
> -	WARN_ON(power_domains->async_put_wakeref);
> +	struct drm_i915_private *i915 = container_of(power_domains,
> +						     struct drm_i915_private,
> +						     power_domains);
> +	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
>  	power_domains->async_put_wakeref = wakeref;
> -	WARN_ON(!queue_delayed_work(system_unbound_wq,
> -				    &power_domains->async_put_work,
> -				    msecs_to_jiffies(100)));
> +	drm_WARN_ON(&i915->drm, !queue_delayed_work(system_unbound_wq,
> +						    &power_domains->async_put_work,
> +						    msecs_to_jiffies(100)));
>  }
>  
>  static void
> @@ -4318,6 +4328,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
>  		  const struct i915_power_well_desc *power_well_descs,
>  		  int power_well_count)
>  {
> +	struct drm_i915_private *i915 = container_of(power_domains,
> +						     struct drm_i915_private,
> +						     power_domains);
>  	u64 power_well_ids = 0;
>  	int i;
>  
> @@ -4337,8 +4350,8 @@ __set_power_wells(struct i915_power_domains *power_domains,
>  		if (id == DISP_PW_ID_NONE)
>  			continue;
>  
> -		WARN_ON(id >= sizeof(power_well_ids) * 8);
> -		WARN_ON(power_well_ids & BIT_ULL(id));
> +		drm_WARN_ON(&i915->drm, id >= sizeof(power_well_ids) * 8);
> +		drm_WARN_ON(&i915->drm, power_well_ids & BIT_ULL(id));
>  		power_well_ids |= BIT_ULL(id);
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
