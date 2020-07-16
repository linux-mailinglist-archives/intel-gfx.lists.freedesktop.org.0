Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6883B222269
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 14:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1871A6E1D7;
	Thu, 16 Jul 2020 12:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D64B6E1D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 12:38:06 +0000 (UTC)
IronPort-SDR: +kEw3NgwIRm0cFGlEJQT3Nm4kJSOUuMAlpl30Tc/5+qycOaBgCem2RXmMjVtgLrYe0lnmcOYIG
 NSRqH0oxKhbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147358625"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="147358625"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 05:38:05 -0700
IronPort-SDR: CId5h0DEhD11E0zRGVyRIukIMKb7IAOe1AspJAus8NYBV82Hpizj8QcxfSNKVJJTqRnBJCkQYY
 5MAdG44SGfEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="325134158"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 Jul 2020 05:38:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 15:38:03 +0300
Date: Thu, 16 Jul 2020 15:38:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200716123803.GU6112@intel.com>
References: <20200716085540.2211-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716085540.2211-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/fbc: Disable fbc by
 default on TGL
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

On Thu, Jul 16, 2020 at 02:25:40PM +0530, Uma Shankar wrote:
> Fbc is causing random underruns in CI execution on TGL platforms.
> Disabling the same while the problem is being debugged and analyzed.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 3a4f980788a6..1d6370b29b27 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1420,6 +1420,13 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm=
_i915_private *dev_priv)
>   */
>  static int intel_sanitize_fbc_option(struct drm_i915_private *dev_priv)
>  {
> +	/*
> +	 * Fbc is causing random underruns in CI execution on TGL platforms.
> +	 * Disabling the same while the problem is being debugged and analyzed.
> +	 */
> +	if (IS_TIGERLAKE(dev_priv))
> +		return 0;
> +
>  	if (dev_priv->params.enable_fbc >=3D 0)
>  		return !!dev_priv->params.enable_fbc;
>  =

> -- =

> 2.22.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
