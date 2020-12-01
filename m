Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 792B92CA7A9
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A2689FE3;
	Tue,  1 Dec 2020 16:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D6389FE3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 16:05:39 +0000 (UTC)
IronPort-SDR: Kfu++U9WuF7C9KyebiJowpCZsidsUyP5hEmfQGFXIhmiIPmocIhzdW90DZQR/j6gEb/a+33o8a
 wtbWOYMJQVsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172067243"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="172067243"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:05:21 -0800
IronPort-SDR: 2mhFI9p3gtMZNoLZrqGX0JfoSA6BlBJ1UlgcB26fTvOQjssNz26QqV+gM57+UeNmRIPkOq3PAj
 5y+Bvq6AmRCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="372797999"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 01 Dec 2020 08:05:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Dec 2020 18:05:17 +0200
Date: Tue, 1 Dec 2020 18:05:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201201160517.GX6112@intel.com>
References: <20201127220548.3713-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201127220548.3713-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable outputs during unregister
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

On Fri, Nov 27, 2020 at 10:05:48PM +0000, Chris Wilson wrote:
> Switch off the scanout during driver unregister, so we can shutdown the
> HW immediately for unbind.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 320856b665a1..62d188e5cb8d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -738,6 +738,7 @@ static void i915_driver_unregister(struct drm_i915_pr=
ivate *dev_priv)
>  	 * events.
>  	 */
>  	drm_kms_helper_poll_fini(&dev_priv->drm);
> +	drm_atomic_helper_shutdown(&dev_priv->drm);

Looks like we already have this in remove(). Is that too late?

>  =

>  	intel_gt_driver_unregister(&dev_priv->gt);
>  	acpi_video_unregister();
> -- =

> 2.20.1
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
