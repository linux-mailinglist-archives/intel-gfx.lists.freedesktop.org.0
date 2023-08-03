Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D7E76E8EF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 14:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3746A10E1B5;
	Thu,  3 Aug 2023 12:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CCF810E1B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 12:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691067535; x=1722603535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=ZwX81KBVEPtP5+lLIYXhzmMwgS7lcp/c/sIeMazkpJw=;
 b=GzW2Q3NJFZxpvvCQpPyx1628peHmZ2RSiRq0s1x4Vq2zopwrUSO786bK
 FQxIHNWapgplqJmma9ts2jDWznXeFB7u7SYSVY1dmSKh3NF2z96MlH3ha
 KrxKeTRE7PUJqd5LkZ6ewSEzJPJ+UHUZD9gkHlU1YVeoOSA55HNig4q2t
 gpvvTutCc++9pEajFkqZzxAvv5/Yb+CT+CcEFipJvlJXMfRhZbI2Mw4gq
 4QnGeUZEJBh5Vpf7Cp22jUCH7x0XQsX/vklF4fkhszks67uZN7GUTUv79
 /YOweWqR4Zt2hcO1mU3OMZoUjfSc7NzRmNh0igDqM9NZkN/5Ppu2GVq1q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="354781700"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="354781700"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 05:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="976056918"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="976056918"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2023 05:58:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 05:58:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 05:58:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 05:58:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ls7rgr7Ttp4IUka21pkaSlwhVlCLg9aZEeU+CzxRB8pdKXc0QeR+dR289eAQHxhtVVrC1pm45Ibc05ZNnFjEceHJb/eMCPxNFiPicEAm4Ss8zEyb5igKDyW7bbJNXOJQ0tM+BP/tnBpkX6wyKQN9uk35pjpkwyWCnI/tAGKirw7lJiI1/jYSUTAWQ7/oCveEAI6JRuea6A8JW949Kdv4jpZrqHpblGRhKRvQsV09JXyyw/gkSeTcAd5cdQFwtY7boYqCH2wz8BxCMCqqbtmRrE0lIl0PbtFaURWJOxLC5e/S/kZ5cXoTSk8iELrVDrlue5RSIeNGnUqIoEOwiWLd8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Jm1IF7PVgbFoUbCWnhaFfogpf2PsaAcDyW+dXt4qms=;
 b=oDO02Q8K+i/teiL4T4MEcH3vi9AK5nHv7SyRj0VICN/hlqgFspwKGxlbo8SXpUrsURyPW7ec3SKW92LbwS8j8tYUAicAzfz0iaF7wKoh69+b/WUfjNnv8mDHwTXwkwkQP6OQVLAR7MjWteCKUJfCGJodk1wVLbYZme4Y2LpQw7n1d8HUDRt2Y5UiSKI0EkopOAjonMv7DhKEOz+s3DQzg7WzLBIT27D/tyB3O/YX/ijfvHhXYsy17Fec8eLeTJMN6flXhDu5kJ6pHJsf6SCLuyEgpnv5i7PSJGFuoR5QUkL+T3hMbh6ReNiEYO/tyPXaI23KhdR2ZQCNWm5dVtmsOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by PH7PR11MB6977.namprd11.prod.outlook.com (2603:10b6:510:205::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 12:58:50 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f%2]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 12:58:50 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
Thread-Index: AQHZxSpQdN7g+XFjD02kjZew+FId7a/W2umAgAGtS1A=
Date: Thu, 3 Aug 2023 12:58:50 +0000
Message-ID: <SJ0PR11MB58947A954D0BBA3D676B3796F108A@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
 <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|PH7PR11MB6977:EE_
