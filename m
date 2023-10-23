Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B97D377E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0304910E0C3;
	Mon, 23 Oct 2023 13:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2595A10E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:13:53 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quukf-000000008WE-0pYw; Mon, 23 Oct 2023 16:13:50 +0300
Message-ID: <dc8eb76fc7c8e7298ffbf15533fed77ac06c509a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 16:13:48 +0300
In-Reply-To: <20231016111658.3432581-7-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-7-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 06/24] drm/i915/display: Move
 lvds_channel_mode module parameter under display
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
>  drivers/gpu/drm/i915/display/intel_display_params.h | 3 ++-
>  drivers/gpu/drm/i915/display/intel_lvds.c           | 4 ++--
>  drivers/gpu/drm/i915/i915_params.c                  | 4 ----
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 72f1782e27fe..cdc42bc575b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -30,6 +30,10 @@ static struct intel_display_params intel_display_modpa=
rams __read_mostly =3D {
>  intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
>  	"Load VBT from specified file under /lib/firmware");
> =20
> +intel_display_param_named_unsafe(lvds_channel_mode, int, 0400,
> +	 "Specify LVDS channel mode "
> +	 "(0=3Dprobe BIOS [default], 1=3Dsingle-channel, 2=3Ddual-channel)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index a6f37c55523d..a4988ef44837 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -25,7 +25,8 @@ struct drm_i915_private;
>   */
>  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
>  	param(char *, vbt_firmware, NULL, 0400) \
> -	param(int, enable_fbc, -1, 0600)     \
> +	param(int, lvds_channel_mode, 0, 0400) \
> +	param(int, enable_fbc, -1, 0600)	\

The enable_fbc line shouldn't be changed here.  Was there some missing
spaces? If so, it should be fixed in the patch that added enable_fbc.



With this fixed:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
