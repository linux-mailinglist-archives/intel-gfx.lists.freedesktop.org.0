Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA4A11D1A9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 17:00:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D9C89022;
	Thu, 12 Dec 2019 16:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C02A89022
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 16:00:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 08:00:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216156470"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by orsmga006.jf.intel.com with ESMTP; 12 Dec 2019 08:00:48 -0800
Date: Thu, 12 Dec 2019 08:00:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191212160058.GE21507@InViCtUs>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
 <20191126002635.5779-6-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126002635.5779-6-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 5/7] drm/i915: Extract framebufer CCS
 offset checks into a function
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
Cc: ville.syrjala@intel.com, nanley.g.chery@intel.com,
 dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 04:26:33PM -0800, Radhakrishna Sripada wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> intel_fill_fb_info() has grown quite large and wrapping the offset checks
> into a separate function makes the loop a bit easier to follow.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 69 ++++++++++++--------
>  1 file changed, 40 insertions(+), 29 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1ef1988b9e12..6c4274c1564d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2742,6 +2742,43 @@ static bool intel_plane_needs_remap(const struct i=
ntel_plane_state *plane_state)
>  	return stride > max_stride;
>  }
>  =

> +static int
> +intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int x, int y)
> +{
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	int hsub =3D fb->format->hsub;
> +	int vsub =3D fb->format->vsub;
> +	int tile_width, tile_height;
> +	int ccs_x, ccs_y;
> +	int main_x, main_y;
> +
> +	intel_tile_dims(fb, 1, &tile_width, &tile_height);
> +
> +	tile_width *=3D hsub;
> +	tile_height *=3D vsub;
> +
> +	ccs_x =3D (x * hsub) % tile_width;
> +	ccs_y =3D (y * vsub) % tile_height;
> +	main_x =3D intel_fb->normal[0].x % tile_width;
> +	main_y =3D intel_fb->normal[0].y % tile_height;
> +
> +	/*
> +	 * CCS doesn't have its own x/y offset register, so the intra CCS tile
> +	 * x/y offsets must match between CCS and the main surface.
> +	 */
> +	if (main_x !=3D ccs_x || main_y !=3D ccs_y) {
> +		DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs=
 %d,%d)\n",
> +			      main_x, main_y,
> +			      ccs_x, ccs_y,
> +			      intel_fb->normal[0].x,
> +			      intel_fb->normal[0].y,
> +			      x, y);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int
>  intel_fill_fb_info(struct drm_i915_private *dev_priv,
>  		   struct drm_framebuffer *fb)
> @@ -2773,35 +2810,9 @@ intel_fill_fb_info(struct drm_i915_private *dev_pr=
iv,
>  		}
>  =

>  		if (is_ccs_modifier(fb->modifier) && i =3D=3D 1) {
> -			int hsub =3D fb->format->hsub;
> -			int vsub =3D fb->format->vsub;
> -			int tile_width, tile_height;
> -			int main_x, main_y;
> -			int ccs_x, ccs_y;
> -
> -			intel_tile_dims(fb, i, &tile_width, &tile_height);
> -
> -			tile_width *=3D hsub;
> -			tile_height *=3D vsub;
> -
> -			ccs_x =3D (x * hsub) % tile_width;
> -			ccs_y =3D (y * vsub) % tile_height;
> -			main_x =3D intel_fb->normal[0].x % tile_width;
> -			main_y =3D intel_fb->normal[0].y % tile_height;
> -
> -			/*
> -			 * CCS doesn't have its own x/y offset register, so the intra CCS tile
> -			 * x/y offsets must match between CCS and the main surface.
> -			 */
> -			if (main_x !=3D ccs_x || main_y !=3D ccs_y) {
> -				DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d c=
cs %d,%d)\n",
> -					      main_x, main_y,
> -					      ccs_x, ccs_y,
> -					      intel_fb->normal[0].x,
> -					      intel_fb->normal[0].y,
> -					      x, y);
> -				return -EINVAL;
> -			}
> +			ret =3D intel_fb_check_ccs_xy(fb, x, y);
> +			if (ret)
> +				return ret;
>  		}
>  =

>  		/*
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
