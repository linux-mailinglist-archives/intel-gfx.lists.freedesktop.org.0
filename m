Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C73752B0E69
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367336E3F9;
	Thu, 12 Nov 2020 19:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F526E3F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:44:10 +0000 (UTC)
IronPort-SDR: QezfHeImd0hc0rWdzPrbNZK5nDpIr6ZmFBhH8OJ9noEC+ndZNOSpwoyQ7zt747VAspiGdntXEN
 wgmK1Qw9PsDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="234529661"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="234529661"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:44:09 -0800
IronPort-SDR: 3cb3O/sR4mDMDj5xwwPHqk6x8OvJ/GHnzOICC84VxTBPNKYdgnEtdR74vnquYgfexGZr7TJ/qH
 JI46+jOmB+ew==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="323748884"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:44:09 -0800
Date: Thu, 12 Nov 2020 11:46:31 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201112194631.GB15399@labuser-Z97X-UD5H>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112191718.16683-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add a wrapper function around
 get_pipe_config
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

On Thu, Nov 12, 2020 at 09:17:14PM +0200, Ville Syrjala wrote:
> From: Manasi Navare <manasi.d.navare@intel.com>
> =

> Create a new function intel_crtc_get_pipe_config()
> that calls platform specific hooks for get_pipe_config()
> No functional change here.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> [vsyrjala: Conform to modern i915 coding style, fix patch subject]
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 110d08f2a5c5..a8287414937c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11407,6 +11407,14 @@ static bool hsw_get_pipe_config(struct intel_crt=
c *crtc,
>  	return active;
>  }
>  =

> +static bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_sta=
te)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	return i915->display.get_pipe_config(crtc, crtc_state);
> +}
> +
>  static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =3D
> @@ -12403,7 +12411,7 @@ intel_encoder_current_mode(struct intel_encoder *=
encoder)
>  		return NULL;
>  	}
>  =

> -	if (!dev_priv->display.get_pipe_config(crtc, crtc_state)) {
> +	if (!intel_crtc_get_pipe_config(crtc_state)) {
>  		kfree(crtc_state);
>  		kfree(mode);
>  		return NULL;
> @@ -14422,8 +14430,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  =

>  	pipe_config->hw.enable =3D new_crtc_state->hw.enable;
>  =

> -	pipe_config->hw.active =3D
> -		dev_priv->display.get_pipe_config(crtc, pipe_config);
> +	pipe_config->hw.active =3D intel_crtc_get_pipe_config(pipe_config);
>  =

>  	/* we keep both pipes enabled on 830 */
>  	if (IS_I830(dev_priv) && pipe_config->hw.active)
> @@ -18736,7 +18743,7 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  		intel_crtc_state_reset(crtc_state, crtc);
>  =

>  		crtc_state->hw.active =3D crtc_state->hw.enable =3D
> -			dev_priv->display.get_pipe_config(crtc, crtc_state);
> +			intel_crtc_get_pipe_config(crtc_state);
>  =

>  		crtc->base.enabled =3D crtc_state->hw.enable;
>  		crtc->active =3D crtc_state->hw.active;
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
