Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EC326446F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 12:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037716E902;
	Thu, 10 Sep 2020 10:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE696E902
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 10:44:24 +0000 (UTC)
IronPort-SDR: qS6BfgGBXR0YERkWda2JOnGMDg4EfZQ4tT2q2owQrzBa3OGiXbDkSiwjfT1FndgHKKsgTOEOXz
 cXOUygR6xg9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157787154"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157787154"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 03:44:24 -0700
IronPort-SDR: Edc5LhX5Km9TIAcyGArIezxHdIin8HlEdVpT4s//1oYEjty1WOa/bFlo2Qls21GB7JgGZkSEAW
 rn0SiuN8856g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="304841763"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Sep 2020 03:44:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Sep 2020 13:44:21 +0300
Date: Thu, 10 Sep 2020 13:44:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200910104421.GT6112@intel.com>
References: <20200910095227.9466-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910095227.9466-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: disable all display features
 when no display
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 10, 2020 at 12:52:25PM +0300, Jani Nikula wrote:
> Disable all display feature flags when there are no pipes i.e. there is
> no display. This should help with not having to additionally check for
> HAS_DISPLAY() when a feature flag check would suffice.
> =

> Also disable modeset and atomic driver features.

While bspec is rather vague whether this is actually entirely consistent
with how th hw works, it seems rather silly if any display hw blocks
would get initialized by the BIOS/whatever when there are no usable
pipes.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index e2aa5bc3a6e0..adc836f15fde 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -516,6 +516,14 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>  					    S32_MAX),
>  				USEC_PER_SEC));
>  	}
> +
> +	if (!HAS_DISPLAY(dev_priv)) {
> +		dev_priv->drm.driver_features &=3D ~(DRIVER_MODESET |
> +						   DRIVER_ATOMIC);
> +		memset(&info->display, 0, sizeof(info->display));
> +		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
> +		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));

Side note: No idea why the num_scalers/sprites is stored under the
runtime info. I think those could just live in the normal PCI ID
based device info.

> +	}
>  }
>  =

>  void intel_driver_caps_print(const struct intel_driver_caps *caps,
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
