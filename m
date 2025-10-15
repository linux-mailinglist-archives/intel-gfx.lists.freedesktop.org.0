Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9000BDE7C1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDA110E7A7;
	Wed, 15 Oct 2025 12:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953B310E7A5;
 Wed, 15 Oct 2025 12:32:44 +0000 (UTC)
Received: from mobile-access-d98cd5-201.dhcp.inet.fi ([217.140.213.201]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v90gL-00000001ZRM-2E9v; Wed, 15 Oct 2025 15:32:42 +0300
Message-ID: <73e4f40721bdef292876260117b61d31e9861f7f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Wed, 15 Oct 2025 15:32:40 +0300
In-Reply-To: <20251013095045.3658871-8-mika.kahola@intel.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
 <20251013095045.3658871-8-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-4 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 7/7] drm/i915/display: Add missing clock to C10 PHY
 state compute/HW readout
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

On Mon, 2025-10-13 at 12:50 +0300, Mika Kahola wrote:
> From: Imre Deak <imre.deak@intel.com>
>=20
> Clock value is missing from C10 hw readout stage. Let's fix this.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c       | 5 +++++
>  drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 2 ++
>  2 files changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index f8c1338f9053..a74c1be225ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2103,6 +2103,9 @@ static int intel_c10pll_calc_state(struct intel_crt=
c_state *crtc_state,
>  	return 0;
>  }
> =20
> +static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> +					const struct intel_c10pll_state *pll_state);
> +
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  					  struct intel_c10pll_state *pll_state)
>  {
> @@ -2127,6 +2130,8 @@ static void intel_c10pll_readout_hw_state(struct in=
tel_encoder *encoder,
>  	pll_state->tx =3D intel_cx0_read(encoder, lane, PHY_C10_VDR_TX(0));
> =20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
> +
> +	pll_state->clock =3D intel_c10pll_calc_port_clock(encoder, pll_state);
>  }
> =20
>  static void intel_c10_pll_program(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers=
/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index 7fe6b4a18213..a201edceee10 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -332,6 +332,8 @@ void intel_snps_hdmi_pll_compute_c10pll(struct intel_=
c10pll_state *pll_state, u6
>  			      c10_curve_1, c10_curve_2, prescaler_divider,
>  			      &pll_params);
> =20
> +	pll_state->clock =3D pixel_clock;
> +
>  	pll_state->tx =3D 0x10;
>  	pll_state->cmn =3D 0x1;
>  	pll_state->pll[0] =3D REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mp=
ll_div5_en) |

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
