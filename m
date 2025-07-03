Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E56CAF750C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1F410E82C;
	Thu,  3 Jul 2025 13:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E7F10E82C;
 Thu,  3 Jul 2025 13:07:56 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXJfN-00000008djy-2zBz; Thu, 03 Jul 2025 16:07:54 +0300
Message-ID: <3a3e4d4d8b4945b84424174f5714da3b9b803507.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 16:07:52 +0300
In-Reply-To: <20250626082053.219514-19-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-19-imre.deak@intel.com>
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
Subject: Re: [PATCH 18/20] drm/i915/dp_mst: Reuse
 intel_dp_handle_link_service_irq()
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

On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> From: Imre Deak <imre.deak@gmail.com>
>=20
> Use intel_dp_handle_link_service_irq() while handling an MST HPD IRQ,
> instead of open-coding this.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 000c57da92d60..52249fa5c8a6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5129,6 +5129,8 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 =
*esi, u8 *ack)
>  	}
>  }
> =20
> +static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, =
u8 irq_mask);
> +
>  /**
>   * intel_dp_check_mst_status - service any pending MST interrupts, check=
 link status
>   * @intel_dp: Intel DP struct
> @@ -5176,14 +5178,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
p)
>  		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
>  			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
> =20
> -		if (ack[3] & RX_CAP_CHANGED)
> -			reprobe_needed =3D true;
> -
> -		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
> -			intel_dp_check_link_state(intel_dp);
> -
> -		if ((ack[3] & DP_TUNNELING_IRQ) &&
> -		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
> +		if (intel_dp_handle_link_service_irq(intel_dp, ack[3]))
>  			reprobe_needed =3D true;
>  	}
> =20
> @@ -5481,7 +5476,7 @@ static bool intel_dp_handle_link_service_irq(struct=
 intel_dp *intel_dp, u8 irq_m
>  	if (irq_mask & RX_CAP_CHANGED)
>  		reprobe_needed =3D true;
> =20
> -	if (irq_mask & LINK_STATUS_CHANGED)
> +	if ((irq_mask & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
>  		intel_dp_check_link_state(intel_dp);
> =20
>  	if (irq_mask & HDMI_LINK_STATUS_CHANGED)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
