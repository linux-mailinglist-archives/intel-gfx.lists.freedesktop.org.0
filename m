Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E658A1F6BD9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 18:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B14B6E84A;
	Thu, 11 Jun 2020 16:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54716E84A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 16:09:36 +0000 (UTC)
IronPort-SDR: D8W8Q0VvUdqPqDt55zMGfx81mIgfZ85ZtJMszSke75lrouSfUrC/AsiIz5eGXHsim7RileHsGl
 VyM43JMSnSbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 09:09:34 -0700
IronPort-SDR: /bQvhAFAzTIN4cYlpJGxyQIDzZn4EjnblkwR4r+dg05b8/+xAZFTML4dOKV44k/769k9sqizwT
 iIH8IE38wu5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="314853837"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Jun 2020 09:09:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jun 2020 19:09:29 +0300
Date: Thu, 11 Jun 2020 19:09:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200611160929.GD6112@intel.com>
References: <20200611123038.91855-1-chris@chris-wilson.co.uk>
 <20200611123447.92171-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611123447.92171-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/vblank: Estimate sample time
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

On Thu, Jun 11, 2020 at 01:34:47PM +0100, Chris Wilson wrote:
> Since we have a precise start/end time for the sample, the actual time
> the HW was read back is within that interval, and more likely closer to
> the mean of the interval. Use the mean sample time when estimating the
> vblank time.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Seems reasonable.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/drm_vblank.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index da7b0b0c1090..a7043d268cca 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -710,15 +710,18 @@ drm_crtc_vblank_helper_get_vblank_timestamp_interna=
l(
>  	delta_ns =3D div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
>  			   mode->crtc_clock);
>  =

> +	/* Estimate when the sample was taken */
> +	stime +=3D (etime - stime) >> 1;
> +
>  	/* Subtract time delta from raw timestamp to get final
>  	 * vblank_time timestamp for end of vblank.
>  	 */
> -	*vblank_time =3D ktime_sub_ns(etime, delta_ns);
> +	*vblank_time =3D ktime_sub_ns(stime, delta_ns);
>  =

>  	if (!drm_debug_enabled(DRM_UT_VBL))
>  		return true;
>  =

> -	ts_etime =3D ktime_to_timespec64(etime);
> +	ts_etime =3D ktime_to_timespec64(stime);
>  	ts_vblank_time =3D ktime_to_timespec64(*vblank_time);
>  =

>  	DRM_DEBUG_VBL("crtc %u : v p(%d,%d)@ %lld.%06ld -> %lld.%06ld [e %d us,=
 %d rep]\n",
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
