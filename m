Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C567A2D331F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 21:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570116E9BC;
	Tue,  8 Dec 2020 20:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A40916E9BC;
 Tue,  8 Dec 2020 20:23:51 +0000 (UTC)
IronPort-SDR: gBJ8lZAuEftLi7GQTl2B0eKFid99qISxhUHdrGxW+Q/1sO45PVMTVTwA8ICx7ojWJU9gjOVy/Z
 kl4l4Bg+gYYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="192258253"
X-IronPort-AV: E=Sophos;i="5.78,403,1599548400"; d="scan'208";a="192258253"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 12:23:51 -0800
IronPort-SDR: KBjJmrQAuRGgEFkxdqJn3AvCDGFegmSjJu/tItZ+Tj5EnmxMwbGitgSnMnhLrImvvZLvSdzf9o
 GdDHdCN4sAog==
X-IronPort-AV: E=Sophos;i="5.78,403,1599548400"; d="scan'208";a="363804342"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 12:23:51 -0800
Date: Tue, 8 Dec 2020 12:26:59 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201208202659.GD474@labuser-Z97X-UD5H>
References: <cover.1607429866.git.jani.nikula@intel.com>
 <43fba75d89525413aed0bdbb082c26b09458bd46.1607429866.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43fba75d89525413aed0bdbb082c26b09458bd46.1607429866.git.jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/bios: fill in DSC
 rc_model_size from VBT
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 08, 2020 at 02:33:54PM +0200, Jani Nikula wrote:
> The VBT fields match the DPCD data, so use the same helper.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Only for DSI so far right?

In that case looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 4cc949b228f2..06c3310446a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2555,16 +2555,11 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
>  			      crtc_state->dsc.slice_count);
>  
>  	/*
> -	 * FIXME: Use VBT rc_buffer_block_size and rc_buffer_size for the
> -	 * implementation specific physical rate buffer size. Currently we use
> -	 * the required rate buffer model size calculated in
> -	 * drm_dsc_compute_rc_parameters() according to VESA DSC Annex E.
> -	 *
>  	 * The VBT rc_buffer_block_size and rc_buffer_size definitions
> -	 * correspond to DP 1.4 DPCD offsets 0x62 and 0x63. The DP DSC
> -	 * implementation should also use the DPCD (or perhaps VBT for eDP)
> -	 * provided value for the buffer size.
> +	 * correspond to DP 1.4 DPCD offsets 0x62 and 0x63.
>  	 */
> +	vdsc_cfg->rc_model_size = drm_dsc_dp_rc_buffer_size(dsc->rc_buffer_block_size,
> +							    dsc->rc_buffer_size);
>  
>  	/* FIXME: DSI spec says bpc + 1 for this one */
>  	vdsc_cfg->line_buf_depth = VBT_DSC_LINE_BUFFER_DEPTH(dsc->line_buffer_depth);
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
