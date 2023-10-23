Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE6F7D3068
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 12:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 317C710E12F;
	Mon, 23 Oct 2023 10:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC0610E12F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 10:53:08 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qusYS-000000008On-1BMS; Mon, 23 Oct 2023 13:53:05 +0300
Message-ID: <e3e3a4355114863b25dacf3f35aa66c3b65ede90.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 13:53:03 +0300
In-Reply-To: <20231016111658.3432581-4-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 03/24] drm/i915/display: Move enable_fbc
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
>  drivers/gpu/drm/i915/display/i9xx_wm.c              |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_params.c |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display_params.h |  3 ++-
>  drivers/gpu/drm/i915/display/intel_fbc.c            | 10 +++++-----
>  drivers/gpu/drm/i915/i915_params.c                  |  4 ----
>  drivers/gpu/drm/i915/i915_params.h                  |  1 -
>  6 files changed, 12 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index af0c79a4c9a4..b37c0d02d500 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -2993,7 +2993,7 @@ static void ilk_wm_merge(struct drm_i915_private *d=
ev_priv,
> =20
>  	/* ILK: LP2+ must be disabled when FBC WM is disabled but FBC enabled *=
/
>  	if (DISPLAY_VER(dev_priv) =3D=3D 5 && HAS_FBC(dev_priv) &&
> -	    dev_priv->params.enable_fbc && !merged->fbc_wm_enabled) {
> +	    dev_priv->display.params.enable_fbc && !merged->fbc_wm_enabled) {
>  		for (level =3D 2; level < num_levels; level++) {
>  			struct intel_wm_level *wm =3D &merged->wm[level];
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 11ee73a98b5b..330613cd64db 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -27,6 +27,10 @@ static struct intel_display_params intel_display_modpa=
rams __read_mostly =3D {
>   * debugfs mode to 0.
>   */
> =20
> +intel_display_param_named_unsafe(enable_fbc, int, 0400,
> +	"Enable frame buffer compression for power savings "
> +	"(default: -1 (use per-chip default))");
> +
>  __maybe_unused
>  static void _param_print_bool(struct drm_printer *p, const char *driver_=
name,
>  			      const char *name, bool val)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index a0fb3e1aa2f5..f1bdf2c6e5cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -21,7 +21,8 @@ struct drm_i915_private;
>   * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not =
create
>   *       debugfs file
>   */
> -#define INTEL_DISPLAY_PARAMS_FOR_EACH(param)
> +#define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
> +	param(int, enable_fbc, -1, 0600)     \
> =20
>  #define MEMBER(T, member, ...) T member;
>  struct intel_display_params {
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 4820d21cc942..bde12fe62275 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1174,7 +1174,7 @@ static int intel_fbc_check_plane(struct intel_atomi=
c_state *state,
>  		return 0;
>  	}
> =20
> -	if (!i915->params.enable_fbc) {
> +	if (!i915->display.params.enable_fbc) {
>  		plane_state->no_fbc_reason =3D "disabled per module param or by defaul=
t";
>  		return 0;
>  	}
> @@ -1751,8 +1751,8 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm_=
i915_private *i915)
>   */
>  static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
>  {
> -	if (i915->params.enable_fbc >=3D 0)
> -		return !!i915->params.enable_fbc;
> +	if (i915->display.params.enable_fbc >=3D 0)
> +		return !!i915->display.params.enable_fbc;

It was like this before your change, but just as a side-comment, it
would e simpler to just return true here, because !!enable_fbc will
always be true here.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.

