Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 773531F6C09
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 18:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4EF6E183;
	Thu, 11 Jun 2020 16:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91126E183
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 16:15:46 +0000 (UTC)
IronPort-SDR: UQe8bvfR01+KR0s3a0jIPUh2ILYKQBlDVMILV9ukMSZyGsqYVh5gFc5ANSGDlI2/Z/6XOelWdq
 q7DzWjRslcTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 09:15:46 -0700
IronPort-SDR: pA7YFRFhDjmWjXvsjOs0YE9obNrOrfmhFgGX9UdXNznSv2zivyXiNiWC/dzj9W8URP2cETz4En
 y79A5qzh0dfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="260553466"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 11 Jun 2020 09:15:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jun 2020 19:15:42 +0300
Date: Thu, 11 Jun 2020 19:15:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200611161542.GE6112@intel.com>
References: <20200611123038.91855-1-chris@chris-wilson.co.uk>
 <20200611123038.91855-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611123038.91855-2-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Tighten timestamp around
 vblank sampling
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

On Thu, Jun 11, 2020 at 01:30:38PM +0100, Chris Wilson wrote:
> Tighten the timestamp queries before/after the register read so that we
> have less uncertainity for when the read actually took place. This is
> more apt for the older generations where it is not a simple single
> register read. Whether we are able to discern an improvement in our
> sampling accuracy remains to be seen.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Apart from the code getting a bit uglier can't really think
of any downsides at least. Upsides (if any) I guess we shall
see from the ci reports.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 57 ++++++++++++++++++++++++---------
>  1 file changed, 42 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 8e823ba25f5f..9c44df8ecce7 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -713,7 +713,9 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>   * This function will use Framestamp and current
>   * timestamp registers to calculate the scanline.
>   */
> -static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *c=
rtc)
> +static u32
> +__intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc,
> +					 ktime_t *stime, ktime_t *etime)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct drm_vblank_crtc *vblank =3D
> @@ -737,6 +739,9 @@ static u32 __intel_get_crtc_scanline_from_timestamp(s=
truct intel_crtc *crtc)
>  		 * pipe frame time stamp. The time stamp value
>  		 * is sampled at every start of vertical blank.
>  		 */
> +		if (stime)
> +			*stime =3D ktime_get();
> +
>  		scan_prev_time =3D intel_de_read_fw(dev_priv,
>  						  PIPE_FRMTMSTMP(crtc->pipe));
>  =

> @@ -746,6 +751,9 @@ static u32 __intel_get_crtc_scanline_from_timestamp(s=
truct intel_crtc *crtc)
>  		 */
>  		scan_curr_time =3D intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
>  =

> +		if (etime)
> +			*etime =3D ktime_get();
> +
>  		scan_post_time =3D intel_de_read_fw(dev_priv,
>  						  PIPE_FRMTMSTMP(crtc->pipe));
>  	} while (scan_post_time !=3D scan_prev_time);
> @@ -762,7 +770,8 @@ static u32 __intel_get_crtc_scanline_from_timestamp(s=
truct intel_crtc *crtc)
>   * intel_de_read_fw(), only for fast reads of display block, no need for
>   * forcewake etc.
>   */
> -static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
> +static int __intel_get_crtc_scanline(struct intel_crtc *crtc,
> +				     ktime_t *stime, ktime_t *etime)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -771,23 +780,34 @@ static int __intel_get_crtc_scanline(struct intel_c=
rtc *crtc)
>  	enum pipe pipe =3D crtc->pipe;
>  	int position, vtotal;
>  =

> -	if (!crtc->active)
> +	if (!crtc->active) {
> +		if (stime)
> +			*stime =3D 0;
> +		if (etime)
> +			*etime =3D 0;
>  		return -1;
> +	}
>  =

>  	vblank =3D &crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
>  	mode =3D &vblank->hwmode;
>  =

>  	if (crtc->mode_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
> -		return __intel_get_crtc_scanline_from_timestamp(crtc);
> +		return __intel_get_crtc_scanline_from_timestamp(crtc,
> +								stime,
> +								etime);
>  =

>  	vtotal =3D mode->crtc_vtotal;
>  	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		vtotal /=3D 2;
>  =

> +	if (stime)
> +		*stime =3D ktime_get();
>  	if (IS_GEN(dev_priv, 2))
>  		position =3D intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_=
GEN2;
>  	else
>  		position =3D intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_=
GEN3;
> +	if (etime)
> +		*etime =3D ktime_get();
>  =

>  	/*
>  	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
> @@ -806,7 +826,13 @@ static int __intel_get_crtc_scanline(struct intel_cr=
tc *crtc)
>  =

>  		for (i =3D 0; i < 100; i++) {
>  			udelay(1);
> +
> +			if (stime)
> +				*stime =3D ktime_get();
>  			temp =3D intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN=
3;
> +			if (etime)
> +				*etime =3D ktime_get();
> +
>  			if (temp !=3D position) {
>  				position =3D temp;
>  				break;
> @@ -866,21 +892,25 @@ static bool i915_get_crtc_scanoutpos(struct drm_crt=
c *_crtc,
>  =

>  	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>  =

> -	/* Get optional system timestamp before query. */
> -	if (stime)
> -		*stime =3D ktime_get();
> -
>  	if (use_scanline_counter) {
>  		/* No obvious pixelcount register. Only query vertical
>  		 * scanout position from Display scan line register.
>  		 */
> -		position =3D __intel_get_crtc_scanline(crtc);
> +		position =3D __intel_get_crtc_scanline(crtc, stime, etime);
>  	} else {
> +		/* Get optional system timestamp before query. */
> +		if (stime)
> +			*stime =3D ktime_get();
> +
>  		/* Have access to pixelcount since start of frame.
>  		 * We can split this into vertical and horizontal
>  		 * scanout position.
>  		 */
> -		position =3D (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_=
PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
> +		position =3D intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe));
> +
> +		/* Get optional system timestamp after query. */
> +		if (etime)
> +			*etime =3D ktime_get();
>  =

>  		/* convert to pixel counts */
>  		vbl_start *=3D htotal;
> @@ -896,6 +926,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc =
*_crtc,
>  		 * matches how the scanline counter based position works since
>  		 * the scanline counter doesn't count the two half lines.
>  		 */
> +		position =3D (position & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>  		if (position >=3D vtotal)
>  			position =3D vtotal - 1;
>  =

> @@ -911,10 +942,6 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc=
 *_crtc,
>  		position =3D (position + htotal - hsync_start) % vtotal;
>  	}
>  =

> -	/* Get optional system timestamp after query. */
> -	if (etime)
> -		*etime =3D ktime_get();
> -
>  	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>  =

>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> @@ -956,7 +983,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  	int position;
>  =

>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -	position =3D __intel_get_crtc_scanline(crtc);
> +	position =3D __intel_get_crtc_scanline(crtc, NULL, NULL);
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  =

>  	return position;
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
