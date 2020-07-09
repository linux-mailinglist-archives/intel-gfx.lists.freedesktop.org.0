Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF666219E90
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B516E405;
	Thu,  9 Jul 2020 11:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3096E405
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:01:24 +0000 (UTC)
IronPort-SDR: Xaw/D/jDAr3PUwwriPmOzke5zGr18TXR8fiyRyOLKsAEh9idhH2E7WbitdSEXIyASudBjmU6Y5
 Me9QVvMNUmRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="136200200"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136200200"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:01:24 -0700
IronPort-SDR: yMH9gcHtEQ8uDtSNej9yJZbh4A47U2WRnM2rRE1pl9fYMFkCOZQN4T55woKQWSohrJuCyBaqLK
 fEp4PFcPGyxQ==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="428170171"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:01:23 -0700
Date: Thu, 9 Jul 2020 14:01:19 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200709110119.GC16776@ideak-desk.fi.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108181242.13650-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Reject DRM_MODE_FLAG_DBLCLK
 with DVI sinks
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 08, 2020 at 08:12:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The code assumes that DRM_MODE_FLAG_DBLCLK means that we enable the
> pixel repeat feature. That only works with HDMI since it requires
> AVI infoframe to signal the information to the sink. Hence even if
> the mode dotclock would be valid we cannot currently assume that
> we can just ignore the DBLCLK flag. Reject it for DVI sinks.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 85c5f840a0fc..a62dd3348301 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2185,8 +2185,11 @@ intel_hdmi_mode_valid(struct drm_connector *connec=
tor,
>  	if (clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  =

> -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
> +		if (!has_hdmi_sink)
> +			return MODE_CLOCK_LOW;

MODE_H_ILLEGAL is used elsewhere for this case, and also an odd MODE_BAD
at one place.

>  		clock *=3D 2;
> +	}
>  =

>  	if (drm_mode_is_420_only(&connector->display_info, mode))
>  		clock /=3D 2;
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
