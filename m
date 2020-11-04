Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC742A5B6E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 02:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB4A6E922;
	Wed,  4 Nov 2020 01:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C076E922
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 01:02:24 +0000 (UTC)
IronPort-SDR: RhUordFOM3IR13hzw/+ZVM9m5Cj2UvcT7KdL2AbWt422E5ixpmblKtplOF8QtXLbk7lNxTvZ73
 YMQb3N38HgjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="148425097"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="148425097"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 17:02:23 -0800
IronPort-SDR: e0fC9XR7LiUzdY9SXni90HFPwdFSjOk4rVYTN2rl+e1MJ/nsmvw/13dWMNKRH3E6CEHgs78Umq
 GRmOxpzXGvGA==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="336696340"
Received: from gustavoc-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.112.204])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 17:02:23 -0800
Date: Tue, 3 Nov 2020 17:02:22 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201104010222.lad3r7s56ihieprb@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201027043228.696518-1-lucas.demarchi@intel.com>
 <20201027043509.xd54q2tkldc4ybyo@ldmartin-desk1>
 <c8263e54-7ab9-780b-9e4b-32d8ccf0596d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8263e54-7ab9-780b-9e4b-32d8ccf0596d@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dg1: map/unmap pll clocks
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 02, 2020 at 08:59:32AM -0800, Aditya Swarup wrote:
>On 10/26/20 9:35 PM, Lucas De Marchi wrote:
>> On Mon, Oct 26, 2020 at 09:32:26PM -0700, Lucas De Marchi wrote:
>>> DG1 uses 2 registers for the ddi clock mapping, with PHY A and B using
>>> DPCLKA_CFGCR0 and PHY C and D using DPCLKA1_CFGCR0. Hide this behind a
>>> single macro that chooses the correct register according to the phy
>>> being accessed, use the correct bitfields for each pll/phy and implement
>>> separate functions for DG1 since it doesn't share much with ICL/TGL
>>> anymore.
>>>
>>> The previous values were correct for PHY A and B since they were using
>>> the same register as before and the bitfields were matching.
>>>
>>> v2: Add comment and try to simplify DG1_DPCLKA* macros by reusing
>>> previous ones
>>>
>>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>>> Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>
>> Matt, you had given you R-b but since I changed the macros considerably,
>> please take a look if it still stands.
>>
>> thanks
>> Lucas De Marchi
>>
>>> ---
>>> drivers/gpu/drm/i915/display/intel_ddi.c=A0=A0=A0=A0 | 92 +++++++++++++=
++++++-
>>> drivers/gpu/drm/i915/display/intel_display.c | 25 +++++-
>>> drivers/gpu/drm/i915/i915_reg.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
| 23 +++++
>>> 3 files changed, 136 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
>>> index 63380b166c25..f6343a950b3a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> @@ -2970,6 +2970,38 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_=
i915_private *dev_priv,
>>> =A0=A0=A0=A0return 0;
>>> }
>>>
>>> +static void dg1_map_plls_to_ports(struct intel_encoder *encoder,
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct intel=
_crtc_state *crtc_state)
>>> +{
>>> +=A0=A0=A0 struct drm_i915_private *dev_priv =3D to_i915(encoder->base.=
dev);
>>> +=A0=A0=A0 struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>>> +=A0=A0=A0 enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>>> +=A0=A0=A0 u32 val;
>>> +
>>> +=A0=A0=A0 /*
>>> +=A0=A0=A0=A0 * If we fail this, something went very wrong: first 2 PLL=
s should be
>>> +=A0=A0=A0=A0 * used by first 2 phys and last 2 PLLs by last phys
>>> +=A0=A0=A0=A0 */
>>> +=A0=A0=A0 if (WARN_ON((pll->info->id < DPLL_ID_DG1_DPLL2 && phy >=3D P=
HY_C) ||
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (pll->info->id >=3D DPLL_ID_DG1_DPLL=
2 && phy < PHY_C)))
>>> +=A0=A0=A0=A0=A0=A0=A0 return;
>>> +
>>> +=A0=A0=A0 mutex_lock(&dev_priv->dpll.lock);
>>> +
>>> +=A0=A0=A0 val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
>>> +=A0=A0=A0 WARN_ON((val & DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)) =3D=3D 0);
>>> +
>>> +=A0=A0=A0 val &=3D ~DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>>> +=A0=A0=A0 val |=3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
>>> +=A0=A0=A0 intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
>>> +=A0=A0=A0 intel_de_posting_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
>>> +
>>> +=A0=A0=A0 val &=3D ~DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>>> +=A0=A0=A0 intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
>>> +
>>> +=A0=A0=A0 mutex_unlock(&dev_priv->dpll.lock);
>>> +}
>>> +
>>> static void icl_map_plls_to_ports(struct intel_encoder *encoder,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct intel_=
crtc_state *crtc_state)
>>> {
>>> @@ -3017,6 +3049,19 @@ static void icl_map_plls_to_ports(struct intel_e=
ncoder *encoder,
>>> =A0=A0=A0=A0mutex_unlock(&dev_priv->dpll.lock);
>>> }
>>>
>>> +static void dg1_unmap_plls_to_ports(struct intel_encoder *encoder)
>>> +{
>>> +=A0=A0=A0 struct drm_i915_private *dev_priv =3D to_i915(encoder->base.=
dev);
>>> +=A0=A0=A0 enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>>> +
>>> +=A0=A0=A0 mutex_lock(&dev_priv->dpll.lock);
>>> +
>>> +=A0=A0=A0 intel_de_rmw(dev_priv, DG1_DPCLKA_CFGCR0(phy), 0,
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy=
));
>>> +
>>> +=A0=A0=A0 mutex_unlock(&dev_priv->dpll.lock);
>>> +}
>>> +
>>> static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
>>> {
>>> =A0=A0=A0=A0struct drm_i915_private *dev_priv =3D to_i915(encoder->base=
.dev);
>>> @@ -3032,6 +3077,40 @@ static void icl_unmap_plls_to_ports(struct intel=
_encoder *encoder)
>>> =A0=A0=A0=A0mutex_unlock(&dev_priv->dpll.lock);
>>> }
>>>
>>> +static void dg1_sanitize_port_clk_off(struct drm_i915_private *dev_pri=
v,
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 po=
rt_mask, bool ddi_clk_needed)
>>> +{
>>> +=A0=A0=A0 enum port port;
>>> +=A0=A0=A0 u32 val;
>>> +
>>> +=A0=A0=A0 for_each_port_masked(port, port_mask) {
>>> +=A0=A0=A0=A0=A0=A0=A0 enum phy phy =3D intel_port_to_phy(dev_priv, por=
t);
>>> +=A0=A0=A0=A0=A0=A0=A0 bool ddi_clk_off;
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0 val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR=
0(phy));
>>> +=A0=A0=A0=A0=A0=A0=A0 ddi_clk_off =3D val & DG1_DPCLKA_CFGCR0_DDI_CLK_=
OFF(phy);
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0 if (ddi_clk_needed =3D=3D !ddi_clk_off)
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 continue;
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0 /*
>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * Punt on the case now where clock is gated, =
but it would
>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * be needed by the port. Something else is re=
ally broken then.
>>> +=A0=A0=A0=A0=A0=A0=A0=A0 */
>>> +=A0=A0=A0=A0=A0=A0=A0 if (ddi_clk_needed) {
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 WARN(1, "ddi_clk_needed=3D%u ddi_clk=
_off=3D%u phy=3D%u\n",
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ddi_clk_needed, ddi_c=
lk_off, phy);
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 continue;
>>> +=A0=A0=A0=A0=A0=A0=A0 }
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0 DRM_NOTE("PHY %c is disabled/in DSI mode with an=
 ungated DDI clock, gate it\n",
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 phy_name(phy));
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0 val |=3D DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>>> +=A0=A0=A0=A0=A0=A0=A0 intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy),=
 val);
