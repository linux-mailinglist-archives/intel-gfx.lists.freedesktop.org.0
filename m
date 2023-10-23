Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A318D7D37F6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE42B10E1E8;
	Mon, 23 Oct 2023 13:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE8A10E1E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:25:18 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quuvi-000000008YY-1TY9; Mon, 23 Oct 2023 16:25:15 +0300
Message-ID: <851c9eab695e9ff1ee372ba12836b4c5f7c4320a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:25:13 +0300
In-Reply-To: <20231016111658.3432581-14-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-14-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 13/24] drm/i915/display: Move enable_ips
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
> index 86b46cff1718..c2399e11203c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -57,6 +57,8 @@ intel_display_param_named_unsafe(disable_power_well, in=
t, 0400,
>  	"Disable display power wells when possible "
>  	"(-1=3Dauto [default], 0=3Dpower wells always on, 1=3Dpower wells disab=
led when possible)");
> =20
> +i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: tru=
e)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 998f99a2857c..11c21a3a3124 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -32,6 +32,7 @@ struct drm_i915_private;
>  	param(bool, enable_dpt, true, 0400) \
>  	param(bool, enable_sagv, true, 0600) \
>  	param(int, disable_power_well, -1, 0400) \
> +	param(int, enable_ips, 1, 0600) \

Why isn't this a boolean and set to true instead of int and 1?

--
Cheers,
Luca.
