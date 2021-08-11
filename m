Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB643E9352
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 16:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F336E13A;
	Wed, 11 Aug 2021 14:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F79F6E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 14:10:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="237152544"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="237152544"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 07:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="469414113"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2021 07:10:35 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 11 Aug 2021 07:10:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 11 Aug 2021 07:10:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 11 Aug 2021 07:10:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CF7g63iShKJiNqLIwcmSMGbB4uobQD3OCUDWblt8BblRKaql3gAXn0xZBps0y7P8OmH/mwQKovOvCSG4uPCO5ACKV9ni+3QElVI2Bf/AKVqPNr5RWbP1Jk1yjAi8CRRWyyQgkogvFYtfPbB3AvePbx2NUxd+DiGTrOdMNB8+8p4VjDlYArgPOXRK7N+ktlgTWQ5IbBiLTktXWDIAd/XnrCMgHPfbh0WSukuJncaLAG7XJD657hBUOic1JqDYkOhN+7ZmGLpkqPw3x+7oO1gAU1CLW4dxzwrQd6OB1UbKW+aefWR/Pvepk0dHn80OA189+o8LoRNv5n/XvHn2On4FMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Hs0o2mQMEtd3cjoFHtxlegMws6HqIUPv6/lBwVrNu0=;
 b=axDNMB33SMExZaMW03rqGKn0Svs+JXsIPuB5wNIoyEj2eFDzeGMpUil1SA3HvY7hb1uAI7oGNdfREersvmc3DDpfsaur29gncIUw3MFp9PRktB1Rr8u4NqsUkU5d3BjqpUtrjqdqdzwIoSI/pzZcenZaZCoP6LG+mFiKZsdwUDx7Mq8PViw0ThTo+DC4qJi09ei78oYRFqBhuzQt5+H53ts+Xvg22L1sfNPwPrE1z7KPlxD3YQE55fhwLsL+AIBsWpNwPU3yOxlX4jzcC1Tuyodel38QNigmZiOaTFORuksI9M6+qXGUfi0jPAbbf8TDj5J0ArCNiSZw9DtFIsvSWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Hs0o2mQMEtd3cjoFHtxlegMws6HqIUPv6/lBwVrNu0=;
 b=YHCcs160rxsdVhdkpQP10/xx0CBGONGk3tj7KE/v/4MrZTHLLOj26yYtN0pVRCwg2Oo6aMjoKtCVe2zhK9CMgfdT0tuxDqyCkhEfOC5iogR7patTAxu//W2e0vzrEskXKJmHB5nQWYCPORQohCxQkDBQPlkAuK6Led4cF4Y11Qg=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 11 Aug
 2021 14:10:32 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%8]) with mapi id 15.20.4415.016; Wed, 11 Aug 2021
 14:10:32 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [V3 2/7] drm/i915/jsl: program DSI panel GPIOs
Thread-Index: AQHXjcqS5oE38XhnwkGEJib1iMJZq6tseoqQgAEMVUCAANI68A==
Date: Wed, 11 Aug 2021 14:10:32 +0000
Message-ID: <CO6PR11MB565168C2F7A027870180CE48A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
 <20210723070548.29315-3-shawn.c.lee@intel.com> <87pmulodc0.fsf@intel.com>
 <CO6PR11MB56510587C4FB8AE1664A5F25A3F79@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB5651DCACC804880C2A2B4538A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB5651DCACC804880C2A2B4538A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 32dd6367-a98e-40f0-bc9c-08d95cd1c84d
