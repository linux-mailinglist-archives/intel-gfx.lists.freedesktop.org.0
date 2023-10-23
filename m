Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695297D362D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 14:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A558110E1C5;
	Mon, 23 Oct 2023 12:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB9910E1C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 12:14:51 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qutpY-000000008TV-0ol6; Mon, 23 Oct 2023 15:14:49 +0300
Message-ID: <6780f2f23be7946186c951f133f3f606afbb7425.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 15:14:47 +0300
In-Reply-To: <20231016111658.3432581-6-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 05/24] drm/i915/display: Move
 vbt_firmware module parameter under display
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
>  drivers/gpu/drm/i915/display/intel_opregion.c       | 2 +-
>  drivers/gpu/drm/i915/i915_params.c                  | 3 ---
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index eac82deede4c..72f1782e27fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -27,6 +27,9 @@ static struct intel_display_params intel_display_modpar=
ams __read_mostly =3D {
>   * debugfs mode to 0.
>   */
> =20
> +intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
> +	"Load VBT from specified file under /lib/firmware");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 99b79bed9363..a6f37c55523d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -24,6 +24,7 @@ struct drm_i915_private;
>   *       debugfs file
>   */
>  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
> +	param(char *, vbt_firmware, NULL, 0400) \
>  	param(int, enable_fbc, -1, 0600)     \
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index 84078fb82b2f..1ce785db6a5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -841,7 +841,7 @@ static int intel_load_vbt_firmware(struct drm_i915_pr=
ivate *dev_priv)
>  {
>  	struct intel_opregion *opregion =3D &dev_priv->display.opregion;
>  	const struct firmware *fw =3D NULL;
> -	const char *name =3D dev_priv->params.vbt_firmware;
> +	const char *name =3D dev_priv->display.params.vbt_firmware;
>  	int ret;
> =20
>  	if (!name || !*name)
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index c65e3314ae48..9d0535d774c9 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -87,9 +87,6 @@ i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
>  i915_param_named_unsafe(reset, uint, 0400,
>  	"Attempt GPU resets (0=3Ddisabled, 1=3Dfull gpu reset, 2=3Dengine reset=
 [default])");
> =20
> -i915_param_named_unsafe(vbt_firmware, charp, 0400,
> -	"Load VBT from specified file under /lib/firmware");
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>  i915_param_named(error_capture, bool, 0400,
>  	"Record the GPU state following a hang. "
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 47a05c4a8e89..37a1d31a233c 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -46,7 +46,6 @@ struct drm_printer;
>   *       debugfs file
>   */
>  #define I915_PARAMS_FOR_EACH(param) \
> -	param(char *, vbt_firmware, NULL, 0400) \
>  	param(int, modeset, -1, 0400) \
>  	param(int, lvds_channel_mode, 0, 0400) \
>  	param(int, panel_use_ssc, -1, 0600) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
