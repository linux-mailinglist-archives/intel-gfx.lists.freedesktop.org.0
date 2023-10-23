Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4660A7D37D2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC35710E1E1;
	Mon, 23 Oct 2023 13:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0218510E1E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:23:04 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quuta-000000008YB-11D9; Mon, 23 Oct 2023 16:23:02 +0300
Message-ID: <63f95e89b3b5cea52868a6798a5127b8b789850b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:23:01 +0300
In-Reply-To: <20231016111658.3432581-13-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-13-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 12/24] drm/i915/display: Move
 disable_power_well module parameter under display
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
>  drivers/gpu/drm/i915/display/intel_display_params.c |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display_params.h |  1 +
>  drivers/gpu/drm/i915/display/intel_display_power.c  | 12 ++++++------
>  drivers/gpu/drm/i915/i915_params.c                  |  4 ----
>  drivers/gpu/drm/i915/i915_params.h                  |  1 -
>  5 files changed, 11 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index efc311837ff1..86b46cff1718 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -53,6 +53,10 @@ intel_display_param_named_unsafe(enable_dpt, bool, 040=
0,
>  intel_display_param_named_unsafe(enable_sagv, bool, 0600,
>  	"Enable system agent voltage/frequency scaling (SAGV) (default: true)")=
;
> =20
> +intel_display_param_named_unsafe(disable_power_well, int, 0400,
> +	"Disable display power wells when possible "
> +	"(-1=3Dauto [default], 0=3Dpower wells always on, 1=3Dpower wells disab=
led when possible)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 06e920c9aa36..998f99a2857c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -31,6 +31,7 @@ struct drm_i915_private;
>  	param(int, enable_dc, -1, 0400) \
>  	param(bool, enable_dpt, true, 0400) \
>  	param(bool, enable_sagv, true, 0600) \
> +	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 4832eb8da080..e390595d7341 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -967,7 +967,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_=
private *dev_priv,
>  		DISPLAY_VER(dev_priv) >=3D 11 ?
>  	       DC_STATE_EN_DC9 : 0;
> =20
> -	if (!dev_priv->params.disable_power_well)
> +	if (!dev_priv->display.params.disable_power_well)
>  		max_dc =3D 0;
> =20
>  	if (enable_dc >=3D 0 && enable_dc <=3D max_dc) {
> @@ -1016,9 +1016,9 @@ int intel_power_domains_init(struct drm_i915_privat=
e *dev_priv)
>  {
>  	struct i915_power_domains *power_domains =3D &dev_priv->display.power.d=
omains;
> =20
> -	dev_priv->params.disable_power_well =3D
> +	dev_priv->display.params.disable_power_well =3D
>  		sanitize_disable_power_well_option(dev_priv,
> -						   dev_priv->params.disable_power_well);
> +						   dev_priv->display.params.disable_power_well);
>  	power_domains->allowed_dc_mask =3D
>  		get_allowed_dc_mask(dev_priv, dev_priv->display.params.enable_dc);
> =20
> @@ -1950,7 +1950,7 @@ void intel_power_domains_init_hw(struct drm_i915_pr=
ivate *i915, bool resume)
>  		intel_display_power_get(i915, POWER_DOMAIN_INIT);
> =20
>  	/* Disable power support if the user asked so. */
> -	if (!i915->params.disable_power_well) {
> +	if (!i915->display.params.disable_power_well) {
>  		drm_WARN_ON(&i915->drm, power_domains->disable_wakeref);
>  		i915->display.power.domains.disable_wakeref =3D intel_display_power_ge=
t(i915,
>  										      POWER_DOMAIN_INIT);
> @@ -1977,7 +1977,7 @@ void intel_power_domains_driver_remove(struct drm_i=
915_private *i915)
>  		fetch_and_zero(&i915->display.power.domains.init_wakeref);
> =20
>  	/* Remove the refcount we took to keep power well support disabled. */
> -	if (!i915->params.disable_power_well)
> +	if (!i915->display.params.disable_power_well)
>  		intel_display_power_put(i915, POWER_DOMAIN_INIT,
>  					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
> =20
> @@ -2096,7 +2096,7 @@ void intel_power_domains_suspend(struct drm_i915_pr=
ivate *i915, bool s2idle)
>  	 * Even if power well support was disabled we still want to disable
>  	 * power wells if power domains must be deinitialized for suspend.
>  	 */
> -	if (!i915->params.disable_power_well)
> +	if (!i915->display.params.disable_power_well)
>  		intel_display_power_put(i915, POWER_DOMAIN_INIT,
>  					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
> =20
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index 51e706f6e57e..eab02f71a4e5 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -86,10 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
>  	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> =20
> -i915_param_named_unsafe(disable_power_well, int, 0400,
> -	"Disable display power wells when possible "
> -	"(-1=3Dauto [default], 0=3Dpower wells always on, 1=3Dpower wells disab=
led when possible)");
> -
>  i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: tru=
e)");
> =20
>  i915_param_named_unsafe(load_detect_test, bool, 0400,
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 066f15783580..060464df03c2 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -47,7 +47,6 @@ struct drm_printer;
>   */
>  #define I915_PARAMS_FOR_EACH(param) \
>  	param(int, modeset, -1, 0400) \
> -	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
>  	param(int, enable_guc, -1, 0400) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
