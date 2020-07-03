Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3087421304F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 02:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DD66E4F8;
	Fri,  3 Jul 2020 00:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE8CF6E4F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:02:47 +0000 (UTC)
IronPort-SDR: PfYRhWXjAlpaewoT1Ah41qQC2v+bqrP/8jDK7JCPcGSCeCMJ6dKcks1spP/SqeNknt+3CAwDLq
 3Q2sP5cfd/uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="148583310"
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; d="scan'208";a="148583310"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 17:02:47 -0700
IronPort-SDR: XlaCTtnebaNMXeGKMYG+GI6AlQ3MOKzXpDEoNptqZav7Il3UrfgVJcES2lSoBF9sV/kpuvf+uV
 olQ4jcbEmlNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; d="scan'208";a="282116917"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga006.jf.intel.com with ESMTP; 02 Jul 2020 17:02:47 -0700
Date: Thu, 2 Jul 2020 17:04:26 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200703000425.GA1225@intel.com>
References: <20200702091526.10096-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702091526.10096-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Clamp min_cdclk to
 max_cdclk_freq to unblock 8K
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

On Thu, Jul 02, 2020 at 12:15:26PM +0300, Stanislav Lisovskiy wrote:
> We still need "Bump up CDCLK" workaround otherwise getting
> underruns - however currently it blocks 8K as CDCLK =3D Pixel rate,
> in 8K case would require CDCLK to be around 1 Ghz which is not
> possible.
> =

> v2: - Convert to expression(max(min_cdclk, min(pixel_rate, max_cdclk))
>       (Ville Syrj=E4l=E4)
>     - Use type specific min_t, max_t(Ville Syrj=E4l=E4)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

I have tested this and this unblocks 8K =


Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 45f7f33d1144..8f9320e1e249 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2080,8 +2080,15 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  	 * Explicitly stating here that this seems to be currently
>  	 * rather a Hack, than final solution.
>  	 */
> -	if (IS_TIGERLAKE(dev_priv))
> -		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> +	if (IS_TIGERLAKE(dev_priv)) {
> +		/*
> +		 * Clamp to max_cdclk_freq in case pixel rate is higher,
> +		 * in order not to break an 8K, but still leave W/A at place.
> +		 */
> +		min_cdclk =3D max_t(int, min_cdclk,
> +				  min_t(int, crtc_state->pixel_rate,
> +					dev_priv->max_cdclk_freq));
> +	}
>  =

>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
> -- =

> 2.24.1.485.gad05a3d8e5
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
