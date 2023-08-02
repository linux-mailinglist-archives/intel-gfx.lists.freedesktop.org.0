Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B929876CB8D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 13:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCA810E052;
	Wed,  2 Aug 2023 11:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447CC10E052
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 11:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690974924; x=1722510924;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H3tXoHhYroypTVShIKLeThy7YMTYeN9FZXxbuK12yRs=;
 b=XBxQZdBzCGmCuWMfdY8Yw6BbsWW4Ch+pIQ9o44+MZNRkY6EhEURnaDZ+
 7fNaP7R78Y7h54bMuRww4dSHTv5oGGZvlXyMTlswQpMMZxZQ58YEpFDp6
 30ispPiLxEmnrHX1ffy9e+M6rjvj/rewJ8BQ6JbNigc9unhyc8QEIPE99
 H1d15mGxLMe7j9HpCbAwRBeP/Z6h0jKERGHMGvmslE96biL5tW8L1Gqmu
 t5tESTbNxmZA9ULN8J5zR41GI3hDkeavJgKRbaHKpI47K97QjOPuXEO6r
 W9onnvvxoYKkTiKXL7EZZUXrA/6Qxemu5v6v8QZCf2tp0SeqipMoNMuIV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="433390486"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="433390486"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 04:15:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="902939161"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="902939161"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 02 Aug 2023 04:15:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 04:15:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 04:15:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 04:15:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 04:15:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IE7P/V2M1M4F0kNddVo+mOJXp1JXNuubf/ez4J/v+OoWK66Q152Uomui70QTsEpPEkRWlpWvDGLcx0W788dzpajELmk07qHNigmupBARnID92nXHtpDRVKEJkBjZE+Qer6wIWJqqso6llOPp3ETH6PEfsntfYkXF5SVihTabmBOD/V0JWhb+CsXgUxMvyfq4vt3ghlTacOzBwIW+IwmDfG6q1vm1nK0HzVSdyewScr3PodcJqTcGh8iEDT7gv25/ZWSgM1vao9cqZ9LCci/EOWTVD1c6K6muj6Y39W8STLTM7hoUWmRR+ioyvBeNaSv6/hSMWMEWIc9izXjZubuEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kA3tkQES3ny7a/d/tFCWgPPHaLNA9PKCNW9zZN5EpZw=;
 b=fkN7KaTk4KFTe671ZPc7aS5mhKG86cVDXaTtD6tJBUbc6+hAER9xMGOkPi1zoyRlYIjw0jKOnn2x+Q+/k2JsmCN27bf7W8xe7h5nDnPGC/VYEkj8DviBKcq9Fmw+liI7CEZu0YFe/eJz3kNTRjkyUXSMndLUEeGRORA3zmhUyTm+jZ1NuL3oY8U9lzlGQW9L0bBkgyZQjn8UJbStKfzuxk1pMp9FEsRIQuGhbga0ZD3+VBtIlQAsfj/hqlMqz9s5c7eHeFDPRm11pHn0NnDetXMxagPnYKApyoLFyPbWBpJ0duCIs0+ACj988ZDQMrB9McfIzbaZjujnhiSBwv994A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB6964.namprd11.prod.outlook.com (2603:10b6:930:57::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 11:15:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e%7]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 11:15:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
