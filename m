Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA4A3E87C3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 03:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A8F89DAB;
	Wed, 11 Aug 2021 01:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D5789DAB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 01:50:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="276069504"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="276069504"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 18:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="422018213"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 10 Aug 2021 18:50:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 18:50:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 18:50:46 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 18:50:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m0pjTV1ofNF0clUvOhMy7HxQvXgmZ5U8jydbiGg1up5QpSw9EukYTIX3XGxrgn/a7F8bbTE2nocf/tiT70Kie98hE+yeAz037Sdv2Yur6WMp4S20kZ6St+6c606OK7LosZ+QBTKg7JY5sFzXiG8zux3KuiSHhWVFz3VvOcRZynC1X15svFISHTPyyHtxijarRBjW3Y7eOqS04ugtPPumljU9kxo9bh5GA3WJIwWtGtQ9xmdsYkJbUEV3nH5ZI92Zx+idC2L2E2XM+XLoCmVy575gCYQ/t0X2cYQ6Cfa9nuTW4tFQzrxZ20huJJtX3VU94toFPg57xP1kmbOtljYacA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0aNk9dAgj4O3zWT13T1GmiMjLov47OEvZU/uHKrISSo=;
 b=fQ9/WCOW0XySsNaIS02z6fyZ+pJBiu18Q0JRAg3b7h3B7bAT35Mrx41N038dvqcAxZ0s/JVh88fYJYbDNJ1H7as/4JzSULt6oA4zLbQlI/CzrZXu1RkR2t6H3rebB6zeySCvvTcyX9jbbCayIdJc3BrTHdoeJs8jcHLoP+es7fKTuPjl/ophAB/71YQ6TkR+QBwrn09vVFV2Qsfm/xmVzXODPi7DkUtyQu9y1JuLoT8ltLI3jmvybp3LQQT1A7Ls6oqUtvVX9HEn9FvLrExHEOHLP7AUDfVMyrnInmjsjDSlXim78RVpED5mLEfQ5icPwhbd7Z3BxBGM7di15Uw2qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0aNk9dAgj4O3zWT13T1GmiMjLov47OEvZU/uHKrISSo=;
 b=ttOzUgrctg0ZJRG4NL45G9fJic0w54a5VmYQTQhceXY82mDKYUMgPwoIH+fdnIZV5xXkoAFxSRyhMFjDchPa4lcrfK5Msun9URYBxLenKVwUHhYxs7RVDm/m2DOwhSatUT4dbNfBazTZ8z7k5L8otAOQxlUEhd81NYw6dTc3JUw=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5620.namprd11.prod.outlook.com (2603:10b6:303:13e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.19; Wed, 11 Aug
 2021 01:50:41 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%7]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 01:50:41 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [V3 2/7] drm/i915/jsl: program DSI panel GPIOs
Thread-Index: AQHXjcqS5oE38XhnwkGEJib1iMJZq6tseoqQgAEMVUA=
Date: Wed, 11 Aug 2021 01:50:41 +0000
Message-ID: <CO6PR11MB5651DCACC804880C2A2B4538A3F89@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
 <20210723070548.29315-3-shawn.c.lee@intel.com> <87pmulodc0.fsf@intel.com>
 <CO6PR11MB56510587C4FB8AE1664A5F25A3F79@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB56510587C4FB8AE1664A5F25A3F79@CO6PR11MB5651.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 0a9f9b79-851b-482f-96c6-08d95c6a6d11
