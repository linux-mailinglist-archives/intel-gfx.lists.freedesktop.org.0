Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486DA3EA6D4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 16:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE706E418;
	Thu, 12 Aug 2021 14:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD9D6E418
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 14:52:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="237402091"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="237402091"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 07:52:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="485455709"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 12 Aug 2021 07:52:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 07:52:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 07:52:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 12 Aug 2021 07:52:24 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 12 Aug 2021 07:52:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERSeI6zJH7dJ0FRA7Rv6/NPigXCd/140NHUpKeaQajGdQJL1X/rVlLMIdwHdIqKN5PBhB5HdAdj/AbQC2c8GUBIYRxV1Kw1PUtMTP7Wo7gK999cnLteZYzVzzVgQ8okz8ezMWc5gjJhqlwReHpds8SpO2fHlJciLL9W1cx0wx3rnoOgXLWFylm74Z3ew8Fe4/R8T5eDpvIdOcg8ibfJNoYtEHEwFDsp43CJfHrsVoyAdRMeQXJtX/a7yHK5kr9Y6bmh+77LIqdz/HKSGkIhmyKO9XTc4kcmg7x5RNaptJsV08fTBDBmB2DTbiQb/xlQTrsTJrF8CZx7L4Y/wrauTHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez9aNVlBJZYpPm85aEOqeGfwkoK3YpuAmfPjkdx7czA=;
 b=A4qov5MH3y5wW8pDmGYhI5cJJU0gvw4sVWgUPuzYvFB/5FM4CGuK4kDvSPUgEZSeuLLt/zi1H2F8u/IR7HsAo8GLLcBUto+/OGNOlAkfq10TlQZ7FLuzf9VS47HaOHItJ9wIXYwjyzszNN3FVs1UGg2Ogzi1/T8REW8pczi7lTy8ato3JyhPmwB9oultSol+6ogRd8fZWCYd68OW7uh1Y5/lA4jxc056m1ZYoBMM/H+aHLfAn4AT4eXULkKME+ywlaX3G1HNGclqFz92IQI6urazmIbm90D2WQGi7vRkOwu5lg188kBUKhFU/kWsIUdRuQNb1JsYADeHWb5bQVL47A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez9aNVlBJZYpPm85aEOqeGfwkoK3YpuAmfPjkdx7czA=;
 b=TV/ysH6YZ+oB0uGob7rDQ947JBI5ZRD29Ga7uR5VdmD3ClF27p2EFmSkwOgHJhVTYC4DzpMv7ILm30sT5rBg50PszbWDbGQxzpXQae/aRKDRcKgwa/PFWJkmd4RRHo7xjaK3KB2bC0lsnml79Jxr2uxvGcZESZ8jHM8KdNKOdKI=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5613.namprd11.prod.outlook.com (2603:10b6:a03:3ab::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Thu, 12 Aug
 2021 14:52:15 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::dc76:1513:ec6f:b7e3]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::dc76:1513:ec6f:b7e3%9]) with mapi id 15.20.4415.018; Thu, 12 Aug 2021
 14:52:15 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [V3 2/7] drm/i915/jsl: program DSI panel GPIOs
Thread-Index: AQHXjcqS5oE38XhnwkGEJib1iMJZq6tseoqQgAEMVUCAANI68IABnJMw
Date: Thu, 12 Aug 2021 14:52:15 +0000
Message-ID: <SJ0PR11MB5662A6225BD98B5A4191B366A3F99@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
 <20210723070548.29315-3-shawn.c.lee@intel.com> <87pmulodc0.fsf@intel.com>
 <CO6PR11MB56510587C4FB8AE1664A5F25A3F79@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB5651DCACC804880C2A2B4538A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB565168C2F7A027870180CE48A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB565168C2F7A027870180CE48A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: eaad394b-bf16-423d-d742-08d95da0c668