x-ms-traffictypediagnostic: CO6PR11MB5636:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB563614D7AFD9A1BF01E59901A3F89@CO6PR11MB5636.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gS8Vu3rk3asP6Zr4Z9T4AFbL6Cdl5yRId8etBvO9MgnRfVoNPKvhZKYnE3UG4NRB0SKUbDdDZ2UFVBKpFqbOudz7fzTeTahyjEc8MBxinvLA/5H8/tlynfHtZ98OoA3hRvCDT/o/kiZIe9ERrGSTjx0fXw34CNeWEoVFskcnkYoO309GdbFbaLIHgmMONz9QwOOlkEqVE40H/QsjvfPTyBS90JlW8pkVFECAGX6hyAhk9J5Qweu8wniTJtRb8jMiPDpaK04akzUzSBy6SAU09Q7mYPm2dAYnc4iLf2E3U4kw6wm3CTv68vn/y2rHRU4l7YfDJQwQfObaD2wjLdQZ6H/scUBSb72m4ZQB3Rsa8+dPmw0Axl8ngqxsETwh+58MEF6d4T2OUWoutjRUMBSyPkxRbard6L2ZEuYsssq0lLK8R379DMZ6wg8SONYRHzkhvuq+8y01QRnJt84Z0WCkiqC3TSsv89RSY3HAKq70GH9FQNgf34/JWoMWI3An8RgY8eRGy7c0NgzQ4L8yG+adjGM9kSapo4NUrBQjZRwKmII8a802WQfHQbbKHsffZmcFoTqw+tx5ywzcaLm0f1wYuH2yUSfVuZLhK1VSvp8G9eOF3Ykm40DPVXUX22lvyUF4CVa+FVeoG/EnNxUd1dg8trqHPTt/022+YqrsodRMWccpBuCsHFPC5eAES/LQiki45ktRjNsvyook1xODMh2yhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(2906002)(66556008)(83380400001)(55016002)(7696005)(122000001)(316002)(66946007)(66476007)(110136005)(86362001)(38100700002)(66446008)(71200400001)(5660300002)(2940100002)(966005)(186003)(8936002)(55236004)(8796002)(6506007)(26005)(38070700005)(508600001)(52536014)(4326008)(33656002)(8676002)(54906003)(76116006)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WFC2wlx7g4yXgBXMNLZRixCiBKNNjOnbgfjR5GfZGbHYDB+xUKTXRzplqCgP?=
 =?us-ascii?Q?MuOCvGeG0QvrSch88IvtIoNinio5P4omYCUziv/RzE0E4uIx/iVofAex1XTt?=
 =?us-ascii?Q?+0RbuiTvwDnuXLhSBKLsArInLI2jTKuV0hHi1iK5vxZMPMV7ZKV3y5yXBoQy?=
 =?us-ascii?Q?qvTKMxopOZOZd6gcSdr+cHjRaClv/ZSYgbjiqHsliPmV+wDObq2BXyB9a1sP?=
 =?us-ascii?Q?dxEPrGqDzlo03HX8OHyFI4x6rTJirHWwQZ2o+o7xQj6LHSZA3H11qg7Wo7lT?=
 =?us-ascii?Q?fltWnAGcVbe68l8VlPCtSvtdE0nwZ2zp/tT2Uq9S+UHL8Nxb/BSXn2XOzsBo?=
 =?us-ascii?Q?uCbiuVA18fRdmq/5RiaQWjpDwLGdjW6mAsPBTd+GP34qdcGno34FVVsulLuh?=
 =?us-ascii?Q?RE9SE6sHcynUTyZosVurts1jZ2y+l3K1EbRaTl8iI6rOanV8LqlCAqNS7r5V?=
 =?us-ascii?Q?kt65jnsiqcXihHFCWPAU1emRc+C6GMoP6rnjlfZsa7DfhgRMnlRwpzXcA/7N?=
 =?us-ascii?Q?8nhptnBiLHZzoc8p0EYOD7e+EB8ef3UD96Jz14qvCVJTahpqp9ijVP3jycK0?=
 =?us-ascii?Q?m19CNPAgqRFUVtyxp8eO2VGW+Jx0FYQ0vKA70LZGI/sD7H9kQYiCrKGSCjia?=
 =?us-ascii?Q?kW6ATOMQgDyAQJ7LH8krI98MSSTqMnN/BkG00ec64bmU+qa1EO3niahPymO2?=
 =?us-ascii?Q?KGT9u+/7RlMBjt5dwlZ43vY4hz2nDG03NYPJ29sLzAskoNAAT9PxpA+GJI8H?=
 =?us-ascii?Q?AXBe4SiG8Uy9hnzxqo4m8+S0osxntMcPVXT1DpCOckKjcC98FtD8TZWqDOuc?=
 =?us-ascii?Q?nzHQchqhRLng/b/S1LqOfFTXJOvP67Q6Nc0SGLxjT1FgyWF5Rn3vpesWXvBt?=
 =?us-ascii?Q?eTAghCMkQq9F3IpW+Vf5KLzpQjiLFU//pzf3UJNUkACE4pdO393bPNUv0u9f?=
 =?us-ascii?Q?Hgob29WRvG3a6P9dBm2JeW8MmA0LOht0tbJ4cly8/UUg+7AuzJE31IDE62cf?=
 =?us-ascii?Q?Gpj8Yr7kvI91/o0KDhC/3i6Mmk2XntMnxCmao6f89Z+s+bSj6UZ+Iv4oxa33?=
 =?us-ascii?Q?qI7Q5jKuRsCp7KQDFIDjlKrE8eLr2FfvjI6+8F9fz29MF4eTiYFki54rABDK?=
 =?us-ascii?Q?g2M48ZjJLi3yR1DYO2l7pLxxiPufyFH8e257fXxK5dFo8rtgUdqf/+QCTpbM?=
 =?us-ascii?Q?K1PCD0FbrWL3C2GdCoQ6PFcUylSqouOWQYwRgKYMxduS2utxFyijcuVSf9lv?=
 =?us-ascii?Q?oyYH2fgTVQhasFsxZ5mdcPgwLI/wlS+IRbs9NFNTEyjQ1zUa6h936FRYN0GW?=
 =?us-ascii?Q?A55at6tl4b0RBiTz2kQSF9sR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32dd6367-a98e-40f0-bc9c-08d95cd1c84d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 14:10:32.7008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TtsyuRGsc/ez1cxHRKuIcXSQjtouVktKIr+K4QwqqeY/tvLWtcUxzacYmf+nAbGBeVor/WTixgfjJtO9gRxeMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5636
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