x-ms-traffictypediagnostic: CO6PR11MB5620:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5620E7CFF9CB141C043122AFA3F89@CO6PR11MB5620.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7x+Ar4lfRkq/PbowSj0KnvVp8hP8ufjmWXfyi6wG13o18WYtRr/jiT/zvCJzcX4mexqrjf6LjxK5l9yQrFtKuG8WLKvHLI0r4z8bE/kPmwDHq9SoVcSdgN9hV4KC1UjGngeS9JbEc9x8rlpedy1Ld7vs2qw6SRNxsLLqytdT6rRbKBRMCJrSAOQqjuKYVekgNXFlD5mZZ6kt+/LBZEzkY986xywPHOa5d6oPNhsiPtt/6XNLQw3wH2qEsxSDAtO7V6u3pHqG4aCVp38PdtnWvkq45pwMAZkMKILYOmY4n5jHBPQBdl/OuWO6Jab2Q8NSAJs8AdYHua5MlWA1kqBSOIBVYiGu+ONNoAg+mpVt62msfsdI7htV9u95yNj2ajPV8NP4t8RszFZn0+jwXYkwyRE1AI7M1yiXNreNDoot0hdwmI3XmtNwDLI/EQMB0P4qICY/FkvAEuTmtuujWcdH5LQmT0rtInPE/EKIlPjRU4wmIBhrmYDNwCTYhANnNBVjSfasXW+gKTIva3e/eEk3odMWjCHE9VPSADSZPhVsttyZ9VY98cGswM9xzRb3TrysR+4WtNS7mG0ZXMnBVWu7j47/R2gtwhjSqcr9iPAyex6PkhWmL1IYZvqEr2F+an/ycI65b1Y9oTWRUZZjVJHXSBx5nsPIzmKKKDipckuX0EXaCX+vAUI6Twlt6ruxXqf8I31IJcE7FedARDcd0Wu8mQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(376002)(136003)(366004)(8676002)(38100700002)(33656002)(8796002)(55236004)(7696005)(38070700005)(26005)(5660300002)(2906002)(8936002)(52536014)(478600001)(122000001)(6506007)(83380400001)(66556008)(9686003)(55016002)(110136005)(54906003)(966005)(316002)(186003)(86362001)(66946007)(4326008)(76116006)(66476007)(66446008)(71200400001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xK5E62e6JpiRw+EZFKLjDuBxUIORj7Rtxj5MrsRWNiWu/ENm1dc7rIVdMKV/?=
 =?us-ascii?Q?tMs1QjtJRoWBpzKA8wFc+plDqvQwn/eRBJPopMGW+wW+ngZUjxm7H7pg1Fh6?=
 =?us-ascii?Q?UivcZdXcchAszgZ44bXhbLj7T6HP0eMEklccHl4h4t1fBjgBei2HJwPlZPsS?=
 =?us-ascii?Q?Yr45YDhYIVmefd0NWSPZhqSBoLi3qSSDQtL8Cd6cxcvBACdmTz7kt+x9mr73?=
 =?us-ascii?Q?7Ke3G60rI7wk5dn3/+EdDQC6G5ZUJkrT2T8t0Z0eMHldGoy3FWXQBN00pEHb?=
 =?us-ascii?Q?aRLKuEVBBgvHEodpqLxiVWDbK8+bR/HoYX2608HTAcJ8UdQFkUVhtZo63CXm?=
 =?us-ascii?Q?3mint0D4O7Ith2sxtMAy4Xei06AGl8axctMtYyqt4YEcu23ERpK76RnG6FsN?=
 =?us-ascii?Q?7oDrkr0EPit/HDa+dlIkZ/a4JvXjpKD0bfsi8ESeQtHrSylrz+U06kQ8Yzf5?=
 =?us-ascii?Q?VU2ntdPui0DlUEOSV5anz2CIdcRNtMeqzAVpQWj/OypZ0PPSVzXNQJEZCeYG?=
 =?us-ascii?Q?VmHMpSJYh0MyZJRTrOU+Sp6XivnXNrHMHnefHdQMvrUMyrgh9Lg93iuhZfZI?=
 =?us-ascii?Q?PMTqNb3jRjhJAhk2iUTVbc7opXolEa4eKBXvP0htm8/jlCORoTpkPCrcnwRy?=
 =?us-ascii?Q?2iGyqM6U+HsovRpoZ5NzUEELjBImTSHIuZ4UhqqItlH487sKN63fYoKpsTuU?=
 =?us-ascii?Q?76C5/PxeOxDy7iEZ5cBjgi/5U/AA2WYrBj23cUH2r/7LnQrTzeirsR/V1nvs?=
 =?us-ascii?Q?DhnnHKIDPn0zYQIEiN+Dm1nh3rgTcm8GxvFocSqJKBdGwbJbRxVsCadaEMbc?=
 =?us-ascii?Q?gYawfnuQ/Bwfd3h/UIsWZbD1gdTh0JW8ezt062cMw+EUCST3I+l4DmVRzGMa?=
 =?us-ascii?Q?nX1c7g+9KKZc1rWzho9MKYVyd1VBTylHC3QQ1ba/3F/bvBgBF34FMyJ0PLOy?=
 =?us-ascii?Q?uvhpt4u0DLG2bOj3TGmwRxx5t4Vs8JDgfBIIwrr1r8o1m15Os5HYUrLr291T?=
 =?us-ascii?Q?YaD6Xol1Lno7S/WJ8thkmVrQ4SD0CeQl6N8pA7QndjlicBGjJ2bakmWAjfuz?=
 =?us-ascii?Q?Wai2FXqHk7O9j4AQFeD3r9bQ5co+cQ22llPNMM4DSg9wLyqCSNblQxfwPO4G?=
 =?us-ascii?Q?91Au39PCSnIWhW47x5vaMw15sO9+UZVCR61urz5SBiwLVyp0wCfqHSD5FRUw?=
 =?us-ascii?Q?v8TvmGDDPSe+R03Bj86ICb6ac1cULvyFgMDmi3CdVwLNCybS2M6gFW0gEDfr?=
 =?us-ascii?Q?R5WOfi5r617JmcC5cV6+F+vV91SjN/5R5VyUxDw5E6K9+egT2osW3VEeuxq+?=
 =?us-ascii?Q?8sEiiR67EZtMyqdwe2EvsYkk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a9f9b79-851b-482f-96c6-08d95c6a6d11
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 01:50:41.3942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tQ6vbBBM6oA+1IvFuMGzV2wEOqvuqbs/Izq5LjMVeUyWCb8SLUQonTuph5Rf7uAfn4nupG6KUJjdF88uxdbV1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5620
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
>On Tue, 10 Aug 2021, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Tue, 10 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>On Fri, 23 Jul 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>> DSI driver should have its own implementation to toggle gpio pins
>>>> based on GPIO info coming from VBT sequences.
>>>
>>>Why?
>>>
>>
>> Without this change, we are not able to control gpio signal output to
>> meet MIPI panel's requirement for power on/off sequence.
>>
>>>>
>>>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>>> Cc: William Tseng <william.tseng@intel.com>
>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 44 +++++++++++++++++++=
-
>>>>  drivers/gpu/drm/i915/i915_reg.h              | 10 +++++
>>>>  2 files changed, 53 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>> index cc93e045a425..dd03e5629ba6 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>>> @@ -43,6 +43,7 @@
>>>>  #include "intel_display_types.h"
>>>>  #include "intel_dsi.h"
>>>>  #include "intel_sideband.h"
>>>> +#include "intel_de.h"
>>>>
>>>>  #define MIPI_TRANSFER_MODE_SHIFT    0
>>>>  #define MIPI_VIRTUAL_CHANNEL_SHIFT  1
>>>> @@ -354,7 +355,48 @@ static void bxt_exec_gpio(struct drm_i915_private
>>>> *dev_priv,  static void icl_exec_gpio(struct drm_i915_private *dev_pri=
v,
>>>>                        u8 gpio_source, u8 gpio_index, bool value)  {
>>>> -    drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\=
n");
>>>> +    u32 val;
>>>> +
>>>> +    switch (gpio_index) {
>>>> +    case ICL_GPIO_L_VDDEN_1:
>>>> +            val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>>>> +            if (value)
>>>> +                    val |=3D PWR_STATE_TARGET;
>>>> +            else
>>>> +                    val &=3D ~PWR_STATE_TARGET;
>>>> +            intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>>>
>>>All the PPS access should be in intel_pps.[ch] and protected with the pp=
s mutex.
>>>
>>
>> OK! We will move icl_exec_gpio() into intel_pps.c and use pps mutex to p=
rotect it.
>>
>>>> +            break;
>>>> +    case ICL_GPIO_L_BKLTEN_1:
>>>> +            val =3D intel_de_read(dev_priv, ICP_PP_CONTROL(1));
>>>> +            if (value)
>>>> +                    val |=3D BACKLIGHT_ENABLE;
>>>> +            else
>>>> +                    val &=3D ~BACKLIGHT_ENABLE;
>>>> +            intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
>>>> +            break;
>>>> +    case ICL_GPIO_DDPA_CTRLCLK_1:
>>>> +            val =3D intel_de_read(dev_priv, GPIO(1));
>>>> +            if (value)
>>>> +                    val |=3D GPIO_CLOCK_VAL_OUT;
>>>> +            else
>>>> +                    val &=3D ~GPIO_CLOCK_VAL_OUT;
>>>> +            val |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT | GPIO_=
CLOCK_VAL_MASK;
>>>> +            intel_de_write(dev_priv, GPIO(1), val);
>>>> +            break;
>>>> +    case ICL_GPIO_DDPA_CTRLDATA_1:
>>>> +            val =3D intel_de_read(dev_priv, GPIO(1));
>>>> +            if (value)
>>>> +                    val |=3D GPIO_DATA_VAL_OUT;
>>>> +            else
>>>> +                    val &=3D ~GPIO_DATA_VAL_OUT;
>>>> +            val |=3D GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT | GPIO_DA=
TA_VAL_MASK;
>>>> +            intel_de_write(dev_priv, GPIO(1), val);
>>>> +            break;
>>>> +    default:
>>>> +            /* TODO: Add support for remaining GPIOs */
>>>> +            DRM_ERROR("Invalid GPIO number (%d) from VBT\n", gpio_ind=
ex);
>>>> +            break;
>>>> +    }
>>>>  }
>>>>
>>>>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8
>>>> *data) diff --git a/drivers/gpu/drm/i915/i915_reg.h
>>>> b/drivers/gpu/drm/i915/i915_reg.h index 943fe485c662..b725234e0e9c
>>>> 100644
>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>> @@ -5143,6 +5143,16 @@ enum {
>>>>  #define _PP_STATUS                  0x61200
>>>>  #define PP_STATUS(pps_idx)          _MMIO_PPS(pps_idx, _PP_STATUS)
>>>>  #define   PP_ON                             REG_BIT(31)
>>>> +
>>>> +#define _PP_CONTROL_1                       0xc7204
>>>> +#define _PP_CONTROL_2                       0xc7304
>>>> +#define ICP_PP_CONTROL(x)           _MMIO(((x) =3D=3D 1) ? _PP_CONTRO=
L_1 : \
>>>> +                                          _PP_CONTROL_2)
>>>> +#define  POWER_CYCLE_DELAY_MASK             REG_GENMASK(8, 4)
>>>> +#define  VDD_OVERRIDE_FORCE         REG_BIT(3)
>>>> +#define  BACKLIGHT_ENABLE           REG_BIT(2)
>>>> +#define  PWR_DOWN_ON_RESET          REG_BIT(1)
>>>> +#define  PWR_STATE_TARGET           REG_BIT(0)
>>>
>>>These are all duplicate defines for existing PP_CONTROL() registers and =
macros.
>>
>> I found this patch on drm-tip branch and removed PP_CONTRL() defines.
>> https://patchwork.freedesktop.org/patch/291095/
>
>Look for PP_CONTROL(), not ICL_PP_CONTROL().
>

PP_CONTROL() mapped to PPS_BASE (0x61200) register. It looks to me driver m=
ay need
a new define like _MMIO_PPS that map to PCH_PPS_BASE (0xC7200). What do you=
 think?

>
>>
>> Best regards,
>> Shawn
>>
>>>
>>>>  /*
>>>>   * Indicates that all dependencies of the panel are on:
>>>>   *
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center
>>>
