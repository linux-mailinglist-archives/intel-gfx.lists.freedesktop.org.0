Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150E05BDE1D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 09:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B35510E116;
	Tue, 20 Sep 2022 07:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164FA10E116
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 07:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663658855; x=1695194855;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=NjBwDvIEGU1IuPiJc09EmS77Ed1wvnWViX+4L7/2K1g=;
 b=lADe0iyQAhNW9klVWfdqVh9SSNzLnIcyUbA30iMMUc3qgSDO9i1yhozf
 KYcjJD24HW1RuNzY91Ip6ucrtHwvNy1mmexoWJTtFTDC1vD3FC+sdH5oB
 En66IwIZSaZGufF8yIsP3jhufMteVPQMO8AfP8MIKcXMwCu972d/bK93J
 BiOUprj1I8BOOsfhPYXLTiumMcvAnc5KfwdLjU7ipmDeNytuzIiAvDq7W
 G5riYNg7wgFJdCltml7GF2LizZ0jbSQUTLlLzHyy8G940t0mkLIhikoJ9
 CkKylfEP2OENpdKT1fFfOXsDTRSqx11iDXhRRRqG3VAlfkV/50vbS+dtY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300999001"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="300999001"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 00:27:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="744419147"
Received: from icostanz-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.2])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 00:27:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220917004404.414981-7-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-7-anusha.srivatsa@intel.com>
Date: Tue, 20 Sep 2022 10:27:14 +0300
Message-ID: <87sfkmo699.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/display: Dump the new cdclk
 config values
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
> Add a helper function to get stringify values of the
> desired cdclk action and dump it with rest of the
> cdclk config values
>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index bc627daade3e..12f5e4d23245 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1688,6 +1688,19 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>  
>  	return 0xffff;
>  }
> +static const char *cdclk_sequence_to_string(enum cdclk_sequence cdclk_sequence)

For any enum foobar, this would be customarily called foobar_name(),
i.e. cdclk_sequence_name(). (Though the enum should probably be renamed
as mentioned earlier.)

> +{
> +	switch (cdclk_sequence) {
> +	case CDCLK_SQUASH_ONLY:
> +		return "Squash only";
> +	case CDCLK_CRAWL_ONLY:
> +		return "Crawl only";
> +	case CDCLK_LEGACY:
> +		return "Legacy method";
> +	default:
> +		return "Not a valid cdclk sequence";
> +	}
> +}
>  
>  static void dg2_prog_squash_ctl(struct drm_i915_private *i915, u16 waveform)
>  {
> @@ -2083,10 +2096,11 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
>  			     const struct intel_cdclk_config *cdclk_config,
>  			     const char *context)
>  {
> -	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
> +	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d, %s action\n",

"%s action" leads to:

Squash only action
Crawl only action
Legacy method action
Not a valid cdclk sequence action

A bit odd perhaps. *shrug*

BR,
Jani.

>  		    context, cdclk_config->cdclk, cdclk_config->vco,
>  		    cdclk_config->ref, cdclk_config->bypass,
> -		    cdclk_config->voltage_level);
> +		    cdclk_config->voltage_level,
> +		    cdclk_sequence_to_string(cdclk_config->steps->action));
>  }
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
