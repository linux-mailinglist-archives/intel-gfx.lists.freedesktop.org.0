Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEAE31E96F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 13:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA826E82C;
	Thu, 18 Feb 2021 12:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE7E6E82F
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 12:01:38 +0000 (UTC)
IronPort-SDR: YQUHOYozVfr8azh+Nvkql7f76Lz7pkzvoRdhfjbMQzqDDmm1qCNvKa2Y3AFExix2YC7kP3SsB+
 WlFVtcnkHv+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183544355"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="183544355"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 04:01:37 -0800
IronPort-SDR: TXBsEy4BlkrZEKYUsxYTZRdYoubFhtFNWLxO+0fWVs9ZkqouLt1t4umoNPg6ZgxVf5Bu1KkR4Q
 OlM9dAzI8gDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="364803106"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 18 Feb 2021 04:01:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Feb 2021 04:01:36 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Feb 2021 04:01:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 18 Feb 2021 04:01:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 18 Feb 2021 04:01:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ubvsm5WCNovrAJz4BCfr0iiukqQD5QF6lfSpJUVHIUnRt8lbTJRvaLRWDo+j9Njps1esYggf/Ytw+TXePa6MPmOT1Li/VliAFdeP27dJKKKWQQIUSi/jAI+TdswH0sosu24VMhEzjC9QmnN0R6Z0JzMamIHsIbZvNPZoH2NXS5u1XlU3mYrk7zFCRGrF8c1bsNZ7kx0juoafJjn4Z4/cHD4TDe6ONzfBanC8jK5BdvHlA12xbFkZ4R5NpFFdsYcWjBHzKNp0ErVAoZjH5m7dI3G7rXmnV1A4zM9ID/YCDgDUZR9j8C1ntJ2Ao3gX6FYfZg+lB6fzaUGegOYuX7WmTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Wya5WXOMPr+lo/y0VIO6eIcrgn4B3kPdZ4fgwE7C8s=;
 b=fATNT8HNBy3cHHaSBQdxjPHBJuurzPxfmGWHXExQMHIiABNoJJu43Lw+IGHbOlevfosV8pJTW5uYx88aFqvttHMNMGxfC0lY04gdE3uMJ2BCjWkU79jo43EkiYVZ6xA/swzD6jmOyGf+ZIRAuocHyzHvzn5eKRf3R1tjxqYHEeMZbk8eg9SlTLY6ToLZldqeanwda3dGihrkvODzdPk+sUfGC+sN5ZFNyZeKrm8It3cN2NxEvCBfIRKEFkceOTuDq9tlqqC43ydJNP+yG5hGcSlmbdtD9oCksOvNI0euXMmv7xLWMCJjw1qGkLYfBaaLwn2P2p10V/JStkzWTuVvxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Wya5WXOMPr+lo/y0VIO6eIcrgn4B3kPdZ4fgwE7C8s=;
 b=GfMo/VXGDrpdrn2MzQy2fKIA65cVR4XZTJvWGRKODo8UYjinD71WVnOFD/s4IHxb0Ln5dBwl18ZuDFFT9wOIY6StSoy8V7ITG7fibB4NrqHWk6RAuhiBvmg3KeIRVpzmUzNrHQSIiMrlPm03ui1Yf/iKJxL7727lXfvHJ7v75gA=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BY5PR11MB3975.namprd11.prod.outlook.com (2603:10b6:a03:184::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.35; Thu, 18 Feb
 2021 12:01:31 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd%6]) with mapi id 15.20.3846.041; Thu, 18 Feb 2021
 12:01:31 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3] drm/i915/vbt: update DP max link rate table
