Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB7F2B551A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 00:35:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70856E087;
	Mon, 16 Nov 2020 23:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C316E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 23:35:08 +0000 (UTC)
IronPort-SDR: BkqBGdCcFFJlyi2YTjIV/tu0W2KuiamvH4Oo9rBppel81yguda8QNO4EgmFClczOiuz3qPO9hF
 RumG2zZkbtdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="168256126"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="168256126"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 15:35:03 -0800
IronPort-SDR: cH9pGfguQa9CU9pW/Z2l1eViqFMGrvOpIGBI7EJXIqFlzA/Pq7EHlBDZonhD7TDXdR+eDY5FEt
 CQRyrUjPTKqg==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="310547237"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 15:35:02 -0800
Date: Mon, 16 Nov 2020 15:37:32 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201116233731.GA29169@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-16-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-16-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915: Add crtcs affected by
 bigjoiner to the state
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

On Sat, Nov 14, 2020 at 12:03:50AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make sure both crtcs participating in the bigjoiner stuff
> are in the state.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 25 ++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 07bee5caacfe..465877097582 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15422,6 +15422,27 @@ static int intel_atomic_check_async(struct intel=
_atomic_state *state)
>  	return 0;
>  }
>  =

> +static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state =
*state)
> +{
> +	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		struct intel_crtc_state *linked_crtc_state;
> +
> +		if (!crtc_state->bigjoiner)
> +			continue;
> +
> +		linked_crtc_state =3D intel_atomic_get_crtc_state(&state->base,
> +								crtc_state->bigjoiner_linked_crtc);
> +		if (IS_ERR(linked_crtc_state))
> +			return PTR_ERR(linked_crtc_state);
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * intel_atomic_check - validate state object
>   * @dev: drm device
> @@ -15447,6 +15468,10 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	ret =3D intel_bigjoiner_add_affected_crtcs(state);
> +	if (ret)
> +		goto fail;
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state)) {
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