x-ms-traffictypediagnostic: SJ0PR11MB5613:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB56132497EA172FB45AECEC83A3F99@SJ0PR11MB5613.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4s0zl7WGpsGUNW8GaUl6x41iK0/GuKxJfRkVgHqxaxTXb/bcc9wxRbsldIZaCTQLIo3HTGM8KMXXTq7tUq4jGqa5kpgyuC37i83DO9TZ4qiIkWPT1l9SsnLjzYln0NMeWb9eHPyj0/V2OgtKRp5opxD468xxBoxzcMG35RvzqLW+AlFEcJX4MzCSi0b6hhybcFflxtwJt5eseBmq/hqjVT4QGlBd9Gm0MsfOWrkqTTh0PlPIYAsyvEl8ufKKIxKjkxixI8m9IrYP/sGwsaJIY9gARBhWJULj3bbwABPqTo/CgrWWAVHE23TfjvBgmFIEWSJdRvW09IY3y3D9FaaE6RlYtdW8DXfOfq5oaf4o01mCC57OMQDe38Avhnrs2foTlCqoU7LCRXiZ4kjzJi8/XS0cLL/k1Si1nnMwOs0pWh6tjfvRiND6BZ3zzCKHWbQ0IlOJG8DTx5xMb3ni64h7PXkzIfY1b1Ee7VvJeMm/I5g1e4S1gmuJaKBi379OfAoFDr/XNtOn5rlrzlD7GiOiQYvkjOiXupG3WtDVneUB+P7P9CjUbwij7E/GIFmhaV0KIDmDWD1lpKdRtyBwkZkTeOJw9s7LaFksOn8wAP6Abui9IwQYxKoi1So4M9/PwpLNTGYuqkN7U8hcfJNUZB+gXiKj1Db1lKSFkCLWLcFbHngFMLXVcKTDsxyUTvbR3wBLmBWctyHr1qUJBr8qiHToKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(346002)(376002)(39860400002)(136003)(478600001)(33656002)(64756008)(66446008)(52536014)(66946007)(55016002)(66556008)(66476007)(76116006)(186003)(8796002)(38100700002)(38070700005)(8936002)(55236004)(316002)(122000001)(7696005)(5660300002)(71200400001)(8676002)(110136005)(26005)(6506007)(9686003)(86362001)(966005)(2906002)(54906003)(4326008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tkZ24xo2uS5z1OcK6DyPpfRJBUmM/FZ4me7SEG+tKgZ3aG4QxCdVH4g3Lmip?=
 =?us-ascii?Q?xD81aYoKbtZUcqYWXKIOp7enYGtGjx1xaxslV9r2saB6vaG0Aywl24gzFyYK?=
 =?us-ascii?Q?pJ4V9TiZLNXkSWKzIfaz+0UpdmrOJjICtH/tWq0ktBqCmKfeNhTof0Xf0BJ2?=
 =?us-ascii?Q?yJnKv6jT/yx8L3oOiwcoPXFIAyX58/sh5pYeCpJO4XeYqPK0OlkAI9REiPji?=
 =?us-ascii?Q?WT31Ji3RPeAiZ0vLm9j2PoIpreuQm4G5HyADkDhqEcbtbmjrvQ7nP0hTNRgp?=
 =?us-ascii?Q?HU9sJlkBYL2sieg5jo94lck9aMBese2JfAUqf0PyMEfgPZWrn5guS5FR1AVp?=
 =?us-ascii?Q?PVE7D+HPFQVGDF6AEFEauAmtdEyMHGvM6M4GdOEkK+9E1H6SvkbnSP5QMWho?=
 =?us-ascii?Q?Q+ASIque+9oxjLvIL5pRCdtPI/mDxqM4xRo+ioKLMArezuqAiPmo+yhCgp//?=
 =?us-ascii?Q?NPy/Q/8Ccs2GSA03pFhqi/H5Jc1Cado0btRD9D6CTtlYC2z0QUvbbE4/0nQr?=
 =?us-ascii?Q?7yynGkpIQTnJOc7ptnrEqAmSi8kScpgFvR1Z+fMt6oZHcF4vZoZpX6xyTZ9G?=
 =?us-ascii?Q?n6L1qtqqEODm9RGQWZoY7DxffwPLhDqnkaAMaX0BJ0h3r+9f9vZsPjhD6kYg?=
 =?us-ascii?Q?t+0OvbGNMmG1C/40oBv6ZThoezFr06JPndP4McBVGKgtevj7W2cm5ZzDf9gj?=
 =?us-ascii?Q?OcqGEHjoP5FVLQGzo4tmzEykmB8cVxsO1X6bvG/SndRuV9orE8w4fOMjjQMW?=
 =?us-ascii?Q?CeiM6PoBJhZ8UeNtirsmKtm6c8JdTSqGBVaCX1xUm/SqBRBKvxGdXsijgx9w?=
 =?us-ascii?Q?PU+GLMxxz+xskbzqZ263YTDfo5vIS5pEUDaBewznPbxwAoHpoXoFkPVWwKyu?=
 =?us-ascii?Q?pCYMt4aWmeRb5ndlVR7K1P0UTFaP9wrtOX9bw0megN4yJEpb6fkSnzZqfwSv?=
 =?us-ascii?Q?nnDYXPduuJjTjihaTM+EiNRKACLhooG0PSbQb31dtDvFuktmFaa9vVizAbzP?=
 =?us-ascii?Q?4/flmwAgnEYJuT8+he3Cs6dgYsapKNv5RWPslF7goBrusOlfD3j5vOdKRmqE?=
 =?us-ascii?Q?3LnRbhL1wqurxoGBrf4fL4CuOAYQcyV7q34JzbiCntmq7Bm79dLPKYYVZIwF?=
 =?us-ascii?Q?jOhfDdvQyCPKHY88UguTNHJuNYsDOSCG+VEjnYDjVhjqogcdWO/YqbWeDd8e?=
 =?us-ascii?Q?A1AlySxYLU9yehvA7xjs6BSrombu860iYGtETY06MzoCc2tqFym898VsT1VP?=
 =?us-ascii?Q?7NPnwdueuZqwo+7e+He7kv8R4UMa53KVFezZ+NAIMJoLnucY+lEt4HHkJ3UA?=
 =?us-ascii?Q?BJR/xOctaLvHOOYs6rUzY9m1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaad394b-bf16-423d-d742-08d95da0c668
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2021 14:52:15.3032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UCCIcTjsVe6UiDtN37mJY+0tv5SOOlMGAZFd7FPyU94M2RXN9KTwRbAj/PqRWh56bSAbUB3SHwi6FlQ374ch5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5613
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

On Thu, 12 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Wed, 11 Aug 2021, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Tue, 10 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>On Tue, 10 Aug 2021, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>>>> On Tue, 10 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>>>On Fri, 23 Jul 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>>>> DSI driver should have its own implementation to toggle gpio pins
>>>>>> based on GPIO info coming from VBT sequences.
>>>>>
>>>>>Why?
>>>>>
>>>>
>>>> Without this change, we are not able to control gpio signal output to
>>>> meet MIPI panel's requirement for power on/off sequence.
>>>>
>>>>>>
>>>>>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>>>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>>>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>>>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>>>>> Cc: William Tseng <william.tseng@intel.com>
>>>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>>>> ---
>>>>>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 44 +++++++++++++++++=
++-
>>>>>>  drivers/gpu/drm/i915/i915_reg.h              | 10 +++++
>>>>>>  2 files changed, 53 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>>> index cc93e045a425..dd03e5629ba6 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>>> @@ -43,6 +43,7 @@
>>>>>>  #include "intel_display_types.h"
>>>>>>  #include "intel_dsi.h"
>>>>>>  #include "intel_sideband.h"
>>>>>> +#include "intel_de.h"
>>>>>>
>>>>>>  #define MIPI_TRANSFER_MODE_SHIFT    0
>>>>>>  #define MIPI_VIRTUAL_CHANNEL_SHIFT  1
>>>>>> @@ -354,7 +355,48 @@ static void bxt_exec_gpio(struct drm_i915_priva=
te
>>>>>> *dev_priv,  static void icl_exec_gpio(struct drm_i915_private *dev_p=
riv,
>>>>>>                        u8 gpio_source, u8 gpio_index, bool value)  {
>>>>>> -    drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element executio=
n\n");
>>>>>> +    u32 val;
>>>>>> +
>>>>>> +    switch (gpio_index) {
>>>>>> +    case ICL_GPIO_L_VDDEN_1:
>>>>>> +            val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>>>>>> +            if (value)
>>>>>> +                    val |=3D PWR_STATE_TARGET;
>>>>>> +            else
>>>>>> +                    val &=3D ~PWR_STATE_TARGET;
>>>>>> +            intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>>>>>
>>>>>All the PPS access should be in intel_pps.[ch] and protected with the =
pps mutex.
>>>>>
>>>>
>>>> OK! We will move icl_exec_gpio() into intel_pps.c and use pps mutex to=
 protect it.
>>>>
>>>>>> +            break;
>>>>>> +    case ICL_GPIO_L_BKLTEN_1:
>>>>>> +            val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>>>>>> +            if (value)
>>>>>> +                    val |=3D BACKLIGHT_ENABLE;
>>>>>> +            else
>>>>>> +                    val &=3D ~BACKLIGHT_ENABLE;
>>>>>> +            intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>>>>>> +            break;
>>>>>> +    case ICL_GPIO_DDPA_CTRLCLK_1:
>>>>>> +            val =3D intel_de_read(dev_priv, GPIO(1));
>>>>>> +            if (value)
>>>>>> +                    val |=3D GPIO_CLOCK_VAL_OUT;
>>>>>> +            else
>>>>>> +                    val &=3D ~GPIO_CLOCK_VAL_OUT;
>>>>>> +            val |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT | GPI=
O_CLOCK_VAL_MASK;
>>>>>> +            intel_de_write(dev_priv, GPIO(1), val);
>>>>>> +            break;
>>>>>> +    case ICL_GPIO_DDPA_CTRLDATA_1:
>>>>>> +            val =3D intel_de_read(dev_priv, GPIO(1));
>>>>>> +            if (value)
>>>>>> +                    val |=3D GPIO_DATA_VAL_OUT;
>>>>>> +            else
>>>>>> +                    val &=3D ~GPIO_DATA_VAL_OUT;
>>>>>> +            val |=3D GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT | GPIO_=
DATA_VAL_MASK;
>>>>>> +            intel_de_write(dev_priv, GPIO(1), val);
>>>>>> +            break;
>>>>>> +    default:
>>>>>> +            /* TODO: Add support for remaining GPIOs */
>>>>>> +            DRM_ERROR("Invalid GPIO number (%d) from VBT\n", gpio_i=
ndex);
>>>>>> +            break;
>>>>>> +    }
>>>>>>  }
>>>>>>
>>>>>>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const =
u8
>>>>>> *data) diff --git a/drivers/gpu/drm/i915/i915_reg.h
>>>>>> b/drivers/gpu/drm/i915/i915_reg.h index 943fe485c662..b725234e0e9c
>>>>>> 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>>>> @@ -5143,6 +5143,16 @@ enum {
>>>>>>  #define _PP_STATUS                  0x61200
>>>>>>  #define PP_STATUS(pps_idx)          _MMIO_PPS(pps_idx, _PP_STATUS)
>>>>>>  #define   PP_ON                             REG_BIT(31)
>>>>>> +
>>>>>> +#define _PP_CONTROL_1                       0xc7204
>>>>>> +#define _PP_CONTROL_2                       0xc7304
>>>>>> +#define ICP_PP_CONTROL(x)           _MMIO(((x) =3D=3D 1) ? _PP_CONT=
ROL_1 : \
>>>>>> +                                          _PP_CONTROL_2)
>>>>>> +#define  POWER_CYCLE_DELAY_MASK             REG_GENMASK(8, 4)
>>>>>> +#define  VDD_OVERRIDE_FORCE         REG_BIT(3)
>>>>>> +#define  BACKLIGHT_ENABLE           REG_BIT(2)
>>>>>> +#define  PWR_DOWN_ON_RESET          REG_BIT(1)
>>>>>> +#define  PWR_STATE_TARGET           REG_BIT(0)
>>>>>
>>>>>These are all duplicate defines for existing PP_CONTROL() registers an=
d macros.
>>>>
>>>> I found this patch on drm-tip branch and removed PP_CONTRL() defines.
>>>> https://patchwork.freedesktop.org/patch/291095/
>>>
>>>Look for PP_CONTROL(), not ICL_PP_CONTROL().
>>>
>>
>> PP_CONTROL() mapped to PPS_BASE (0x61200) register. It looks to me drive=
r may need
>> a new define like _MMIO_PPS that map to PCH_PPS_BASE (0xC7200). What do =
you think?
>
>This is covered with:
>
>/* Panel power sequencing */
>#define PPS_BASE			0x61200
>#define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
>#define PCH_PPS_BASE			0xC7200
>
>#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->pps_mmio_base -	\
>					      PPS_BASE + (reg) +	\
>					      (pps_idx) * 0x100)
>
>and dev_priv->pps_mmio_base being initialized in intel_pps_setup().
>
>BR,
>Jani.
>

PP_CONTROL() is able to control via different pps_mmio_base. I will update =
this patch
to remove redundant defines.

Best regards,
Shawn

>>
>>>
>>>>
>>>> Best regards,
>>>> Shawn
>>>>
>>>>>
>>>>>>  /*
>>>>>>   * Indicates that all dependencies of the panel are on:
>>>>>>   *
>>>>>
>>>>>--
>>>>>Jani Nikula, Intel Open Source Graphics Center
>>>>>
