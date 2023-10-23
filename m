Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 088C57D30D3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 13:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D094B10E1B0;
	Mon, 23 Oct 2023 11:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4EE10E1B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 11:02:32 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qushZ-000000008P7-3xus; Mon, 23 Oct 2023 14:02:30 +0300
Message-ID: <5f431e621121405b8d0371efec15b8e20c2aa5b3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 14:02:28 +0300
In-Reply-To: <20231016111658.3432581-5-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 04/24] drm/i915/display: Move psr related
 module parameters under display
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
>  .../gpu/drm/i915/display/intel_display_params.c   | 15 +++++++++++++++
>  .../gpu/drm/i915/display/intel_display_params.h   |  5 +++++
>  drivers/gpu/drm/i915/display/intel_psr.c          | 14 +++++++-------
>  drivers/gpu/drm/i915/i915_params.c                | 15 ---------------
>  drivers/gpu/drm/i915/i915_params.h                |  3 ---
>  5 files changed, 27 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 330613cd64db..eac82deede4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -31,6 +31,21 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400=
,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> =20
> +intel_display_param_named_unsafe(enable_psr, int, 0400,
> +	"Enable PSR "
> +	"(0=3Ddisabled, 1=3Denable up to PSR1, 2=3Denable up to PSR2) "
> +	"Default: -1 (use per-chip default)");
> +
> +intel_display_param_named(psr_safest_params, bool, 0400,
> +	"Replace PSR VBT parameters by the safest and not optimal ones. This "
> +	"is helpful to detect if PSR issues are related to bad values set in "
> +	" VBT. (0=3Duse VBT parameters, 1=3Duse safest parameters)");

You don't say that the default here is 0.


> +
> +intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> +	"Enable PSR2 selective fetch "
> +	"(0=3Ddisabled, 1=3Denabled) "
> +	"Default: 0");
> +

And here you say the default is 0, but...



>  __maybe_unused
>  static void _param_print_bool(struct drm_printer *p, const char *driver_=
name,
>  			      const char *name, bool val)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index f1bdf2c6e5cd..99b79bed9363 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -6,6 +6,8 @@
>  #ifndef _INTEL_DISPLAY_PARAMS_H_
>  #define _INTEL_DISPLAY_PARAMS_H_
> =20
> +#include <linux/types.h>
> +
>  struct drm_printer;
>  struct drm_i915_private;
> =20
> @@ -23,6 +25,9 @@ struct drm_i915_private;
>   */
>  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
>  	param(int, enable_fbc, -1, 0600)     \
> +	param(int, enable_psr, -1, 0600) \
> +	param(bool, psr_safest_params, false, 0400) \
> +	param(bool, enable_psr2_sel_fetch, true, 0400) \

...it's actually true.


> =20
>  #define MEMBER(T, member, ...) T member;
>  struct intel_display_params {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 4f1f31fc9529..ecd24a0b86cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -179,9 +179,9 @@ static bool psr_global_enabled(struct intel_dp *intel=
_dp)
> =20
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>  	case I915_PSR_DEBUG_DEFAULT:
> -		if (i915->params.enable_psr =3D=3D -1)
> +		if (i915->display.params.enable_psr =3D=3D -1)
>  			return connector->panel.vbt.psr.enable;
> -		return i915->params.enable_psr;
> +		return i915->display.params.enable_psr;
>  	case I915_PSR_DEBUG_DISABLE:
>  		return false;
>  	default:
> @@ -198,7 +198,7 @@ static bool psr2_global_enabled(struct intel_dp *inte=
l_dp)
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> -		if (i915->params.enable_psr =3D=3D 1)
> +		if (i915->display.params.enable_psr =3D=3D 1)
>  			return false;
>  		return true;
>  	}
> @@ -606,7 +606,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *in=
tel_dp)
>  	if (DISPLAY_VER(dev_priv) >=3D 11)
>  		val |=3D EDP_PSR_TP4_TIME_0us;
> =20
> -	if (dev_priv->params.psr_safest_params) {
> +	if (dev_priv->display.params.psr_safest_params) {
>  		val |=3D EDP_PSR_TP1_TIME_2500us;
>  		val |=3D EDP_PSR_TP2_TP3_TIME_2500us;
>  		goto check_tp3_sel;
> @@ -700,7 +700,7 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *in=
tel_dp)
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u32 val =3D 0;
> =20
> -	if (dev_priv->params.psr_safest_params)
> +	if (dev_priv->display.params.psr_safest_params)
>  		return EDP_PSR2_TP2_TIME_2500us;
> =20
>  	if (connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us >=3D 0 &&
> @@ -943,7 +943,7 @@ static bool intel_psr2_sel_fetch_config_valid(struct =
intel_dp *intel_dp,
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> =20
> -	if (!dev_priv->params.enable_psr2_sel_fetch &&
> +	if (!dev_priv->display.params.enable_psr2_sel_fetch &&
>  	    intel_dp->psr.debug !=3D I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 sel fetch not enabled, disabled by parameter\n");
> @@ -1056,7 +1056,7 @@ static bool _compute_psr2_wake_times(struct intel_d=
p *intel_dp,
>  	    fast_wake_lines > max_wake_lines)
>  		return false;
> =20
> -	if (i915->params.psr_safest_params)
> +	if (i915->display.params.psr_safest_params)
>  		io_wake_lines =3D fast_wake_lines =3D max_wake_lines;
> =20
>  	/* According to Bspec lower limit should be set as 7 lines. */
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index 42700b854b79..c65e3314ae48 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -102,21 +102,6 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400=
,
>  	"WARNING: Disabling this can cause system wide hangs. "
>  	"(default: true)");
> =20
> -i915_param_named_unsafe(enable_psr, int, 0400,
> -	"Enable PSR "
> -	"(0=3Ddisabled, 1=3Denable up to PSR1, 2=3Denable up to PSR2) "
> -	"Default: -1 (use per-chip default)");
> -
> -i915_param_named(psr_safest_params, bool, 0400,
> -	"Replace PSR VBT parameters by the safest and not optimal ones. This "
> -	"is helpful to detect if PSR issues are related to bad values set in "
> -	" VBT. (0=3Duse VBT parameters, 1=3Duse safest parameters)");
> -
> -i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> -	"Enable PSR2 selective fetch "
> -	"(0=3Ddisabled, 1=3Denabled) "
> -	"Default: 0");
> -
>  i915_param_named_unsafe(enable_sagv, bool, 0600,
>  	"Enable system agent voltage/frequency scaling (SAGV) (default: true)")=
;
> =20
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index e674de29f92c..47a05c4a8e89 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -52,10 +52,7 @@ struct drm_printer;
>  	param(int, panel_use_ssc, -1, 0600) \
>  	param(int, vbt_sdvo_panel_type, -1, 0400) \
>  	param(int, enable_dc, -1, 0400) \
> -	param(int, enable_psr, -1, 0600) \
>  	param(bool, enable_dpt, true, 0400) \
> -	param(bool, psr_safest_params, false, 0400) \
> -	param(bool, enable_psr2_sel_fetch, true, 0400) \

I can see that it was wrong already before, but better fix it while at
it.

--
Cheers,
Luca.
