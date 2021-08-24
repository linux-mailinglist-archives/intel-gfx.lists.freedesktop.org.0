Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CEA3F6214
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 17:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD976890BA;
	Tue, 24 Aug 2021 15:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C92A890BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 15:54:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204474398"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="204474398"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 08:54:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526673647"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Aug 2021 08:54:29 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 24 Aug 2021 08:54:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 24 Aug 2021 08:54:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 24 Aug 2021 08:54:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2gPv6+QHqO35R8DV4SpEipH9uDSqXfq/uRfpyf08sUx915nkXiaSx9awOb0XPICgZWaE3cnmVKGjreyn77063hQeAKM+abwDd1KxeUPn+goClALZe9/1MrzVgkf9LRn4GUPoZxJsVQLOMJENCLEEtRFHNF2qi+E4IFBYVqG2xrLSRh1zcgGODRTxbX+75CAb85U42QqVo98iUZYo6N0FROnDZzplWadvDTmQXK2QCla82NL+lZ4OJYqhjUtFqZutd+z83Cub53p3A5IQkN68DMjVV8bIr5slVTLmiauDvhXr6v/jv2O8WLe/6jn9kLUxTfMRQ9abzs7kIL2bHgyzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgQ9+4xx8ZmBxyc8nXAerw/1g4/sz5yc/A1X+R5QQGo=;
 b=M+IkLNIMznfcjY/jUfOhQwEVITncK0MNUS+6ogosVjHLTxOKgmi7qrlaNyZ/E7+znrcAwY/LukgRsDJ9BM5cja3eUBTkyM1+HmqKCQc7DVrE+VXK4ZjpJZCoNjODSCnFaX7iJy92VKY1FSIHYkLVtwD9yZVtUHDdNXFbUtqAJQzrXvIgHEsV/FQNHts4JcNsv589vAXxScliSFqkrlmCzGtOkr3ius0pKyw+jTnrc5dhJjNR1fiaz/k9AimiOfM8hc+ggxk2EMVj1r32h2UkBSMIATyJrkVTijDoCGigF6648N+wCw615TQaa+kfc36kC2EHyIHsRiKTfOm21hO5aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgQ9+4xx8ZmBxyc8nXAerw/1g4/sz5yc/A1X+R5QQGo=;
 b=CeTJvlX6vcPV11VNWPgBoFu+GwxYFVYVHtQV/+dzNRRgnyA5P9SmGkvu+JI1wuEIs/EEgnOuOlfnYmVtxS1pizMzu9+ljqjcMLjpnHk2qgfaRawa4d9hZzylCA+ab5qnZNZsZ8eOfCkzpYaYsgD0mliH1PdwoJVDzs/gm9rDkBg=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Tue, 24 Aug
 2021 15:53:58 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%9]) with mapi id 15.20.4436.024; Tue, 24 Aug 2021
 15:53:58 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Ville Syrjala <ville.syrjala@linux.intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [PATCH] drm/i915/dsi: Retrieve max brightness level from VBT
Thread-Index: AQHXmPApvZ5Z3TV/xEi6NKj4Olmwa6uCuDkAgAALrsA=
Date: Tue, 24 Aug 2021 15:53:58 +0000
Message-ID: <CO6PR11MB5651F28078D4F77D8B08DDAEA3C59@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210812154237.13911-7-shawn.c.lee@intel.com>
 <20210824140042.3083-1-shawn.c.lee@intel.com> <87o89mgbeb.fsf@intel.com>