x-ms-office365-filtering-correlation-id: 6dc8e0a1-6215-4435-e8e5-08db94216237
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hMnhpOQXTLzDxDKKbwmobodHqzltVOTOZ4hdYnOcLHBa+BnpKLa0WUllv+kywbetg39cLSINElfjTaGgw4ZJCtjuysinlznzkhPAIsk0dnMASe6OdeB/btXToZh9omB8BkPwXRKRL50/E1oM89b/taGVtU6oGapotX1sUG/I5E/iorZGpxXgn3/9OAAp1P4a4lIlje7CKd6DsBROwlm7mX1sUKZ50HjYDSdNHWKYipRhhIwGUsvBNmbECKQLU8F49ITYFKoHMYFiKI+soS9fDoozZimi4TWBRYlxKRf24vsjgspfzeraD2DqW9k5LcLeaKjCpV45WmldRZ90eQzWO7hvqQOmVNOU1kUsHI7S4qmgi5s41hbgGvA628MjQ3NL0X3+XsNNHrgu3rcE8yT4QCkve3eM07LOIYGx6Ymf4aKd5TzB+lfnYwyBWHmA13atNBUaNViGF92DFFcwzoHgGhC8tdFbhCzVOHmtVNMkZx3BtTL9jOYI/yBVIy1kVTrKKceyR3pICOabIoXlK5c91Xft/CsSwP3qu9Tw5/cc6pkUjOADJiD2cRRGQTFpmY4kl1OXvPyyzMjLtfurU/Bz0dye85nmL624PcxjAg2IR1S2qgcPGCqGL2jVHADXE4id
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(396003)(136003)(451199021)(107886003)(53546011)(6506007)(83380400001)(26005)(186003)(316002)(76116006)(2906002)(66946007)(4326008)(64756008)(66446008)(66476007)(66556008)(5660300002)(41300700001)(8676002)(8796002)(8936002)(7696005)(71200400001)(52536014)(9686003)(54906003)(110136005)(478600001)(55016003)(38100700002)(122000001)(82960400001)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?taDr6dt2Acq1PLH06zh29I+Xy76J1gmLfA5a2YuM59r3HIptFu6vMF3nALhv?=
 =?us-ascii?Q?7x7yr/rKi5tJPBOdklG93trtBv9MfZjwKiPH9qabVTpDdmo8AWNILPb/vToR?=
 =?us-ascii?Q?k0jYgTg39oLWYCGrwN8Ycj23xNf/V3+FeIEITrdGZUBqc532DxgSfojV3YFY?=
 =?us-ascii?Q?JYTAQ+j/yDCeFoR6mpFj7VJPtt4Gp9J+Rn3Yi3jHqd4kshlIjraXwvUDxEHk?=
 =?us-ascii?Q?5Gfg/es/BGj5OSPKuWDSUIZXN0vjeXCYY9/3xtk6JuVBj2LRSihFA1mtdiXI?=
 =?us-ascii?Q?RhDreM92MfKY89PgoZpIWUO5RFMJiQLQ/CYLqhUkZAZvp91thqCDkKVKLQw1?=
 =?us-ascii?Q?T0wIA66MERSlwFgQZx/Ml8rG2IMQkMPxV3wDQ7JzIERVUENoWOj8cpso7vk5?=
 =?us-ascii?Q?cBTkrouxegL2Ovoj3xX2B+6n2UqhYtIh/iElotsngfj0V7z1R/AzfyKIOCEj?=
 =?us-ascii?Q?dTb8AfR/mo0dogin3W2EOJIkL9q6sOpKUBxWwH/G9FsHJMmFlkAi8YXFqbxF?=
 =?us-ascii?Q?N8jkoQCryZY8Pn0eUfEPjcF//hCLberQ4huNhS2hT3QiOhCEDrg0jo0EOp1q?=
 =?us-ascii?Q?Cv7h4DUvivUd7H82r1F6hfCGuJ3IlNc1hTb4bBcR/YiPDrB1M1Iljp/n7pjv?=
 =?us-ascii?Q?XOivUxKbBGK8mC5BhtgYV+5Z6UNwbXH/vvxjkcecN+Fbhrw+WwblbDOUoeci?=
 =?us-ascii?Q?+8T3mG908xq0gXirP/etiEfx0MlM9l3mpa/mC8UB5VI/2a2GnH5Om4v1Dfkf?=
 =?us-ascii?Q?QG2AlxJg+Sn8c/Dq3GLlUSFCUL9aKRBCrlPe7oBzkt4LoxdCqJeezqJi/6pE?=
 =?us-ascii?Q?+kXYEDUwWNh9KH7mbWEKz2qBr44sc3z4aVKvL7/mu6UzlK7r++YwpMl/XN8M?=
 =?us-ascii?Q?tih/1tadVaGB1IR3P+1oNf+Tzrs1bQhbr5nI892YmBkMnK/5uilTy2xQ8o+h?=
 =?us-ascii?Q?Sm1Ok149ksntdmJQpTpGApR1+VWrW5grLnjvrRNV7wCu4qqd1H6dxQb5jAyj?=
 =?us-ascii?Q?Pn/e2ScgJR3Cebj552uTzuMs0O6qGcdnQ8oEhUXvKUigSIBuxvPG6VocBIW1?=
 =?us-ascii?Q?rJyZrr1m0pxQMXOyu39anlQAgzkprZyuqDlCnE4pMVFH80W3tpyC1AHrzrKQ?=
 =?us-ascii?Q?JhfMpYbHJZyRSZbB9SkscGVKIEOsq2F3pP3BusPfmaGIi/wNjuKwlrBtRM6o?=
 =?us-ascii?Q?qp+aE8ZsjGJGckt3y936+dVSQ7R70emCFdLETeXeCl8nlm0Lvpm8qx/1f7pt?=
 =?us-ascii?Q?rLRWxi8ULU+kc2a2B4Da07pkQcqBJ9qQ3vVLADiE+Z2qdU9ffsR9HFirTelF?=
 =?us-ascii?Q?F0wCdBQuSTfnHUDc5Gl4DuZyieW5svSCv5uOMcGiMGSzurk8bQlWVaThDATi?=
 =?us-ascii?Q?3nEZr6E52QhyYthm9w7J8/XHHnc2mYjRikiDeWZtqhH+arFEHu9FSxXNZSHc?=
 =?us-ascii?Q?La8i32lTMMxzKv90RD8P5MCC7eNpF550w/Y7Ydcbwyap7ZPMJsZbKvnwEzb1?=
 =?us-ascii?Q?G53eoX4U7z7PqwO5qtxSycw/sBtrTe8KBv42Hjqhtm/AHGvtcaeV2Yl+oXra?=
 =?us-ascii?Q?zwf++xtpG9AJfJcbO24wHUgSfChOP+5QQ/VuNYXA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc8e0a1-6215-4435-e8e5-08db94216237
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 12:58:50.5143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RAYAJHY7M1NVooqzXe8QWwJJjcymzduD4TU26ybL6L2uOD3sLx5wvEFYboj0EqXGDsjWOBKUKVBK4rAOu2OV+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6977
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
Reply-To: "20230802101541.10045-1-william.tseng@intel.com"
 <20230802101541.10045-1-william.tseng@intel.com>
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the comments.  I have made the corresponding changes to the r=
evised patch in version No.3.

-----Original Message-----
From: Kandpal, Suraj <suraj.kandpal@intel.com>=20
Sent: Wednesday, August 2, 2023 7:15 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Tseng, William <w=
illiam.tseng@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
Subject: RE: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate first_line_bpg_o=
ffset for DSC 1.1

1.1
>=20
> This change is required for DSC 1.1 because the current calculation is=20
> for DSC
> 1.2 and may get a calculated value which is not recommended by DSC=20
> 1.1, for example, the calculated value at 8bpp becomes 15, not the=20
> value of 12 recommened by DSC 1.1.
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
his block to the else block and vice versa as this 8 bpp corner case is app=
licable only to DSC 1.1
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