Thread-Index: AQHZxSpmSyDyXXE2FU20YdebZom9eK/W2PSw
Date: Wed, 2 Aug 2023 11:15:19 +0000
Message-ID: <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
In-Reply-To: <20230802101541.10045-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB6964:EE_
x-ms-office365-filtering-correlation-id: 1b2ab702-76f0-4c64-b715-08db9349c1db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 10Q1iK3iZJ5FuVpuNUC2aHXkLSG6dGnKy6fh7/GxEabcvV85xxUlUVaWXJYm9oXLmOh4BQEyrgB/HIHfFJ7nZcB+bKfMXwok32iDu5ZzAj0eF6tJcXdMnOPymDetI79skgEyqKtnKuVSqfJBjsKLprX7I2Lg3Mv0zGPc0lErujmOyWBmZSr+CfCDB986YhF87PWbV1Nz+GY3CRu6F/Sh3l4PxsuvcmV3irNVFXmew5z591XedriZ8dgC4uQrd0S9tV0FoNsh08Os5BC/K3ksst109PTkcfnCG9k86z5QbNFaLjQYo51OyKdXoJGbrW29KATAvvWLdOu5V3GTVsez+lBmnQfvTE1zFml0vQvctj3G4ksWFU20hiu0w48OjmAb1A1k3Z3Hcj0HuBKhBB80kcOIxi5OuiPkxRkHWRdt9pKZoNydVGDVvKidSLIULX0rnfRaukd/O4xRYFyFD06SL/P+TAgjPUCRgcKUpYI6ZC2pXeT0THf+pAwdT1OrLLbX9sN1pYDDPWNjPf01TWujMsaycWY6p1pUf0SVyYeDvii/xThBj3fi6Mu9zQamymr7Mfdnr2oK0n3IWJiaqYpOxyhnoIPJOLqVrhVDxlsc3gUDbBUv6z9g+WzR2kHE6Jah
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(366004)(376002)(39860400002)(451199021)(5660300002)(52536014)(83380400001)(6506007)(8676002)(8936002)(38070700005)(54906003)(38100700002)(110136005)(9686003)(2906002)(66476007)(66556008)(66946007)(66446008)(64756008)(82960400001)(122000001)(478600001)(71200400001)(33656002)(7696005)(76116006)(4326008)(55016003)(86362001)(316002)(186003)(107886003)(26005)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V1ebtaRXjuZzqcnDJ7zQtv88wJcouLQ4gMci/I/dIE1uxdcrM8Fwo0sfLTnB?=
 =?us-ascii?Q?HThqe083Az6Rv/l+4iplYeYMdk/jc/7zR+kRniG4GCEhKNCRZ59oW/Tvx0VE?=
 =?us-ascii?Q?FSSU6FsQthwTRe0eMgQe4FommcrAKJCm1xDYMyw0EIDNDqd0ebLwE4A5MOqr?=
 =?us-ascii?Q?tSeZrfxhYB/H2nwDxUq4Kzrge9e7Lcgm5EaZ96NCdvacDRLXE2c35lrJY+k5?=
 =?us-ascii?Q?otnJ4fE1U/S6fmY1LwkxqTZV4NLLFlBaVV1/mp99ZOiq5Xibe3xooESJIZfy?=
 =?us-ascii?Q?JYc/Yk4ccTzqnqVd8Lr1I30r//PhPDEzskqCL9MxitULZt1bL5+ur9li4kcg?=
 =?us-ascii?Q?R0IZDql4vT/4M1s1cSPGduGmaEA7ouALr5OIMGHHWXG7tzE2+CUjbcb3iTGj?=
 =?us-ascii?Q?jqGKY9M3qyHjSHKUmxO5/JWJ6bx2hlbb1Bks44wbZkNTXn4vox59CUEN5yws?=
 =?us-ascii?Q?0Gx8lfQvpWQLEo2PYkVqAYVRPU9DHTVaaqAp6h37hy38B0ZEGqYvlokZ7Ymb?=
 =?us-ascii?Q?OWwxIndwsk0PKOHSOGh4yF2zM+qXmj/oCTEgM/RyQQdvmSQK2x47nKVw4UrS?=
 =?us-ascii?Q?0N6LEAJCyxO+lzknc2QYz6goTGCZV56+e0OAIFqI9rA0H//iOqtzlHndOo+a?=
 =?us-ascii?Q?1RUliuJT2BfzKQNXE06l1LdmrW7zm8Xv1EO7f+W3q8MKguNBf+D6y3E8LCen?=
 =?us-ascii?Q?wmhAJxQWYh1lhRG8ptbF3bIDYnHHjNPK+A84ZISrwYPjgVt6mv3zq9Gf+pPI?=
 =?us-ascii?Q?98FfYyxDfGol8e9ujNOPNmC/JELWPFReCWgD3ZsRrisjZq52U67ONJ0DQTaP?=
 =?us-ascii?Q?lZ6Q2A7swCz0gETAJB3axDT+ETQmWa8mHZu5J/MoXsQzQKgM4JjBWrWFzdms?=
 =?us-ascii?Q?joEcy9vMKdFGlSkRIEqWMkqvVlQ/guVS2956nLXvE3PrCc/9u6Llj//P0po+?=
 =?us-ascii?Q?jcc/pVERgt9rMSmPvyQ0iWJbDYpFmaPudQKV3750Jhs9rbL67syvhJZChObR?=
 =?us-ascii?Q?CWg3mPK+ihbejrflmi5t+OXeW7KpGhrUVyKDVsXBWTVA3k9LjVGXjZ+1wS2N?=
 =?us-ascii?Q?Y2BF/Lkqk16HCAM7n8w0OGRABZIKKTxGlQVdAsdobUJTP0Ng5L+gCjLue/Gk?=
 =?us-ascii?Q?t3eC30PwYnyAT67xdbSjc3fXGX3ecMBIZsjFU/JaeitbRmvp2MBoZiYxx9dD?=
 =?us-ascii?Q?nBRb3A7JuuGB92XmoV65CgwGZ8HO9xX4iE3FDzi5KdYO/6gt4G6022a52TgS?=
 =?us-ascii?Q?UbAWlKZvCGXRaqoFOkghdsA9G3VC5b86wDIVcZo3oL7WtLiwanHJjeKxXAmH?=
 =?us-ascii?Q?pcTGTWGst51dDJ8sa5awbmt2bDX3VGBLFj1Y4DfdIWM+0Pi5SW1G7I02P8px?=
 =?us-ascii?Q?RHd7LH5kWGndbyakPtrjAT+RL+q0d/TQMG2akCuquKKwfEaOqeXaNlRe7CH5?=
 =?us-ascii?Q?KjVx8aQKJefwQAnuCTYog9WwoejBNAoxOKSwIaSx5F1xoXcmqs1guMoVZy35?=
 =?us-ascii?Q?oTLYR8DH+ui4XxrErIwpZquCUek3vJbpx6QdRpfRTawVhAaMwRBlMWqccj4a?=
 =?us-ascii?Q?thCbo77+ywjAMrBkTWWev31BbaUvFEsVclRxsu1S?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b2ab702-76f0-4c64-b715-08db9349c1db
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 11:15:19.7025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mx8HsL39U3Aoi1Pg437AEecXNv4AJG4LGwps+sqrAb92d8yICsOHhQ+YYPzB4StLT5UIT6gH49RB+W7OeWgEPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6964
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

