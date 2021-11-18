Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3334565BE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 23:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEB06E4EC;
	Thu, 18 Nov 2021 22:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6BD6E4EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 22:34:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="234255741"
X-IronPort-AV: E=Sophos;i="5.87,246,1631602800"; d="scan'208";a="234255741"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 14:34:04 -0800
X-IronPort-AV: E=Sophos;i="5.87,246,1631602800"; d="scan'208";a="455523796"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 14:34:04 -0800
Date: Thu, 18 Nov 2021 14:47:25 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211118224721.GA29932@labuser-Z97X-UD5H>
References: <20211111230949.28590-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211111230949.28590-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dsc: Clamp the max DSC
 input BPP to connector's max bpp
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

@Jani , @Ville, can you take a look at this, this was how the original DSC patches
clamped the max bpp, but with latest DSC changes looks like this is not
obeyed anymore and needs to be fixed.

Manasi

On Thu, Nov 11, 2021 at 03:09:49PM -0800, Manasi Navare wrote:
> Pipe_bpp limits are decided by connectors max bpp as computed in
> compute_sink_pipe_bpp() before computing link and DSC config.
> Currently dsc_compute_config() sets the max input bpp only based
> on DSC Input BPPs supported and max bpc requested for the connector
> but does not clamp it based on connector's max bpp.
> This patch fixes that.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 45373c213d9e..82209d995969 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1400,6 +1400,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		return -EINVAL;
>  
>  	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
> +	pipe_bpp = min(pipe_bpp, limits->max_bpp);
>  
>  	/* Min Input BPC for ICL+ is 8 */
>  	if (pipe_bpp < 8 * 3) {
> -- 
> 2.19.1
> 
