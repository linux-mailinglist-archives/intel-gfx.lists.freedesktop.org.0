Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86E93E57EF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 12:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B454F897E4;
	Tue, 10 Aug 2021 10:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD380897E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 10:04:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="300459400"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="300459400"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 03:04:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="445071373"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2021 03:04:34 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 10 Aug 2021 03:04:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 03:04:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 03:04:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPsMtp+Vg8VXrLvkrjoKlvPHOXrkd0/F+iCr6kX0tIY3NT3up9v38ofnjIr1pEbNKIVvab8Nbt4Jkz2fpGYuhKAh1woqTu+CEx/ahRSlfZ7MhvwAt9qsmHc7lY1c2astrSboarVOPE+ZUTuLn0ZU/Gw5wgOrNysfouD/zzUmhmaBqE4h4lA6NJaStfbgyogvz72FWpeW+GJ//nLsUoL/acV/MvFKl3lE7BKnSOTHrSJUHP+R87faZGkNFR0h6D07F+BdLSlhc+7x0xGtJ3ZYTu/HXYqPApE3nogYQ/LbM/kYS+bmwNXrKTJtf0Qn5spnPlwPO1V8thCPoMp+gLmIQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tX9wE+tBtrNh9E5HOhIUQ3KD0PNUzpbiPBuYeQJHydk=;
 b=J7MfVzeNWMEW7gBCO11Du7FVwD+q0K1JSb/4HevbhSUMICviUYqG5+c73+/UG582FD27jyTGOmJJJHlt41KnwcgpN/j+Z/ZRR7emjvPuRSiA4zrPl7+VE4kyyC5qEBdoJbhknZxhsIFkrIUnXwID6RptBlKAKapmx+fP0B5W1EijyvP94qedMrbRy3fIzUx1nyezJZgdnAM20O7E8RWPYlQf2H7JtySBv6+SVXJ6eJqf78liGEp8/tb8Ew9LaCYjtNWPXt0yoNgzEcCalQ05Bc+H16GoyTJMRLB7bVJj4FHWq+IZRkkhkAAYrfMpzrZ2WsyJzGPcE9YxeI7ZnGJvvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tX9wE+tBtrNh9E5HOhIUQ3KD0PNUzpbiPBuYeQJHydk=;
 b=vEAd3gpPCRvmqk8jkFkcByghL2atUu6mMDaTRwX4++HUOKwjQ4eXVF64VVEJ+OeAl0mFKFZ0uxWOklGUIk58hL1wakYrXcm0fV3mIJCrpaVH2e1bpCcKWafyc5rkdjClCxOCN+fGDY+hMCVlUhpCJGIWh7kieO4AMomWjSdunlM=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5571.namprd11.prod.outlook.com (2603:10b6:5:35f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 10:04:31 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%7]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 10:04:31 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [V3 2/7] drm/i915/jsl: program DSI panel GPIOs
Thread-Index: AQHXjcqS5oE38XhnwkGEJib1iMJZq6tseoqQ
Date: Tue, 10 Aug 2021 10:04:31 +0000
Message-ID: <CO6PR11MB56510587C4FB8AE1664A5F25A3F79@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
 <20210723070548.29315-3-shawn.c.lee@intel.com> <87pmulodc0.fsf@intel.com>
