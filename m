Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 369EA5BD55A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 21:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A174B10E17C;
	Mon, 19 Sep 2022 19:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C5E610E0E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663616785; x=1695152785;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/3kVkKi4rHSHMU7O8LT4tKPU9kpCWR4diyT0Iard5gg=;
 b=c2PDQnamVbNu787MyRpVrLwisUkDlrJ22RdujO5h64f9DYzfDn34NiPb
 p4NZv8bdEDe2AY4Tul+t8ElyCNNzU0efgJSRkVzWQMHhQRyQS1Q1QldZj
 /H3LgjaScYAmjhTgRlUf3utwfIC5tkUQcnv2HvggW60mrT58K69prTl7g
 oyDvfL1Fq6l3EgAQ86xOzVVjcnNmThn3mITpx7oO6Zcu2x+JLqsMnC2cd
 8QcE0/YMtJqeVHxBKFBmGGoK2juEG3s+zQJBHNyYPg/0yPcgmYsj9xrZH
 sGXs4v4uTHDJnUrBQrRympn8oEKLqMD1oxaQnfDrEil94MMMdcPQ6lf8G w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="279887887"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="279887887"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:46:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="569783315"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:46:24 -0700
Date: Mon, 19 Sep 2022 12:46:45 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220919194645.GA1061693@mdnavare-mobl1.jf.intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-7-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220917004404.414981-7-anusha.srivatsa@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 16, 2022 at 05:44:04PM -0700, Anusha Srivatsa wrote:
> Add a helper function to get stringify values of the
> desired cdclk action and dump it with rest of the
> cdclk config values
> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Please add Suggested-by: field to give proper credits as per our
discussion. This applies to other patches as well to add proper credits
to other folks who suggested design changes/ fixes.
This needs to be followed as per the upstream patch review methodology.

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

Missing newline causing checkpatch error

Manasi

> +static const char *cdclk_sequence_to_string(enum cdclk_sequence cdclk_sequence)
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
>  		    context, cdclk_config->cdclk, cdclk_config->vco,
>  		    cdclk_config->ref, cdclk_config->bypass,
> -		    cdclk_config->voltage_level);
> +		    cdclk_config->voltage_level,
> +		    cdclk_sequence_to_string(cdclk_config->steps->action));
>  }
>  
>  /**
> -- 
> 2.25.1
> 
