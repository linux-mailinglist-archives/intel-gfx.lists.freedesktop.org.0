Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C88F640F7A1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 14:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1336EC4A;
	Fri, 17 Sep 2021 12:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282896EC4F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 12:35:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="210019667"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="210019667"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 05:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="530711677"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2021 05:35:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 05:35:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 17 Sep 2021 05:35:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 17 Sep 2021 05:35:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TtTXQF+g6ZP7ALf63jku3idcS1Ae3VyMwVW8ifSxFsK2qi/TX0zYepj7JZIOjzhDBGlDOcd2fa5Gb5Cikb5m57vImX+eAEZizapZim0tdH3yBtCNYsYHKp4Fx5cv80CnDrNGhPbMFGikHv0cdfCymw9pLJsIwMX7Vx91R8T3KgEIlcssrEGTgX5nUtbruBjwXtMmfYeUW0EyvJaz61Tdn8r+vX6I2pg9l0orzI3B+Bh7BO9XaPP9TpKHl/9/lsJbg9bK7nhVrVG13SlpzIvs8+UvsX9DcLldjDQwTDYB8TizTaWzd0om1TblwKGwFKP6Bi0mikvOyVaHCmpzs3p+3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=vDlS+gzd75PtZn6MiFVQU2x1LIuXyznmmmi1bwZxybo=;
 b=bg0XBD0G4z2OioEIsBkNIUIqSJQLFMogPZXmc8BaUpAjvSn2MGhkd/MrZzsESmY0O5aViv+8IWBfDGa4CL/dULFYZOUKjGqYmZoUc7BGeWrP8RTBrlgkMcwTsS2/HiyfAYz0IhTje5HHX7uBsyohvAlwP+Tcedep+9NcbDVOW/ulOcNm5fppbPuZLM2rCxlc0565EODOlSr4ivwKI9iW6HQ4FpxiJV4FeqfSJxQM8K1WguOwwaoAjR7mR6U84e3HiFEDeDWy81aXwr+nCzJFV9TLzIMYHdGNKhzTDX2tTtoGafoTScT7DrJG0c23i1U+0gRQhWa/OuG0zc4tSB43JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDlS+gzd75PtZn6MiFVQU2x1LIuXyznmmmi1bwZxybo=;
 b=JcnKNbZ5nSBz0u+J5suc0tUojoR3Lf6N25zfhX+1i4t48HszCZ71rZdI2WTBgmSOSPndZIxcrtS+HFvzITZgUMOig98qhHNOr7yg9VkXdWiSto9vp3YOAOi25OCIXEcd584h8b46JsPucJBdybT+Z3oRiPatkQ+3iuYWHcO1wz8=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 12:35:30 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d92:b64a:8b59:cf4a]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d92:b64a:8b59:cf4a%9]) with mapi id 15.20.4523.017; Fri, 17 Sep 2021
 12:35:30 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/dsi: do not register gmbus if it was reserved
 for MIPI display
Thread-Index: AQHXq3zkXTfXqY0ppkeBSvJyFKLeoauoDxGAgAAVANA=
Date: Fri, 17 Sep 2021 12:35:30 +0000
Message-ID: <CO6PR11MB56510C130E047D56EB5F10FFA3DD9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
 <20210917043537.4575-1-shawn.c.lee@intel.com> <87wnnfv56y.fsf@intel.com>