>>> +=A0=A0=A0 }
>>> +}
>>> +
>>> static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 por=
t_mask, bool ddi_clk_needed)
>>> {
>>> @@ -3114,7 +3193,10 @@ void icl_sanitize_encoder_pll_mapping(struct int=
el_encoder *encoder)
>>> =A0=A0=A0=A0=A0=A0=A0 ddi_clk_needed =3D false;
>>> =A0=A0=A0=A0}
>>>
>>> -=A0=A0=A0 icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_neede=
d);
>>> +=A0=A0=A0 if (IS_DG1(dev_priv))
>>> +=A0=A0=A0=A0=A0=A0=A0 dg1_sanitize_port_clk_off(dev_priv, port_mask, d=
di_clk_needed);
>>> +=A0=A0=A0 else
>>> +=A0=A0=A0=A0=A0=A0=A0 icl_sanitize_port_clk_off(dev_priv, port_mask, d=
di_clk_needed);
>>> }
>>>
>>> static void intel_ddi_clk_select(struct intel_encoder *encoder,
>>> @@ -3666,7 +3748,9 @@ static void intel_ddi_pre_enable(struct intel_ato=
mic_state *state,
>>>
>>> =A0=A0=A0=A0drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
>>>
>>> -=A0=A0=A0 if (INTEL_GEN(dev_priv) >=3D 11)
>>> +=A0=A0=A0 if (IS_DG1(dev_priv))
>>> +=A0=A0=A0=A0=A0=A0=A0 dg1_map_plls_to_ports(encoder, crtc_state);
>>> +=A0=A0=A0 else if (INTEL_GEN(dev_priv) >=3D 11)
>>> =A0=A0=A0=A0=A0=A0=A0 icl_map_plls_to_ports(encoder, crtc_state);
>>>
>>> =A0=A0=A0=A0intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
>>> @@ -3848,7 +3932,9 @@ static void intel_ddi_post_disable(struct intel_a=
tomic_state *state,
>>> =A0=A0=A0=A0=A0=A0=A0 intel_ddi_post_disable_dp(state, encoder, old_crt=
c_state,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 old_con=
n_state);
>>>
>>> -=A0=A0=A0 if (INTEL_GEN(dev_priv) >=3D 11)
>>> +=A0=A0=A0 if (IS_DG1(dev_priv))
>>> +=A0=A0=A0=A0=A0=A0=A0 dg1_unmap_plls_to_ports(encoder);
>>> +=A0=A0=A0 else if (INTEL_GEN(dev_priv) >=3D 11)
>>> =A0=A0=A0=A0=A0=A0=A0 icl_unmap_plls_to_ports(encoder);
>>>
>>> =A0=A0=A0=A0if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
>>> index f41b6f8b5618..97c14d187a83 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -11003,6 +11003,27 @@ static int hsw_crtc_compute_clock(struct intel=
_crtc *crtc,
>>> =A0=A0=A0=A0return 0;
>>> }
>>>
>>> +static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum po=
rt port,
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_crtc_state =
*pipe_config)
>>> +{
>>> +=A0=A0=A0 enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
>>> +=A0=A0=A0 enum phy phy =3D intel_port_to_phy(dev_priv, port);
>>> +=A0=A0=A0 enum intel_dpll_id id;
>>> +=A0=A0=A0 u32 val;
>>> +
>>> +=A0=A0=A0 val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy))
>>> +=A0=A0=A0=A0=A0=A0=A0 & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>val is masked with clk sel mask before being passed to PLL ID macro.
>Check comment on PLL ID macro definition below.
>>> +=A0=A0=A0 id =3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_TO_PLL_ID(val, phy);
>>> +
>>> +=A0=A0=A0 if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
>>> +=A0=A0=A0=A0=A0=A0=A0 return;
>>> +
>>> +=A0=A0=A0 pipe_config->icl_port_dplls[port_dpll_id].pll =3D
>>> +=A0=A0=A0=A0=A0=A0=A0 intel_get_shared_dpll_by_id(dev_priv, id);
>>> +
>>> +=A0=A0=A0 icl_set_active_port_dpll(pipe_config, port_dpll_id);
>>> +}
>>> +
>>> static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum por=
t port,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_crtc_state *=
pipe_config)
>>> {
>>> @@ -11311,7 +11332,9 @@ static void hsw_get_ddi_port_state(struct intel=
_crtc *crtc,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 port =3D TRANS_DDI_FUNC_CTL_VAL_TO_PO=
RT(tmp);
>>> =A0=A0=A0=A0}
>>>
>>> -=A0=A0=A0 if (INTEL_GEN(dev_priv) >=3D 11)
>>> +=A0=A0=A0 if (IS_DG1(dev_priv))
>>> +=A0=A0=A0=A0=A0=A0=A0 dg1_get_ddi_pll(dev_priv, port, pipe_config);
>>> +=A0=A0=A0 else if (INTEL_GEN(dev_priv) >=3D 11)
>>> =A0=A0=A0=A0=A0=A0=A0 icl_get_ddi_pll(dev_priv, port, pipe_config);
>>> =A0=A0=A0=A0else if (IS_CANNONLAKE(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0 cnl_get_ddi_pll(dev_priv, port, pipe_config);
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
>>> index 8b021f77cb1f..99c749787541 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -230,12 +230,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
 reg)
>>> #define _TRANS(tran, a, b)=A0=A0=A0=A0=A0=A0=A0 _PICK_EVEN(tran, a, b)
>>> #define _PORT(port, a, b)=A0=A0=A0=A0=A0=A0=A0 _PICK_EVEN(port, a, b)
>>> #define _PLL(pll, a, b)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _PICK_EVEN(pll=
, a, b)
>>> +#define _PHY(phy, a, b)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _PICK_EVEN(ph=
y, a, b)
>>>
>>> #define _MMIO_PIPE(pipe, a, b)=A0=A0=A0=A0=A0=A0=A0 _MMIO(_PIPE(pipe, a=
, b))
>>> #define _MMIO_PLANE(plane, a, b)=A0=A0=A0 _MMIO(_PLANE(plane, a, b))
>>> #define _MMIO_TRANS(tran, a, b)=A0=A0=A0=A0=A0=A0=A0 _MMIO(_TRANS(tran,=
 a, b))
