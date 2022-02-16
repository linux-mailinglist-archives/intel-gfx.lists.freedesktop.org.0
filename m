Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FC14B932E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 22:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FD910E203;
	Wed, 16 Feb 2022 21:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A5C10E203
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 21:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645046778; x=1676582778;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CRvn1ZVzUGnVkq176zMIBCJv/vA7Du4Rdb1fF5b9fZ8=;
 b=Wyc2m5aQGFBNMlkHrYKaglrLRtIPRzPg+IAMB3vbnGl3u907zi//gVMo
 RekoOLOZURjaQms5TFjTMO0rkXLLRBwLK5ZaT49S1P463jqDMjw38SfYN
 LoificCs1tRsI5T44jeaPhHMTDctAHlKq4w+G2eO9V8AlRcrSX5UxJAnu
 lajnZuhLRtluCqh9/9Mo32Yj7E1uPECLcRWMA5l9B8OX06utq2E1RTnxA
 JTGLm9z3yAQ73dXhoHXodAr2SJt9jsRLLSjaiY5e9rO+j98u7Bw+CW1b2
 qUdaM1zny8O/b4F/kD0SK5MNA3AO6jzCeFJa//KCN5Xe4qwyJniLnx7DI g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="337169448"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="337169448"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:26:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="503212507"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:26:17 -0800
Date: Wed, 16 Feb 2022 13:26:37 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220216212637.GB27769@labuser-Z97X-UD5H>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-12-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: intel-gfx@lists.freedesktop.org
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

Patch looks good, perhaps can be squashed with Patch 10 ?
But either ways

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

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
> 
