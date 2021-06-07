Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CB739E855
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 22:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1031A6E20A;
	Mon,  7 Jun 2021 20:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38E06E20A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 20:22:29 +0000 (UTC)
IronPort-SDR: xdhIPltJuPyRKI8ZTeBoqFJMHstW6eUld/wD33cPP9l383XNxgBmbyXMjYsUy7NMXjuXje55c9
 d9DIT3x7yFgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204517481"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="204517481"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 13:22:26 -0700
IronPort-SDR: 9SoUR68y8EnA/AyWb4EGlhfF34nDT6fknasvd5KzZLy4MLeGGU3rNo0Uow3SV8GO2pmOqx6MB5
 uUg0IPcQPC7g==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="418645879"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 13:22:26 -0700
Date: Mon, 7 Jun 2021 13:31:00 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Message-ID: <20210607203059.GA28766@labuser-Z97X-UD5H>
References: <20210607105342.13155-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210607105342.13155-1-vandita.kulkarni@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [v2] drm/i915/dsc: Fix bigjoiner check in
 dsc_disable
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 07, 2021 at 04:23:42PM +0530, Vandita Kulkarni wrote:
> This change takes care of resetting the dss_ctl registers
> in case of dsc_disable, bigjoiner disable and also
> uncompressed joiner disable.
> 
> v2: Fix formatting
> 
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Fixes: d961eb20adb6 (drm/i915/bigjoiner: atomic commit changes for uncompressed joiner)
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 19cd9531c115..b9828852a68f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1161,12 +1161,12 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  
> -	if (!(old_crtc_state->dsc.compression_enable &&
> -	      old_crtc_state->bigjoiner))
> -		return;
> -
> -	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> -	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
> +	/* Disable only if either of them is enabled */
> +	if (old_crtc_state->dsc.compression_enable ||
> +	    old_crtc_state->dsc.compression_enable) {

Vandita I think you have a copy paste error  the second condition should be old_crtc_state->bigjoiner ?

Manasi

> +		intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> +		intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
> +	}
>  }
>  
>  void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
> -- 
> 2.21.0.5.gaeb582a
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