Thread-Index: AQHXBUIvd4cZXfKzHUqlt7V/BCGWGapcfUyAgAFRpXA=
Date: Thu, 18 Feb 2021 12:01:31 +0000
Message-ID: <BY5PR11MB4307D5F206254B4BE422C40DA3859@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <20210217153935.8528-1-shawn.c.lee@intel.com> <YC06FU1sEIAgeaYo@intel.com>
In-Reply-To: <YC06FU1sEIAgeaYo@intel.com>
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
x-ms-office365-filtering-correlation-id: 6b6843e2-0894-4f8c-2f25-08d8d404ee5d
x-ms-traffictypediagnostic: BY5PR11MB3975:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3975FA09A7DF0BBA5779092DA3859@BY5PR11MB3975.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 12PK6QAmmclKsCzJnV0ya+JJceY5z7KBtL98CQlX8Imo9aOpPtgrEKDdmakzSVMn2eczAQe5Ty1tBahrpuMAQSUogQtWuvc57vIR9dqWqTFwleiNbkPOhMBhiSpuch7qAadABQ9KFIXzJge1XD4wYZVLSg9JOTp9VUP+ufSX1GLK/vxf28i8qghQi+91X8dvWxnjhVNVPoRfn899KduCU6P/XWYgrb+OOdZ+Vzh205yFLUBw13+R/S/erHGuUfihLt5xvWwxIgMc/9Oaa3r1txychiN6vjF7a6Ha8W2VcZa5LNLd9Sq8AuDPP21gXnBkL8eg9KIyuJG67WSoxRx5+bHn+Nj/LaJ6xbTXiAn+y6OUqizmtwUiZ0SFfR7lO35SV2xO7tYABqwKpae7Jz/1DCSoeAyNBP7we5PxuOjp6V3boXgNb1B8qkYO3xxv9TuAZrGuZOfm90RqX53xmvM3OhWLJYA7ULlVUhaWD5zn4gVbth+P4N2AlfAZwp3Oo9cLgClpQKC6K5nQ8IU5zWBNsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(396003)(39860400002)(136003)(7696005)(66574015)(33656002)(86362001)(66446008)(66476007)(2906002)(8936002)(8676002)(54906003)(110136005)(316002)(71200400001)(478600001)(26005)(66946007)(55016002)(64756008)(66556008)(83380400001)(55236004)(6506007)(186003)(53546011)(4326008)(5660300002)(9686003)(15650500001)(76116006)(52536014)(8796002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?NzoQhRkDkHq70EjthLmUZUZwV4pTXYSOOi1fkdho4EzOatFLObh/7tt2My?=
 =?iso-8859-1?Q?6x1GTQbae0K/n+CBvdXzLECfEHxd0gdJzoT5Qu9ms+kE9kGrp3w8xGopq5?=
 =?iso-8859-1?Q?wVa45K6tDEdmKcqqdGQyaRPrzcJzMSkfwi4egCptVUMkznVMdlFWTQNd7i?=
 =?iso-8859-1?Q?EH4zh1XDWWOroo6O60ObVdyDCzbr17kshnUv12ERFB3jZU5gDXoKfyejqG?=
 =?iso-8859-1?Q?n4glAVCERvX9caLUB56KI485pdY5p7iGPb3x4ukojfaIkM5hQTDs9hX2XY?=
 =?iso-8859-1?Q?GKcQ/bpGPRTTt1kS5+wA7hQNMwhcexARAjyuGrDrY8EPAHWZdm+Uzr8xRo?=
 =?iso-8859-1?Q?uPdHpKnnQSlJxB0sIo/aGhzT392zw9O4KVlSB0zLp3/lxWXvZ1qBPJBv30?=
 =?iso-8859-1?Q?1arbt/HBol/WHqnUEACvoMhJQHHYPKabkyf1dQNfS8v/6rS9eAnCg8vlDn?=
 =?iso-8859-1?Q?y0l2UPe/8Dnj7yE2+k4adY2tpEswgMexSZF0WlzNf+AvY8eKL/fQdrzZA7?=
 =?iso-8859-1?Q?PIGPvCm8UVafxKM4N2mlVaVDMqaL6rSLDlUkQMv+t/rIIab9QskCEWGu62?=
 =?iso-8859-1?Q?aDMYKUqO7eXD882G+RSDX9cHqnOG4ozdXNCtF8pFb2rWva5Kw0Ayj6j96L?=
 =?iso-8859-1?Q?3WB2lMzxSSc8uGdX5xCEzV7inLyErSH4DASGmWqKsddSCAAE4hULH9zZPV?=
 =?iso-8859-1?Q?0PxBSMOxbht+lVgS7GoouNZDENPvNMxBeE+PcpNgg0Ioyu5Wyvw9XsxuRM?=
 =?iso-8859-1?Q?wIJKPjXCv4raZijCz3rRenI89KEtpzrdVU7ujRF5F/pw5Mwl94bDk5FX9U?=
 =?iso-8859-1?Q?mkR6/tO1gCK4+Ev3OniGQjekUlDRzj3IQ3219uMHjwiIBVj6PmUpERGgSJ?=
 =?iso-8859-1?Q?jmKs/eLJ1JIL3jw2YirDg1IqSeGCG8cDwszpXlVr7tXorQe+DyRFNPgiA3?=
 =?iso-8859-1?Q?BSUW0F1Xoyr/Ek1+2wYdez9bznFgeeYnM2O+WDfw95eAv11cvj25NdhboG?=
 =?iso-8859-1?Q?Xvz0KBfsD15zwBuiUSYbiYhXusv/0Aiafvk1pfjIGPjD3oiSmuWHtcmVW9?=
 =?iso-8859-1?Q?xuawUbk6wFIn5+sIOFLZMmVi/xg1QjNepBgvq1wXIUNgvOOZNUGOg3srEw?=
 =?iso-8859-1?Q?2LVmzIadb6Rz9l96JFkpKrX5LxhQSovnq7TvsVzEQ9CvKcVYNQzzcM0V9g?=
 =?iso-8859-1?Q?ihcKKqaqChwJpu2RTJUGHH+d1UfllwUjuRi5SuE+IHSaE7cNWrZbMGuNUS?=
 =?iso-8859-1?Q?IbOT8cLIBYeFp+qR9HXhhIiEslskgYAOiO/St0XKKqkI0i6nJJPYRssQ3p?=
 =?iso-8859-1?Q?D3qYmlHNtD8co0B1KJA9zdPepk2sM2nyv1kx6J1FkGyv3rKsl+beRNZU68?=
 =?iso-8859-1?Q?nE4/Czoubk?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6843e2-0894-4f8c-2f25-08d8d404ee5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2021 12:01:31.5568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: veCXWKgBLDGONvQyiNfVbxFXePCVwxm+OLlJEXMI17/7n/8o7BwUqwywQaqHpK+5aBkWaTcQ+33CRORzE5KWkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3975
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/vbt: update DP max link rate
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
Reply-To: "20210217153935.8528-1-shawn.c.lee@intel.com"
 <20210217153935.8528-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 3:45 p.m., Ville Syrj=E4l=E4 wrote:
>On Wed, Feb 17, 2021 at 11:39:35PM +0800, Lee Shawn C wrote:
>> According to Bspec #20124, max link rate table for DP was updated at =

>> BDB version 230. Max link rate can support upto UHBR.
>> =

>> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3 were =

>> changed. For backward compatibility. If BDB version was from 216 to =

>> 229. Driver have to follow original rule to configure DP max link rate =

>> value from VBT.
>> =

>> v2: split the mapping table to two for old and new BDB definition.
>> v3: return link rate instead of assigning it.
>> =

>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 78 +++++++++++++++----
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 ++++--
>>  2 files changed, 80 insertions(+), 21 deletions(-)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c =

>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 7902d4c2673e..d8305c351b77 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1759,6 +1759,64 @@ static enum port dvo_port_to_port(struct drm_i915=
_private *dev_priv,
>>  					  dvo_port);
>>  }
>>  =

