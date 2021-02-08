Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E14313351
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 14:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A96F6E8CB;
	Mon,  8 Feb 2021 13:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF866E8C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 13:32:04 +0000 (UTC)
IronPort-SDR: ZJ2YQBhoTXf9r9O5vAtKAClzFk+3MR9VzgP+PXaP9xB2botgPlV5aGo/9Rxy9ghwyPqVhDOPz6
 sBqrYcHLccWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="181855477"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="181855477"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 05:32:02 -0800
IronPort-SDR: O0iljDwvk1OK2EwZfIHSKlRJNAt+fJTXA1nWgFogivuEu2hD/zSfJQFP7PwM9e5IdlUFKX30WH
 zuAuJfasQI0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="584808172"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 08 Feb 2021 05:32:01 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Feb 2021 05:32:01 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Feb 2021 05:32:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 8 Feb 2021 05:32:00 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 8 Feb 2021 05:32:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKmCPYoNTjHJ3fxcZUC45VkU4CSiZs4B75yX+KwEQxo0vyvO+Hf/mgzwSyyCnWLTTt/GXaozu3t3CrZf3BG4sA6MXbOaVgvgN2bvLRCOrCnkduOI1QGYTf1l0Z+0inVDD7BoLdtm1+dRE281O9UrIj2dvhzmZYZ05RkrsLijEVAKcAsYezhfJ+X+EgLx5AWnX4HUb6FX1JSqHRgSORY1mv3eZbT2k2GsM3rE2SzxpHUOrHfIvtKvEn7hmJFotrIWyGm7BiiYy7ymn4N1M6EGyIvnq0kqfhVV73tfRZyu0zsGD8w36qjcH6HNkUsPK+pi0GT4BJOnxZqhSJn9T0nyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdX0PLW6sHn2XGeMMkjUW5Irj5odKvqrRGh72r2kMl4=;
 b=c+IeWBSOC0vjFmeuSjt67z6ztYEYuO1EFjpnO081xAJL0f+N1xIzAzdFtL0KhKAhBAcNjpclbtqwvM4AzzZhkap5MGiBnFISCJjXHbpDp8kP2Lw5PGCNOnZh4FroJTvqs2XIUK2k0jAoVDiLBcjITKTR1q3dAaljaE7/hiwPtOxJ/XVwNy9urHE7w7aLo34sYu5H/0tArc50w3ePJhjy1etptDJRFEWxDepRIj3pix6nYOwgB53adLu+m92t7pHx6ZVIyVeaUimdeeXRvXsmb35M++mGgXisxCb5OSc+pUmZ+nRMux6EaKmhWJr18Hm1ciItimU3nNILUzGESrIs0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdX0PLW6sHn2XGeMMkjUW5Irj5odKvqrRGh72r2kMl4=;
 b=D0/F4o/pOyO+9YdztiYfGWT6mKSg2EW+qMcFEodmHobSLG5U1XAuMJ6txz+BPT/BHVx1k3td+Vvd4GfJ9IPiEeyZ7lL89ikJS4PQ9212rdLFWo+piy1QFTGyY6FCzYfO+v/TYbVDMQF+JBv6uWh2vM4cZ40pKtXLasUbVJ9yb7c=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BY5PR11MB3895.namprd11.prod.outlook.com (2603:10b6:a03:18e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Mon, 8 Feb
 2021 13:31:57 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd%6]) with mapi id 15.20.3825.029; Mon, 8 Feb 2021
 13:31:57 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/vbt: update DP max link rate table