In-Reply-To: <87o89mgbeb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04ce88f2-986c-44bb-16fe-08d9671762d1
x-ms-traffictypediagnostic: CO6PR11MB5603:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB56039B3BDB1B2E6FC0B38426A3C59@CO6PR11MB5603.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VHN08U1PN3WR6nMvlZ4RB+OyPe59uWItMZypoJ1PfGrjYXnnUSeqFOOMv7/bTxNNfuf56Orbah6nAbA0s5xYdmncwlygpbPEwTk9Nw8PeHt1UCuPwChtQYCcLTRN2cLSzL3irBnPR8/LTmxq3/C0jAb3z9638N9/vmQuE9P+iRTmYZg0cfICJzXFhNaPCYCngqfJ4PN/a94pV2VZ7g5c+H/lsO0IWeHhCrdMXF4Cl9vPU+8VcG09okU0SoOJcyj54z6beIslGxo5Fp72+HIYzt0fB3cBnm9zS27KfNJTcZhjjeZ8tAtQjbVkfFKwOyvhwWnUNcnq61gJS77KKBEKQV33RAFM3nGNUz7x9WR+/hNR86K7vqDCx+mlOD5I8W9fkcRPHtfQYE8bYLtsyOUxlFJqeIW4DzvHwVCMpBqsoT69zI5xOjGrHlyIaf8gs/wHweWuOvIjqD5x8Y03jwDtPQy6MQZQDFAgdnRR/8NaRzeUYlQ+SLh6M7yJMh1U3iEfCvHXQGomefHVcP4Td3H3j+n/qg3tIKdtWkqiExIJF7ZGe2YJ+/kUNWFLlJafkqfv7BKsDfonfZ+dqbLJf5FNwqBV+cFfEYSGG2OLRPpuKDnhUIIh9N8NVvNOmMK1a4koNnXbwmmlYfFX2Z1iuzXM3ndSPmc+sItuQv5R9f2TViusxIL4JcOzUhZg5BwTqJwnG1p8TsE1LvfvNbqIppiJsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(76116006)(8676002)(2906002)(8796002)(8936002)(316002)(122000001)(5660300002)(33656002)(4326008)(6506007)(66946007)(52536014)(26005)(64756008)(478600001)(55236004)(186003)(66556008)(66446008)(66476007)(38070700005)(38100700002)(55016002)(83380400001)(71200400001)(110136005)(54906003)(7696005)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hGDZZ8baGiRcVShfnNL1iqUPYqWfR7oJE3o3OL/MzyOcdtL7vUPo2v/JSZPG?=
 =?us-ascii?Q?yloT7WMTyslRN4RnWNTH04rFrSo6WX4YgM25lRb9B0o8U1Gm/m2qfc5NvrqB?=
 =?us-ascii?Q?2ihqcDY21JPwpaUvpyTex38/CYn24cexsqNIhyM3RYZQQZJI3n5iW3M6q9iJ?=
 =?us-ascii?Q?b0Qf50kpPNT/FtF1XBmLfzSEzzFoWeDSQ8pCWZzQfwVE3TDLNNkp7OVD0KFO?=
 =?us-ascii?Q?kG5vWkrVX6TGcdLZs8jxi3BzHjuki7I+fV5Lt7oMFw94kydNu0yytFTypk4w?=
 =?us-ascii?Q?76GgYqyXV3a8dGeFGBkY6UgGbkOBa66L2vnYDkrEcH04kINJKbrKFQHa/Kai?=
 =?us-ascii?Q?i0yjB7UUhACyX1Q9HaWuO6d6/Qmfv4L06BKu7aYE68jLJU5fvd/M7JfYqv6O?=
 =?us-ascii?Q?SNcAbOuMn5kG14tUOfrT9KzUjpB/ZNiAGUox3dzvo3ivgJH4JBy46tnMHffT?=
 =?us-ascii?Q?1GiC66kmKoWgJuZxFj5DFT6hSu0D7EH1Z7yuVLcnwj497nWSyghOsPHuzccZ?=
 =?us-ascii?Q?pMXNosDRkYN2QRS2mqCwBK/2oXBD7wwJD6eIWVSn2hJYyvFNPCI242xv609h?=
 =?us-ascii?Q?PCuTTBZuEabxPP9XSM8pm4B49aT5IEzZn8LofJm4wVSSUTKFCzQWx4aUY61j?=
 =?us-ascii?Q?yvvMODrHt9PN/Lrz/VDmKFoV6txARkzUjx/YLzCuAgIGRcIrS8xcsKfAitSC?=
 =?us-ascii?Q?ytj9uXUIa6c5MWmp98l7Cr2P4W9XUgAIGjQr8lsuIHdPrGfoLEZaIi/h6sWl?=
 =?us-ascii?Q?3/+Y0Tq4HXio53ITU1dVTyb5oCfCuz1foew6TF/7n2jF5bxGbf/NTuMRMaOo?=
 =?us-ascii?Q?vuh0T1SUSztg5HsWa4zSnOmEhkWFDMNeUouR0KorL5XF2pb2kxcgKRzYK0BH?=
 =?us-ascii?Q?SlrGLCcgDjDW+4dw6p+fnHHwR5wg6mNmSm8rqfWtaGHV0qylbeV7U2O1+o4d?=
 =?us-ascii?Q?y6arFk3rn7LEwijnnLrnnxK9znQ8F05jYqOPtOO5Y/wY0RQ6xsls6eddV8bR?=
 =?us-ascii?Q?9YuOU3rjEVX0yxWAkuRbAyW01DS1P3BHS3aen7sx4E9IZnMimKDH9fgSkZ/m?=
 =?us-ascii?Q?64oG2tpLE4n0TpcZAPwwMU3D+nUM5AqA0RZB0SCz/OTPf6n7MVpcg97N9Jl3?=
 =?us-ascii?Q?hxKYQhKjd98wUKW5zNI7v4/IZFkYrfqrTk3CP7ZrAmTmJjwdGl/V5p8JnjxR?=
 =?us-ascii?Q?AFyMIXA1vv2/+K7Aqc2qebXNZoTx1MRkeooBpJ0/j5oMuzonf6ZiU495OXML?=
 =?us-ascii?Q?Ob//heDCfMHflhMh2th7NZf9juX4RJKYoR841rt35j4thkId4TTcaCiqL3gX?=
 =?us-ascii?Q?0q7aP7RrDoKS6ffxN1wAexud?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04ce88f2-986c-44bb-16fe-08d9671762d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2021 15:53:58.8857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hneX1MPxpo6j63+Y4Jj9CDZPOiEXxoVlqHAt3iiVurkOe5YtpKhbzAqzxl0EYeUY8lrFXa+LgPHLp7kHtYtzUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Retrieve max brightness level
 from VBT
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
Reply-To: "20210824140042.3083-1-shawn.c.lee@intel.com"
 <20210824140042.3083-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Tue, 24 Aug 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> So far, DCS backlight driver hardcode (0xFF) for max brightness level.