On Tue, 11 Aug 2021, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>On Tue, 10 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>On Tue, 10 Aug 2021, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>>> On Tue, 10 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>>On Fri, 23 Jul 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>>> DSI driver should have its own implementation to toggle gpio pins=20
>>>>> based on GPIO info coming from VBT sequences.
>>>>
>>>>Why?
>>>>
>>>
>>> Without this change, we are not able to control gpio signal output to=20
>>> meet MIPI panel's requirement for power on/off sequence.
>>>
>>>>>
>>>>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>>>> Cc: William Tseng <william.tseng@intel.com>
>>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 44 ++++++++++++++++++=
+-
>>>>>  drivers/gpu/drm/i915/i915_reg.h              | 10 +++++
>>>>>  2 files changed, 53 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>> index cc93e045a425..dd03e5629ba6 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>>> @@ -43,6 +43,7 @@
>>>>>  #include "intel_display_types.h"
>>>>>  #include "intel_dsi.h"
>>>>>  #include "intel_sideband.h"
>>>>> +#include "intel_de.h"
>>>>>
>>>>>  #define MIPI_TRANSFER_MODE_SHIFT    0
>>>>>  #define MIPI_VIRTUAL_CHANNEL_SHIFT  1 @@ -354,7 +355,48 @@ static=20
>>>>> void bxt_exec_gpio(struct drm_i915_private *dev_priv,  static void=20
>>>>> icl_exec_gpio(struct drm_i915_private *dev_priv,
>>>>>                        u8 gpio_source, u8 gpio_index, bool value)  {
>>>>> -    drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution=
\n");
>>>>> +    u32 val;
>>>>> +
>>>>> +    switch (gpio_index) {
>>>>> +    case ICL_GPIO_L_VDDEN_1:
>>>>> +            val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>>>>> +            if (value)
>>>>> +                    val |=3D PWR_STATE_TARGET;
>>>>> +            else
>>>>> +                    val &=3D ~PWR_STATE_TARGET;
>>>>> +            intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>>>>
>>>>All the PPS access should be in intel_pps.[ch] and protected with the p=
ps mutex.
>>>>
>>>
>>> OK! We will move icl_exec_gpio() into intel_pps.c and use pps mutex to =
protect it.
>>>

Just my two cents. All the MIPI DSI sequences are about panel power on, off=
 and initialize.
Refer to intel_dp_aux_xfer(). How about to add intel_pps_lock/unlock in int=
el_dsi_vbt_exec_sequence()
to protect every MIPI sequence? And we can keep these code in this file for=
 MIPI DSI only.

Best regards,
Shawn

>>>>> +            break;
>>>>> +    case ICL_GPIO_L_BKLTEN_1:
>>>>> +            val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>>>>> +            if (value)
>>>>> +                    val |=3D BACKLIGHT_ENABLE;
>>>>> +            else
>>>>> +                    val &=3D ~BACKLIGHT_ENABLE;
>>>>> +            intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>>>>> +            break;
>>>>> +    case ICL_GPIO_DDPA_CTRLCLK_1:
>>>>> +            val =3D intel_de_read(dev_priv, GPIO(1));
>>>>> +            if (value)
>>>>> +                    val |=3D GPIO_CLOCK_VAL_OUT;
>>>>> +            else
>>>>> +                    val &=3D ~GPIO_CLOCK_VAL_OUT;
>>>>> +            val |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT | GPIO=
_CLOCK_VAL_MASK;
>>>>> +            intel_de_write(dev_priv, GPIO(1), val);
>>>>> +            break;
>>>>> +    case ICL_GPIO_DDPA_CTRLDATA_1:
>>>>> +            val =3D intel_de_read(dev_priv, GPIO(1));
>>>>> +            if (value)
>>>>> +                    val |=3D GPIO_DATA_VAL_OUT;
>>>>> +            else
>>>>> +                    val &=3D ~GPIO_DATA_VAL_OUT;
>>>>> +            val |=3D GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT | GPIO_D=
ATA_VAL_MASK;
>>>>> +            intel_de_write(dev_priv, GPIO(1), val);
>>>>> +            break;
>>>>> +    default:
>>>>> +            /* TODO: Add support for remaining GPIOs */
>>>>> +            DRM_ERROR("Invalid GPIO number (%d) from VBT\n", gpio_in=
dex);
>>>>> +            break;
>>>>> +    }
>>>>>  }
>>>>>
>>>>>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const=20
>>>>> u8
>>>>> *data) diff --git a/drivers/gpu/drm/i915/i915_reg.h=20
>>>>> b/drivers/gpu/drm/i915/i915_reg.h index 943fe485c662..b725234e0e9c
>>>>> 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>>> @@ -5143,6 +5143,16 @@ enum {
>>>>>  #define _PP_STATUS                  0x61200
>>>>>  #define PP_STATUS(pps_idx)          _MMIO_PPS(pps_idx, _PP_STATUS)
>>>>>  #define   PP_ON                             REG_BIT(31)
>>>>> +
>>>>> +#define _PP_CONTROL_1                       0xc7204
>>>>> +#define _PP_CONTROL_2                       0xc7304
>>>>> +#define ICP_PP_CONTROL(x)           _MMIO(((x) =3D=3D 1) ? _PP_CONTR=
OL_1 : \
>>>>> +                                          _PP_CONTROL_2)
>>>>> +#define  POWER_CYCLE_DELAY_MASK             REG_GENMASK(8, 4)
>>>>> +#define  VDD_OVERRIDE_FORCE         REG_BIT(3)
>>>>> +#define  BACKLIGHT_ENABLE           REG_BIT(2)
>>>>> +#define  PWR_DOWN_ON_RESET          REG_BIT(1)
>>>>> +#define  PWR_STATE_TARGET           REG_BIT(0)
>>>>
>>>>These are all duplicate defines for existing PP_CONTROL() registers and=
 macros.
>>>
>>> I found this patch on drm-tip branch and removed PP_CONTRL() defines.
>>> https://patchwork.freedesktop.org/patch/291095/
>>
>>Look for PP_CONTROL(), not ICL_PP_CONTROL().
>>
>
>PP_CONTROL() mapped to PPS_BASE (0x61200) register. It looks to me driver =
may need a new define like _MMIO_PPS that map to PCH_PPS_BASE (0xC7200). Wh=
at do you think?
>
>>
>>>
>>> Best regards,
>>> Shawn
>>>
>>>>
>>>>>  /*
>>>>>   * Indicates that all dependencies of the panel are on:
>>>>>   *
>>>>
>>>>--
>>>>Jani Nikula, Intel Open Source Graphics Center
>>>>
