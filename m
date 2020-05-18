Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725ED1D7BC3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 16:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C225E89496;
	Mon, 18 May 2020 14:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BCD089496
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 14:48:27 +0000 (UTC)
IronPort-SDR: dBibK3DCx1Iwsg8GQjksQpUlvY5sybtHDXqe6eDoFv1z6NKRHwpPVo0FIUg6+YRyqb5Msa5FrC
 qa7FRclDDHkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 07:48:26 -0700
IronPort-SDR: xeGbHIZJauoTI6HWgVNr5tRuphlsbETdamzKP1oqHs01WTr5midg/qpk0faleu/K7zuFjsQaqG
 FEEoK1gzBllQ==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439242405"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 07:48:25 -0700
Date: Mon, 18 May 2020 17:44:25 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200518144425.GB13077@intel.com>
References: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
 <20200518122303.28083-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518122303.28083-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/4] Revert "drm/i915: Nuke
 skl_ddb_get_hw_state()"
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

On Mon, May 18, 2020 at 03:23:02PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Dbuf slice tracking busted across runtime PM. Back to the
> drawing board.
> =

> This reverts commit 0cde0e0ff5f5ebd27507069250728c763c14ac81.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 7 +++++++
>  drivers/gpu/drm/i915/intel_pm.h | 1 +
>  2 files changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index a92d57d9b759..cb57786fdc9f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4315,6 +4315,12 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *=
crtc,
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
>  =

> +void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
> +{
> +	dev_priv->dbuf.enabled_slices =3D
> +		intel_enabled_dbuf_slices_mask(dev_priv);
> +}
> +

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  /*
>   * Determines the downscale amount of a plane for the purposes of waterm=
ark calculations.
>   * The bspec defines downscale amount as:
> @@ -6175,6 +6181,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *d=
ev_priv)
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  =

> +	skl_ddb_get_hw_state(dev_priv);
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		crtc_state =3D to_intel_crtc_state(crtc->base.state);
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 3fcc9b6e2cbf..9f75ac4c2bd1 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -39,6 +39,7 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_priva=
te *dev_priv);
>  void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  			       struct skl_ddb_entry *ddb_y,
>  			       struct skl_ddb_entry *ddb_uv);
> +void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
>  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
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
