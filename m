Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5827D385D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B6710E1D4;
	Mon, 23 Oct 2023 13:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4DC10E1D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:46:38 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quvGN-000000008aJ-1wC3; Mon, 23 Oct 2023 16:46:35 +0300
Message-ID: <66d04aa2e9aebc6b5528015ffcf01fb3013b5837.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:46:34 +0300
In-Reply-To: <20231016111658.3432581-16-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-16-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 15/24] drm/i915/display: Move edp_vswing
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
>  drivers/gpu/drm/i915/display/intel_bios.c           | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_params.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/i915_params.c                  | 6 ------
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 9 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 70c0491aac42..69db1a3a1499 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1514,9 +1514,9 @@ parse_edp(struct drm_i915_private *i915,
>  		u8 vswing;
> =20
>  		/* Don't read from VBT if module parameter has valid value*/
> -		if (i915->params.edp_vswing) {
> +		if (i915->display.params.edp_vswing) {
>  			panel->vbt.edp.low_vswing =3D
> -				i915->params.edp_vswing =3D=3D 1;
> +				i915->display.params.edp_vswing =3D=3D 1;
>  		} else {
>  			vswing =3D (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
>  			panel->vbt.edp.low_vswing =3D vswing =3D=3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 8d8050a22bf7..a16adfa36b64 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -66,6 +66,12 @@ intel_display_param_named_unsafe(invert_brightness, in=
t, 0400,
>  	"to dri-devel@lists.freedesktop.org, if your machine needs it. "
>  	"It will then be included in an upcoming module version.");
> =20
> +/* WA to get away with the default setting in VBT for early platforms.Wi=
ll be removed */
> +intel_display_param_named_unsafe(edp_vswing, int, 0400,
> +	"Ignore/Override vswing pre-emph table selection from VBT "
> +	"(0=3Duse value from vbt [default], 1=3Dlow power swing(200mV),"
> +	"2=3Ddefault swing(400mV))");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 23fa03ea38c9..9e749ea97707 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -34,6 +34,7 @@ struct drm_i915_private;
>  	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
> +	param(int, edp_vswing, 0, 0400) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index 423fe54484e1..6b9df9f9d842 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -111,12 +111,6 @@ i915_param_named(verbose_state_checks, bool, 0600,
>  i915_param_named_unsafe(nuclear_pageflip, bool, 0400,
>  	"Force enable atomic functionality on platforms that don't have full su=
pport yet.");
> =20
> -/* WA to get away with the default setting in VBT for early platforms.Wi=
ll be removed */
> -i915_param_named_unsafe(edp_vswing, int, 0400,
> -	"Ignore/Override vswing pre-emph table selection from VBT "
> -	"(0=3Duse value from vbt [default], 1=3Dlow power swing(200mV),"
> -	"2=3Ddefault swing(400mV))");
> -
>  i915_param_named_unsafe(enable_guc, int, 0400,
>  	"Enable GuC load for GuC submission and/or HuC load. "
>  	"Required functionality can be selected using bitmask values. "
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index ae0873443a65..c33edaee5032 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -55,7 +55,6 @@ struct drm_printer;
>  	param(char *, gsc_firmware_path, NULL, 0400) \
>  	param(bool, memtest, false, 0400) \
>  	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
> -	param(int, edp_vswing, 0, 0400) \
>  	param(unsigned int, reset, 3, 0600) \
>  	param(unsigned int, inject_probe_failure, 0, 0) \
>  	param(int, enable_dpcd_backlight, -1, 0600) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
