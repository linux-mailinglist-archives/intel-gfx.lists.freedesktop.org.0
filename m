Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217017D386E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D90510E1E9;
	Mon, 23 Oct 2023 13:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E588210E1E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:50:46 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quvKN-000000008b8-0mEr; Mon, 23 Oct 2023 16:50:43 +0300
Message-ID: <b885fe13d7f694a72bdf78ac42218a1d9508c956.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:50:42 +0300
In-Reply-To: <20231016111658.3432581-19-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-19-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 18/24] drm/i915/display: Move
 force_reset_modeset_test parameter under display
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
>  drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_reset.c  | 2 +-
>  drivers/gpu/drm/i915/i915_params.c                  | 4 ----
>  drivers/gpu/drm/i915/i915_params.h                  | 2 +-
>  5 files changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 3c0e93934ac2..7f330a5e1188 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -80,6 +80,10 @@ intel_display_param_named_unsafe(load_detect_test, boo=
l, 0400,
>  	"Force-enable the VGA load detect code for testing (default:false). "
>  	"For developers only.");
> =20
> +intel_display_param_named_unsafe(force_reset_modeset_test, bool, 0400,
> +	"Force a modeset during gpu reset for testing (default:false). "
> +	"For developers only.");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 8b36b73437b2..25f238e63ff8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -37,6 +37,7 @@ struct drm_i915_private;
>  	param(int, edp_vswing, 0, 0400) \
>  	param(int, enable_dpcd_backlight, -1, 0600) \
>  	param(bool, load_detect_test, false, 0600) \
> +	param(bool, force_reset_modeset_test, false, 0600) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers=
/gpu/drm/i915/display/intel_display_reset.c
> index 17178d5d7788..c2c347b22448 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -29,7 +29,7 @@ void intel_display_reset_prepare(struct drm_i915_privat=
e *dev_priv)
>  		return;
> =20
>  	/* reset doesn't touch the display */
> -	if (!dev_priv->params.force_reset_modeset_test &&
> +	if (!dev_priv->display.params.force_reset_modeset_test &&
>  	    !gpu_reset_clobbers_display(dev_priv))
>  		return;
> =20
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index cb56973a2394..497e39b1dcfb 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -86,10 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
>  	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> =20
> -i915_param_named_unsafe(force_reset_modeset_test, bool, 0400,
> -	"Force a modeset during gpu reset for testing (default:false). "
> -	"For developers only.");
> -
>  i915_param_named(disable_display, bool, 0400,
>  	"Disable display (default: false)");
> =20
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index cf5448bbc087..5fa77ecb8d31 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -63,7 +63,7 @@ struct drm_printer;
>  	param(unsigned int, lmem_bar_size, 0, 0400) \
>  	/* leave bools at the end to not create holes */ \
>  	param(bool, enable_hangcheck, true, 0600) \
> -	param(bool, force_reset_modeset_test, false, 0600) \
> +	param(bool, force_reset_modeset_test, false, 0600)		\
>  	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERR=
OR) ? 0600 : 0) \
>  	param(bool, disable_display, false, 0400) \
>  	param(bool, verbose_state_checks, true, 0) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