Thread-Index: AQHW+KqE5Kia5OBuEku8uLnVpdlKpKpKCQ2AgAQ9rlA=
Date: Mon, 8 Feb 2021 13:31:57 +0000
Message-ID: <BY5PR11MB4307E25E1688D66A7B6028BBA38F9@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <YB2p+Xa8PkFQT1L8@intel.com>
In-Reply-To: <YB2p+Xa8PkFQT1L8@intel.com>
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
x-originating-ip: [1.161.46.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c96f241-18cd-4095-4179-08d8cc35e85a
x-ms-traffictypediagnostic: BY5PR11MB3895:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3895A9B2C751C115A47A907BA38F9@BY5PR11MB3895.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 96qPRVHktezLGN2sedlVQ7OM8O/9JmV4wxVaL0L24FxE0BKa1aoooXJjuPQEsTE1XZThAevTG+I6mAqm/0u9FLm7QqXrrERQSfCt8IJ7aeUSVSZECFOOCmacQEdZN9bvYWHBgQGvAxifcbWBnOX44Ad8Gnpu4EulNbW1kloDSrBAFdqfjPThKZkwwIscT/MtAivX+9T8cMarZNFyaFmuF5K2AJI3cKqrD37zDUHI/jYNzM6ak6HOb/mTSAF3CrNZRrf2FM82XlSwNyhvVE+KwlKoki0E//vnXcDbpXNVSndzMyvOE0vGQRdTSMdBJ1yw3AxllxL0me9UJwfNCF6XW2xfkW0VfWOH3mHnW0Ie1BDWDrSyCQ7mHFDnMhG7EqNRBRvaoqzBXPrZsh8KXXFvE/VqIO7h4siOrT5+S7H0bMTGT0WdsVk5klaq3NWPOSGw5sS+pCyh1cZZ2Hx1+yFcc6XUqh5WGewO84TqZx4gO2eEOKZ3PPohj32YMxck7c1290vC26tUsbqkZZmbvozwDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(376002)(39860400002)(346002)(366004)(15650500001)(83380400001)(71200400001)(4326008)(76116006)(33656002)(6506007)(478600001)(86362001)(8796002)(186003)(54906003)(55016002)(5660300002)(8936002)(316002)(110136005)(7696005)(8676002)(9686003)(66946007)(66446008)(66556008)(66476007)(52536014)(64756008)(2906002)(66574015)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?r4COApYYaQTPLkcRx0cSa75kXZcyXnaasBFW0CGbWw8/4zRjc7+hmRk863?=
 =?iso-8859-1?Q?TPF6knboI3qGoJWpfwqUh0Jbu2L8AcN2cO5eorQt/Xxmc8Iw5H3sYihBki?=
 =?iso-8859-1?Q?PADE/V0OK5HiWbjKEmAoM1ggq+z0hI76nNOwdZ5u0bUekjN++3foyBHLYR?=
 =?iso-8859-1?Q?9ghYUd/wMmO0IOoaSoEhrmc1uNsqCA9mrSSSpvP4kNrgmDgEd9Pjlj/7yl?=
 =?iso-8859-1?Q?pXV5Zacz5a/+7FQwx75ds3o1h0jmchDklDZoKm+nDfpp8dqpkCb85ek6Lr?=
 =?iso-8859-1?Q?6/vkx6krlvPhU3ANy4/McWkwyh9bDkbWbrpLd9HAOxuRDTz9CXJJatSBFA?=
 =?iso-8859-1?Q?uG3VeoBX+0z3/PuZ49vQPW5hNNpD4RREjhUrVyUcmmvpvk+enVmqeFjvX2?=
 =?iso-8859-1?Q?0QyUUpNkUDm+/8xBLUdRqe1pTwtiG4rEmJzMw8GAYhczEVeMmmHOgFJLIq?=
 =?iso-8859-1?Q?WZsC8JNUEPCnXVrZzteVG/6JdnTc519wjY5Z88HaLfvXk1RvJK45T9tRQi?=
 =?iso-8859-1?Q?DhwrV4RX3AguGSM749IJVjONowb5IoDNSNZ6AVUlHr1PVp4qp1NwjLsZZC?=
 =?iso-8859-1?Q?JfhsI+3jUo99uKuuXiesAVRI0lx1VWRpbJ6yQ3FaJ6+AWeGp8WaHTJqQuX?=
 =?iso-8859-1?Q?9VcjJ6EIBI5bdRQzYi6ryqhxr2/E90TW7SaiqUK/ao+sWMSorH+PpZvjYl?=
 =?iso-8859-1?Q?wIK0VBp2NvxwKpJT4AnwLcLhYItPxexjnOkj6q5LfmcSpI0hTDJzD8Hw/e?=
 =?iso-8859-1?Q?GgfCNBq04OXnKCDZa37npPrBQQD8cZE0zbxse71xhGbQWl18Vqxjrleclb?=
 =?iso-8859-1?Q?PwWkbiV5sWU9ljp55o7EQ3YKI8Z6OS176DImaLelIv02xddWN0W5htH0HD?=
 =?iso-8859-1?Q?sBnLYb/15M2/FFuGQuP/4zMx6PiQvY25K1usIeDPeBeppaOhlF1SKSbIve?=
 =?iso-8859-1?Q?6u0w1x/X8dsvMc3/mn1zDRcITy8wiSzXNlnkPMnt52RWwg6Xhx9HTdvmdR?=
 =?iso-8859-1?Q?r4x/OGayZnj9WCRDtAKucjBbuHqptfkztVvznN+lnLVjNHp73Q16fWQuJ3?=
 =?iso-8859-1?Q?sMnIu6ZjznADRNNiwfNPHFyHeflttH/UaaS93E/3KfQwF2F80ptcPEmYO3?=
 =?iso-8859-1?Q?DLOoJgzSfhGsfGeybMMYRr1xL4Rs0be8IOJVGj+AD/9ati1eAkMx15ubKr?=
 =?iso-8859-1?Q?s08Lty62lfGpXc2pEXj3u1lkXjI7QrGn/e8Vl8AemoQL2JQkDve1NPBPgD?=
 =?iso-8859-1?Q?I6kV16YSdFy5jf57UX2p27tuV33IyAJ8dVFi76BAD3CRNMB+GCLL3U9fuI?=
 =?iso-8859-1?Q?5leQAakU7glFVFEUT9Oi7nJc2L1oS9v4cdbAyDv237RGYaI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c96f241-18cd-4095-4179-08d8cc35e85a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2021 13:31:57.4778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yjgLEk09ci0EcGIaM0iTVr75Dve3R962Klfc+LYZt0uhnI7EvWmBrC7HbuajZeWUc42Xlg3N9NqyYkZMcwgDBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3895
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: update DP max link rate table
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
Reply-To: "20210201150228.10001-1-shawn.c.lee@intel.com"
 <20210201150228.10001-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021, at 8:26 p.m, Ville Syrj=E4l=E4 wrote:
>On Mon, Feb 01, 2021 at 11:02:28PM +0800, Lee Shawn C wrote:
>> According to Bspec #20124, max link rate table for DP was updated at =

>> BDB version 230. Max link rate can support upto UHBR.
>> =

>> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3 were =

>> changed. For backward compatibility. If BDB version was from 216 to =

>> 229. Driver have to follow original rule to configure DP max link rate =

>> value from VBT.
>> =

>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 24 ++++++++++++++++++-
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 +++++++----
>>  2 files changed, 32 insertions(+), 6 deletions(-)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c =

>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 04337ac6f8c4..be1f732e6550 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1876,7 +1876,15 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>>  	/* DP max link rate for CNL+ */
>>  	if (bdb_version >=3D 216) {
>>  		switch (child->dp_max_link_rate) {
>> -		default:
>> +		case VBT_DP_MAX_LINK_RATE_UHBR20:
>> +			info->dp_max_link_rate =3D 2000000;
>> +			break;
>> +		case VBT_DP_MAX_LINK_RATE_UHBR13P5:
>> +			info->dp_max_link_rate =3D 1350000;
>> +			break;
>> +		case VBT_DP_MAX_LINK_RATE_UHBR10:
>> +			info->dp_max_link_rate =3D 1000000;
>> +			break;
>>  		case VBT_DP_MAX_LINK_RATE_HBR3:
>>  			info->dp_max_link_rate =3D 810000;
>>  			break;
>> @@ -1889,7 +1897,21 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>>  		case VBT_DP_MAX_LINK_RATE_LBR:
>>  			info->dp_max_link_rate =3D 162000;
>>  			break;
>> +		case VBT_DP_MAX_LINK_RATE_DEFAULT:
>> +		default:
>> +			info->dp_max_link_rate =3D 0;
>> +			break;
>> +		}
>> +
>> +		if (bdb_version < 230) {
>> +			if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_DEFAULT)
>> +				info->dp_max_link_rate =3D 810000;
>> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_LBR)
>> +				info->dp_max_link_rate =3D 540000;
>> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_HBR2)
>> +				info->dp_max_link_rate =3D 162000;
>>  		}
>
>I would split this into two separate functions, one does the new mapping, =
the other the old mapping. =

