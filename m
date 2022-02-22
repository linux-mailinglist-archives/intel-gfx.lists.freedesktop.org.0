Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F89D4C04BB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 23:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFC310E5BC;
	Tue, 22 Feb 2022 22:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3227F10E713
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 22:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645569487; x=1677105487;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EXUmCkEkpT5wMaVkYSeI+z97igh8r1+pKJp+nbhR91w=;
 b=J5hDgHwNfuOc3WF87Miynj0L8Ek3EfJB3dXf1hS5VFXIB82GioK4SEnn
 NhzE3K5JL7D6OQRZlNxbFn/eiYMIEuDn9rDmvpEb9cnJ6cIA8B+XCkAWq
 338usfDuQ5dqyXNx3PoXgjcUUgoD5UDgFac6wWGudfWbTrP9ngdEpCh2d
 pofbfHJtrA/pIEvpvN9Tw+I07wVJXFPce7yvV3yE5QcxtBT+xnU6fH792
 7Q60GqM1R2JaYIA9wURGLAIuW432PpVET45aFdjJMHnx1sUQzxMXdHJ/B
 UBtkJwX6sVYeV5y1WjjT58jNqHI+r50dfb8vvgbLR82mzXY+bJKg2FKdb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315059257"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="315059257"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:38:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="706794741"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:38:06 -0800
Date: Tue, 22 Feb 2022 14:38:38 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220222223832.GB22644@labuser-Z97X-UD5H>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
 <20220217103221.10405-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220217103221.10405-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Dump the crtc hw state always
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

On Thu, Feb 17, 2022 at 12:32:18PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Let's just dump the "full" hw crtc state in debugs so that we can
> see if some stale junk was left behind when the crtc is supposed
> to be entirely off.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

So basically always print the debugfs even for crtcs that are not enabled to catch any stale state?

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 84be489c3399..f1d78b1c7702 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -923,17 +923,15 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  		   yesno(crtc_state->uapi.active),
>  		   DRM_MODE_ARG(&crtc_state->uapi.mode));
>  
> -	if (crtc_state->hw.enable) {
> -		seq_printf(m, "\thw: active=%s, adjusted_mode=" DRM_MODE_FMT "\n",
> -			   yesno(crtc_state->hw.active),
> -			   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
> +	seq_printf(m, "\thw: active=%s, adjusted_mode=" DRM_MODE_FMT "\n",
> +		   yesno(crtc_state->hw.active),
> +		   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
>  
> -		seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
> -			   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> -			   yesno(crtc_state->dither), crtc_state->pipe_bpp);
> +	seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
> +		   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> +		   yesno(crtc_state->dither), crtc_state->pipe_bpp);
>  
> -		intel_scaler_info(m, crtc);
> -	}
> +	intel_scaler_info(m, crtc);
>  
>  	if (crtc_state->bigjoiner)
>  		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
> -- 
> 2.34.1
> 