In-Reply-To: <87pmulodc0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9001ec2a-0508-4a17-8331-08d95be63f67
x-ms-traffictypediagnostic: CO6PR11MB5571:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5571DA9E3E6C06059D50E0E1A3F79@CO6PR11MB5571.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XLRX5RpYYE2aFvdWaqgfvEN/ZMBE1OM8cWlagS+qTInpk1hHh+ajJiCk6C5xHP6dVAj9e7tyX1+5yzr88wuwm+5yOoPoZtook/ipf6aSbfOaDCk02A9N81n9AtKA5T/3VAmfttBzF5i2rushc58proCuO24fcFopN0gbPkMife+VW463CJbHi7FwZD18df162WVoScHCk5IkSI5Udj0koqWidEFGLwFRRcKR/VOcF5YJJnlHMOb7TkDRk1ZapRsAkp1j8Ve7AG9Sy4x2IGGBzn7J+J1e0J80oowXKj/jAdyfIwkWVuRvlZYHBPAOePjYiW8Tn5z5a/4JUli58k0tXlROt6ODCxZo7tyheswRjdIbyvlJLa/gUJPjMYs78mPNmxNiUVtwkjxrEgXmkJr6DjGbMbPm/PU60ywv0leOqxOvxNvUo966MY+6m9vsmGIeY7Rb9fMQdHqgVlOhOImkgoY/SP16EYVQfNoO4KBHkBBXwC7egF4ovwaT+QyICBX1fJ1UYy6CxrAOdMnIQf+hkoW57LaOvTLFu6z9kOejgRkMprcba07dteDdN4/owNSYhV1TPZnW6sJbfH0XpurkGnZesTNujLqCV+fBwRubydffi6mh+6z5UWkx8eNlV0tW9xgxLcyxtQs7FpBv4SycGt36OStIGyZ0UyULiQSI9f7iEWqVYcsHscuJDQ3/Ls0NhIEDgg0cd1+v80xU2BpesA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(39860400002)(396003)(346002)(136003)(86362001)(2906002)(33656002)(38070700005)(38100700002)(122000001)(7696005)(6506007)(26005)(83380400001)(52536014)(4326008)(54906003)(186003)(66446008)(8676002)(478600001)(316002)(8796002)(76116006)(8936002)(5660300002)(966005)(66476007)(66556008)(55236004)(71200400001)(64756008)(55016002)(110136005)(66946007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zm30TUaVZCtGJMPvQbXCDHVlZzix0J1zEnHRr/9gHnHaK+L8mzrpXrtdPeQI?=
 =?us-ascii?Q?J8pGq2y1T6QXusQ7uDKXuLQM7U0n4bpbMYod70Zlm0bnnrc1BF/uz465Jrnn?=
 =?us-ascii?Q?6+PKeM+uUBJ0l87f7ApcdsyZIomtNQb0IWF+IE6th8/xapTJgY2BBQ4FKgKZ?=
 =?us-ascii?Q?UnHQwo1jXV/cfOCAqsgjWQDnGhT+Z/v1ZzDgZUqQskuBpo9B7sMbkHORD+el?=
 =?us-ascii?Q?z2zQ9vQzQMvZ2TzJCoBZ/b9p5FMVmOakNHWv2bT9fX/9f58fokh4Gi7aC4T3?=
 =?us-ascii?Q?jSErW+dgSMb0TE7w7R0QJzH/g5dwDwA6FxLm+I9ThW9GEtrH9zy+nmUoLoyX?=
 =?us-ascii?Q?i/mwyEYFtSpYU3IYNlq0LHrMZMBVwoojkg3wG3vmPKTfUpTcBnORJELT5QPL?=
 =?us-ascii?Q?rfmkSweZs09yJ+rLISuxZRmLiLwaixhN7gv6OPyFqNZJy10eV5VOzVZbWlXK?=
 =?us-ascii?Q?ae2xCYouqZVCAvf9p4p6dhNK6F4CEe2PypXjSuilV9UVKVzBkqQJObogsGaf?=
 =?us-ascii?Q?Eb7oLxg2/2uJSIoRywBC3VtUCq5kyMhhneocwfD7Z6Ceqk0IEe2QWyFvNmz9?=
 =?us-ascii?Q?8KlHqQdrVl7qz/jR6zhNzaiSY0Gc3fwed+QtGoY9Etyh3zNm03eM1qTqF9sX?=
 =?us-ascii?Q?LY0X2v8cALw1cyxRdVZ7/VZNop4eN7AX19MvPFLYDSzj1lEfBbdYCKsM60d0?=
 =?us-ascii?Q?GlH1IZai79tqTfoOBBZcKlOygyLy6HdWuTVODTvOlQPi5zKJnTI1pc9W745m?=
 =?us-ascii?Q?lYrqeMXn8gSLP/1bxSQRV+CH7dEf62GUy2f9jECYFIYTZtK0vqoSZcAUXBBI?=
 =?us-ascii?Q?iKCM916CA6PtwvDvD1d+c+JaoUezDOrwCRPvaZ4sd8r6To/TShBBBw5jQAZi?=
 =?us-ascii?Q?lTJWHZJFamLTYk3hn6NNkXT+g+3RFafx24brRTvUYn5kbnrQ/CxK7cUR7q1z?=
 =?us-ascii?Q?UwBqq5vwwonRQX17oealIx+dhJXRH7zGVtqOhfPhv12i986pUd1I5+CK2NFu?=
 =?us-ascii?Q?zQ3x2AU2QRhQBPUPqHujB60qIFoa2dsREYF/zQGU9HG/EyqI8iymZpQWDZnz?=
 =?us-ascii?Q?gss94+ANR+PiMAE8VGjkfg07RRrqtKOpUT3K2CVH4Qsl7IN8RNwbKmbVH4yr?=
 =?us-ascii?Q?kSLeHeVfjK4T72GiozXrtnMYtT9qBxeAeMMk4hUF2uuLaqJb8d5NOY53O4Xc?=
 =?us-ascii?Q?DrOQTm6jBDYcoRddOWP9HQluzQpp3mDH9uNoTXWRDxB7V4ig9QuBz3yi1jRv?=
 =?us-ascii?Q?Rtf6O3shPVLEg1JHI3dcijQcvOvFxx8KOwyLZk4RxodjLQzdZHVOvDuAoPOz?=
 =?us-ascii?Q?omp2+XQq+zgi9x6vUJ1ZrMow?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9001ec2a-0508-4a17-8331-08d95be63f67
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 10:04:31.2874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rckj5LkRIKPVD4CxSSz5r1Ogf9+jke9E3fCxEJ4MYQ7qOQvy+/5OY+wWq48i1SIHT61c9o+dOypGqCvaOFXSQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5571
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [V3 2/7] drm/i915/jsl: program DSI panel GPIOs
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
Reply-To: "20210723070548.29315-3-shawn.c.lee@intel.com"
 <20210723070548.29315-3-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, 10 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Fri, 23 Jul 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> DSI driver should have its own implementation to toggle gpio pins=20
>> based on GPIO info coming from VBT sequences.
>
>Why?
>

Without this change, we are not able to control gpio signal output to
meet MIPI panel's requirement for power on/off sequence.

>>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 44 +++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_reg.h              | 10 +++++
>>  2 files changed, 53 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c=20
>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> index cc93e045a425..dd03e5629ba6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -43,6 +43,7 @@
>>  #include "intel_display_types.h"
>>  #include "intel_dsi.h"
>>  #include "intel_sideband.h"
>> +#include "intel_de.h"
>> =20
>>  #define MIPI_TRANSFER_MODE_SHIFT	0
>>  #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
>> @@ -354,7 +355,48 @@ static void bxt_exec_gpio(struct drm_i915_private=20
>> *dev_priv,  static void icl_exec_gpio(struct drm_i915_private *dev_priv,
>>  			  u8 gpio_source, u8 gpio_index, bool value)  {
>> -	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
>> +	u32 val;
>> +
>> +	switch (gpio_index) {
>> +	case ICL_GPIO_L_VDDEN_1:
>> +		val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>> +		if (value)
>> +			val |=3D PWR_STATE_TARGET;
>> +		else
>> +			val &=3D ~PWR_STATE_TARGET;
>> +		intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>
>All the PPS access should be in intel_pps.[ch] and protected with the pps =
mutex.
>

OK! We will move icl_exec_gpio() into intel_pps.c and use pps mutex to prot=
ect it.

>> +		break;
>> +	case ICL_GPIO_L_BKLTEN_1:
>> +		val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>> +		if (value)
>> +			val |=3D BACKLIGHT_ENABLE;
>> +		else
>> +			val &=3D ~BACKLIGHT_ENABLE;
>> +		intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>> +		break;
>> +	case ICL_GPIO_DDPA_CTRLCLK_1:
>> +		val =3D intel_de_read(dev_priv, GPIO(1));
>> +		if (value)
>> +			val |=3D GPIO_CLOCK_VAL_OUT;
>> +		else
>> +			val &=3D ~GPIO_CLOCK_VAL_OUT;
>> +		val |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_VAL_MA=
SK;
>> +		intel_de_write(dev_priv, GPIO(1), val);
>> +		break;
>> +	case ICL_GPIO_DDPA_CTRLDATA_1:
>> +		val =3D intel_de_read(dev_priv, GPIO(1));
>> +		if (value)
>> +			val |=3D GPIO_DATA_VAL_OUT;
>> +		else
>> +			val &=3D ~GPIO_DATA_VAL_OUT;
>> +		val |=3D GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT | GPIO_DATA_VAL_MASK;
>> +		intel_de_write(dev_priv, GPIO(1), val);
>> +		break;
>> +	default:
>> +		/* TODO: Add support for remaining GPIOs */
>> +		DRM_ERROR("Invalid GPIO number (%d) from VBT\n", gpio_index);
>> +		break;
>> +	}
>>  }
>> =20
>>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8=20
>> *data) diff --git a/drivers/gpu/drm/i915/i915_reg.h=20
>> b/drivers/gpu/drm/i915/i915_reg.h index 943fe485c662..b725234e0e9c=20
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -5143,6 +5143,16 @@ enum {
>>  #define _PP_STATUS			0x61200
>>  #define PP_STATUS(pps_idx)		_MMIO_PPS(pps_idx, _PP_STATUS)
>>  #define   PP_ON				REG_BIT(31)
>> +
>> +#define _PP_CONTROL_1			0xc7204
>> +#define _PP_CONTROL_2			0xc7304
>> +#define ICP_PP_CONTROL(x)		_MMIO(((x) =3D=3D 1) ? _PP_CONTROL_1 : \
>> +					      _PP_CONTROL_2)
>> +#define  POWER_CYCLE_DELAY_MASK		REG_GENMASK(8, 4)
>> +#define  VDD_OVERRIDE_FORCE		REG_BIT(3)
>> +#define  BACKLIGHT_ENABLE		REG_BIT(2)
>> +#define  PWR_DOWN_ON_RESET		REG_BIT(1)
>> +#define  PWR_STATE_TARGET		REG_BIT(0)
>
>These are all duplicate defines for existing PP_CONTROL() registers and ma=
cros.

I found this patch on drm-tip branch and removed PP_CONTRL() defines.
https://patchwork.freedesktop.org/patch/291095/

Best regards,
Shawn

>
>>  /*
>>   * Indicates that all dependencies of the panel are on:
>>   *
>
>--
>Jani Nikula, Intel Open Source Graphics Center
>
