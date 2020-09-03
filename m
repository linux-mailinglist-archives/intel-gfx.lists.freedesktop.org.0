Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A64525C1D9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 15:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79376E1D5;
	Thu,  3 Sep 2020 13:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4E36E1D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 13:47:59 +0000 (UTC)
IronPort-SDR: 0QaP6xkzzjk8voFWkSS1yBHusAfFZvzdc/XcMOPNZ7AAjzNm21/eRYwChdf5aUe4QokCT162fk
 brNoyknVI8jQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="221787668"
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="221787668"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 06:47:59 -0700
IronPort-SDR: Odan1W3Xjqm9zP9kszX7L3qwDXAMnOFf4NV9xhSejvxMvGAOuzoEbjAJ9p0MWztOHVgWk04o9Q
 UA1ayVGsBC1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="331791286"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 03 Sep 2020 06:47:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Sep 2020 16:47:55 +0300
Date: Thu, 3 Sep 2020 16:47:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200903134755.GV6112@intel.com>
References: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix regression leading to display
 audio probe failure on GLK
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

On Tue, Sep 01, 2020 at 06:10:36PM +0300, Kai Vehmanen wrote:
> In commit 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking
> to separate function") the order of force_min_cdclk_changed check and
> intel_modeset_checks(), was reversed. This broke the mechanism to
> immediately force a new CDCLK minimum, and lead to driver probe
> errors for display audio on GLK platform with 5.9-rc1 kernel. Fix
> the issue by moving intel_modeset_checks() call later.
> =

> Fixes: 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking to se=
parate function)"
> BugLink: https://github.com/thesofproject/linux/issues/2410
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Amended the commit msg with a bit more details:
"[vsyrjala: It also broke the ability of planes to bump up the cdclk
and thus could lead to underruns when eg. flipping from 32bpp to
64bpp framebuffer. To be clear, we still compute the new cdclk
correctly but fail to actually program it to the hardware due to =

intel_set_cdclk_{pre,post}_plane_update() not getting called on =

account of state->modeset=3D=3Dfalse.]"

The "Fixes" line was also a bit wrong: )" vs ") at the end. Took
me a while to figure out what dim was complaining about :)

Pushed to dinq. Thanks!

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7d50b7177d40..8caeed23037c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15009,12 +15009,6 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (dev_priv->wm.distrust_bios_wm)
>  		any_ms =3D true;
>  =

> -	if (any_ms) {
> -		ret =3D intel_modeset_checks(state);
> -		if (ret)
> -			goto fail;
> -	}
> -
>  	intel_fbc_choose_crtc(dev_priv, state);
>  	ret =3D calc_watermark_data(state);
>  	if (ret)
> @@ -15029,6 +15023,10 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  		goto fail;
>  =

>  	if (any_ms) {
> +		ret =3D intel_modeset_checks(state);
> +		if (ret)
> +			goto fail;
> +
>  		ret =3D intel_modeset_calc_cdclk(state);
>  		if (ret)
>  			return ret;
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
