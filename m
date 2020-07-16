Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AC4222611
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 16:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12606E2A3;
	Thu, 16 Jul 2020 14:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E696E2A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 14:44:50 +0000 (UTC)
IronPort-SDR: Uuojb3Fnf+3H5lA31OZFLwU6RXhHDTIvnjpJ++1sRbq7XaJKHaeO8UxGRYQTw0WI5kTLjY4SpZ
 zu0oc01wfi7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="150768456"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="150768456"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 07:44:50 -0700
IronPort-SDR: 25h7F6OTpQ4Y0Jifb6r9acaGlbkvVmID9H9JPLNaFf6C2y/woBKMjXR42lPSlNh1P5owyJK+PC
 BIUz8Dut2Yjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="269269935"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 16 Jul 2020 07:44:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 17:44:46 +0300
Date: Thu, 16 Jul 2020 17:44:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200716144446.GW6112@intel.com>
References: <20200716145857.6911-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716145857.6911-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v2] drm/i915/display/fbc: Disable fbc by default
 on TGL
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

On Thu, Jul 16, 2020 at 08:28:57PM +0530, Uma Shankar wrote:
> Fbc is causing random underruns in CI execution on TGL platforms.
> Disabling the same while the problem is being debugged and analyzed.
> =

> v2: Moved the check below the module param check (Ville)
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
> index 3a4f980788a6..195b8be4532a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1426,6 +1426,13 @@ static int intel_sanitize_fbc_option(struct drm_i9=
15_private *dev_priv)
>  	if (!HAS_FBC(dev_priv))
>  		return 0;
>  =

> +	/*
> +	 * Fbc is causing random underruns in CI execution on TGL platforms.
> +	 * Disabling the same while the problem is being debugged and analyzed.
> +	 */
> +	if (IS_TIGERLAKE(dev_priv))
> +		return 0;
> +
>  	if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >=3D 9)
>  		return 1;
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
