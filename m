Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CF27D37A5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E0610E1D6;
	Mon, 23 Oct 2023 13:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B8410E1D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:19:34 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quuqB-000000008Xc-0dQD; Mon, 23 Oct 2023 16:19:32 +0300
Message-ID: <b23e397d3ac804bf78fdb260bab2f7e9b9eedc3f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:19:30 +0300
In-Reply-To: <20231016111658.3432581-11-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-11-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 10/24] drm/i915/display: Move enable_dpt
 module parameter under display
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2023-10-16 at 14:16 +0300, Jouni H=C3=B6gander wrote:
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dpt.c            | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_fb.c             | 2 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  | 2 +-
>  drivers/gpu/drm/i915/i915_params.c                  | 3 ---
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  7 files changed, 10 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 7a528e72c970..8f222b5bfd8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -47,6 +47,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
>  	"(-1=3Dauto [default]; 0=3Ddisable; 1=3Dup to DC5; 2=3Dup to DC6; "
>  	"3=3Dup to DC5 with DC3CO; 4=3Dup to DC6 with DC3CO)");
> =20
> +intel_display_param_named_unsafe(enable_dpt, bool, 0400,
> +	"Enable display page table (DPT) (default: true)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 8721179b3f09..c67ed16670c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -29,6 +29,7 @@ struct drm_i915_private;
>  	param(int, panel_use_ssc, -1, 0600) \
>  	param(int, vbt_sdvo_panel_type, -1, 0400) \
>  	param(int, enable_dc, -1, 0400) \
> +	param(bool, enable_dpt, true, 0400) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i=
915/display/intel_dpt.c
> index 48582b31b7f7..2b067cb952f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -332,11 +332,13 @@ void intel_dpt_configure(struct intel_crtc *crtc)
> =20
>  			intel_de_rmw(i915, PLANE_CHICKEN(pipe, plane_id),
>  				     PLANE_CHICKEN_DISABLE_DPT,
> -				     i915->params.enable_dpt ? 0 : PLANE_CHICKEN_DISABLE_DPT);
> +				     i915->display.params.enable_dpt ? 0 :
> +				     PLANE_CHICKEN_DISABLE_DPT);
>  		}
>  	} else if (DISPLAY_VER(i915) =3D=3D 13) {
>  		intel_de_rmw(i915, CHICKEN_MISC_2,
>  			     CHICKEN_MISC_DISABLE_DPT,
> -			     i915->params.enable_dpt ? 0 : CHICKEN_MISC_DISABLE_DPT);
> +			     i915->display.params.enable_dpt ? 0 :
> +			     CHICKEN_MISC_DISABLE_DPT);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 19b35ece31f1..9a48eb7dcf8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -764,7 +764,7 @@ bool intel_fb_modifier_uses_dpt(struct drm_i915_priva=
te *i915, u64 modifier)
> =20
>  bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
>  {
> -	return fb && to_i915(fb->dev)->params.enable_dpt &&
> +	return fb && to_i915(fb->dev)->display.params.enable_dpt &&
>  		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
>  }
> =20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 245a64332cc7..6fb5612bff2b 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2489,7 +2489,7 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>  		goto error;
>  	}
> =20
> -	if (!dev_priv->params.enable_dpt &&
> +	if (!dev_priv->display.params.enable_dpt &&
>  	    intel_fb_modifier_uses_dpt(dev_priv, fb->modifier)) {
>  		drm_dbg_kms(&dev_priv->drm, "DPT disabled, skipping initial FB\n");
>  		goto error;
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index 3d370e43df3c..773a0a709fc6 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -95,9 +95,6 @@ i915_param_named_unsafe(disable_power_well, int, 0400,
> =20
>  i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: tru=
e)");
> =20
> -i915_param_named_unsafe(enable_dpt, bool, 0400,
> -	"Enable display page table (DPT) (default: true)");
> -
>  i915_param_named_unsafe(load_detect_test, bool, 0400,
>  	"Force-enable the VGA load detect code for testing (default:false). "
>  	"For developers only.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index c3487b9d6937..b8728990cb8b 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -47,7 +47,6 @@ struct drm_printer;
>   */
>  #define I915_PARAMS_FOR_EACH(param) \
>  	param(int, modeset, -1, 0400) \
> -	param(bool, enable_dpt, true, 0400) \
>  	param(bool, enable_sagv, true, 0600) \
>  	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_ips, 1, 0600) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
