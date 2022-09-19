Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5359E5BC558
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 11:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B90010E5E2;
	Mon, 19 Sep 2022 09:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EACC10E5E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 09:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663579693; x=1695115693;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YY0j49IqIaVnXHoKt0rb2vVqU4TykNE0DpBAW1e7GIQ=;
 b=J4WMBkJHTbXJwENXiV9Ln4QWz9zVk/fZed6dLD/T6y2f6DJ5WJjGnVM9
 ocIZfyyQnOVS82qhb9blmQVDkGnuScXbQL6M/FVBv5vq9Q3X97lv3wQB4
 bLoJcuQCxpvrjjhshc0eLL46++hXgsIKF+NXELV+wvK0BMXHCRhMlhnHY
 4TbRgtcpqYrB5ustkrT8FvYffaLhEHLCPj37X2NdQsdoKFJbymZNQV+aT
 vU7mmflg0auGItzh5mEDEluteSktlcrII4APAIYSGu1WeNwClnVbJcYQY
 q6HnPqyYy4m+kMkKUJcJfKPpKLRVojKJnCu0/uajwid/U5rVzkGpyCH5k w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="325641138"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="325641138"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:28:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="680773611"
Received: from jjohns2-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:28:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220917004404.414981-4-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-4-anusha.srivatsa@intel.com>
Date: Mon, 19 Sep 2022 12:27:55 +0300
Message-ID: <87v8pjpvc4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display: Embed the new struct
 steps for squashing
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
> Populate the new struct steps for squash case.
>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 220d32adbd12..d2e81134b6f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1973,8 +1973,9 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  
>  static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  				   const struct intel_cdclk_config *a,
> -				   const struct intel_cdclk_config *b)
> +				   struct intel_cdclk_config *b)

Why are you dropping const?

>  {
> +	struct cdclk_step *cdclk_transition = b->steps;

The type name has step, the array is named steps, why is the variable
"transition"?

>  	/*
>  	 * FIXME should store a bit more state in intel_cdclk_config
>  	 * to differentiate squasher vs. cd2x divider properly. For
> @@ -1984,6 +1985,12 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  	if (!has_cdclk_squasher(dev_priv))
>  		return false;
>  
> +	if (a->cdclk != b->cdclk && a->vco != 0 &&
> +	    a->vco == b->vco &&	a->ref == b->ref) {
> +		cdclk_transition->action = CDCLK_SQUASH_ONLY;
> +		cdclk_transition->cdclk = b->cdclk;
> +	}
> +
>  	return a->cdclk != b->cdclk &&
>  		a->vco != 0 &&
>  		a->vco == b->vco &&

-- 
Jani Nikula, Intel Open Source Graphics Center
