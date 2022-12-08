Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E12E0646D24
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7967B10E1B8;
	Thu,  8 Dec 2022 10:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D923610E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670495920; x=1702031920;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=qgzge8phFm39Q++v30zpPpafXK0YCxCEPh1X+0hzT50=;
 b=YB/goZ7Bu3tdhgDkt1WJtIO7nFHUCkgC6mssXwMQZ9MtOWCXhMCJombE
 bmN24XGzfBjSmsZf4mCC3MPFgkK2ScHeYRMTz5GjQyBaSpKly6jKKXtoH
 bkKoMndF4/w9Z82QXWpbMTI6M+nBOQVuLRMnhFyAISTEs45tdcARm6l4p
 gFAZOXC9Ubo7tbsZkW85T8E7natbsp46ytJ4B2jRuzgiZ9SrqvsSRnipw
 kt2EihyUd7/b/KdubwCMjsL3Bik9DTGm3w6LtB+Rbb1qGRaLIHuAqnA1v
 Q8oOacVAlSBmWyNyCOX/HonaWF/+N+KwB0ejQMniEiHYw+09V+epL+wFQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="317148194"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317148194"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:38:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="624654208"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="624654208"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:38:39 -0800
Message-ID: <f5b992ca-a05b-b552-df63-abaed8e7e718@intel.com>
Date: Thu, 8 Dec 2022 11:38:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <39c198439be580052d1f78a44c96df7ba8ffd56d.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <39c198439be580052d1f78a44c96df7ba8ffd56d.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 04/11] drm/i915/crt: switch to intel_de_*
 register accessors in display code
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

On 07.12.2022 18:17, Jani Nikula wrote:
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Just curious if compiler is able to keep the code size with such changes.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_crt.c | 42 +++++++++++-------------
>   1 file changed, 19 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index ed94ba5c0302..7267ffc7f539 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -682,7 +682,6 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   {
>   	struct drm_device *dev = crt->base.base.dev;
>   	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct intel_uncore *uncore = &dev_priv->uncore;
>   	u32 save_bclrpat;
>   	u32 save_vtotal;
>   	u32 vtotal, vactive;
> @@ -694,9 +693,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   
>   	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
>   
> -	save_bclrpat = intel_uncore_read(uncore, BCLRPAT(pipe));
> -	save_vtotal = intel_uncore_read(uncore, VTOTAL(pipe));
> -	vblank = intel_uncore_read(uncore, VBLANK(pipe));
> +	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(pipe));
> +	save_vtotal = intel_de_read(dev_priv, VTOTAL(pipe));
> +	vblank = intel_de_read(dev_priv, VBLANK(pipe));
>   
>   	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
>   	vactive = (save_vtotal & 0x7ff) + 1;
> @@ -705,23 +704,23 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   	vblank_end = ((vblank >> 16) & 0xfff) + 1;
>   
>   	/* Set the border color to purple. */
> -	intel_uncore_write(uncore, BCLRPAT(pipe), 0x500050);
> +	intel_de_write(dev_priv, BCLRPAT(pipe), 0x500050);
>   
>   	if (DISPLAY_VER(dev_priv) != 2) {
> -		u32 pipeconf = intel_uncore_read(uncore, PIPECONF(pipe));
> -		intel_uncore_write(uncore,
> -				   PIPECONF(pipe),
> -				   pipeconf | PIPECONF_FORCE_BORDER);
> -		intel_uncore_posting_read(uncore, PIPECONF(pipe));
> +		u32 pipeconf = intel_de_read(dev_priv, PIPECONF(pipe));
> +
> +		intel_de_write(dev_priv, PIPECONF(pipe),
> +			       pipeconf | PIPECONF_FORCE_BORDER);
> +		intel_de_posting_read(dev_priv, PIPECONF(pipe));
>   		/* Wait for next Vblank to substitue
>   		 * border color for Color info */
>   		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> -		st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
> +		st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
>   		status = ((st00 & (1 << 4)) != 0) ?
>   			connector_status_connected :
>   			connector_status_disconnected;
>   
> -		intel_uncore_write(uncore, PIPECONF(pipe), pipeconf);
> +		intel_de_write(dev_priv, PIPECONF(pipe), pipeconf);
>   	} else {
>   		bool restore_vblank = false;
>   		int count, detect;
> @@ -735,10 +734,8 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   			u32 vsync_start = (vsync & 0xffff) + 1;
>   
>   			vblank_start = vsync_start;
> -			intel_uncore_write(uncore,
> -					   VBLANK(pipe),
> -					   (vblank_start - 1) |
> -					   ((vblank_end - 1) << 16));
> +			intel_de_write(dev_priv, VBLANK(pipe),
> +				       (vblank_start - 1) | ((vblank_end - 1) << 16));
>   			restore_vblank = true;
>   		}
>   		/* sample in the vertical border, selecting the larger one */
> @@ -750,10 +747,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   		/*
>   		 * Wait for the border to be displayed
>   		 */
> -		while (intel_uncore_read(uncore, PIPEDSL(pipe)) >= vactive)
> +		while (intel_de_read(dev_priv, PIPEDSL(pipe)) >= vactive)
>   			;
> -		while ((dsl = intel_uncore_read(uncore, PIPEDSL(pipe))) <=
> -		       vsample)
> +		while ((dsl = intel_de_read(dev_priv, PIPEDSL(pipe))) <= vsample)
>   			;
>   		/*
>   		 * Watch ST00 for an entire scanline
> @@ -763,14 +759,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   		do {
>   			count++;
>   			/* Read the ST00 VGA status register */
> -			st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
> +			st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
>   			if (st00 & (1 << 4))
>   				detect++;
> -		} while ((intel_uncore_read(uncore, PIPEDSL(pipe)) == dsl));
> +		} while ((intel_de_read(dev_priv, PIPEDSL(pipe)) == dsl));
>   
>   		/* restore vblank if necessary */
>   		if (restore_vblank)
> -			intel_uncore_write(uncore, VBLANK(pipe), vblank);
> +			intel_de_write(dev_priv, VBLANK(pipe), vblank);
>   		/*
>   		 * If more than 3/4 of the scanline detected a monitor,
>   		 * then it is assumed to be present. This works even on i830,
> @@ -783,7 +779,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   	}
>   
>   	/* Restore previous settings */
> -	intel_uncore_write(uncore, BCLRPAT(pipe), save_bclrpat);
> +	intel_de_write(dev_priv, BCLRPAT(pipe), save_bclrpat);
>   
>   	return status;
>   }

