Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 179FD31DC7D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 16:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620696E25B;
	Wed, 17 Feb 2021 15:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66DC56E25B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 15:38:54 +0000 (UTC)
IronPort-SDR: eMVQXAZjTodbXyQ0zesSyyq5brsC6G5dx7q8BVcCfJZQF1Ooxm6+AhbDi6QaYhpVhWoC4JF+kf
 0iDs5f3b4PvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="170884026"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="170884026"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 07:38:53 -0800
IronPort-SDR: RNwl0QI+efWbYMcOYD3flXEw89/8pi5NYrjoE7uGmQIm0xm8PW5zqasLBXooW1yMHKc8aIBhk6
 qPHAWclkaeLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="439403373"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 17 Feb 2021 07:38:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 07:38:52 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 07:38:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 17 Feb 2021 07:38:51 -0800
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.57) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 17 Feb 2021 07:38:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOhDGDMzcqinV4RhSssW8ZNXynE/1PtdBrFBO1AVqvfLvWRo3iJP1/6sOpopNyAaaSOIKC9B5ONYPSCdwJnmt68iKu/vZeyIPq0HkcaaRDP3nM4kU3RWCt2Lx8ChCC8sW16FZYi1zR0r7Nsc8WcS8UklubV2GdNq3I2iW2R/bNDPmxwZLnU/tlFmuG47ZPYzylao9DE2fZtsMQJ0QQOleRwnhPUV6J+oe8wf4QtRjzkwjLr9HdwxAuOBkLnBw0RMW34JoFOcZalib1GTLsKg/JtjsaiN+HcKK2WQlMujqGDd+HazxXagZT6ajmwnjFHjE+CpQSwkI0ZDdayGKLXZ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBb3luxiIt0F6tGF7v2UpEEgsh6Qo4D/UtpmzMjjr1c=;
 b=NQevh3GBgJhYn7Oz+oUCx0a4Dsg/gf1ZZTqU41he67QyuvuyTn4t/4nC1nggQwyBMfHyBTSAVU1ZN852f73CI46QZMIxvRmmsi3c3cVnTkWwpNGUBI+/yuYJgPjMH2OYMsCNUVFNN0HmTbtXTkAwhWbcmi2CHkMPvXkhT4agYomTZggrmGbfk9a/p/cJvipaNTPNi2DDIUCtVCprTR6cOIxFF3ntABSQdv3tDStm0a5dEFGNlWi4VSYqgB3OTbVCAOnflBpTAWSLBCowgu5LR0ckC/e2C5sl93Ud4QMmVLl+Jh2+xLGJZbFzS/BjOewQNP8AZRKbjgsZdpj6zJfecQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBb3luxiIt0F6tGF7v2UpEEgsh6Qo4D/UtpmzMjjr1c=;
 b=PWhJc1S0wBkLJJsTNBuRbEKXt8tfAqSsC6Fwih7qauE4qlFpZ+50GBshvFj+qc27wGZBjdnkjzqAiFFfNKfSLdPRX8asgSw+7gvWC4fos2EFZ1NIo6ma0SGjOzQlOl5mdMycyDtejA6TtJG9RhQZECvHzsFgbyPXkq1AOJ5jKWY=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BY5PR11MB4102.namprd11.prod.outlook.com (2603:10b6:a03:181::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.26; Wed, 17 Feb
 2021 15:38:48 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd%6]) with mapi id 15.20.3846.041; Wed, 17 Feb 2021
 15:38:48 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/vbt: update DP max link rate table
