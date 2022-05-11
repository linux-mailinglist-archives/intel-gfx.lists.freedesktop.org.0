Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C3A523F82
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 23:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E1610E5F4;
	Wed, 11 May 2022 21:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD6F10E3E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 21:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652305079; x=1683841079;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=X4Iqecx3SDVjBESzQxLRZxsfPDbhxVt1KpuKaIPRYeM=;
 b=Bj4WBHtJ+Hc8CyO/8DwB6bjZi8zicYmbIgpBH9fyE9x3MwVhO3yXzlAL
 26qJFnGfcGy7DJxtwznsJoP4OHnb44HbgniMJ6boT9oz+8dmsYQYqqYfo
 mxAjk1M1L6G7NqtrCxdsuyfjcQE8+k0vOr0vg28Zvm9GENMXFGDbS4/cB
 hKK3vBj/yfRhibs3USc82NvHJwKmEYgPyCSYEd4mwndIW+Akgi8/cmlS1
 eU9WEaakiXURLdErPJ6Ppv8zINirh76Y0ZGfj2m9g+fLR1fkfF7jS1Dzp
 W1HXrIAVH8k5aN2+qlUWPbMCJJRxkhEBnFdxYbSRYy4phYmzVvRuQblOQ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="267407532"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="267407532"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 14:37:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="566369372"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 11 May 2022 14:37:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 14:37:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 14:37:57 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.027;
 Wed, 11 May 2022 14:37:57 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/d12+: Disable DMC firmware flip
 queue handlers
