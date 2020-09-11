Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B964266116
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 16:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600B16EA78;
	Fri, 11 Sep 2020 14:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C426EA78
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 14:21:18 +0000 (UTC)
IronPort-SDR: EwCSQ0XAl8Q5HR0kvT6QsOlR+zc6JQeu5nQ91IPzw/MaC9dyMMkYYHT4MuvmrC861UDrOXgOz8
 qjSnRyxg3sPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156157936"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="156157936"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 07:21:17 -0700
IronPort-SDR: kmCyRGMhfk03BRE+98btpCai3ohAV4fnmpXgNkyaZkf+UiZNsaNCL5R8c1aN8OPBrPK4+pJHD0
 TzAV8RAh9HLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="305282818"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 11 Sep 2020 07:21:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Sep 2020 17:21:13 +0300
Date: Fri, 11 Sep 2020 17:21:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20200911142113.GJ6112@intel.com>
References: <20200827055129.26566-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200827055129.26566-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: disable FBC on Nightfury board
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 27, 2020 at 01:51:29PM +0800, Lee Shawn C wrote:
> Customer report random display flicker issue on Nightfury board.
> And we found this problem might be caused by VT-d and FBC are
> both enabled. According to sighting report, it recommend to turn
> drm/i915/fbc: disable FBC on Nightfury board
> =

> Customer report random display flicker issue on Nightfury board.
> And we found this problem might be caused by VT-d and FBC are
> both enabled. According to sighting report, it recommend to turn
> FBC off to workaround this kind of issue.
> =

> This change refer to DMI BOARD_VENDOR and BOARD_NAME information
> to disable FBC.

What is this "nightfury board" exactly?

I think we're missing at least one fbc vs. vt-d w/a on some
kbl/cfl/etc. era platforms:
git://github.com/vsyrjala/linux.git  vtd_wa_1142

> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 327af428d73f..20660fdbab36 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -39,6 +39,7 @@
>   */
>  =

>  #include <drm/drm_fourcc.h>
> +#include <linux/dmi.h>
>  =

>  #include "i915_drv.h"
>  #include "i915_trace.h"
> @@ -1439,6 +1440,24 @@ static int intel_sanitize_fbc_option(struct drm_i9=
15_private *dev_priv)
>  	return 0;
>  }
>  =

> +static int intel_fbc_vtd_callback(const struct dmi_system_id *id)
> +{
> +	DRM_DEBUG_KMS("Disabling FBC to prevent screen flicker on %s device\n",=
 id->ident);
> +	return 1;
> +}
> +
> +static const struct dmi_system_id intel_fbc_vtd_detect[] =3D {
> +	{
> +		.callback =3D intel_fbc_vtd_callback,
> +		.ident =3D "Google Nightfury",
> +		.matches =3D {
> +			DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
> +			DMI_MATCH(DMI_BOARD_NAME, "Nightfury"),
> +		},
> +	},
> +	{ }
> +};
> +
>  static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
>  {
>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> @@ -1450,6 +1469,9 @@ static bool need_fbc_vtd_wa(struct drm_i915_private=
 *dev_priv)
>  		return true;
>  	}
>  =

> +	if (dmi_check_system(intel_fbc_vtd_detect))
> +		return true;
> +
>  	return false;
>  }
>  =

> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
