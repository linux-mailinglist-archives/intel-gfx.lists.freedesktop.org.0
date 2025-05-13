Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D46AB5038
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA25110E36A;
	Tue, 13 May 2025 09:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6708410E1F9;
 Tue, 13 May 2025 09:48:08 +0000 (UTC)
Received: from 91-155-254-65.elisa-laajakaista.fi ([91.155.254.65]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uEmEy-00000007MU9-32Jo; Tue, 13 May 2025 12:48:02 +0300
Message-ID: <904dc733fc6fe6916b75a1a145cbc754413e53be.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 13 May 2025 12:47:59 +0300
In-Reply-To: <20250512103358.15724-2-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
 <20250512103358.15724-2-ville.syrjala@linux.intel.com>
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
Subject: Re: [PATCH 1/7] drm/i915: Drop PIPEDMC faults from the fault mask
 on LNL+
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
> On LNL+ PIPEDMC faults are reported via PIPEDMC interrupts
> instead of the direct DE_PIPE_* reporting used on earlier
> platforms. Drop the relevant bits from the fault mask.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 10 +++++++++-
>  drivers/gpu/drm/i915/i915_reg.h                  |  4 ++--
>  2 files changed, 11 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 3e73832e5e81..a7130b14aace 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1016,7 +1016,15 @@ static u32 gen8_de_port_aux_mask(struct intel_disp=
lay *display)
> =20
>  static u32 gen8_de_pipe_fault_mask(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(display) >=3D 14)
> +	if (DISPLAY_VER(display) >=3D 20)
> +		return MTL_PLANE_ATS_FAULT |
> +			GEN9_PIPE_CURSOR_FAULT |
> +			GEN11_PIPE_PLANE5_FAULT |
> +			GEN9_PIPE_PLANE4_FAULT |
> +			GEN9_PIPE_PLANE3_FAULT |
> +			GEN9_PIPE_PLANE2_FAULT |
> +			GEN9_PIPE_PLANE1_FAULT;
> +	else if (DISPLAY_VER(display) >=3D 14)
>  		return MTL_PIPEDMC_ATS_FAULT |
>  			MTL_PLANE_ATS_FAULT |
>  			GEN12_PIPEDMC_FAULT |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 2e4190da3e0d..2d0e04eae763 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2126,8 +2126,8 @@
>  #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
>  #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
>  #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
> -#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
> -#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> +#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl-mtl */
> +#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl */
>  #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */

Out of curiosity, what happens without this patch? Is there going to be
possible garbage in those bits? If so, isn't that an actual bug in the
current LNL implementation and unrelated to your flip queue preparation
work?

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
