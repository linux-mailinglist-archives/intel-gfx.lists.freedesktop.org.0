Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E996367CE6E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 15:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529EB10E916;
	Thu, 26 Jan 2023 14:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A492910E916
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 14:41:03 +0000 (UTC)
Received: from 85-76-162-133-nat.elisa-mobile.fi ([85.76.162.133]
 helo=[192.168.127.197])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pL3Qy-005xBW-3u;
 Thu, 26 Jan 2023 16:41:01 +0200
Message-ID: <523d94f25c8e866424405373404e9ff27972a1c0.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 26 Jan 2023 16:40:59 +0200
In-Reply-To: <20230105125446.960504-22-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-22-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH v2 21/21] drm/i915/mtl: Pin assignment for
 TypeC
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2023-01-05 at 14:54 +0200, Mika Kahola wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>=20
> Unlike previous platforms that used PORT_TX_DFLEXDPSP
> for max_lane calculation, MTL uses only PORT_TX_DFLEXPA1
> from which the max_lanes has to be calculated.

"have to be calculated" or "the max_lanes value has..."


> Bspec: 50235, 65380
> Cc: Mika Kahola <mika.kahola@intel.com>

Shouldn't you have an s-o-b instead of Cc, since you rebased it and
sent it out?


> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835=
-21-mika.kahola@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 30 +++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index de851fddb255..e7d5301fc35e 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -15,6 +15,10 @@
>  #include "intel_mg_phy_regs.h"
>  #include "intel_tc.h"
> =20
> +#define DP_PIN_ASSIGNMENT_C	0x3
> +#define DP_PIN_ASSIGNMENT_D	0x4
> +#define DP_PIN_ASSIGNMENT_E	0x5
> +
>  static const char *tc_port_mode_name(enum tc_port_mode mode)
>  {
>  	static const char * const names[] =3D {
> @@ -147,6 +151,29 @@ u32 intel_tc_port_get_pin_assignment_mask(struct int=
el_digital_port *dig_port)
>  	       DP_PIN_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
>  }
> =20
> +static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port=
 *dig_port)

This is a bit of a misnomer, since the function doesn't return the pin
assignment mask.  It returns the max lane count.  I suggest
mtl_tc_port_get_max_lane_count(), like in the patch I sent internally.
;)

--
Cheers,
Luca.