1.1
>=20
> This change is required for DSC 1.1 because the current calculation is fo=
r DSC
> 1.2 and may get a calculated value which is not recommended by DSC 1.1, f=
or
> example, the calculated value at 8bpp becomes 15, not the value of 12
> recommened by DSC 1.1.
>=20
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..9b350f5f8ebb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -72,11 +72,18 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
>  	int qp_bpc_modifier =3D (bpc - 8) * 2;
>  	u32 res, buf_i, bpp_i;
>=20
> -	if (vdsc_cfg->slice_height >=3D 8)
> -		vdsc_cfg->first_line_bpg_offset =3D
> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >slice_height - 8)), 100);
> -	else
> -		vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
> >slice_height - 1);
> +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {

I think the check here should be for minor version 1 and move the code in t=
his block to
the else block and vice versa as this 8 bpp corner case is applicable only =
to DSC 1.1
=20
> +		if (vdsc_cfg->slice_height >=3D 8)
> +			vdsc_cfg->first_line_bpg_offset =3D
> +				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >slice_height - 8)), 100);
> +		else
> +			vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
> >slice_height - 1);
> +	} else {
> +		if (bpp =3D=3D 8)
> +			rc->first_line_bpg_offset =3D 12;
> +		else
> +			rc->first_line_bpg_offset =3D 15;
> +	}

Add the section in DSC spec/ Cmodel from where one can verify this in comme=
nts

Regards,
Suraj Kandpal
>=20
>  	/* Our hw supports only 444 modes as of today */
>  	if (bpp >=3D 12)
> --
> 2.34.1

