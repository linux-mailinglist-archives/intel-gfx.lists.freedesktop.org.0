Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A203F7D4F0E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 13:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8B210E351;
	Tue, 24 Oct 2023 11:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A9010E352
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:41:53 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qvFnC-000000009cZ-0Zks; Tue, 24 Oct 2023 14:41:50 +0300
Message-ID: <c2259a0e3b1252f4081236397a43c014c56f87a3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 14:41:49 +0300
In-Reply-To: <20231024103222.302256-14-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
 <20231024103222.302256-14-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v3 13/23] drm/i915/display: Move enable_ips
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

On Tue, 2023-10-24 at 13:32 +0300, Jouni H=C3=B6gander wrote:
> Move enable_ips module parameter under display and change it as boolean.
>=20
> v2:
>   - Change enable_ip as boolean
>   - Fix copy paste error (i915_param -> intel_display_param)
>=20
> Cc: Luca Coelho <luca@coelho.fi>
>=20
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c              | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_params.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/i915_params.c                  | 2 --
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i91=
5/display/hsw_ips.c
> index 7dc38ac02092..611a7d6ef80c 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -193,7 +193,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_cr=
tc_state *crtc_state)
>  	if (!hsw_crtc_supports_ips(crtc))
>  		return false;
> =20
> -	if (!i915->params.enable_ips)
> +	if (!i915->display.params.enable_ips)
>  		return false;
> =20
>  	if (crtc_state->pipe_bpp > 24)
> @@ -329,7 +329,7 @@ static int hsw_ips_debugfs_status_show(struct seq_fil=
e *m, void *unused)
>  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> =20
>  	seq_printf(m, "Enabled by kernel parameter: %s\n",
> -		   str_yes_no(i915->params.enable_ips));
> +		   str_yes_no(i915->display.params.enable_ips));
> =20
>  	if (DISPLAY_VER(i915) >=3D 8) {
>  		seq_puts(m, "Currently: unknown\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 79a212dded80..ce991ad20006 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -57,6 +57,8 @@ intel_display_param_named_unsafe(disable_power_well, in=
t, 0400,
>  	"Disable display power wells when possible "
>  	"(-1=3Dauto [default], 0=3Dpower wells always on, 1=3Dpower wells disab=
led when possible)");
> =20
> +intel_display_param_named_unsafe(enable_ips, bool, 0400, "Enable IPS (de=
fault: true)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index aadbef664965..8d51488e3b3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -32,6 +32,7 @@ struct drm_i915_private;
>  	param(bool, enable_dpt, true, 0400) \
>  	param(bool, enable_sagv, true, 0600) \
>  	param(int, disable_power_well, -1, 0400) \
> +	param(bool, enable_ips, true, 0600) \
>  	param(int, enable_fbc, -1, 0600) \
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index eab02f71a4e5..54dcce97da2a 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -86,8 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
>  	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> =20
> -i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: tru=
e)");
> -
>  i915_param_named_unsafe(load_detect_test, bool, 0400,
>  	"Force-enable the VGA load detect code for testing (default:false). "
>  	"For developers only.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 060464df03c2..18bb8a93e0e8 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -47,7 +47,6 @@ struct drm_printer;
>   */
>  #define I915_PARAMS_FOR_EACH(param) \
>  	param(int, modeset, -1, 0400) \
> -	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
>  	param(int, enable_guc, -1, 0400) \
>  	param(int, guc_log_level, -1, 0400) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