Thread-Index: AQHYZWwFXjR+PAMf5ka1VWBNJY9qtK0aMQuw
Date: Wed, 11 May 2022 21:37:57 +0000
Message-ID: <a9991fab36db45cf9f228859ad7e1570@intel.com>
References: <20220511191911.2133928-1-imre.deak@intel.com>
In-Reply-To: <20220511191911.2133928-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/d12+: Disable DMC firmware flip
 queue handlers
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, May 11, 2022 12:19 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/d12+: Disable DMC firmware flip que=
ue
> handlers
>=20
> Based on a bspec update the DMC firmware's flip queue handling events
> need to be disabled before enabling DC5/6. i915 doesn't use the flip queu=
e
> feature atm, so disable it already after loading the firmware.
> This removes some overhead of the event handler which runs at a 1 kHz
> frequency.
>=20
> Bspec: 49193, 72486, 72487
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Thanks for the patch.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 89 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 74 +++++++++++++++
>  2 files changed, 162 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 257cf662f9f4b..37e58b056cfb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -244,9 +244,14 @@ struct stepping_info {
>  	char substepping;
>  };
>=20
> +static bool intel_dmc_has_fw_payload(struct drm_i915_private *i915, int
> +dmc_id) {
> +	return i915->dmc.dmc_info[dmc_id].payload;
> +}
> +
>  bool intel_dmc_has_payload(struct drm_i915_private *i915)  {
> -	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
> +	return intel_dmc_has_fw_payload(i915, DMC_FW_MAIN);
>  }
>=20
>  static const struct stepping_info *
> @@ -268,6 +273,81 @@ static void gen9_set_dc_state_debugmask(struct
> drm_i915_private *dev_priv)
>  	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);  }
>=20
> +static void
> +disable_simple_flip_queue_event(struct drm_i915_private *i915,
> +				i915_reg_t ctl_reg, i915_reg_t htp_reg) {
> +	u32 event_ctl;
> +	u32 event_htp;
> +
> +	event_ctl =3D intel_de_read(i915, ctl_reg);
> +	event_htp =3D intel_de_read(i915, htp_reg);
> +	if (event_ctl !=3D (DMC_EVT_CTL_ENABLE |
> +			  DMC_EVT_CTL_RECURRING |
> +			  REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +					 DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +			  REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +
> DMC_EVT_CTL_EVENT_ID_CLK_MSEC)) ||
> +	    !event_htp) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Unexpected DMC event configuration (control
> %08x htp %08x)\n",
> +			    event_ctl, event_htp);
> +		return;
> +	}
> +
> +	intel_de_write(i915, ctl_reg,
> +		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				      DMC_EVT_CTL_EVENT_ID_FALSE));
> +	intel_de_write(i915, htp_reg, 0);
> +}
> +
> +static bool
> +get_simple_flip_queue_event_regs(struct drm_i915_private *i915, int
> dmc_id,
> +				 i915_reg_t *ctl_reg, i915_reg_t *htp_reg) {
> +	switch (dmc_id) {
> +	case DMC_FW_MAIN:
> +		if (DISPLAY_VER(i915) =3D=3D 12) {
> +			*ctl_reg =3D DMC_EVT_CTL(dmc_id, 3);
> +			*htp_reg =3D DMC_EVT_HTP(dmc_id, 3);
> +
> +			return true;
> +		}
> +		break;
> +	default:
> +		if (IS_DG2(i915)) {
> +			*ctl_reg =3D DMC_EVT_CTL(dmc_id, 2);
> +			*htp_reg =3D DMC_EVT_HTP(dmc_id, 2);
> +
> +			return true;
> +		}
> +		break;
> +	}
> +
> +	return false;
> +}
> +
> +static void
> +disable_all_simple_flip_queue_events(struct drm_i915_private *i915) {
> +	int dmc_id;
> +
> +	for (dmc_id =3D 0; dmc_id < DMC_FW_MAX; dmc_id++) {
> +		i915_reg_t ctl_reg;
> +		i915_reg_t htp_reg;
> +
> +		if (!intel_dmc_has_fw_payload(i915, dmc_id))
> +			continue;
> +
> +		if (!get_simple_flip_queue_event_regs(i915, dmc_id,
> &ctl_reg, &htp_reg))
> +			continue;
> +
> +		disable_simple_flip_queue_event(i915, ctl_reg, htp_reg);
> +	}
> +}
> +
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register=
.
>   * @dev_priv: i915 drm device.
> @@ -308,6 +388,13 @@ void intel_dmc_load_program(struct
> drm_i915_private *dev_priv)
>  	dev_priv->dmc.dc_state =3D 0;
>=20
>  	gen9_set_dc_state_debugmask(dev_priv);
> +
> +	/*
> +	 * Flip queue events need to be disabled before enabling DC5/6.
> +	 * i915 doesn't use the flip queue feature, so disable it already
> +	 * here.
> +	 */
> +	disable_all_simple_flip_queue_events(dev_priv);
>  }
>=20
>  void assert_dmc_loaded(struct drm_i915_private *i915) diff --git
> a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index d65e698832eb5..d01861b7db3c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -10,6 +10,80 @@
>=20
>  #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
>  #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> +
> +#define _PIPEDMC_EVT_HTP_0_A		0x5f004
> +#define _PIPEDMC_EVT_HTP_0_B		0x5f404
> +#define _PIPEDMC_EVT_HTP_0_C		0x5f804
> +#define _PIPEDMC_EVT_HTP_0_D		0x5fc04
> +#define _MAINDMC_EVT_HTP_0		0x8f004
> +
> +#define _PIPEDMC_EVT_HTP_1_A		0x5f008
> +#define _PIPEDMC_EVT_HTP_1_B		0x5f408
> +#define _PIPEDMC_EVT_HTP_1_C		0x5f808
> +#define _PIPEDMC_EVT_HTP_1_D		0x5fc08
> +#define _MAINDMC_EVT_HTP_1		0x8f008
> +
> +#define _DMC_EVT_HTP_0(dmc_id)		_PICK(dmc_id, \
> +					      _MAINDMC_EVT_HTP_0, \
> +					      _PIPEDMC_EVT_HTP_0_A, \
> +					      _PIPEDMC_EVT_HTP_0_B, \
> +					      _PIPEDMC_EVT_HTP_0_C, \
> +					      _PIPEDMC_EVT_HTP_0_D)
> +
> +#define _DMC_EVT_HTP_1(dmc_id)		_PICK(dmc_id, \
> +					      _MAINDMC_EVT_HTP_1, \
> +					      _PIPEDMC_EVT_HTP_1_A, \
> +					      _PIPEDMC_EVT_HTP_1_B, \
> +					      _PIPEDMC_EVT_HTP_1_C, \
> +					      _PIPEDMC_EVT_HTP_1_D)
> +
> +#define DMC_EVT_HTP(dmc_id, handler)	_MMIO(_PICK_EVEN(handler,
> \
> +
> _DMC_EVT_HTP_0(dmc_id), \
> +
> _DMC_EVT_HTP_1(dmc_id)))
> +
> +#define _PIPEDMC_EVT_CTL_0_A		0x5f034
> +#define _PIPEDMC_EVT_CTL_0_B		0x5f434
> +#define _PIPEDMC_EVT_CTL_0_C		0x5f834
> +#define _PIPEDMC_EVT_CTL_0_D		0x5fc34
> +#define _MAINDMC_EVT_CTL_0		0x8f034
> +
> +#define _PIPEDMC_EVT_CTL_1_A		0x5f038
> +#define _PIPEDMC_EVT_CTL_1_B		0x5f438
> +#define _PIPEDMC_EVT_CTL_1_C		0x5f838
> +#define _PIPEDMC_EVT_CTL_1_D		0x5fc38
> +#define _MAINDMC_EVT_CTL_1		0x8f038
> +
> +#define _DMC_EVT_CTL_0(dmc_id)		_PICK(dmc_id, \
> +					      _MAINDMC_EVT_CTL_0, \
> +					      _PIPEDMC_EVT_CTL_0_A, \
> +					      _PIPEDMC_EVT_CTL_0_B, \
> +					      _PIPEDMC_EVT_CTL_0_C, \
> +					      _PIPEDMC_EVT_CTL_0_D)
> +
> +#define _DMC_EVT_CTL_1(dmc_id)		_PICK(dmc_id, \
> +					      _MAINDMC_EVT_CTL_1, \
> +					      _PIPEDMC_EVT_CTL_1_A, \
> +					      _PIPEDMC_EVT_CTL_1_B, \
> +					      _PIPEDMC_EVT_CTL_1_C, \
> +					      _PIPEDMC_EVT_CTL_1_D)
> +
> +#define DMC_EVT_CTL(dmc_id, handler)	_MMIO(_PICK_EVEN(handler,
> \
> +
> _DMC_EVT_CTL_0(dmc_id), \
> +
> _DMC_EVT_CTL_1(dmc_id)))
> +
> +#define DMC_EVT_CTL_ENABLE		REG_BIT(31)
> +#define DMC_EVT_CTL_RECURRING		REG_BIT(30)
> +#define DMC_EVT_CTL_TYPE_MASK		REG_GENMASK(17, 16)
> +#define DMC_EVT_CTL_TYPE_LEVEL_0	0
> +#define DMC_EVT_CTL_TYPE_LEVEL_1	1
> +#define DMC_EVT_CTL_TYPE_EDGE_1_0	2
> +#define DMC_EVT_CTL_TYPE_EDGE_0_1	3
> +
> +#define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
> +#define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> +/* An event handler scheduled to run at a 1 kHz frequency. */
> +#define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
> +
>  #define DMC_HTP_ADDR_SKL	0x00500034
>  #define DMC_SSP_BASE		_MMIO(0x8F074)
>  #define DMC_HTP_SKL		_MMIO(0x8F004)
> --
> 2.30.2

