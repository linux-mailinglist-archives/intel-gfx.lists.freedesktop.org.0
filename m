Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD14C4C04C9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 23:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5CC10E713;
	Tue, 22 Feb 2022 22:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC3310E713
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 22:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645569677; x=1677105677;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VCmmTO+dTu3GUePg3es2y5mt9axv5iY96u+1UzbxZbI=;
 b=TLIOJuv4GxyV7JDeontkM2k/1CzeJ2ZEQHFUv5LnjZiBsGc3A3d793tE
 4dFloyQHd3t8J7s5eY+SrmLkWizG+LlYvZKKKYmIb3WWwKvuc2VPJFRbF
 GcR67KusmRSD0v/uywo9Xe06qYs7JAbKFwit9rXLnziLFvGZZt+ht2Hrl
 t+qG+yhp0UvX3HU9gtTDhUrXK4J3rl+HXa2+lfeRh1albYkeFEyx9cN0G
 dNEqyLUR9QtTtoFMcyOsgzpVP8j/JkMf5ozwFcQ/eXM7ZfGo9a7P23Rz3
 zonn3zEQYdC6Fz7eO892eELA8Zm1A7iO8azMS0hGqqCiuuDwaKLpu+iKj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231804368"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="231804368"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:41:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="573603858"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:41:17 -0800
Date: Tue, 22 Feb 2022 14:41:49 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220222224149.GA6196@labuser-Z97X-UD5H>
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

Okay looks good to have more debug info here

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
