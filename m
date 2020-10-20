Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F547294242
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 20:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904496ED18;
	Tue, 20 Oct 2020 18:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A54D6ED18
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 18:39:57 +0000 (UTC)
IronPort-SDR: ikiQWJOvKbkPbAUOdTBXO8V0MtU3OZEK4QkSKKRBPqMCm5jXYnsbVSCgMFyCgm94zqOEkiD3To
 dppLZ6nfOVyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="155045260"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="155045260"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 11:39:55 -0700
IronPort-SDR: eUGN5K0XCDVKSpqUn9JuxEdSvywWk14CO54KLSBU/QFjoNtsaH2MxGCUzoKHiymCd62k4RvYPH
 RS1y0ctxXb2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="320746093"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 20 Oct 2020 11:39:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 21:39:53 +0300
Date: Tue, 20 Oct 2020 21:39:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201020183953.GB6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008214535.22942-4-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 04/11] drm/i915/dp: Allow big joiner
 modes in intel_dp_mode_valid(), v3.
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

On Thu, Oct 08, 2020 at 02:45:28PM -0700, Manasi Navare wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> =

> Small changes to intel_dp_mode_valid(), allow listing modes that
> can only be supported in the bigjoiner configuration, which is
> not supported yet.
> =

> eDP does not support bigjoiner, so do not expose bigjoiner only
> modes on the eDP port.
> =

> v7:
> * Add can_bigjoiner() helper (Ville)
> * Pass bigjoiner to plane_size validation (Ville)
> v6:
> * Rebase after dp_downstream mode valid changes (Manasi)
> v5:
> * Increase max plane width to support 8K with bigjoiner (Maarten)
> v4:
> * Rebase (Manasi)
> =

> Changes since v1:
> - Disallow bigjoiner on eDP.
> Changes since v2:
> - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotclock,
>   and split off the downstream and source checking to its own function.
>   (Ville)
> v3:
> * Rebase (Manasi)
> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.h |   3 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 126 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |   2 +-
>  6 files changed, 111 insertions(+), 29 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 723766b1eae3..cc540c7b7dcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17642,7 +17642,8 @@ intel_mode_valid(struct drm_device *dev,
>  =

>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> -				const struct drm_display_mode *mode)
> +				const struct drm_display_mode *mode,
> +				bool bigjoiner)
>  {
>  	int plane_width_max, plane_height_max;
>  =

> @@ -17659,7 +17660,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_p=
rivate *dev_priv,
>  	 * too big for that.
>  	 */
>  	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		plane_width_max =3D 5120;
> +		plane_width_max =3D 5120 << bigjoiner;
>  		plane_height_max =3D 4320;
>  	} else {
>  		plane_width_max =3D 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index d10b7c8cde3f..3d860a9da8fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -496,7 +496,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private=
 *dev_priv,
>  bool intel_plane_can_remap(const struct intel_plane_state *plane_state);
>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> -				const struct drm_display_mode *mode);
> +				const struct drm_display_mode *mode,
> +				bool bigjoiner);
>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port=
);
>  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 8a522edd7386..af2ff425e5d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -247,6 +247,29 @@ intel_dp_max_data_rate(int max_link_clock, int max_l=
anes)
>  	return max_link_clock * max_lanes;
>  }
>  =

> +static int source_max_dotclock(struct intel_dp *intel_dp, bool allow_big=
joiner)
> +{
> +	struct intel_digital_port *intel_dig_port =3D dp_to_dig_port(intel_dp);
> +	struct intel_encoder *encoder =3D &intel_dig_port->base;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >=3D 11 && !intel_dp_is_edp(=
intel_dp))

Wasn't this supposed to be s/edp/port=3D=3DA/ ?

> +		return 2 * dev_priv->max_dotclk_freq;
> +
> +	return dev_priv->max_dotclk_freq;
> +}
-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