>> +static int parse_bdb_230_dp_max_link_rate(const int =

>> +vbt_max_link_rate) {
>> +	int link_rate;
>
>That variable is rather pointless...
>
>> +
>> +	switch (vbt_max_link_rate) {
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20:
>> +		link_rate =3D 2000000;
>> +		break;
>
>... when you can just 'return <rate>' here directly.
>Would reduce the noise a bit as well since the break statements would vani=
sh.
>

Update patch v4 and just return the value as you mentioned. =

Please help to review again.

BTW,  I'm sorry I press "test again" button two times and waste test machin=
e resource.

Best regards,
Shawn

>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5:
>> +		link_rate =3D 1350000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_UHBR10:
>> +		link_rate =3D 1000000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR3:
>> +		link_rate =3D 810000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR2:
>> +		link_rate =3D 540000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_HBR:
>> +		link_rate =3D 270000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_LBR:
>> +		link_rate =3D 162000;
>> +		break;
>> +	case BDB_230_VBT_DP_MAX_LINK_RATE_DEF:
>> +	default:
>> +		link_rate =3D 0;
>> +		break;
>> +	}
>> +
>> +	return link_rate;
>> +}
>> +
>> +static int parse_bdb_216_dp_max_link_rate(const int =

>> +vbt_max_link_rate) {
>> +	int link_rate;
>
>Same here.
>
>With that changed this is
>Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>> +
>> +	switch (vbt_max_link_rate) {
>> +	default:
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR3:
>> +		link_rate =3D 810000;
>> +		break;
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR2:
>> +		link_rate =3D 540000;
>> +		break;
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_HBR:
>> +		link_rate =3D 270000;
>> +		break;
>> +	case BDB_216_VBT_DP_MAX_LINK_RATE_LBR:
>> +		link_rate =3D 162000;
>> +		break;
>> +	}
>> +
>> +	return link_rate;
>> +}
>> +
>>  static void parse_ddi_port(struct drm_i915_private *dev_priv,
>>  			   struct display_device_data *devdata,
>>  			   u8 bdb_version)
>> @@ -1884,21 +1942,11 @@ static void parse_ddi_port(struct =

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
>> +			info->dp_max_link_rate =3D parse_bdb_230_dp_max_link_rate(child->dp_=
max_link_rate);
>> +		else
>> +			info->dp_max_link_rate =3D =

>> +parse_bdb_216_dp_max_link_rate(child->dp_max_link_rate);
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
