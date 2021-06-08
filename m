Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA5839EDED
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 07:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B93E6EA9F;
	Tue,  8 Jun 2021 05:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691BB6EA9F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 05:08:16 +0000 (UTC)
IronPort-SDR: 5HC+QLlO9zElNpj5oT8swGPPa75SUhA0guZ7r6K7rRPkgr2KgqEuK1p9IkKZ9yLGS1vnn9EsKN
 2r0B8lllGeRA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="202914383"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="202914383"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 22:08:16 -0700
IronPort-SDR: lfX+6n56JzKKOjxqr3h7CpeSt71rIySrZU1pUxWSeH5n2KsFIYL4QP4xG/KcVG2kt21mZZOyy3
 bNlzu7g8RLdQ==
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="469355372"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 22:08:15 -0700
Date: Mon, 7 Jun 2021 22:16:49 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Message-ID: <20210608051649.GB28766@labuser-Z97X-UD5H>
References: <20210608040659.14131-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608040659.14131-1-vandita.kulkarni@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [v3] drm/i915/dsc: Fix bigjoiner check in
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

On Tue, Jun 08, 2021 at 09:36:59AM +0530, Vandita Kulkarni wrote:
> This change takes care of resetting the dss_ctl registers
> in case of dsc_disable, bigjoiner disable and also
> uncompressed joiner disable.
> 
> v2: Fix formatting
> v3: Fix the typo (Mansi)
> 
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Fixes: d961eb20adb6 (drm/i915/bigjoiner: atomic commit changes for uncompressed joiner)
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Looks good to me with this fix

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 19cd9531c115..7121b66bf96d 100644
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
> +	    old_crtc_state->bigjoiner) {
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
