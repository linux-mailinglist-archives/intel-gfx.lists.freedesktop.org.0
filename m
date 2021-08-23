Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BEF3F4714
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 11:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D028289CF5;
	Mon, 23 Aug 2021 09:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B4289CF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 09:03:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="213934371"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="213934371"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 02:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="464012241"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2021 02:03:58 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 02:03:57 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 02:03:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 23 Aug 2021 02:03:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 23 Aug 2021 02:03:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzfALYeKbgxQNML8kf6tSZ6FWzsyToon3m1cl8wChXPPC46IWuyer5y9IdtDvSq6rTstEf2GO3nf0jIK78fqexmIywZ73V641iX7/i9Rzrs8xXp8j0+1e1A8sJmcHTuVQasCKXrCTLkbnG4xarJkLOy/clW0FWIyaLrTHHNOo+d3hYus4nzGgq4uKdkxKvWUiPPckKzpOf/fm9WKMW3MHHxIpcyiSuIiqMsLBP2y7TEZdy5Jcz8jCxky2Cb+AuQElJNnkXRSpNaSNg+mOdt8imRiTiHaX4BDOZzKSw2xmJhFKil8uTpyv8vFZBJyc0q/69PmBkKRYXaRCZPFjKGGGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMPa0/K+nzPW1W1HwXvH0ZCu9qopOXy9Vi6f0RDPYSk=;
 b=F5Dzp+eGYokGkEPt6+D2a2PEjXZ5ASpluJsUpHDkp1dNc/8D+x+U7nkU0rrzsAFn9NOeRfFeKuiPB4D6QKn7da4q07xS8sNlnifoo2zojspRx3phf7LBDNsGpXj+brLm9ScokHKI+FL+kkw3832Tq3trn8P4Yy2JnUH/1OtCkLwMJA/9tazHpJ0hj0jJp3ULbHYv1fi5FGmAX9V7VSYDNy3ptV80xP68IY0kBYwlqPlItbBZQlBlbEb4wd8mzcEtDSFQer5ez5ztt0SVKzW6wVYddNp3K61T/WmVghw0fb6qNLmtBLAuLgP8KYv7uBst+r/OLxeWE14BOcns9Y4uig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMPa0/K+nzPW1W1HwXvH0ZCu9qopOXy9Vi6f0RDPYSk=;
 b=irRCQS/XUuHAYTTWP3uxoG4X4fKr6mb/ZrgpYmlmByHNqI/9WYJhWh6Q+W2xlGu3Uzspn3/xTAVCBd+jWXHFb1HdDnfZwlsVi2Bl3I6txKbGR9x5M9zVLgVSJVW5RlCaf2nybyUjiR/lYaYuLdwH61wX1OZIE7OvqNy4ZoLQAyk=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5601.namprd11.prod.outlook.com (2603:10b6:303:13d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 09:03:53 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%9]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 09:03:53 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [v4 6/7] drm/i915/dsi: Retrieve max brightness level from VBT.
Thread-Index: AQHXj5B9gIFF6sfJxUWBvmNPCfa7+quA1XbAgAACrIA=
Date: Mon, 23 Aug 2021 09:03:53 +0000
Message-ID: <CO6PR11MB56518647521412FDCBA955A4A3C49@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
 <20210812154237.13911-7-shawn.c.lee@intel.com>
 <c9f59c701b334f5fb70555c6d7fbd413@intel.com>
