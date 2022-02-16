Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701924B87CD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 13:35:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3EFE10E672;
	Wed, 16 Feb 2022 12:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5197210E669
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645014953; x=1676550953;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=97mHJjXa0EWXPLi8xbFQry0ySEgbLwzo3IXbHMUrtBA=;
 b=iWwovyhjCF6Di/E7E7YkaqCTuGkE6/TS1oVoWfFf0+wWBJ4NCgtKJxJt
 y7kPCnwQbukgqT+p52qwQl3a9FQXh0h4Y79uHMna5dqrCTEK14PNCDzzj
 MR5ZSGkiqvZJzrRk1kMArI7bkajWMreHoj0WbAxcWA6jEZ0noSdSygAxk
 /2NYDDmM+EcFdrFbxolrV9FEUm+udrAFtPKD9elKGpVOW+sAhQWuEyjJO
 Zsno65cszhSgglJYQZmrx9EDglwTGwhIdfS7o3mrn+SEYAQqHKw7hMUjy
 ZKxEj7xYlZUaTijOxEm7KJH66h74PfUet5ivjk3QzrzmL9G/2XZTH9h9M w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="230555232"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="230555232"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="571252534"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 16 Feb 2022 04:35:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 14:35:49 +0200
Date: Wed, 16 Feb 2022 14:35:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YgzvpeD9/YU/74wj@intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-12-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Use bigjoiner_pipes more
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

On Tue, Feb 15, 2022 at 08:32:07PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Replace the hardcoded 2 pipe assumptions when we're massaging
> pipe_mode and the pipe_src rect to be suitable for bigjoiner.
> Instead we can just count the number of pipes in the bitmask.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++---------
>  1 file changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 192474163edb..0690470eab97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2727,16 +2727,18 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>  static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
>  					   struct drm_display_mode *mode)
>  {
> -	if (!crtc_state->bigjoiner_pipes)
> +	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);

Also just occurred to me that we might want to abstract that a bit
more  since it gets repeated in several places. Could be a followup
too I suppose.

> +
> +	if (num_pipes < 2)
>  		return;
>  
> -	mode->crtc_clock /= 2;
> -	mode->crtc_hdisplay /= 2;
> -	mode->crtc_hblank_start /= 2;
> -	mode->crtc_hblank_end /= 2;
> -	mode->crtc_hsync_start /= 2;
> -	mode->crtc_hsync_end /= 2;
> -	mode->crtc_htotal /= 2;
> +	mode->crtc_clock /= num_pipes;
> +	mode->crtc_hdisplay /= num_pipes;
> +	mode->crtc_hblank_start /= num_pipes;
> +	mode->crtc_hblank_end /= num_pipes;
> +	mode->crtc_hsync_start /= num_pipes;
> +	mode->crtc_hsync_end /= num_pipes;
> +	mode->crtc_htotal /= num_pipes;
>  }
>  
>  static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
> @@ -2809,16 +2811,17 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
>  
>  static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
>  {
> +	int num_pipes = hweight8(crtc_state->bigjoiner_pipes);
>  	int width, height;
>  
> -	if (!crtc_state->bigjoiner_pipes)
> +	if (num_pipes < 2)
>  		return;
>  
>  	width = drm_rect_width(&crtc_state->pipe_src);
>  	height = drm_rect_height(&crtc_state->pipe_src);
>  
>  	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> -		      width / 2, height);
> +		      width / num_pipes, height);
>  }
>  
>  static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