Thread-Index: AQHXBPj1CKHhOU0uzEKITL1b7c1kGapcVfSAgAAkfdA=
Date: Wed, 17 Feb 2021 15:38:48 +0000
Message-ID: <BY5PR11MB430755CB0F51FC9647FB90A4A3869@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <20210217065519.31081-1-shawn.c.lee@intel.com> <YC0YmV6mYWZUf+DJ@intel.com>
In-Reply-To: <YC0YmV6mYWZUf+DJ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.10.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 342bdfa4-7fe2-40f2-96a2-08d8d35a1e8c
x-ms-traffictypediagnostic: BY5PR11MB4102:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4102A6340A61CA67E79C52E1A3869@BY5PR11MB4102.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i9gYjDC8ulx+l+bsvTLct8CxsW/8w2ittxxPeVhHc7uFbO4A2dS+HPdJIogbPwU6aZlYIGz07BEwXSiAO58l2gXQjNcAIr3Ez7qdrb3uW8+oi/a3ybz+n3mK2Az9pOOKYirXrp+aRjzol1diLNXQuSz2VC5F5vzqliqNz7B69KcYHsf24P9bkOd5sBmyXLnwXh+cX7KSxNmgtWyLYor/sMp4b6OwJwu/4uiwaEBVyu/nb0M3X96zgR6Ht9IbJ5d8ZwdPytoH/WAU5L5LqrD0EL0NYK6tFj6+en+jbelcQ0Gxox25Gl27R7sHkTUWdsFDKbssOs2iYWforjc7DwjuiTk9enVz+Zr/Upluv3KC6HDuN1w+xAD6u9QJsF3YUQgXQK5BJOP97KrD9NLKU1MD9kSZ3FK+BNpJDM57CD0ZCT0kG8//jpoiws69x7gLCdgyOspnzHCHj7LgyhtQM/WMjukJQYotPoJ6z+XO1kFPjnSpxu7iPzbS21wc+AYBXUBEXES+uRaRX+qVKPyznvYx+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(39860400002)(346002)(136003)(110136005)(26005)(33656002)(83380400001)(478600001)(54906003)(4326008)(8796002)(8676002)(86362001)(71200400001)(8936002)(5660300002)(55236004)(52536014)(316002)(66476007)(76116006)(186003)(15650500001)(55016002)(2906002)(66446008)(6506007)(66556008)(53546011)(64756008)(7696005)(9686003)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?lbyBEG8Bt89IlJVk4YkLAzE60IqfoKTlzue939u0VX37CUQnCwAaFTAaKH?=
 =?iso-8859-1?Q?3xVHxXgmxomYVpoujOzMzNHIEPFmSl6lByYc5KyB/KiMDLQxL+XY2k2yiK?=
 =?iso-8859-1?Q?CunbAYOCNTUf9My8lfoAoRpKqJiY7iE2/OPyJIqR5KxqPxuPnuMqh60d9g?=
 =?iso-8859-1?Q?Mcl8RY9TeZ7stPxJIfk0XSUCUjhE6EZU79wKHer+bfJq5NdB5KmZvkgexN?=
 =?iso-8859-1?Q?CqcBsr/oVpv/byu9CCTqPe89r+T6FGTRjMdB5LmbJL0AbuwsgQXPQlDvNk?=
 =?iso-8859-1?Q?p1CihmkCbKSGQ3gywKFaRtOhtwuOAB3xvhJat+v+VXTPP5ov0FgEkltsc+?=
 =?iso-8859-1?Q?DNKvlf08FSThQbNRUVq9r9VX1kczCyRN79UF50bThNVaAQhFekgiaicxOk?=
 =?iso-8859-1?Q?5rOoDR5pZqOSlM+AeMe2WYB7OmeRSGTedn7qz6vVEVILdYd9Q2Cp690c1V?=
 =?iso-8859-1?Q?g8GFdY36ivZbSnAQPU5w/5gXAcrbc+0Kj5EUYsIjPOeRW6VYqPKLpx8rXC?=
 =?iso-8859-1?Q?z6ZOc0gCnbGnApSs3oqXuwEQYMu4wskSiiOebwSbet5Z3+h2mDRiKsKn2c?=
 =?iso-8859-1?Q?Q67gUv8G3n0/4il3Q33ADXEkJXR1BsdzbgC8DWGiSDUZIbB4q3Ue3Ch512?=
 =?iso-8859-1?Q?BrK/MNWmDpxNHbpGIRy+GC4zgSyii4VFbXyYArKryik7/VDRV5pX+lufWO?=
 =?iso-8859-1?Q?YfDgJ61MKAg9py4VAJKW2MFtHhUBeF57swJlR2VrzCHN7VnsbMPxA+sAdd?=
 =?iso-8859-1?Q?NCgqXugqe7XUuT1/nZdqHVBfyjfE/W1mjdm5YB52qjylJRrO4KFiyt1DEN?=
 =?iso-8859-1?Q?RvgqEk1mq9f6RwQdWfdy9i82b8JV8pWZIvJMdLplhUFQBlr6czKvags9an?=
 =?iso-8859-1?Q?iQI2Xs+PYczT7n5Sv0MfYmwPJNufnbYh3MNPZIVevzVtwDzjpbbzJ8Z5bn?=
 =?iso-8859-1?Q?BXj5dfsJxy3au+jy4cqJT6UtEv+hBJ+lA/X0VJ6Z0FzG6B4GGoQ8buK5cG?=
 =?iso-8859-1?Q?qjzjDDgozN4OG7I/WnB7QVrvkNAyyUIYeKHUnD/hqGV39kX/HX5PsPK5Uo?=
 =?iso-8859-1?Q?Ty1MfGg5NgdmHt1ZyPG/KkMTCEUSOiOlOqFVX+evE2LWRqZkyAupi4h14M?=
 =?iso-8859-1?Q?w2z/T+Aqn0ZNXaMFTjYXukMRaUUVAgGGoq5df6x4CRKs4BMsEkimmfIv56?=
 =?iso-8859-1?Q?7etLQxIzGU/HgeDVxlsUma8IoowTaXUDFRbUJYeF1nsGDc7WvgKg/ITj70?=
 =?iso-8859-1?Q?Ob6u5yVQb8yB7gUQNCOmUVa7NzGdJ40Nr5c+lfBbWg35EPUwYFSHhNojo0?=
 =?iso-8859-1?Q?3sDBecK3S0fZq93NS2c4UqEZXrwXSramLTF+Ct7Cj/On7yr55AooJW3gla?=
 =?iso-8859-1?Q?yg1ojWfz2h?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 342bdfa4-7fe2-40f2-96a2-08d8d35a1e8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 15:38:48.3164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SsX2HqkiKaj96oE0vXp1yyXiuhvmc+IgfBZ5H/g3VvqsmPGU1f8G6tLNguaD1HAPvDVsP+S57SfKniDHLQPvzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4102
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/vbt: update DP max link rate
 table
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
Reply-To: "20210217065519.31081-1-shawn.c.lee@intel.com"
 <20210217065519.31081-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 1:22 p.m., Ville Syrj=E4l=E4 wrote:
>On Wed, Feb 17, 2021 at 02:55:19PM +0800, Lee Shawn C wrote:
>> According to Bspec #20124, max link rate table for DP was updated at =

>> BDB version 230. Max link rate can support upto UHBR.
>> =

>> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3 were =

>> changed. For backward compatibility. If BDB version was from 216 to =

>> 229. Driver have to follow original rule to configure DP max link rate =

>> value from VBT.
>> =

>> v2: split the mapping table to two for old and new BDB definition.
>> =

>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 72 +++++++++++++++----
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 ++++--
>>  2 files changed, 74 insertions(+), 21 deletions(-)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c =

>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 7902d4c2673e..a094c966f37f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1759,6 +1759,58 @@ static enum port dvo_port_to_port(struct drm_i915=
_private *dev_priv,
>>  					  dvo_port);
>>  }
>>  =

>> +static void parse_bdb_230_dp_max_link_rate(const struct child_device_co=
nfig *child,
>> +					   struct ddi_vbt_port_info *info) {
>> +	switch (child->dp_max_link_rate) {
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20:
>> +		info->dp_max_link_rate =3D 2000000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5:
>> +		info->dp_max_link_rate =3D 1350000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10:
>> +		info->dp_max_link_rate =3D 1000000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR3:
>> +		info->dp_max_link_rate =3D 810000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR2:
>> +		info->dp_max_link_rate =3D 540000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR:
>> +		info->dp_max_link_rate =3D 270000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_LBR:
>> +		info->dp_max_link_rate =3D 162000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_DEF:
>> +	default:
>> +		info->dp_max_link_rate =3D 0;
>> +		break;
>> +	}
>> +}
>> +
>> +static void parse_bdb_216_dp_max_link_rate(const struct child_device_co=
nfig *child,
>> +					   struct ddi_vbt_port_info *info) {
>> +	switch (child->dp_max_link_rate) {
>> +	default:
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR3:
>> +		info->dp_max_link_rate =3D 810000;
>> +		break;
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR2:
>> +		info->dp_max_link_rate =3D 540000;
>> +		break;
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR:
>> +		info->dp_max_link_rate =3D 270000;
>> +		break;
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_LBR:
>> +		info->dp_max_link_rate =3D 162000;
>> +		break;
>> +	}
>> +}
>
>Looks pretty good. One minor nit is that I would prefer these
>to be pure functions. Ie. they should just directly return
>the link rate instead of assigning it anywhere.
>
>Then we can just do:
>if (bdb_version >=3D 230)
>	info->dp_max_link_rate =3D parse_bdb_230_dp_max_link_rate(child)
>else
>	info->dp_max_link_rate =3D parse_bdb_216_dp_max_link_rate(child)
>