In-Reply-To: <c9f59c701b334f5fb70555c6d7fbd413@intel.com>
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
x-ms-office365-filtering-correlation-id: 6e5212fa-6c3f-43a3-a809-08d96614ee52
x-ms-traffictypediagnostic: CO6PR11MB5601:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5601541E9F75BDB2F0AF7567A3C49@CO6PR11MB5601.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: muYv0XyodIYkodMvpPhkkgoUFN9U9D7iaZRZpFvnQxX9f9sr75zpNRwc4W0nXCkG/qF0sZm4OhEJhEtb7yuVccTWykY8MFjGLsXm0DLO6AS7A+l6CowI1F8H68ocPJOrLWQ19z3MyCZaW7iGUNy5rl/9RX8K8/mQSefcX8QpPVMaiej/T/RKfHsNvT3gO3GmRCqsd9BYSSpKsFN+6C13A3WXhIOxNUkI6RNGMiv6mVIGqLOlMwCwbZclN7iPYxBEpRCZj9da+NtSOR0/k+wq+rfVyrE+W/F86J6XaXQJc2V3yzDpsXVDExcjpwiAY2ecPyj5u6Euja8h0Apx+g2E+xJ6nFoC+KMmczfjrw4e9xx5Gn2aqEpPP1MyzCPks3zTCFrjOkS/qwOkwAp81E5sBTomDTgzMRQ5JV/ck9WGKOosqseC7bMRBPxfSnmlcFUD9IWoBDsVJgofd1o4fcu1/UBwciIK3p8cCcOzVPxWOZYW2A+US/4TpL8fA2/WyVQiBFtRFZWXIJNpv4wwW9lmfu2XG0Jc9QbKXjUKUyFLqnMs3ARi2FCmQv7DisWNXfS20CeSjXH1jR5w5Yc/PLogEKo8t9sIDDfMYzRLtwv9v53KJ+Bv1uqomzSkQIZKHW1/wIEXQx7yGaQ2Y4Z5H3tVvAFp0SaNiOMSC9iI46hpIOilM1I13qEcduSTxkmmH7AuL0WDZonTpKzhvcM4mk5hRA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(83380400001)(478600001)(6506007)(186003)(66946007)(8676002)(33656002)(9686003)(26005)(66556008)(66476007)(86362001)(38070700005)(316002)(8936002)(52536014)(54906003)(8796002)(4326008)(7696005)(55236004)(71200400001)(5660300002)(122000001)(55016002)(38100700002)(110136005)(2906002)(76116006)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FZq1T6XBET+Xzkl+0h1m0SgKAHok5kAXTXdJIu/dOSD46tGMnRgEgrnQXZwD?=
 =?us-ascii?Q?AWXs2UQGEm9+4R72smc6zjnP+litFWe7mn9iOv8wA0rE+2Hv7KVib0y8wK1F?=
 =?us-ascii?Q?ZdD2b1nXAXjFZN1zMxsK0cBKaOyYbuLPHrARtoIom8fVpsQDlDsfBdK5AIVf?=
 =?us-ascii?Q?tZaDFxA64wh2gv9gQtw0SRXyrEbsDKGTQl2+U7+Jpd0+3somxADi/cGjPfjN?=
 =?us-ascii?Q?h0wLMvs5+Tqep8acO9iCl3I6ilt3/Mjtn52n7w6HmFu4jG42k99HP/W0dalO?=
 =?us-ascii?Q?CXN38eUGlpkGQM3Y2CKZ/2pCCL4WBhL/c++QyejSh5miNjFMi4XOCf6aZIbV?=
 =?us-ascii?Q?TmEi1mGVtyTviwSumNVthPnyhcSsz8ntget+lgYMDte/JeYUFsCon+744ZGt?=
 =?us-ascii?Q?LrArVWP/yiWWQLRtKaB+EvTzRiYIFhifhtByYhHBS3FWxvuK3Bi8/LHSD3Fp?=
 =?us-ascii?Q?VQojV0nHttvIynRdLwAG5sOL9j7rnVndY+FFEEpqzcheL/YlPwpP6RKhRuBo?=
 =?us-ascii?Q?KsXDORVILGP034B9+gMMN1j11KNXS1DVWCRLS5I5RJFLAr3WnoqmvRtmohIa?=
 =?us-ascii?Q?QYiIrfQBqdmsXdFb9SxR1tcw+QQ28tmeizJAGjeyk7Pg7QkyiM1J+mfQMHwI?=
 =?us-ascii?Q?OXYCRt+ATTpm69jg5aH/ANfCcNc0+7uXXSVGaat/lQK5gtJlX8h4EqgbBMuZ?=
 =?us-ascii?Q?3UlZj1hbk/Wch+3KCU3duxTY+Rv6UEJZR5IDEjVnyyZBtVANAxWEpuWuYFTQ?=
 =?us-ascii?Q?GEtQIJ1bATmySKkNzFo5a7nZUSkm+TH39bsyhTx3bWXk8Wxb6O3nVUc94Rcg?=
 =?us-ascii?Q?8ctvJ45YdFVRfSh5xKGh4rqdz0ghRIXT3OVq9qwFqgO9fXhBKbPOQRWiXogz?=
 =?us-ascii?Q?QBfNX627H5j+qlKvJOzOMiWcd8eLjDg/vefzVmK6XRy0p0D4vSH7lTo+J9kx?=
 =?us-ascii?Q?bL0w0/YZ2d/Xr/dvrT5NcPpokRUaomTVuFp6ysEDz1GpD5v3voMiJqJWQUGt?=
 =?us-ascii?Q?bkK375it9yRq4ycgO7rECqUi7QXh5PeGr7D+vNRGJTBfc1lRB8V3LRxLydbW?=
 =?us-ascii?Q?skhKOIICdNhuuLVtKutaKJmw3E2Jpe9wnsjhXaeDRkWZHkRaFHHKFc81D9IY?=
 =?us-ascii?Q?iY3frhZuBuxNQa4y1KHf0e7TAJONFxtsbKz0SsGPoAOr2Wa+G2fijTUFa2mG?=
 =?us-ascii?Q?4DuUO/+AYrwLtVlicB5g4MbWHOEKGcXoM6J9r5yFrk+kO/Hx+XMWzHjJIgGs?=
 =?us-ascii?Q?kvQiJtLOvQTdorDyCVBzckLsRB0MvRqLs8toO7+/VQXPRg/jhIOVESTkuiKT?=
 =?us-ascii?Q?9IMp/hO5iDSrdcaXeA5RzP2o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e5212fa-6c3f-43a3-a809-08d96614ee52
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2021 09:03:53.1527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FQVblmYPdq8ZJOrFxMw9Z9lv3H/4f/yigf6taFegLdmD8A9UEVr+C9033D4+2MMbXnZoEwCyfwTT46iMb3T9Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4 6/7] drm/i915/dsi: Retrieve max brightness
 level from VBT.
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
Reply-To: "20210812154237.13911-7-shawn.c.lee@intel.com"
 <20210812154237.13911-7-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 Aug 2021, Kulkarni, Vandita <vandita.kulkarni@intel.com> wrote:
>>=20
>> So far, DCS backlight driver hardcode (0xFF) for max brightness level.
>> MIPI DCS spec allow max 0xFFFF for set_display_brightness (51h) command.
>> And VBT brightness precision bits can support 8 ~ 16 bits.
>>=20
>> We should set correct precision bits in VBT that meet panel's request.
>> Driver can refer to this setting then configure max brightness level=20
>> in DCS backlight driver properly.
>>=20
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c            |  3 +++
>>  .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c   | 12 +++++++++---
>>  drivers/gpu/drm/i915/i915_drv.h                      |  1 +
>>  3 files changed, 13 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index e86e6ed2d3bf..1affd679d1d1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -483,6 +483,9 @@ parse_lfp_backlight(struct drm_i915_private *i915, =
=20
>> level =3D 255;  }  i915->vbt.backlight.min_brightness =3D min_level;
>> +
>> +i915->vbt.backlight.max_brightness_level =3D
>> +(1 << backlight_data-
>> >brightness_precision_bits[panel_type]) - 1;
>>  } else {
>>  level =3D backlight_data->level[panel_type];
>>  i915->vbt.backlight.min_brightness =3D entry->min_brightness; diff=20
>> --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> index 584c14c4cbd0..cd85520d36e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> @@ -41,7 +41,7 @@
>>  #define POWER_SAVE_HIGH(3 << 0)
>>  #define POWER_SAVE_OUTDOOR_MODE(4 << 0)
>>=20
>> -#define PANEL_PWM_MAX_VALUE0xFF
>
>Shouldn't this be panel dependant too?

If driver did not retrieve proper precision bits, we will use PANEL_PWM_MAX=
_VALUE as default max backlight.
Do you recommend to keep 0xFF here?

>> +#define PANEL_PWM_MAX_VALUE0xFFFF
>>=20
>>  static u32 dcs_get_backlight(struct intel_connector *connector, enum=20
>> pipe
>> unused)  { @@ -147,10 +147,16 @@ static void=20
>> dcs_enable_backlight(const struct intel_crtc_state *crtc_state, =20
>> static int dcs_setup_backlight(struct intel_connector *connector,
>>         enum pipe unused)
>>  {
>> +struct drm_device *dev =3D connector->base.dev; struct drm_i915_private=
=20
>> +*dev_priv =3D to_i915(dev);
>>  struct intel_panel *panel =3D &connector->panel;
>>=20
>> -panel->backlight.max =3D PANEL_PWM_MAX_VALUE; backlight.level =3D=20
>> -panel->PANEL_PWM_MAX_VALUE;
>> +panel->backlight.max =3D dev_priv-
>> >vbt.backlight.max_brightness_level \
>> +       ? dev_priv->vbt.backlight.max_brightness_level \
>> +       : PANEL_PWM_MAX_VALUE;
>> +panel->backlight.level =3D dev_priv-
>> >vbt.backlight.max_brightness_level \
>> + ? dev_priv-
>> >vbt.backlight.max_brightness_level \
>> + : PANEL_PWM_MAX_VALUE;
>>=20
>>  return 0;
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h=20
>> b/drivers/gpu/drm/i915/i915_drv.h index 005b1cec7007..fbb3f18e7b8e
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -706,6 +706,7 @@ struct intel_vbt_data {
>>=20
>>  struct {
>>  u16 pwm_freq_hz;
>
>VBT doesn't provide max_brightness_level, instead it gives us Brightness P=
recision bits from version 236 onwards.

I will modify this variable name to "brightness_precision_bits". And move t=
he max brightness calculation
into dcs_setup_backlight().

Best regards,
Shawn

>> +u16 max_brightness_level;
>>  bool present;
>>  bool active_low_pwm;
>>  u8 min_brightness;/* min_brightness/255 of max */
>> --
>> 2.17.1
