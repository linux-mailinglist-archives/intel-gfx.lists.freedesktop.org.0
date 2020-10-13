Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FB628C5BA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 02:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA0CC6E868;
	Tue, 13 Oct 2020 00:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D4E6E868
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 00:29:35 +0000 (UTC)
IronPort-SDR: bqjGHek5Pq1UxFiUODTZw3knQbjLkX+IPm8hWhsZNC+TXv1335+8t7agZbMW7pRq9IHz8DxOK4
 E/KdtawWl9+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145142209"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="145142209"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 17:29:35 -0700
IronPort-SDR: MRPz1pXIuxuuHbvdySf9oxXj/kU8Ev1Apc2Nm8MTzX9y6+NhMKDIYptc8yLtdRF9BLcj93w4JY
 tg+F9nb+m8Tg==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="318113817"
Received: from tldavis1-desk2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.101.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 17:29:34 -0700
Date: Mon, 12 Oct 2020 17:29:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201013002933.exvxlqt2g5eljjig@ldmartin-desk1>
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
 <20201012212959.871513-8-lucas.demarchi@intel.com>
 <fb68c55e-5b1d-1928-2295-8ddcd7b77660@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb68c55e-5b1d-1928-2295-8ddcd7b77660@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 07/15] drm/i915/dg1: add hpd interrupt
 handling
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

