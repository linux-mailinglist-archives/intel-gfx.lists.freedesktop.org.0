Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B0E7D3816
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:31:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5227D10E054;
	Mon, 23 Oct 2023 13:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0077D10E054
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:30:54 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quv19-000000008ZS-0ftb; Mon, 23 Oct 2023 16:30:51 +0300
Message-ID: <31a6458ef327cf64f4cae03109e6a8a07a35b75d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:30:50 +0300
In-Reply-To: <20231016111658.3432581-15-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-15-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 14/24] drm/i915/display: Move
 invert_brightness module parameter under display
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
>  drivers/gpu/drm/i915/display/intel_backlight.c      | 9 +++++----
>  drivers/gpu/drm/i915/display/intel_display_params.c | 9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/i915_params.c                  | 7 -------
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 14 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index 2e8f17c04522..612d4cd9dacb 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -88,10 +88,10 @@ u32 intel_backlight_invert_pwm_level(struct intel_con=
nector *connector, u32 val)
> =20
>  	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max =3D=3D 0);
> =20
> -	if (i915->params.invert_brightness < 0)
> +	if (i915->display.params.invert_brightness < 0)
>  		return val;
> =20
> -	if (i915->params.invert_brightness > 0 ||
> +	if (i915->display.params.invert_brightness > 0 ||
>  	    intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)) {
>  		return panel->backlight.pwm_level_max - val + panel->backlight.pwm_lev=
el_min;
>  	}
> @@ -132,8 +132,9 @@ u32 intel_backlight_level_from_pwm(struct intel_conne=
ctor *connector, u32 val)
>  	drm_WARN_ON_ONCE(&i915->drm,
>  			 panel->backlight.max =3D=3D 0 || panel->backlight.pwm_level_max =3D=
=3D 0);
> =20
> -	if (i915->params.invert_brightness > 0 ||
> -	    (i915->params.invert_brightness =3D=3D 0 && intel_has_quirk(i915, Q=
UIRK_INVERT_BRIGHTNESS)))
> +	if (i915->display.params.invert_brightness > 0 ||
> +	    (i915->display.params.invert_brightness =3D=3D 0 &&
> +	     intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)))
>  		val =3D panel->backlight.pwm_level_max - (val - panel->backlight.pwm_l=
evel_min);
> =20
>  	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_=
level_max,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index c2399e11203c..8d8050a22bf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -57,7 +57,14 @@ intel_display_param_named_unsafe(disable_power_well, i=
nt, 0400,
>  	"Disable display power wells when possible "
>  	"(-1=3Dauto [default], 0=3Dpower wells always on, 1=3Dpower wells disab=
led when possible)");
> =20
> -i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: tru=
e)");
> +intel_display_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (def=
ault: true)");
> +

This change is in the wrong patch.  It should be moved to the previous
one.



With this fixed:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
