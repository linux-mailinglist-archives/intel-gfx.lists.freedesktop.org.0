Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A43197D379F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8115310E1F3;
	Mon, 23 Oct 2023 13:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75FB110E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:18:29 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quup8-000000008X9-2lmv; Mon, 23 Oct 2023 16:18:27 +0300
Message-ID: <44e032b432f262a047093fa0f4df7cbc003806fb.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:18:24 +0300
In-Reply-To: <20231016111658.3432581-10-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-10-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 09/24] drm/i915/display: Move enable_dc
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
>  drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_power.c  | 2 +-
>  drivers/gpu/drm/i915/i915_params.c                  | 5 -----
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 6a5be37ec3af..7a528e72c970 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -42,6 +42,11 @@ intel_display_param_named_unsafe(vbt_sdvo_panel_type, =
int, 0400,
>  	"Override/Ignore selection of SDVO panel mode in the VBT "
>  	"(-2=3Dignore, -1=3Dauto [default], index in VBT BIOS table)");
> =20
> +intel_display_param_named_unsafe(enable_dc, int, 0400,
> +	"Enable power-saving display C-states. "
> +	"(-1=3Dauto [default]; 0=3Ddisable; 1=3Dup to DC5; 2=3Dup to DC6; "
> +	"3=3Dup to DC5 with DC3CO; 4=3Dup to DC6 with DC3CO)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index c40a3cd57ffc..8721179b3f09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -28,6 +28,7 @@ struct drm_i915_private;
>  	param(int, lvds_channel_mode, 0, 0400) \
>  	param(int, panel_use_ssc, -1, 0600) \
>  	param(int, vbt_sdvo_panel_type, -1, 0400) \
> +	param(int, enable_dc, -1, 0400) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index e25785ae1c20..4832eb8da080 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1020,7 +1020,7 @@ int intel_power_domains_init(struct drm_i915_privat=
e *dev_priv)
>  		sanitize_disable_power_well_option(dev_priv,
>  						   dev_priv->params.disable_power_well);
>  	power_domains->allowed_dc_mask =3D
> -		get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
> +		get_allowed_dc_mask(dev_priv, dev_priv->display.params.enable_dc);
> =20
>  	power_domains->target_dc_state =3D
>  		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index d0abcbd526a7..3d370e43df3c 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -67,11 +67,6 @@ i915_param_named(modeset, int, 0400,
>  	"Use kernel modesetting [KMS] (0=3Ddisable, "
>  	"1=3Don, -1=3Dforce vga console preference [default])");
> =20
> -i915_param_named_unsafe(enable_dc, int, 0400,
> -	"Enable power-saving display C-states. "
> -	"(-1=3Dauto [default]; 0=3Ddisable; 1=3Dup to DC5; 2=3Dup to DC6; "
> -	"3=3Dup to DC5 with DC3CO; 4=3Dup to DC6 with DC3CO)");
> -
>  i915_param_named_unsafe(reset, uint, 0400,
>  	"Attempt GPU resets (0=3Ddisabled, 1=3Dfull gpu reset, 2=3Dengine reset=
 [default])");
> =20
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 1ea332dfbb5d..c3487b9d6937 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -47,7 +47,6 @@ struct drm_printer;
>   */
>  #define I915_PARAMS_FOR_EACH(param) \
>  	param(int, modeset, -1, 0400) \
> -	param(int, enable_dc, -1, 0400) \
>  	param(bool, enable_dpt, true, 0400) \
>  	param(bool, enable_sagv, true, 0600) \
>  	param(int, disable_power_well, -1, 0400) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