>> MIPI DCS spec allow max 0xFFFF for set_display_brightness (51h) command.
>> And VBT brightness precision bits can support 8 ~ 16 bits.
>>
>> We should set correct precision bits in VBT that meet panel's request.
>> Driver can refer to this setting then configure max brightness level=20
>> in DCS backlight driver properly.
>>
>> v2: modify variable name brightness_precision_bits instead of
>>     max_brightness_level.
>>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c              | 3 +++
>>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 8 ++++++--
>>  drivers/gpu/drm/i915/i915_drv.h                        | 1 +
>>  3 files changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c=20
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index e86e6ed2d3bf..ccaf0a3100f7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -483,6 +483,9 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>>  			level =3D 255;
>>  		}
>>  		i915->vbt.backlight.min_brightness =3D min_level;
>> +
>> +		i915->vbt.backlight.brightness_precision_bits =3D
>> +			backlight_data->brightness_precision_bits[panel_type];
>>  	} else {
>>  		level =3D backlight_data->level[panel_type];
>>  		i915->vbt.backlight.min_brightness =3D entry->min_brightness; diff=20
>> --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c=20
>> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> index 584c14c4cbd0..21ab9e1acb57 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> @@ -147,10 +147,14 @@ static void dcs_enable_backlight(const struct=20
>> intel_crtc_state *crtc_state,  static int dcs_setup_backlight(struct int=
el_connector *connector,
>>  			       enum pipe unused)
>>  {
>> +	struct drm_device *dev =3D connector->base.dev;
>> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
>>  	struct intel_panel *panel =3D &connector->panel;
>> =20
>> -	panel->backlight.max =3D PANEL_PWM_MAX_VALUE;
>> -	panel->backlight.level =3D PANEL_PWM_MAX_VALUE;
>> +	panel->backlight.max =3D (dev_priv->vbt.backlight.brightness_precision=
_bits > 8) \
>> +			       ? (1 << dev_priv->vbt.backlight.brightness_precision_bits) - =
1 \
>> +			       : PANEL_PWM_MAX_VALUE;
>> +	panel->backlight.level =3D panel->backlight.max;
>
>If the precision is < 8, why would max be 0xff? Use GENMASK() perhaps?
>
>BR,
>Jani.
>

On vbt structure version 234 and later, vbt support brightness_precision_bi=
ts for MIPI display.
And its value will be 8~16 that defined in bpsec #20149.

If vbt version before 234 without this parameter, vbt.backlight.brightness_=
precision_bits will be "0".
Driver don't know panel required 8 bits or more bits for brightness control=
. So assign PANEL_PWM_MAX_VALUE
(0xFF) to backlight.max. And driver assign the same value when precision_bi=
ts is "8" (support max level 255).=20

Best regards,
Shawn

>
>> =20
>>  	return 0;
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h=20
>> b/drivers/gpu/drm/i915/i915_drv.h index 005b1cec7007..1b42e39a7cd4=20
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -706,6 +706,7 @@ struct intel_vbt_data {
>> =20
>>  	struct {
>>  		u16 pwm_freq_hz;
>> +		u16 brightness_precision_bits;
>>  		bool present;
>>  		bool active_low_pwm;
>>  		u8 min_brightness;	/* min_brightness/255 of max */
>
>--
>Jani Nikula, Intel Open Source Graphics Center
>