Just modify the code like this and send patch v3 for review. Thanks for com=
ment!

Best regards,
Shawn

>> +
>>  static void parse_ddi_port(struct drm_i915_private *dev_priv,
>>  			   struct display_device_data *devdata,
>>  			   u8 bdb_version)
>> @@ -1884,21 +1936,11 @@ static void parse_ddi_port(struct =

>> drm_i915_private *dev_priv,
>>  =

>>  	/* DP max link rate for CNL+ */
>>  	if (bdb_version >=3D 216) {
>> -		switch (child->dp_max_link_rate) {
>> -		default:
>> -		case VBT_DP_MAX_LINK_RATE_HBR3:
>> -			info->dp_max_link_rate =3D 810000;
>> -			break;
>> -		case VBT_DP_MAX_LINK_RATE_HBR2:
>> -			info->dp_max_link_rate =3D 540000;
>> -			break;
>> -		case VBT_DP_MAX_LINK_RATE_HBR:
>> -			info->dp_max_link_rate =3D 270000;
>> -			break;
>> -		case VBT_DP_MAX_LINK_RATE_LBR:
>> -			info->dp_max_link_rate =3D 162000;
>> -			break;
>> -		}
>> +		if (bdb_version >=3D 230)
>> +			parse_bdb_230_dp_max_link_rate(child, info);
>> +		else
>> +			parse_bdb_216_dp_max_link_rate(child, info);
>> +
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "Port %c VBT DP max link rate: %d\n",
>>  			    port_name(port), info->dp_max_link_rate); diff --git =

>> a/drivers/gpu/drm/i915/display/intel_vbt_defs.h =

>> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index 6d10fa037751..0d80b04b34be 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -343,10 +343,21 @@ enum vbt_gmbus_ddi {  #define DP_AUX_H 0x80  =

>> #define DP_AUX_I 0x90
>>  =

>> -#define VBT_DP_MAX_LINK_RATE_HBR3	0
>> -#define VBT_DP_MAX_LINK_RATE_HBR2	1
>> -#define VBT_DP_MAX_LINK_RATE_HBR	2
>> -#define VBT_DP_MAX_LINK_RATE_LBR	3
>> +/* DP max link rate 216+ */
>> +#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR3	0
>> +#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR2	1
>> +#define BDB_216_VBT_DP_MAX_LINK_RATE_HBR	2
>> +#define BDB_216_VBT_DP_MAX_LINK_RATE_LBR	3
>> +
>> +/* DP max link rate 230+ */
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_DEF	0
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_LBR	1
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR	2
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR2	3
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_HBR3	4
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10	5
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
>> +#define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
>>  =

>>  /*
>>   * The child device config, aka the display device data structure, =

>> provides a @@ -445,8 +456,8 @@ struct child_device_config {
>>  	u16 dp_gpio_pin_num;					/* 195 */
>>  	u8 dp_iboost_level:4;					/* 196 */
>>  	u8 hdmi_iboost_level:4;					/* 196 */
>> -	u8 dp_max_link_rate:2;					/* 216 CNL+ */
>> -	u8 dp_max_link_rate_reserved:6;				/* 216 */
>> +	u8 dp_max_link_rate:3;					/* 230 CNL+ */
>> +	u8 dp_max_link_rate_reserved:5;				/* 230 */
>>  } __packed;
>>  =

>>  struct bdb_general_definitions {
>> --
>> 2.17.1
>
>--
>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
