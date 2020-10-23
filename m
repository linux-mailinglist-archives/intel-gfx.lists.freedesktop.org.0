Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47530296822
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 02:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394A86E06E;
	Fri, 23 Oct 2020 00:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B696E06E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 00:40:15 +0000 (UTC)
IronPort-SDR: Pz6jPzYBgv9qiWA0g7IsHS/SL0cmFPmlNoR2fSuXst58QhynBYqY6PL2zL0UuP5G8kHtE1GWF6
 jp3OxCjFRgZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="185304429"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="185304429"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 17:40:15 -0700
IronPort-SDR: mYns3flQYi36FMx0NCPAFlnr6WAwJbOLPTmoCC0UVNtMe68BuPU0RrjMEsJz0LHUyFJM3xXe0h
 q9wVY2YsYDpg==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="316913528"
Received: from mtdupree-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.152.253])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 17:40:14 -0700
Date: Thu, 22 Oct 2020 17:40:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201023004013.o6wmjxz6dn4kzj6b@ldmartin-desk1>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-5-aditya.swarup@intel.com>
 <20201021172819.mxujeqari4j7usgc@ldmartin-desk1>
 <c2ab87d4-67ee-7d83-823a-3e1f5b14c868@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2ab87d4-67ee-7d83-823a-3e1f5b14c868@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/18] drm/i915/adl_s: Add Interrupt Support
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 22, 2020 at 04:26:15PM -0700, Aditya Swarup wrote:
>On 10/21/20 10:28 AM, Lucas De Marchi wrote:
>> On Wed, Oct 21, 2020 at 06:31:59AM -0700, Aditya Swarup wrote:
>>> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>>
>>> ADLS follows ICP/TGP like interrupts. Reuse hpd_icp and introduce
>>> ADLS DDI and HPD masks for setting up hpd interrupts.
>>>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>> Cc: Imre Deak <imre.deak@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/i915_irq.c | 20 ++++++++++++++++----
>>> drivers/gpu/drm/i915/i915_reg.h |=A0 3 +++
>>> 2 files changed, 19 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
>>> index b753c77c9a77..9033221995ad 100644
>>> --- a/drivers/gpu/drm/i915/i915_irq.c
>>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>>> @@ -179,8 +179,9 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate *dev_priv)
>>
>> you still need to assign hpd_pin to do the mapping between port and hpd
>> pin. Earlier this was done in the irq handler itself, but now is done in
>> intel_ddi_init(). See what I did for DG1:
>> https://patchwork.freedesktop.org/patch/396062/?series=3D82905&rev=3D1
>
>I don't think that is required as for all Gen12+ platforms, tgl_hpd_pin is=
 used for assignment
>and the logic works for adl-s with PORT A mapping staying the same and for=
 ports greater than
>PORT D, HPD_PORT_TC1 is used as starting offset.
>
>From intel_ddi_init()
>else if (INTEL_GEN(dev_priv) >=3D 12)
>                encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port);

