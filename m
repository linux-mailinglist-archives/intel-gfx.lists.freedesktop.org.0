Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6830AF7311
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 13:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED4610E815;
	Thu,  3 Jul 2025 11:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F5E10E813;
 Thu,  3 Jul 2025 11:59:15 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXIav-00000008dYu-0DNF; Thu, 03 Jul 2025 14:59:13 +0300
Message-ID: <dea636ecc2ffab3f597818bf8baa096a2abdd32d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 03 Jul 2025 14:59:12 +0300
In-Reply-To: <20250626082053.219514-14-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-14-imre.deak@intel.com>
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
Subject: Re: [PATCH 13/20] drm/i915/dp: Return early if getting/acking
 device service IRQs fails
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
> If getting/acking the device service IRQs fail, the short HPD handler
> should bail out, falling back to a full connector detection as in case
> of any AUX access failures during the HPD handling. Do this by
> separating the getting/acking and handling steps of the IRQs.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++++---------
>  1 file changed, 23 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 66db426b4aca1..cfbe7c6f896ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5393,31 +5393,39 @@ void intel_dp_check_link_state(struct intel_dp *i=
ntel_dp)
>  	intel_encoder_link_check_queue_work(encoder, 0);
>  }
> =20
> -static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> +static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *int=
el_dp, u8 *irq_mask)

I think these names are still a bit confusing, so adding short comment
explaining what the bool is, as Jani suggested,is a good thing.


>  {
> -	struct intel_display *display =3D to_intel_display(intel_dp);
>  	u8 val;
> =20
> +	*irq_mask =3D 0;
> +
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) !=3D 1)
> -		return true;
> +		return false;
> =20
>  	if (!val)
> -		return false;
> +		return true;
> =20
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, va=
l) !=3D 1)
> -		return true;
> +		return false;
> =20
> -	if (val & DP_AUTOMATED_TEST_REQUEST)
> +	*irq_mask =3D val;
> +
> +	return true;
> +}
> +
> +static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp=
, u8 irq_mask)

Same for this function.

With these changes:

Reviwed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