On Mon, Oct 12, 2020 at 03:51:29PM -0700, Aditya Swarup wrote:
>On 10/12/20 2:29 PM, Lucas De Marchi wrote:
>> DG1 has one more combo phy port, no TC and all irq handling goes through
>> SDE, like for MCC.
>>
>> v2: Also change intel_hpd_pin_default() to include DG1 mapping
>> v3: Rebase on hpd refactor
>>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_irq.c | 58 +++++++++++++++++++++++++++++----
>>  drivers/gpu/drm/i915/i915_reg.h |  8 +++++
>>  2 files changed, 59 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
>> index b753c77c9a77..0d6e4894b505 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -152,6 +152,13 @@ static const u32 hpd_icp[HPD_NUM_PINS] =3D {
>>  	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
>>  };
>>
>> +static const u32 hpd_dg1_sde[HPD_NUM_PINS] =3D {
>> +	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PHY_A),
>> +	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PHY_B),
>> +	[HPD_PORT_D] =3D SDE_DDI_HOTPLUG_ICP(PHY_C),
>> +	[HPD_PORT_E] =3D SDE_DDI_HOTPLUG_ICP(PHY_D),
>> +};
>> +
>>  static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>>  {
>>  	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
>> @@ -176,11 +183,14 @@ static void intel_hpd_init_pins(struct drm_i915_pr=
ivate *dev_priv)
>>  	else
>>  		hpd->hpd =3D hpd_ilk;
>>
>> -	if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
>> +	if ((INTEL_PCH_TYPE(dev_priv) < PCH_DG1) &&
>> +	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>>  		return;
>>
>> -	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
>> -	    HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>> +	if (HAS_PCH_DG1(dev_priv))
>> +		hpd->pch_hpd =3D hpd_dg1_sde;
>> +	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
>> +		 HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>>  		hpd->pch_hpd =3D hpd_icp;
>>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>>  		hpd->pch_hpd =3D hpd_spt;
>> @@ -1079,6 +1089,22 @@ static bool icp_ddi_port_hotplug_long_detect(enum=
 hpd_pin pin, u32 val)
>>  	}
>>  }
>>
>> +static bool dg1_ddi_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
>> +{
>> +	switch (pin) {
>> +	case HPD_PORT_A:
>> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_A);
>> +	case HPD_PORT_B:
>> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_B);
>> +	case HPD_PORT_D:
>> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_C);
>> +	case HPD_PORT_E:
>> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_D);
>> +	default:
>> +		return false;
>> +	}
>> +}
>> +
>>  static bool icp_tc_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
>>  {
>>  	switch (pin) {
>> @@ -1863,12 +1889,19 @@ static void icp_irq_handler(struct drm_i915_priv=
ate *dev_priv, u32 pch_iir)
>>  {
>>  	u32 ddi_hotplug_trigger, tc_hotplug_trigger;
>>  	u32 pin_mask =3D 0, long_mask =3D 0;
>> +	bool (*ddi_port_hotplug_long_detect)(enum hpd_pin pin, u32 val);
>>
>> -	if (HAS_PCH_TGP(dev_priv)) {
>> +	if (HAS_PCH_DG1(dev_priv)) {
>> +		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_DG1;
>> +		ddi_port_hotplug_long_detect =3D dg1_ddi_port_hotplug_long_detect;
>> +		tc_hotplug_trigger =3D 0;
>> +	} else if (HAS_PCH_TGP(dev_priv)) {
>>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>> +		ddi_port_hotplug_long_detect =3D icp_ddi_port_hotplug_long_detect;
>>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
>>  	} else if (HAS_PCH_JSP(dev_priv)) {
>>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>> +		ddi_port_hotplug_long_detect =3D icp_ddi_port_hotplug_long_detect;
>>  		tc_hotplug_trigger =3D 0;
>>  	} else if (HAS_PCH_MCC(dev_priv)) {
>>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>Missing ddi_port_hotplug_long_detect assignment for HAS_PCH_MCC.

humn... indeed, thanks for spotting that.

>
>Just a suggestion: We can by default assign ddi_port_hotplug_long_detect w=
ith icp_ddi_port_hotplug_long_detect
>outside the if else branching(during declaration).
>Assign the func ptr within platform checks only if it is different from ic=
p like in the case for dg1.

either that or I could just fork a new dg1_irq_handler() function
so we don't need the function pointer at all.

Ville, since you removed the previous function pointers when refactoring
the hotplug part, do you have a preference here?

Lucas De Marchi

>
>Aditya
>> @@ -1879,6 +1912,7 @@ static void icp_irq_handler(struct drm_i915_privat=
e *dev_priv, u32 pch_iir)
>>  			 INTEL_PCH_TYPE(dev_priv));
>>
>>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>> +		ddi_port_hotplug_long_detect =3D icp_ddi_port_hotplug_long_detect;
>>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>>  	}
>>
>> @@ -1891,7 +1925,7 @@ static void icp_irq_handler(struct drm_i915_privat=
e *dev_priv, u32 pch_iir)
>>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>  				   ddi_hotplug_trigger, dig_hotplug_reg,
>>  				   dev_priv->hotplug.pch_hpd,
>> -				   icp_ddi_port_hotplug_long_detect);
>> +				   ddi_port_hotplug_long_detect);
>>  	}
>>
>>  	if (tc_hotplug_trigger) {
>> @@ -3252,6 +3286,12 @@ static void jsp_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
>>  			  TGP_DDI_HPD_ENABLE_MASK, 0);
>>  }
>>
>> +static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> +{
>> +	icp_hpd_irq_setup(dev_priv,
>> +			  DG1_DDI_HPD_ENABLE_MASK, 0);
>> +}
>> +
>>  static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>  {
>>  	u32 hotplug;
>> @@ -3645,7 +3685,9 @@ static void icp_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>>  	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
>>  	I915_WRITE(SDEIMR, ~mask);
>>
>> -	if (HAS_PCH_TGP(dev_priv)) {
>> +	if (HAS_PCH_DG1(dev_priv))
>> +		icp_ddi_hpd_detection_setup(dev_priv, DG1_DDI_HPD_ENABLE_MASK);
>> +	else if (HAS_PCH_TGP(dev_priv)) {
>>  		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
>>  		icp_tc_hpd_detection_setup(dev_priv, TGP_TC_HPD_ENABLE_MASK);
>>  	} else if (HAS_PCH_JSP(dev_priv)) {
>> @@ -4162,7 +4204,9 @@ void intel_irq_init(struct drm_i915_private *dev_p=
riv)
>>  		if (I915_HAS_HOTPLUG(dev_priv))
>>  			dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
>>  	} else {
>> -		if (HAS_PCH_JSP(dev_priv))
>> +		if (HAS_PCH_DG1(dev_priv))
>> +			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
>> +		else if (HAS_PCH_JSP(dev_priv))
>>  			dev_priv->display.hpd_irq_setup =3D jsp_hpd_irq_setup;
>>  		else if (HAS_PCH_MCC(dev_priv))
>>  			dev_priv->display.hpd_irq_setup =3D mcc_hpd_irq_setup;
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 49945e33f573..e7f1aac553d0 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -8230,6 +8230,10 @@ enum {
>>  					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
>>  					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
>>  					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
>> +#define SDE_DDI_MASK_DG1		(SDE_DDI_HOTPLUG_ICP(PORT_D) | \
>> +					 SDE_DDI_HOTPLUG_ICP(PORT_C) | \
>> +					 SDE_DDI_HOTPLUG_ICP(PORT_B) | \
>> +					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>>
>>  #define SDEISR  _MMIO(0xc4000)
>>  #define SDEIMR  _MMIO(0xc4004)
>> @@ -8429,6 +8433,10 @@ enum {
>>  #define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC6) | \
>>  					 ICP_TC_HPD_ENABLE(PORT_TC5) | \
>>  					 ICP_TC_HPD_ENABLE_MASK)
>> +#define DG1_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_D) |=
 \
>> +					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_C) | \
>> +					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
>> +					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>>
>>  #define _PCH_DPLL_A              0xc6014
>>  #define _PCH_DPLL_B              0xc6018
>>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