>>> #define _MMIO_PORT(port, a, b)=A0=A0=A0=A0=A0=A0=A0 _MMIO(_PORT(port, a=
, b))
>>> #define _MMIO_PLL(pll, a, b)=A0=A0=A0=A0=A0=A0=A0 _MMIO(_PLL(pll, a, b))
>>> +#define _MMIO_PHY(phy, a, b)=A0=A0=A0=A0=A0=A0=A0 _MMIO(_PHY(phy, a, b=
))
>>>
>>> #define _PHY3(phy, ...)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _PICK(phy, __V=
A_ARGS__)
>>>
>>> @@ -10324,6 +10326,7 @@ enum skl_power_gate {
>>> #define=A0 DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port)=A0=A0=A0 (3 << DPCLKA_C=
FGCR0_DDI_CLK_SEL_SHIFT(port))
>>> #define=A0 DPCLKA_CFGCR0_DDI_CLK_SEL(pll, port)=A0=A0=A0 ((pll) << DPCL=
KA_CFGCR0_DDI_CLK_SEL_SHIFT(port))
>>>
>>> +/* ICL Clocks */
>>> #define ICL_DPCLKA_CFGCR0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _MMIO(0x1642=
80)
>>> #define=A0 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)=A0=A0=A0 (1 << _PICK(phy,=
 10, 11, 24))
