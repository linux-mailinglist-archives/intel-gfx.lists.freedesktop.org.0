Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DBB646D14
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFB910E1BE;
	Thu,  8 Dec 2022 10:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2E510E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670495713; x=1702031713;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=I4xjClaPwFUESEEymuhRX/DPamTsKWawknPgutQfiac=;
 b=dIjTI1Sir5fZjd/T1PDNM8E1ZgAdbJUZs2tclfLpH2lK2rc6PgR1V/ob
 Bq3jgajUaeo9rLIvzoK9XsDtdS+9sGRS3LaTNIOdvWj+twb6rv5QknqxM
 J1NRLapW91+dGhlxFHovCVuDvxfI2IEwBtxrowcSIuuhbbL1SrDtxVJ4U
 6LXEEK2Lt8iszLTAOyXAjx5Tk8KUTKIL6ckKk2K7h5eg0GBYl+xE3djTA
 RJLb3tvqM6XsvJjBBjtVQJ3ZZW5mUBXqnB1LkiS0pV55K+HUnxSCD29C7
 OMX3+ClncFjutmxlPF3DGSrD2gIbKRAbifQB7EP9QKqhfkG0g6UFMoNJD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300552446"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300552446"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:35:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="597298752"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597298752"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:35:11 -0800
Message-ID: <a60b1a17-764d-7533-2fb3-91c844207bfe@intel.com>
Date: Thu, 8 Dec 2022 11:35:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <3493286ecd1ae166e1e15235d31115f766f7c878.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <3493286ecd1ae166e1e15235d31115f766f7c878.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 03/11] drm/i915/crt: drop a bunch of
 unnecessary register variables
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
> There's no need to save the register offsets. Drop the variables.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_crt.c | 39 +++++++++---------------
>   1 file changed, 15 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 797ad9489f7e..ed94ba5c0302 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -689,23 +689,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   	u32 vsample;
>   	u32 vblank, vblank_start, vblank_end;
>   	u32 dsl;
> -	i915_reg_t bclrpat_reg, vtotal_reg,
> -		vblank_reg, vsync_reg, pipeconf_reg, pipe_dsl_reg;
>   	u8 st00;
>   	enum drm_connector_status status;
>   
>   	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
>   
> -	bclrpat_reg = BCLRPAT(pipe);
> -	vtotal_reg = VTOTAL(pipe);
> -	vblank_reg = VBLANK(pipe);
> -	vsync_reg = VSYNC(pipe);
> -	pipeconf_reg = PIPECONF(pipe);
> -	pipe_dsl_reg = PIPEDSL(pipe);
> -
> -	save_bclrpat = intel_uncore_read(uncore, bclrpat_reg);
> -	save_vtotal = intel_uncore_read(uncore, vtotal_reg);
> -	vblank = intel_uncore_read(uncore, vblank_reg);
> +	save_bclrpat = intel_uncore_read(uncore, BCLRPAT(pipe));
> +	save_vtotal = intel_uncore_read(uncore, VTOTAL(pipe));
> +	vblank = intel_uncore_read(uncore, VBLANK(pipe));
>   
>   	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
>   	vactive = (save_vtotal & 0x7ff) + 1;
> @@ -714,14 +705,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   	vblank_end = ((vblank >> 16) & 0xfff) + 1;
>   
>   	/* Set the border color to purple. */
> -	intel_uncore_write(uncore, bclrpat_reg, 0x500050);
> +	intel_uncore_write(uncore, BCLRPAT(pipe), 0x500050);
>   
>   	if (DISPLAY_VER(dev_priv) != 2) {
> -		u32 pipeconf = intel_uncore_read(uncore, pipeconf_reg);
> +		u32 pipeconf = intel_uncore_read(uncore, PIPECONF(pipe));
>   		intel_uncore_write(uncore,
> -				   pipeconf_reg,
> +				   PIPECONF(pipe),
>   				   pipeconf | PIPECONF_FORCE_BORDER);
> -		intel_uncore_posting_read(uncore, pipeconf_reg);
> +		intel_uncore_posting_read(uncore, PIPECONF(pipe));
>   		/* Wait for next Vblank to substitue
>   		 * border color for Color info */
>   		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> @@ -730,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   			connector_status_connected :
>   			connector_status_disconnected;
>   
> -		intel_uncore_write(uncore, pipeconf_reg, pipeconf);
> +		intel_uncore_write(uncore, PIPECONF(pipe), pipeconf);
>   	} else {
>   		bool restore_vblank = false;
>   		int count, detect;
> @@ -740,12 +731,12 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   		* Yes, this will flicker
>   		*/
>   		if (vblank_start <= vactive && vblank_end >= vtotal) {
> -			u32 vsync = intel_de_read(dev_priv, vsync_reg);
> +			u32 vsync = intel_de_read(dev_priv, VSYNC(pipe));
>   			u32 vsync_start = (vsync & 0xffff) + 1;
>   
>   			vblank_start = vsync_start;
>   			intel_uncore_write(uncore,
> -					   vblank_reg,
> +					   VBLANK(pipe),
>   					   (vblank_start - 1) |
>   					   ((vblank_end - 1) << 16));
>   			restore_vblank = true;
> @@ -759,9 +750,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   		/*
>   		 * Wait for the border to be displayed
>   		 */
> -		while (intel_uncore_read(uncore, pipe_dsl_reg) >= vactive)
> +		while (intel_uncore_read(uncore, PIPEDSL(pipe)) >= vactive)
>   			;
> -		while ((dsl = intel_uncore_read(uncore, pipe_dsl_reg)) <=
> +		while ((dsl = intel_uncore_read(uncore, PIPEDSL(pipe))) <=
>   		       vsample)
>   			;
>   		/*
> @@ -775,11 +766,11 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   			st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
>   			if (st00 & (1 << 4))
>   				detect++;
> -		} while ((intel_uncore_read(uncore, pipe_dsl_reg) == dsl));
> +		} while ((intel_uncore_read(uncore, PIPEDSL(pipe)) == dsl));
>   
>   		/* restore vblank if necessary */
>   		if (restore_vblank)
> -			intel_uncore_write(uncore, vblank_reg, vblank);
> +			intel_uncore_write(uncore, VBLANK(pipe), vblank);
>   		/*
>   		 * If more than 3/4 of the scanline detected a monitor,
>   		 * then it is assumed to be present. This works even on i830,
> @@ -792,7 +783,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>   	}
>   
>   	/* Restore previous settings */
> -	intel_uncore_write(uncore, bclrpat_reg, save_bclrpat);
> +	intel_uncore_write(uncore, BCLRPAT(pipe), save_bclrpat);
>   
>   	return status;
>   }

