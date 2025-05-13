Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FDCAB5438
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7501710E1F3;
	Tue, 13 May 2025 12:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6C210E1F3;
 Tue, 13 May 2025 12:00:58 +0000 (UTC)
Received: from 91-155-254-65.elisa-laajakaista.fi ([91.155.254.65]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uEoJb-00000007Mge-2ySB; Tue, 13 May 2025 15:00:55 +0300
Message-ID: <0b0de38dab53f153a38a624cb413c9d36ca9839d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 13 May 2025 15:00:54 +0300
In-Reply-To: <20250512103358.15724-8-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
 <20250512103358.15724-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 7/7] drm/i915/dmc: Introduce dmc_configure_event()
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

On Mon, 2025-05-12 at 13:33 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Instead of hardcoding the event handler indices (for runtime
> event handler enable/disable) we can simply look for the handler
> with the appropriate event type. This isolates us from the firmware
> details a bit better.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 39 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |  6 ---
>  2 files changed, 27 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index d758032d1af6..f42880f00aab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -573,6 +573,31 @@ static bool is_event_handler(struct intel_display *d=
isplay,
>  		REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) =3D=3D event_id;
>  }
> =20
> +static void dmc_configure_event(struct intel_display *display,
> +				enum intel_dmc_id dmc_id,
> +				unsigned int event_id,
> +				bool enable)
> +{
> +	struct intel_dmc *dmc =3D display_to_dmc(display);
> +	int num_handlers =3D 0;
> +	int i;
> +
> +	for (i =3D 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> +		i915_reg_t reg =3D dmc->dmc_info[dmc_id].mmioaddr[i];
> +		u32 data =3D dmc->dmc_info[dmc_id].mmiodata[i];
> +
> +		if (!is_event_handler(display, dmc_id, event_id, reg, data))
> +			continue;
> +
> +		intel_de_write(display, reg, enable ? data : dmc_evt_ctl_disable());
> +		num_handlers++;
> +	}
> +
> +	drm_WARN_ONCE(display->drm, num_handlers !=3D 1,
> +		      "DMC %d has %d handlers for event 0x%x\n",
> +		      dmc_id, num_handlers, event_id);
> +}
> +
>  /**
>   * intel_dmc_block_pkgc() - block PKG C-state
>   * @display: display instance
> @@ -603,19 +628,9 @@ void intel_dmc_block_pkgc(struct intel_display *disp=
lay, enum pipe pipe,
>  void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel=
_display *display,
>  							    enum pipe pipe, bool enable)
>  {
> -	u32 val;
> +	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe);
> =20
> -	if (enable)
> -		val =3D DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
> -			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> -				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
> -			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				       PIPEDMC_EVENT_VBLANK);
> -	else
> -		val =3D dmc_evt_ctl_disable();
> -
> -	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(pipe),
> -		       val);
> +	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_VBLANK, enable);
>  }
> =20
>  static bool disable_dmc_evt(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/=
drm/i915/display/intel_dmc_regs.h
> index edd4e69319b9..d8e715677454 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -287,12 +287,6 @@ enum pipedmc_event_id {
>  #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
>  #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> =20
> -#define _MTL_PIPEDMC_EVT_CTL_4_A	0x5f044
> -#define _MTL_PIPEDMC_EVT_CTL_4_B	0x5f444
> -#define MTL_PIPEDMC_EVT_CTL_4(pipe)	_MMIO_PIPE(pipe,		\
> -						   _MTL_PIPEDMC_EVT_CTL_4_A, \
> -						   _MTL_PIPEDMC_EVT_CTL_4_B)
> -
>  #define _PIPEDMC_STATUS_A		0x5f06c
>  #define _PIPEDMC_STATUS_B		0x5f46c
>  #define PIPEDMC_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_STATUS_A, _PIP=
EDMC_STATUS_B)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
