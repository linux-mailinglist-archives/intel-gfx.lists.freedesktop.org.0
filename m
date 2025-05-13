Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C81AB53C2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 13:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7137810E384;
	Tue, 13 May 2025 11:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C0B10E384;
 Tue, 13 May 2025 11:24:44 +0000 (UTC)
Received: from 91-155-254-65.elisa-laajakaista.fi ([91.155.254.65]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uEnkV-00000007Mcn-2nwz; Tue, 13 May 2025 14:24:41 +0300
Message-ID: <a0833bc0f50231c8af296efd14b1304c95d0f99a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 13 May 2025 14:24:38 +0300
In-Reply-To: <20250512103358.15724-5-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
 <20250512103358.15724-5-ville.syrjala@linux.intel.com>
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
Subject: Re: [PATCH 4/7] drm/i915/dmc: Extract dmc_evt_ctl_disable()
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
> We have two copies of the code to generate the "disable this event"
> value for the DMC_EVT_CTL registers. Extract to a helper.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index 49cbb83b2bbe..ec940f837427 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -536,6 +536,14 @@ void intel_dmc_disable_pipe(struct intel_display *di=
splay, enum pipe pipe)
>  	}
>  }
> =20
> +static u32 dmc_evt_ctl_disable(void)
> +{
> +	return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +			      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +		REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +			       DMC_EVENT_FALSE);
> +}
> +

This could even be a macro.  And the name seems a bit misleading to me,
because it sounds like "disable" is an action, but the function only
returns the values used to disable.


>  /**
>   * intel_dmc_block_pkgc() - block PKG C-state
>   * @display: display instance
> @@ -575,10 +583,7 @@ void intel_dmc_start_pkgc_exit_at_start_of_undelayed=
_vblank(struct intel_display
>  			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
>  				       PIPEDMC_EVENT_VBLANK);
>  	else
> -		val =3D REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				     DMC_EVENT_FALSE) |
> -			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> -				       DMC_EVT_CTL_TYPE_EDGE_0_1);
> +		val =3D dmc_evt_ctl_disable();
> =20
>  	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(pipe),
>  		       val);
> @@ -635,10 +640,7 @@ static u32 dmc_mmiodata(struct intel_display *displa=
y,
>  	if (disable_dmc_evt(display, dmc_id,
>  			    dmc->dmc_info[dmc_id].mmioaddr[i],
>  			    dmc->dmc_info[dmc_id].mmiodata[i]))
> -		return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> -				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> -			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				       DMC_EVENT_FALSE);
> +		return dmc_evt_ctl_disable();
>  	else
>  		return dmc->dmc_info[dmc_id].mmiodata[i];
>  }

...but that's a nitpick, so:

Reviewed-by: Luca Coelho <luciano.coeho@intel.com>

--
Cheers,
Luca.
