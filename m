Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5B24C04EC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 23:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7B610E7D3;
	Tue, 22 Feb 2022 22:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB2310E7D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 22:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645570409; x=1677106409;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XOtl/8l/rxRc7GIU4kGiMp48NQK9js4vOYjqI82Jidk=;
 b=B3X/CINHDtliVppsY+n1R7yoV/lI68AivEviq5a8lUXNdupjX9oLmR6O
 4AuGe6UFCjzFNTA/+DmKVsbAgQu69VsZ4PwqobHbaq6RioRWyoxJC0Gdw
 XA4zKDEdU5IWqAUjR4zephI4+1rsBY5M78jC6H4cD3LiLq7v70xMcVhZr
 961BNtZEgM5U+piIBXitzaPJo1ZjMtOa3zu+W9okXvMs1vUxuThmxLZcz
 FKAvYQsPDj6L4FGiOKQz/lBQnH0oLSroLQ850xWY8pMCiKNwuQGyYW7Kt
 qWXYOPbrVZuqFy/FTYuCKIj/jtOOpgL2CmPjqqsY0aCedI/9BwxXnTlTa g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312547314"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="312547314"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:53:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="706797924"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:53:28 -0800
Date: Tue, 22 Feb 2022 14:54:00 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220222225400.GA6452@labuser-Z97X-UD5H>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
 <20220217103221.10405-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220217103221.10405-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Dump hw.enable and pipe_mode
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

On Thu, Feb 17, 2022 at 12:32:19PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Include hw.enable and pipe_mode in the crtc debugfs state dump.
> These are fairly fundemental to the operation of the driver
> so not seeing them leaves us in the dark.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Yup makes sense to have this debug

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f1d78b1c7702..1740f24446bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -923,9 +923,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  		   yesno(crtc_state->uapi.active),
>  		   DRM_MODE_ARG(&crtc_state->uapi.mode));
>  
> -	seq_printf(m, "\thw: active=%s, adjusted_mode=" DRM_MODE_FMT "\n",
> -		   yesno(crtc_state->hw.active),
> +	seq_printf(m, "\thw: enable=%s, active=%s\n",
> +		   yesno(crtc_state->hw.enable), yesno(crtc_state->hw.active));
> +	seq_printf(m, "\tadjusted_mode=" DRM_MODE_FMT "\n",
>  		   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
> +	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
> +		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
>  
>  	seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
>  		   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> -- 
> 2.34.1
> 
