Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6BCAEB830
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 14:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21E010EA0F;
	Fri, 27 Jun 2025 12:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2ldemRP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3804910EA0F;
 Fri, 27 Jun 2025 12:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751028797; x=1782564797;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Edvg39LRqpEu71y5Aw9qPLI34XfCzmevj/Z8Rlfwbvo=;
 b=A2ldemRPAYJBAkQ84zikodF9sAL7P0VcFOFve7I9/bvPmi/wRBbMNwjc
 I5GXdU6wS42ek3DQixIe0Me00jXtG5QzVutPMdnbDd8zqCuEGdYBTl2Al
 PejKsW3PRcdFFp6OJvcBIgpANb4IYq0NMRjO6mHlB1PcBRnbE/UCEsu55
 Ts2FFhL6SHozrRoAltbfWW7/nQTLRry5MdvSTT/IwEdTBTRKuoPxLn72c
 90iCuCq3ZR2OxPPTJUH9PVVKlKxjTCLD69oFjS6WLV4gRCmfC6S2yIFoz
 89pzzNHcprj3uwSmHI8bNEegSsocP79HkNAkmtu/2fbkG1nKRkMETYFaD A==;
X-CSE-ConnectionGUID: 9TpdV0pjTYSmDi0jOYXbbQ==
X-CSE-MsgGUID: 3TIiRdISQzaK2UBZiC/AEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53437745"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53437745"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:53:17 -0700
X-CSE-ConnectionGUID: eJf2JToMSWKuSn1MY50r9A==
X-CSE-MsgGUID: GW7EYvmjQk64QcD2EAJoeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="158530913"
Received: from opintica-mobl1 (HELO stinkbox) ([10.245.245.146])
 by orviesa005.jf.intel.com with SMTP; 27 Jun 2025 05:53:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Jun 2025 15:53:12 +0300
Date: Fri, 27 Jun 2025 15:53:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@intel.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>,
 Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
Message-ID: <aF6UOCLdO0fGHGA9@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
 <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Jun 27, 2025 at 02:36:32PM +0300, Jani Nikula wrote:
> Unify on using read_poll_timeout() throughout instead of mixing with
> readx_poll_timeout(). While the latter can be ever so slightly simpler,
> they are both complicated enough that it's better to unify on one
> approach only.
> 
> While at it, better separate the handling of error returns from
> drm_dp_dpcd_readb() and the actual status byte. This is best achieved by
> inlining the read_fec_detected_status() function.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 33 +++++++++---------------
>  1 file changed, 12 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0405396c7750..fc4587311607 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2339,34 +2339,25 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
>  		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
>  }
>  
> -static int read_fec_detected_status(struct drm_dp_aux *aux)
> -{
> -	int ret;
> -	u8 status;
> -
> -	ret = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
> -	if (ret < 0)
> -		return ret;
> -
> -	return status;
> -}
> -
>  static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  {
>  	struct intel_display *display = to_intel_display(aux->drm_dev);
>  	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
> -	int status;
> -	int err;
> +	u8 status = 0;
> +	int ret, err;
>  
> -	err = readx_poll_timeout(read_fec_detected_status, aux, status,
> -				 status & mask || status < 0,
> -				 10000, 200000);
> +	ret = read_poll_timeout(drm_dp_dpcd_readb, err,
> +				err || (status & mask),
> +				10 * 1000, 200 * 1000, false,
> +				aux, DP_FEC_STATUS, &status);

I think I hate these macros. It's very hard to tell from this
soup what is actually being done here.

The 'val', 'op', and 'args' look very disconnected here even though
they are always part of the same thing. Is there a reason they can't
just be a single 'op' parameter like we have in wait_for() so you can
actually see the code?

Ie.
read_poll_timeout(err = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status),
		  err || (status & mask),
                  10 * 1000, 200 * 1000, false);
?

>  
> -	if (err || status < 0) {
> +	/* Either can be non-zero, but not both */
> +	ret = ret ?: err;
> +	if (ret) {
>  		drm_dbg_kms(display->drm,
> -			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
> -			    str_enabled_disabled(enabled), err, status);
> -		return err ? err : status;
> +			    "Failed waiting for FEC %s to get detected: %d (status 0x%02x)\n",
> +			    str_enabled_disabled(enabled), ret, status);
> +		return ret;
>  	}
>  
>  	return 0;
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