>>> #define=A0 RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)=A0=A0=A0 REG_BIT((phy) + =
10)
>>> @@ -10339,6 +10342,26 @@ enum skl_power_gate {
>>> #define=A0 RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy) \
>>> =A0=A0=A0=A0((pll) << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
>>>
>>> +/*
>>> + * DG1 Clocks
>>> + * First registers controls the first A and B, while the second regist=
er
>>> + * controls the phy C and D. The bits on these registers are the
>>> + * same, but refer to different phys
>>> + */
>>> +#define _DG1_DPCLKA_CFGCR0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 0x164280
>>> +#define _DG1_DPCLKA1_CFGCR0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 0x16C280
>>> +#define _DG1_DPCLKA_PHY_IDX(phy)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ((ph=
y) % 2)
>>> +#define _DG1_DPCLKA_PLL_IDX(pll)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ((pl=
l) % 2)
>>> +#define DG1_DPCLKA_CFGCR0(phy)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 _MMIO_PHY((phy) / 2, \
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _DG1_DPCLKA_CFGCR0, \
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 _DG1_DPCLKA1_CFGCR0)
>>> +#define=A0=A0 DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)=A0=A0=A0=A0=A0=A0=A0 =
REG_BIT(_DG1_DPCLKA_PHY_IDX(phy) + 10)
>>> +#define=A0=A0 DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)=A0=A0=A0 (_DG1_D=
PCLKA_PLL_IDX(pll) << (_DG1_DPCLKA_PHY_IDX(phy) * 2))
>>> +#define=A0=A0 DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)=A0=A0=A0 DG1_DPC=
LKA_CFGCR0_DDI_CLK_SEL(0x3, phy)
>Even though it is implicitly understood that the value being passed is a m=
ask rather than a pll to the CLK_SEL macro and
>the first argument to CLK_SEL macro is a pll and not pll mask, a one line =
comment explaining that would be helpful.
>But up to you if you feel the usage is self explanatory.

this mask is actually wrong. it's always doing `1 << bla(phy)` instead of 3=
 << bla(phy).
I guess I was to eager to reuse the previously defined macros. I will
replace with:

#define=A0=A0 DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << (_DG1_DPCLKA_=
PHY_IDX(phy) * 2))

>>> +#define=A0=A0 DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_TO_PLL_ID(val, phy) \
>>> +=A0=A0=A0 ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> (_DG1=
_DPCLKA_PHY_IDX(phy) * 2)) + \
>& with DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK() is not required in the macro a=
s it is already masked
>before the value is passed to PLL ID macro.

ok, I will remove it from here

>>> +=A0=A0=A0=A0 ((phy) >=3D PHY_C ? DPLL_ID_DG1_DPLL2 : DPLL_ID_DG1_DPLL0=
))
>Would prefer this PHY_C,D <-> DPLL2,3 mapping check to be defined as a sep=
arate macro for better readability/clarity.

not sure... I will change the code and see how it looks. It seems we are
just spreading the horrible macros instead of having all of the
horrible macro magic in a single place :(

thanks
Lucas De Marchi

>
>Aditya
>>> +
>>> /* CNL PLL */
>>> #define DPLL0_ENABLE=A0=A0=A0=A0=A0=A0=A0 0x46010
>>> #define DPLL1_ENABLE=A0=A0=A0=A0=A0=A0=A0 0x46014
>>> --=A0
>>> 2.29.0
>>>
>>> _______________________________________________
>>> Intel-gfx mailing list
>>> Intel-gfx@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
