Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6372C44C2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678666EA09;
	Wed, 25 Nov 2020 16:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C716EA09
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:19:05 +0000 (UTC)
IronPort-SDR: cix7B7PYG+SoQqwxqi+D6fytD60zeBpNXIEY5lX67QQRhnffGxRj8oaEydB1y8Mict25txy8Iw
 W9n/pTlgdvsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="159205395"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="159205395"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:18:58 -0800
IronPort-SDR: dlyefvygjUg6mXiUGPL0PcLoCG7W3NCyy1bbni6p1wthh7W5/TyM94D99kyOv8XMAuknf86nNJ
 8z0lZ6SgJ0WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="343628892"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 25 Nov 2020 08:18:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:18:54 +0200
Date: Wed, 25 Nov 2020 18:18:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125161854.GO6112@intel.com>
References: <20201119155050.20328-1-uma.shankar@intel.com>
 <20201119155050.20328-3-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119155050.20328-3-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v2 2/2] Revert "drm/i915/display/fbc: Disable fbc
 by default on TGL"
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

On Thu, Nov 19, 2020 at 09:20:50PM +0530, Uma Shankar wrote:
> FBC can be re-enabled on TGL with WA of keeping it disabled
> while PSR2 is enabled.
> =

> This reverts commit 2982ded2ff5ce0cf1a49bc39a526da182782b664.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Sorry, forgot to review this one.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 7 -------
>  1 file changed, 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index c64ed1cd29b1..7a5783564a0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1444,13 +1444,6 @@ static int intel_sanitize_fbc_option(struct drm_i9=
15_private *dev_priv)
>  	if (!HAS_FBC(dev_priv))
>  		return 0;
>  =

> -	/*
> -	 * Fbc is causing random underruns in CI execution on TGL platforms.
> -	 * Disabling the same while the problem is being debugged and analyzed.
> -	 */
> -	if (IS_TIGERLAKE(dev_priv))
> -		return 0;
> -
>  	if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >=3D 9)
>  		return 1;
>  =

> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
