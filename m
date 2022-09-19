Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 326805BC55C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 11:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E63310E5E3;
	Mon, 19 Sep 2022 09:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BBB10E5E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 09:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663579735; x=1695115735;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=qHvh4winl+TZoZ/aCaE1aD+W0vPlesiLsqd6jD7TsEE=;
 b=FsgvSvNxvFTdQ/pFsLTA1nNl9lvg+Y4wMP+II7Qx1EG1vigLX+vnqSUQ
 pxJVOUmSOEHdBUxL+ggpcm2CF3cue6kD9r7SQ2mqL1MUAKt9p5A859WBL
 l3OkjyhcWCVTdUMuysnG0l1e1ssULpFV0MTDkxQeR2gtMyAKwVvDG77cw
 yPAshNESOTdNXj4kklXKfFJ55JL84yftw4LopPp69+wt2WbXO9NxEmLYO
 cMgVDE1TtZ0KIXGK3z85zIbb4+sEooUrFiAWX+iRU1ULMuMyM23CXFaSj
 e231gGWtTLiG7f77ReWFzdrw550+AWHVynM6HjpzyMOGRZmGIm5ztNa3n w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="286396220"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="286396220"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:28:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="596011753"
Received: from jjohns2-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.205])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:28:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220917004404.414981-5-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-5-anusha.srivatsa@intel.com>
Date: Mon, 19 Sep 2022 12:28:38 +0300
Message-ID: <87sfknpvax.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/display: Embed the new struct
 steps for crawling
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Populate the new struct steps for crawl case.
>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index d2e81134b6f2..bb5bbb1ad982 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1951,8 +1951,9 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
> -				  const struct intel_cdclk_config *b)
> +				  struct intel_cdclk_config *b)

Same here, why are you dropping const?

>  {
> +	struct cdclk_step *cdclk_transition = b->steps;

Same here about naming.

>  	int a_div, b_div;
>  
>  	if (!HAS_CDCLK_CRAWL(dev_priv))
> @@ -1965,6 +1966,12 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
>  	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
>  
> +	if (a->vco != 0 && b->vco != 0 && a->vco != b->vco &&
> +	    a_div == b_div && a->ref == b->ref) {
> +		cdclk_transition->action = CDCLK_CRAWL_ONLY;
> +		cdclk_transition->cdclk = b->cdclk;
> +	}
> +
>  	return a->vco != 0 && b->vco != 0 &&
>  		a->vco != b->vco &&
>  		a_div == b_div &&

-- 
Jani Nikula, Intel Open Source Graphics Center
