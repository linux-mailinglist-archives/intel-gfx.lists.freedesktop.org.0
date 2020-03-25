Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F533192FF7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 18:57:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D43896D8;
	Wed, 25 Mar 2020 17:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB293896D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 17:57:40 +0000 (UTC)
IronPort-SDR: Xi/XSKdBlPzd5ttfnsskiRDD2sc5/zg+9Qmd5eJg6C9LvoGIHYYn4MceMlmL76LdHFYG6iXdeu
 XT4yu0DUTQGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:57:39 -0700
IronPort-SDR: u7mcfR9pxbR8kyV7bpQYEhchxb+IlRwYTdyCcTU+CPfo1haz1pogfnVqakCVprvzDqdVfAIx41
 /P2s/o1Ykubw==
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="293407637"
Received: from yrahamim-mobl.ger.corp.intel.com (HELO localhost)
 ([10.255.194.58])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:57:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20200325085656.GV2363188@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1584714939.git.jani.nikula@intel.com>
 <307c9f87cb2fbd5d2d67ec6adcde7ab669c2b93f.1584714939.git.jani.nikula@intel.com>
 <20200325085656.GV2363188@phenom.ffwll.local>
Date: Wed, 25 Mar 2020 19:57:33 +0200
Message-ID: <87r1xgiagi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/display: clean up
 intel_PLL_is_valid()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Mar 2020, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Fri, Mar 20, 2020 at 04:36:35PM +0200, Jani Nikula wrote:
>> Drop useless macro hiding the return. Fix superfluous whitespace. Rename
>> function to all lowercase.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> We do lose the debug output, but then I don't think we'll do much bug
> hunting in here anytime soon, it's all fairly old gmch-style display
> stuff. Also just realized I'm still pining for an intel_gmch_pll.c ...

We don't lose the output, because the DRM_DEBUG(s) is wrapped in
comments... I didn't see the value in having these, as it's part of the
normal flow.

BR,
Jani.


>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++----------
>>  1 file changed, 19 insertions(+), 21 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 37bd7ce88ecd..6af8d43ceb0c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -620,45 +620,43 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
>>  	return clock->dot / 5;
>>  }
>>  
>> -#define INTELPllInvalid(s)   do { /* DRM_DEBUG(s); */ return false; } while (0)
>> -
>>  /*
>>   * Returns whether the given set of divisors are valid for a given refclk with
>>   * the given connectors.
>>   */
>> -static bool intel_PLL_is_valid(struct drm_i915_private *dev_priv,
>> +static bool intel_pll_is_valid(struct drm_i915_private *dev_priv,
>>  			       const struct intel_limit *limit,
>>  			       const struct dpll *clock)
>>  {
>> -	if (clock->n   < limit->n.min   || limit->n.max   < clock->n)
>> -		INTELPllInvalid("n out of range\n");
>> -	if (clock->p1  < limit->p1.min  || limit->p1.max  < clock->p1)
>> -		INTELPllInvalid("p1 out of range\n");
>> -	if (clock->m2  < limit->m2.min  || limit->m2.max  < clock->m2)
>> -		INTELPllInvalid("m2 out of range\n");
>> -	if (clock->m1  < limit->m1.min  || limit->m1.max  < clock->m1)
>> -		INTELPllInvalid("m1 out of range\n");
>> +	if (clock->n < limit->n.min || limit->n.max < clock->n)
>> +		return false;
>> +	if (clock->p1 < limit->p1.min || limit->p1.max < clock->p1)
>> +		return false;
>> +	if (clock->m2 < limit->m2.min || limit->m2.max < clock->m2)
>> +		return false;
>> +	if (clock->m1 < limit->m1.min || limit->m1.max < clock->m1)
>> +		return false;
>>  
>>  	if (!IS_PINEVIEW(dev_priv) && !IS_VALLEYVIEW(dev_priv) &&
>>  	    !IS_CHERRYVIEW(dev_priv) && !IS_GEN9_LP(dev_priv))
>>  		if (clock->m1 <= clock->m2)
>> -			INTELPllInvalid("m1 <= m2\n");
>> +			return false;
>>  
>>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
>>  	    !IS_GEN9_LP(dev_priv)) {
>>  		if (clock->p < limit->p.min || limit->p.max < clock->p)
>> -			INTELPllInvalid("p out of range\n");
>> +			return false;
>>  		if (clock->m < limit->m.min || limit->m.max < clock->m)
>> -			INTELPllInvalid("m out of range\n");
>> +			return false;
>>  	}
>>  
>>  	if (clock->vco < limit->vco.min || limit->vco.max < clock->vco)
>> -		INTELPllInvalid("vco out of range\n");
>> +		return false;
>>  	/* XXX: We may need to be checking "Dot clock" depending on the multiplier,
>>  	 * connector, etc., rather than just a single range.
>>  	 */
>>  	if (clock->dot < limit->dot.min || limit->dot.max < clock->dot)
>> -		INTELPllInvalid("dot out of range\n");
>> +		return false;
>>  
>>  	return true;
>>  }
>> @@ -725,7 +723,7 @@ i9xx_find_best_dpll(const struct intel_limit *limit,
>>  					int this_err;
>>  
>>  					i9xx_calc_dpll_params(refclk, &clock);
>> -					if (!intel_PLL_is_valid(to_i915(dev),
>> +					if (!intel_pll_is_valid(to_i915(dev),
>>  								limit,
>>  								&clock))
>>  						continue;
>> @@ -781,7 +779,7 @@ pnv_find_best_dpll(const struct intel_limit *limit,
>>  					int this_err;
>>  
>>  					pnv_calc_dpll_params(refclk, &clock);
>> -					if (!intel_PLL_is_valid(to_i915(dev),
>> +					if (!intel_pll_is_valid(to_i915(dev),
>>  								limit,
>>  								&clock))
>>  						continue;
>> @@ -842,7 +840,7 @@ g4x_find_best_dpll(const struct intel_limit *limit,
>>  					int this_err;
>>  
>>  					i9xx_calc_dpll_params(refclk, &clock);
>> -					if (!intel_PLL_is_valid(to_i915(dev),
>> +					if (!intel_pll_is_valid(to_i915(dev),
>>  								limit,
>>  								&clock))
>>  						continue;
>> @@ -939,7 +937,7 @@ vlv_find_best_dpll(const struct intel_limit *limit,
>>  
>>  					vlv_calc_dpll_params(refclk, &clock);
>>  
>> -					if (!intel_PLL_is_valid(to_i915(dev),
>> +					if (!intel_pll_is_valid(to_i915(dev),
>>  								limit,
>>  								&clock))
>>  						continue;
>> @@ -1008,7 +1006,7 @@ chv_find_best_dpll(const struct intel_limit *limit,
>>  
>>  			chv_calc_dpll_params(refclk, &clock);
>>  
>> -			if (!intel_PLL_is_valid(to_i915(dev), limit, &clock))
>> +			if (!intel_pll_is_valid(to_i915(dev), limit, &clock))
>>  				continue;
>>  
>>  			if (!vlv_PLL_is_optimal(dev, target, &clock, best_clock,
>> -- 
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
