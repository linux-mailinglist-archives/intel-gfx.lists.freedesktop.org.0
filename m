Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E48947D3862
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4CF10E1D9;
	Mon, 23 Oct 2023 13:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 222FA10E1D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:47:42 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quvHO-000000008aX-3RKJ; Mon, 23 Oct 2023 16:47:40 +0300
Message-ID: <f189e6743a424516d5117974b51ec67d0b3b0f30.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:47:37 +0300
In-Reply-To: <20231016111658.3432581-17-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-17-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 16/24] drm/i915/display: Move
 enable_dpcd_backlightmodule parameter under display
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
>  drivers/gpu/drm/i915/display/intel_display_params.c   | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display_params.h   | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
>  drivers/gpu/drm/i915/i915_params.c                    | 4 ----
>  drivers/gpu/drm/i915/i915_params.h                    | 1 -
>  5 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index a16adfa36b64..01b732819aab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -72,6 +72,10 @@ intel_display_param_named_unsafe(edp_vswing, int, 0400=
,
>  	"(0=3Duse value from vbt [default], 1=3Dlow power swing(200mV),"
>  	"2=3Ddefault swing(400mV))");
> =20
> +intel_display_param_named(enable_dpcd_backlight, int, 0400,
> +	"Enable support for DPCD backlight control"
> +	"(-1=3Duse per-VBT LFP backlight type setting [default], 0=3Ddisabled, =
1=3Denable, 2=3Dforce VESA interface, 3=3Dforce Intel interface)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 9e749ea97707..6c08ed07bb58 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -35,6 +35,7 @@ struct drm_i915_private;
>  	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
>  	param(int, edp_vswing, 0, 0400) \
> +	param(int, enable_dpcd_backlight, -1, 0600) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/driv=
ers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 95cc5251843e..1c2912ce59a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -146,7 +146,7 @@ intel_dp_aux_supports_hdr_backlight(struct intel_conn=
ector *connector)
>  	 * HDR static metadata we need to start maintaining table of
>  	 * ranges for such panels.
>  	 */
> -	if (i915->params.enable_dpcd_backlight !=3D INTEL_DP_AUX_BACKLIGHT_FORC=
E_INTEL &&
> +	if (i915->display.params.enable_dpcd_backlight !=3D INTEL_DP_AUX_BACKLI=
GHT_FORCE_INTEL &&
>  	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
>  	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
>  		drm_info(&i915->drm,
> @@ -489,7 +489,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_co=
nnector *connector)
>  	/* Check the VBT and user's module parameters to figure out which
>  	 * interfaces to probe
>  	 */
> -	switch (i915->params.enable_dpcd_backlight) {
> +	switch (i915->display.params.enable_dpcd_backlight) {
>  	case INTEL_DP_AUX_BACKLIGHT_OFF:
>  		return -ENODEV;
>  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index 6b9df9f9d842..e15cd8491c7f 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -140,10 +140,6 @@ i915_param_named_unsafe(inject_probe_failure, uint, =
0400,
>  	"Force an error after a number of failure check points (0:disabled (def=
ault), N:force failure at the Nth failure check point)");
>  #endif
> =20
> -i915_param_named(enable_dpcd_backlight, int, 0400,
> -	"Enable support for DPCD backlight control"
> -	"(-1=3Duse per-VBT LFP backlight type setting [default], 0=3Ddisabled, =
1=3Denable, 2=3Dforce VESA interface, 3=3Dforce Intel interface)");
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_GVT)
>  i915_param_named(enable_gvt, bool, 0400,
>  	"Enable support for Intel GVT-g graphics virtualization host support(de=
fault:false)");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index c33edaee5032..8169234338b1 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -57,7 +57,6 @@ struct drm_printer;
>  	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
>  	param(unsigned int, reset, 3, 0600) \
>  	param(unsigned int, inject_probe_failure, 0, 0) \
> -	param(int, enable_dpcd_backlight, -1, 0600) \
>  	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>  	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT=
, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
>  	param(unsigned int, lmem_size, 0, 0400) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
