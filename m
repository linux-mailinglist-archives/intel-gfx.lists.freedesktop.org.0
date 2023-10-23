Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED767D3789
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF8610E221;
	Mon, 23 Oct 2023 13:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF7F10E102
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:15:36 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quumK-000000008WU-1cuW; Mon, 23 Oct 2023 16:15:33 +0300
Message-ID: <3f6ef3af75716d6c3876e004484bf7353ad4d42c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:15:31 +0300
In-Reply-To: <20231016111658.3432581-8-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-8-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 07/24] drm/i915/display: Move
 panel_use_ssc module parameter under display
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
>  drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_panel.c          | 4 ++--
>  drivers/gpu/drm/i915/i915_params.c                  | 4 ----
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index cdc42bc575b8..e25d70653c0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -34,6 +34,10 @@ intel_display_param_named_unsafe(lvds_channel_mode, in=
t, 0400,
>  	 "Specify LVDS channel mode "
>  	 "(0=3Dprobe BIOS [default], 1=3Dsingle-channel, 2=3Ddual-channel)");
> =20
> +intel_display_param_named_unsafe(panel_use_ssc, int, 0400,
> +	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
> +	"(default: auto from VBT)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index a4988ef44837..4b326baf146f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -26,6 +26,7 @@ struct drm_i915_private;
>  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
>  	param(char *, vbt_firmware, NULL, 0400) \
>  	param(int, lvds_channel_mode, 0, 0400) \
> +	param(int, panel_use_ssc, -1, 0600) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 483beedac5b8..0d8e5320a4f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -46,8 +46,8 @@
> =20
>  bool intel_panel_use_ssc(struct drm_i915_private *i915)
>  {
> -	if (i915->params.panel_use_ssc >=3D 0)
> -		return i915->params.panel_use_ssc !=3D 0;
> +	if (i915->display.params.panel_use_ssc >=3D 0)
> +		return i915->display.params.panel_use_ssc !=3D 0;
>  	return i915->display.vbt.lvds_use_ssc &&
>  		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index ea55cc2c4854..4123424b2c2e 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -72,10 +72,6 @@ i915_param_named_unsafe(enable_dc, int, 0400,
>  	"(-1=3Dauto [default]; 0=3Ddisable; 1=3Dup to DC5; 2=3Dup to DC6; "
>  	"3=3Dup to DC5 with DC3CO; 4=3Dup to DC6 with DC3CO)");
> =20
> -i915_param_named_unsafe(panel_use_ssc, int, 0400,
> -	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
> -	"(default: auto from VBT)");
> -
>  i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
>  	"Override/Ignore selection of SDVO panel mode in the VBT "
>  	"(-2=3Dignore, -1=3Dauto [default], index in VBT BIOS table)");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 03ec2c2b589d..0bd365889e73 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -47,7 +47,6 @@ struct drm_printer;
>   */
>  #define I915_PARAMS_FOR_EACH(param) \
>  	param(int, modeset, -1, 0400) \
> -	param(int, panel_use_ssc, -1, 0600) \
>  	param(int, vbt_sdvo_panel_type, -1, 0400) \
>  	param(int, enable_dc, -1, 0400) \
>  	param(bool, enable_dpt, true, 0400) \

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
