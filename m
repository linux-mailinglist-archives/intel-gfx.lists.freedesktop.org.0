Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D315A7BA9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 12:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8542C10E30D;
	Wed, 31 Aug 2022 10:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5E810E30D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 10:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661942910; x=1693478910;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z2UNewZQl1bPP7vPTq2Gb4acB9lFQNmDKNF1QK7LtsY=;
 b=XTm22xL9t+ospC7f0axsYHlUo4ZJxpoMxKwBIbRGraM2ToW5te1mFa7z
 AmJKHmJY1X9qj1ssQY1wHP3mB27/RHqCyXirmgo+/nfvW9NHjE78x1TcE
 vRqgXF5rQbysUBGNWmb/40xMNAYyciOpOxZYbn1vnqxdDEf7ElnTJCJO3
 x95F4aCfsN89ilvKCMDQ0KaRBzsxI6cmxDImrZAPf54PKtobK8PU0b6wH
 EIwYfPjv6hyE1UUp1gh/tPtw7sNljKSZjTWsWUfLgx2ZZ7IJBFRywKQ0b
 ElkU6NXHcxmId5fcAQO4mphQPuQlRYoivkJZt4xbnmHzQW1XHLRTWP6dE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="381717493"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="381717493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 03:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="608147818"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 31 Aug 2022 03:48:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Aug 2022 13:48:25 +0300
Date: Wed, 31 Aug 2022 13:48:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <Yw88eUkBTEBOnEZZ@intel.com>
References: <20220831103724.14839-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220831103724.14839-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: refine eDP power off
 sequence
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

On Wed, Aug 31, 2022 at 06:37:24PM +0800, Lee Shawn C wrote:
> The current eDP disable sequence like this.
> 
> disable plane > disable backlight (include T9, the delay
> from backlight disable to end of valid video data) >
> disalbe transcoder/pipe > disable eDP power
> 
> Found abnormal pixel output after plane off sometimes.
> It did not cause any issue but impact user experience.
> So we modify the eDP disable flow to turn backlight off
> earlier to avoid abnormal display.

NAK. Planes can be disable at any time by userspace.
We need to find out what is causing the glitch.

> 
> disable backlight > disable plane > disalbe transcoder/pipe
> > disable eDP power
> 
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 72e2091d9fcb..d08927036350 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2045,10 +2045,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  	 * FIXME collapse everything to one hook.
>  	 * Need care with mst->ddi interactions.
>  	 */
> -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> -		intel_encoders_disable(state, crtc);
> +	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state))
>  		intel_encoders_post_disable(state, crtc);
> -	}
>  }
>  
>  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> @@ -7224,6 +7222,10 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  			continue;
>  
>  		intel_pre_plane_update(state, crtc);
> +
> +		if (!intel_crtc_is_bigjoiner_slave(old_crtc_state))
> +			intel_encoders_disable(state, crtc);
> +
>  		intel_crtc_disable_planes(state, crtc);
>  	}
>  
> -- 
> 2.31.1

-- 
Ville Syrjälä
Intel
