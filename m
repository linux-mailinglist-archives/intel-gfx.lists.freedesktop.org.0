Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 425F625A975
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 12:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE98C6E30D;
	Wed,  2 Sep 2020 10:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA126E30D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 10:31:13 +0000 (UTC)
IronPort-SDR: +qUQbrLE2NDWSTkiIo5klu8EQVyDr5/jSP9cGgZC2IWCPaJrL3Y2lf/qoFeRI93YjjGpFhCNTq
 +kXWwHmA4jLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="156623426"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="156623426"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 03:31:12 -0700
IronPort-SDR: hm1MustYYE4sW1NHc7E9U8oVT8zzS0iVQJgS99LPw7NHgbDEZkIi4VD+ZPtb/7PqNeSxuOBtHo
 wYCIf6SeCXQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="341362834"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Sep 2020 03:31:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Sep 2020 13:31:09 +0300
Date: Wed, 2 Sep 2020 13:31:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200902103109.GM6112@intel.com>
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

Yep. I eyeed this same code recently and noticed the same bug.
The one thing I didn't yet figure out is whether there is some
subtle ordering requirement that was the reason for the change.
But considering intel_modeset_checks() doesn't really do much
anymore I think it should be safe.

Sadly CI has been lumping all underrun errors under some ancient
bugs, so no one noticed that things started to fail when this
regression was introduced :(

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Fixes: 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking to se=
parate function)"
> BugLink: https://github.com/thesofproject/linux/issues/2410
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
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