right... this is not like rkl/dg1 in which the hpd doesn't match the
port.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Also, I have tested this code wrt hotplugs on the system and it works for =
all ports.
>
>Regards,
>Aditya Swarup
>>
>> Lucas De Marchi
>>
>>> =A0=A0=A0=A0if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0 return;
>>>
>>> -=A0=A0=A0 if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
>>> -=A0=A0=A0=A0=A0=A0=A0 HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>>> +=A0=A0=A0 if (HAS_PCH_ADP(dev_priv) || HAS_PCH_TGP(dev_priv) ||
>>> +=A0=A0=A0=A0=A0=A0=A0 HAS_PCH_JSP(dev_priv) || HAS_PCH_ICP(dev_priv) ||
>>> +=A0=A0=A0=A0=A0=A0=A0 HAS_PCH_MCC(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0 hpd->pch_hpd =3D hpd_icp;
>>> =A0=A0=A0=A0else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0 hpd->pch_hpd =3D hpd_spt;
>>> @@ -1864,7 +1865,10 @@ static void icp_irq_handler(struct drm_i915_priv=
ate *dev_priv, u32 pch_iir)
>>> =A0=A0=A0=A0u32 ddi_hotplug_trigger, tc_hotplug_trigger;
>>> =A0=A0=A0=A0u32 pin_mask =3D 0, long_mask =3D 0;
>>>
>>> -=A0=A0=A0 if (HAS_PCH_TGP(dev_priv)) {
>>> +=A0=A0=A0 if (IS_ALDERLAKE_S(dev_priv)) {
>>> +=A0=A0=A0=A0=A0=A0=A0 ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_A=
DLS;
>>> +=A0=A0=A0=A0=A0=A0=A0 tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>>> +=A0=A0=A0 } else if (HAS_PCH_TGP(dev_priv)) {
>>> =A0=A0=A0=A0=A0=A0=A0 ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TG=
P;
>>> =A0=A0=A0=A0=A0=A0=A0 tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
>>> =A0=A0=A0=A0} else if (HAS_PCH_JSP(dev_priv)) {
>>> @@ -3252,6 +3256,12 @@ static void jsp_hpd_irq_setup(struct drm_i915_pr=
ivate *dev_priv)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 TGP_DDI_HPD_ENABLE_MASK, 0);
>>> }
>>>
>>> +static void adls_hpd_irq_setup(struct drm_i915_private *dev_priv)
>>> +{
>>> +=A0=A0=A0 icp_hpd_irq_setup(dev_priv,
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ADLS_DDI_HPD_ENABLE_MASK, ICP_=
TC_HPD_ENABLE_MASK);
>>> +}
>>> +
>>> static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>> {
>>> =A0=A0=A0=A0u32 hotplug;
>>> @@ -4162,7 +4172,9 @@ void intel_irq_init(struct drm_i915_private *dev_=
priv)
>>> =A0=A0=A0=A0=A0=A0=A0 if (I915_HAS_HOTPLUG(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_priv->display.hpd_irq_setup =3D i=
915_hpd_irq_setup;
>>> =A0=A0=A0=A0} else {
>>> -=A0=A0=A0=A0=A0=A0=A0 if (HAS_PCH_JSP(dev_priv))
>>> +=A0=A0=A0=A0=A0=A0=A0 if (IS_ALDERLAKE_S(dev_priv))
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_priv->display.hpd_irq_setup =3D =
adls_hpd_irq_setup;
>>> +=A0=A0=A0=A0=A0=A0=A0 else if (HAS_PCH_JSP(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_priv->display.hpd_irq_setup =3D j=
sp_hpd_irq_setup;
>>> =A0=A0=A0=A0=A0=A0=A0 else if (HAS_PCH_MCC(dev_priv))
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_priv->display.hpd_irq_setup =3D m=
cc_hpd_irq_setup;
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
>>> index 83ddea1cd174..f6b844ca7a9f 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -8343,6 +8343,7 @@ enum {
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 SDE_TC_HOT=
PLUG_ICP(PORT_TC3) | \
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 SDE_TC_HOT=
PLUG_ICP(PORT_TC2) | \
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 SDE_TC_HOT=
PLUG_ICP(PORT_TC1))
>>> +#define SDE_DDI_MASK_ADLS=A0=A0=A0=A0=A0=A0=A0=A0 SDE_DDI_HOTPLUG_ICP(=
PORT_A)
>>>
>>> #define SDEISR=A0 _MMIO(0xc4000)
>>> #define SDEIMR=A0 _MMIO(0xc4004)
>>> @@ -8438,6 +8439,8 @@ enum {
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ICP_TC_HPD=
_ENABLE(PORT_TC5) | \
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ICP_TC_HPD=
_ENABLE_MASK)
>>>
>>> +#define ADLS_DDI_HPD_ENABLE_MASK=A0=A0=A0=A0 SHOTPLUG_CTL_DDI_HPD_ENAB=
LE(PORT_A)
>>> +
>>> #define _PCH_DPLL_A=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0xc6014
>>> #define _PCH_DPLL_B=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0xc6018
>>> #define PCH_DPLL(pll) _MMIO((pll) =3D=3D 0 ? _PCH_DPLL_A : _PCH_DPLL_B)
>>> --=A0
>>> 2.27.0
>>>
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
