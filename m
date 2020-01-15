Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1376113C604
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D446EA2B;
	Wed, 15 Jan 2020 14:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B966EA2B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 14:31:08 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="220020015"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 15 Jan 2020 06:31:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2020 16:31:04 +0200
Date: Wed, 15 Jan 2020 16:31:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200115143104.GY13686@intel.com>
References: <20200114224508.3302967-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114224508.3302967-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC] drm/i915: Restrict legacy color key ioctl to
 pre-gen12
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

On Tue, Jan 14, 2020 at 02:45:08PM -0800, Matt Roper wrote:
> Since gen12 platform support isn't finalized yet, let's kill off the
> legacy color key ioctl for this platform; there's no userspace today
> that can run on this platform that utilizes this legacy ioctl, so we can
> safely kill it now before it becomes ABI.
> =

> Color key functionality never got integrated into the property / atomic
> interface, and the only known open source consumer was the Intel DDX
> which was never updated to run on platforms beyond gen9.  If color
> keying is desired going forward, it should really be exposed as a
> property so that it can be applied atomically with other display updates
> (and should probably be standardized in a way all drivers can choose to
> support rather than being i915-specific).
> =

> Arguably we might be able to prohibit this on gen10 and gen11 as well
> since no open source userspace exists for those platforms that utilizes
> these ioctls.  However there's always the very slight chance that
> unknown closed source software is actively utilizing the color key ioctl
> on those platforms, so we should maintain the support there to avoid
> breaking ABI.

Can't really see much point in this. The hardware hasn't changed so
arbitrarily cutting this off won't simplify anything.

> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index fca77ec1e0dd..6e8a4686a406 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2290,6 +2290,14 @@ int intel_sprite_set_colorkey_ioctl(struct drm_dev=
ice *dev, void *data,
>  	struct drm_modeset_acquire_ctx ctx;
>  	int ret =3D 0;
>  =

> +	/*
> +	 * Userspace that uses this legacy interface only exists up through
> +	 * gen9.  Discontinue support for the interface starting with gen12 so
> +	 * that it doesn't become ABI on newer platforms.
> +	 */
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		return -EINVAL;
> +
>  	/* ignore the pointless "none" flag */
>  	set->flags &=3D ~I915_SET_COLORKEY_NONE;
>  =

> -- =

> 2.23.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