>

I will split this into two separate functions in patch v2.

>> +
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "VBT DP max link rate for port %c: %d\n",
>>  			    port_name(port), info->dp_max_link_rate); diff --git =

>> a/drivers/gpu/drm/i915/display/intel_vbt_defs.h =

>> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index 6d10fa037751..578a54b33f32 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -343,10 +343,14 @@ enum vbt_gmbus_ddi {  #define DP_AUX_H 0x80  =

>> #define DP_AUX_I 0x90
>>  =

>> -#define VBT_DP_MAX_LINK_RATE_HBR3	0
>> -#define VBT_DP_MAX_LINK_RATE_HBR2	1
>> +#define VBT_DP_MAX_LINK_RATE_DEFAULT	0
>> +#define VBT_DP_MAX_LINK_RATE_LBR	1
>>  #define VBT_DP_MAX_LINK_RATE_HBR	2
>> -#define VBT_DP_MAX_LINK_RATE_LBR	3
>> +#define VBT_DP_MAX_LINK_RATE_HBR2	3
>> +#define VBT_DP_MAX_LINK_RATE_HBR3	4
>> +#define VBT_DP_MAX_LINK_RATE_UHBR10	5
>> +#define VBT_DP_MAX_LINK_RATE_UHBR13P5	6
>> +#define VBT_DP_MAX_LINK_RATE_UHBR20	7
>
>And we should keep both old and new names for these.
>
>Sadly I can't right now check the spec since it no longer has the
>old stuff apparently, and the VBT section got moved around so the
>history no longer shows anything either :( I'll have to pull the whole
>thing down I guess so I can double check against the old version.
>

Do you know any kernel doc or suggestion about the naming rule
(for new and old BDB version) to solve the problem like this?
Just want to know how i915 dirver manage the definition issue before.

Best regards,
Shawn

>>  =

>>  /*
>>   * The child device config, aka the display device data structure, =

>> provides a @@ -445,8 +449,8 @@ struct child_device_config {
>>  	u16 dp_gpio_pin_num;					/* 195 */
>>  	u8 dp_iboost_level:4;					/* 196 */
>>  	u8 hdmi_iboost_level:4;					/* 196 */
>> -	u8 dp_max_link_rate:2;					/* 216 CNL+ */
>> -	u8 dp_max_link_rate_reserved:6;				/* 216 */
>> +	u8 dp_max_link_rate:3;					/* 230 */
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
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