In-Reply-To: <87wnnfv56y.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f900ab0-9f46-4061-93c8-08d979d7a29c
x-ms-traffictypediagnostic: CO6PR11MB5602:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5602C1E2A20C270D2D387750A3DD9@CO6PR11MB5602.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ouni6POgHNFLvrZyK7mJonDkuo3ncTj6qh1ZJ9oX73g+/gbo+UyVhY/Lo4LfXkf1oyZrWVyc4AfYesR4UtwGRZyeLVKJgRDp7yK4jpoAk9ElAUgHvjRiXOJhJz3+m0I92Q3ZVxkjzgzBxkKH5ExtOslVJtauzeOrmvRZMSSOJ3DQTxN4ehA9bQd+K31RG2bxNE3ltkKNSaic0eygnIi/pKEAgo+310eOhv3DawcK2pM8yhp+bgzcYvN81ywlLpIcenDoGRQDLFM/6zm/2eneX3P6Av3Ho9OLKeRO3FBySkSaYDhs71lTA7HJFQPMhhGs7IOkcOzeYWInoruZN1wx2a9+LxG3Nx7qyngqAiy4RTWyEVoPfup7Dnd69TpSBhWqmFpQpJNw5LR1ftCmCMsEqBtxmgjt8+gJEqgOLwqNrS/Bo3uXfE9jmCrCId7NxUNXhGSKjVv1/0gao6HIUlQNqYpTmgcBAacPIvZzRpZ6fPzonfLzc4d+Gsof+94jvj/+pCPUbICkiEos39W16gi/d+0p+BD90yQ3viqfAXOn08a7eIYn9erYfR6fOs+7rKbslWakekVSQIqtkuNV7b267ALJ4znxBJ7xslb+3xIf3n4vR5z2zh1AywifqLCZmJQY7BmmmGBLQreqXLZrXuQ+Sqe3kITaiCZ4b9x9bBsimIBAAvUwtMThpO5ciyjRbp8/klEquqEmKLcIZUremR3Ujg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(26005)(5660300002)(4326008)(7696005)(8676002)(9686003)(2906002)(86362001)(55016002)(38100700002)(6506007)(122000001)(55236004)(38070700005)(76116006)(66476007)(508600001)(54906003)(66556008)(33656002)(71200400001)(110136005)(64756008)(66446008)(8936002)(8796002)(83380400001)(52536014)(316002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?tZslDmmMY2TpfowOappl2miUGP2cNUy0TBRiyV/uhUSrFTeEJDJyUhIJRj?=
 =?iso-8859-1?Q?rVpk5T/bDB/79pOmyBDtZAcWlP9IIfnJJqA9FpeRBFb3HzPRQFLO27uA0E?=
 =?iso-8859-1?Q?ILJ31cIdnXXCBML/RxDXFUHqbkkbc3z1pzfOsdTiyzwPinp+G9qCXhPj+6?=
 =?iso-8859-1?Q?qKm077vXA/qD0CGwC3fNccWGrPw7ksnRZDQYWeeju/XGrBjqgifF6m4iz0?=
 =?iso-8859-1?Q?9/yYWwdzac5mNTNdFAKwqiV1YHd4zuTvDaR4ifFisAPC9WhqvHXVJLB1hg?=
 =?iso-8859-1?Q?/5mlHfDpQ+c9WGmrYNJm7KNGWUbUyVrFcsmRQYKrxNRchoQp5qIACSRIqQ?=
 =?iso-8859-1?Q?+wUSuj3eAQALhIw3+od+3kEHISce/ySvCkvAPEoDd0UReEXWEy9D9FFReo?=
 =?iso-8859-1?Q?fEH4RylPdI2K0f8RZRXXRKmK9UH/hKWBIZTvcLipmd+AE8T9RS/OFUdqO/?=
 =?iso-8859-1?Q?XUM/+hQHUfioBsBR0oZEoaASxPQY9LcSg2IyJ9bvAsDB4RfHKMMjJ0n3Xb?=
 =?iso-8859-1?Q?4QufMZbteIXijKcZ49kXxucyzHbNHovhI8bxbv9Hw1QnN6QnelZS6wQOuo?=
 =?iso-8859-1?Q?Jltm3b1vR6LS2rrM74LYF+nK1SlXz1ZQlMlEbj0OQbIAz09SwJO4JhAR1r?=
 =?iso-8859-1?Q?C2lNdfNvXArw7NIYRy+sJBHWi5vxZjr+exMrtDXkqb/No7YpCdrxLytKyU?=
 =?iso-8859-1?Q?H9jELimbvfOpH6He5bGVEGm5Jxz3YiYaZXyeNiRa174y8zRx+47O57DoHA?=
 =?iso-8859-1?Q?A7EuFDYzu47FaF99hVQJtVNMhzj6By/zFxCe+5nQykiToMf0jecOg0/VUI?=
 =?iso-8859-1?Q?FMBPlHgyPahrfjwrMQrKao3SuvB+w/BmZEeOd3+b+lt5/GWwnz5WzNMU/p?=
 =?iso-8859-1?Q?xl3ygCUDZdjzWfzV3e8jEntOKTrj0RvZ/JKoR+2S5V+r7derv+KBIoI4Yj?=
 =?iso-8859-1?Q?1g6SNhXksfv5q/3k/9AqTfNkfYp6om9c9HaPuRSt7QNv3PgjovkhF+U8mF?=
 =?iso-8859-1?Q?zKz5glhz2yPuwT9ZdpNHJEjsipsHzk/jsYBMvUNN1fbk/dK/TAxcPj/sMF?=
 =?iso-8859-1?Q?E3koib11TsoA9XU1nMJZ8A0NueRrl5tUG0orLrewphUjfLr4Be+j+G2PML?=
 =?iso-8859-1?Q?pwCDu4m7WbOJ3iY8k93bdU/nX9swUyNsq7maH4NBm4/LJ18SOgFSmW73BW?=
 =?iso-8859-1?Q?BUzG1T/u1+3huBp7zm9Fp9ca6+iFseuCULm4TOAG6U4lWKmVgjN5zc47HE?=
 =?iso-8859-1?Q?a7+0hDkF9x7FaQov2IX5D5NNcLAqBJGqSZ5toRz3WGN6XbirgwGxN/tl28?=
 =?iso-8859-1?Q?B3B2Vciqgw18AhHjr/M9NcDlt5Dfp5hJB2gpU6pYOeSnDoo=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f900ab0-9f46-4061-93c8-08d979d7a29c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2021 12:35:30.1391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lFn4QD6+vsoGzOo58HDqFFP9Y1rnfQ33Rr1zy5dlcmspgSZLwD4D819NHa4jRiSqpIAPC3pi7naYaAINfl+vqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5602
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: do not register gmbus if it
 was reserved for MIPI display
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
Reply-To: "20210917043537.4575-1-shawn.c.lee@intel.com"
 <20210917043537.4575-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Sep 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Fri, 17 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> Gmbus driver would setup all Intel i2c GMBuses. But DDC bus may=20
>> configured as gpio and reserved for MIPI driver to control panel power=20
>> on/off sequence.
>>
>> Using i2c tool to communicate to peripherals via i2c interface=20
>> reversed for gmbus(DDC). There will be some high/low pulse appear on=20
>> DDC SCL and SDA (might be host sent out i2c slave address). MIPI panel=20
>> would be impacted due to unexpected signal then caused abnormal=20
>> display or shut down issue.
>>
>> v2: gmbus driver should not add i2c adapter for DDC interface
>>     if LFP display was configured to support MIPI panel.
>> v3: fix sparse warning
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_gmbus.c | 18 +++++++++++++++++-
>>  1 file changed, 17 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c=20
>> b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index ceb1bf8a8c3c..51d2b6bf2ed2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -141,6 +141,21 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_priva=
te *dev_priv,
>>  	return pin < size && get_gmbus_pin(dev_priv, pin)->name;  }
>> =20
>> +static bool intel_gmbus_ddc_reserve_for_mipi(struct drm_i915_private *d=
ev_priv,
>> +					     unsigned int pin)
>> +{
>> +	if (intel_bios_is_dsi_present(dev_priv, NULL)) {
>> +		if (DISPLAY_VER(dev_priv) >=3D 11) {
>> +			if ((pin =3D=3D GMBUS_PIN_2_BXT && dev_priv->vbt.dsi.config->dual_li=
nk) ||
>> +			     pin =3D=3D GMBUS_PIN_1_BXT) {
>> +				return true;
>> +			}
>> +		}
>> +	}
>> +
>> +	return false;
>> +}
>> +
>>  /* Intel GPIO access functions */
>> =20
>>  #define I2C_RISEFALL_TIME 10
>> @@ -859,7 +874,8 @@ int intel_gmbus_setup(struct drm_i915_private *dev_p=
riv)
>>  	init_waitqueue_head(&dev_priv->gmbus_wait_queue);
>> =20
>>  	for (pin =3D 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
>> -		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
>> +		if (!intel_gmbus_is_valid_pin(dev_priv, pin) ||
>> +		     intel_gmbus_ddc_reserve_for_mipi(dev_priv, pin))
>>  			continue;
>> =20
>>  		bus =3D &dev_priv->gmbus[pin];
>
>This does not prevent the pin from being used for e.g. HDMI,=20

Agree that customer may connect DDC pin to HDMI port. In my opinion, we sho=
uld take care that while doing HW design review on customer board.
HW member should aware these pins were reserved for MIPI display design. An=
d i915 driver would reserve them as well if LFP display was MIPI DSI panel.

>and things are probably going to go awfully wrong with intel_gmbus_get_ada=
pter() when the adapter hasn't been registered. In that sense, this is no d=
ifferent from v1.
>

Before gmbus driver do i2c_add_adapter() or i2c_del_adapter(), it always ch=
eck the pin is valid or not.
It seems we can move intel_gmbus_ddc_reserve_for_mipi() into intel_gmbus_is=
_valid_pin() to check pin was reserved or not.
Then gmbus driver would not went wrong in intel_gmbus_get_adapter() when th=
e adapter hasn't been registered.

Best regards,
Shawn

>Sure, the VBT probably shouldn't do that, but that's not an excuse for us =
to not take it into account.
>
>Cc: Ville in case he has some clever ideas off the top of his head. I know=
 I'd have to spend time I don't have to figure this out.
>
>
>BR,
>Jani.
>
>
>--
>Jani Nikula, Intel Open Source Graphics Center
