Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A455ACDA55
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 10:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6812910E261;
	Wed,  4 Jun 2025 08:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E81ADhD9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B8810E261;
 Wed,  4 Jun 2025 08:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749027258; x=1780563258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vGAoUFcomOutLyC+1zRZonbSvwt9YykLWD08wTEbpJk=;
 b=E81ADhD95uEK0y7cT2s2dZnHNQwccbnAkqLBNVrEgHELqZCBqx1kibDw
 uAV68rBcBQCuS69XBzD4ioBGAusmn6X0YmFSD5oyE7BFm2XTKm33CSKM5
 dE6NF78CfxFCTqm888kxish+FUWEuPW6yUP2sRiHlWKI72+Hk5jKtsowU
 tiNcILHFNxa8D84c9qPh2RWedQkGc6Te0JD8xIA64gjQOhxryOFyzk41w
 /JXd09K/xpKk6jnPF64Yf/EFf5qJVaqTy3OFstrbTlz0BReVBNJl3ZVuQ
 lfbAqEvGrx8ogPu0pitn0Ty1PAEIE8ig3F1BCpxNeWUHJNSWVp0t3ce32 Q==;
X-CSE-ConnectionGUID: x1VCKHS9TZyBWt5pbxeO6w==
X-CSE-MsgGUID: vi5rhRcTRf6xMLUSqnCG7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="68649297"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="68649297"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 01:54:18 -0700
X-CSE-ConnectionGUID: sua6LHgETS63rxsE/t8+YA==
X-CSE-MsgGUID: 0YEMQUxMQ/CPqpN/tWPKIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="150280515"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 01:54:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 01:54:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 01:54:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 01:54:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hgWA5YJ6WBEvjCAENlib9RLvbL6Nf1M+JJGNmsNMcpdHEoeUYP+vnOH718c5yzuQfOD41KR7sP0D/KqezUDNlqsMlufn3VCOkOqBeI5OvcQt7KOlLyIXtu3HR0bIZnwtjCYc9UsL8CJnY9knN8+UMLcU/8aRAGVpACSU4QWp0x/kyJHKn3xBtd3nQ8cWRjH/Cr1OyY6+tPi26I5LhT0Y0t+QB92PQCo5fT6RPenuRmu9mrc2IwzazAK8plO8N3gYaCdC3Wrdnhtsrq7SEg9nhvxe64aYVdSoc6zETbddTnO8B/bXOmWmsiUK7rHSZr28SvKWDoJlpQQ/wYrg5kTI+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u9xSs3460/wwqvCh+cW5aXhpRtToRsZ5SbqhMs91ln4=;
 b=FXRj8VRvX/YGU3fs9dAhPoEahPXL9maBRIZuabfdJdXfI3Jj0QSk1p80sfOiEIo3Hib2vXv81X00orqgB8ICI63AzN8cpMQ4UC6YRp06W5RQMsmTzbSYdDL8DaxBWFJeMqR01fOSh4SMC/N0n+XVsf1zNJyY7AvfMa3FIyCLGWTCYV7AH+zHKrRHb6PHwH4qa6qVy7N/DkW5wokTxys91e+MmlEzlpDquZ7LX1pb/LfCZLFtrHR+g64OF2koxyZrlaI12h3IEF6aBoI6ZDBrJZQeP5z9+6igC8ZVoaCpCrvhA3ZfsQYtErJ0Cuq1hPrxAVePhYWo2wgR4MhKOLNDPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DM4PR11MB8226.namprd11.prod.outlook.com (2603:10b6:8:182::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Wed, 4 Jun
 2025 08:54:16 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8813.020; Wed, 4 Jun 2025
 08:54:16 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Topic: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Index: AQHb0UPbjmBv+4+mAk2Lmbty3g/eJ7PrC2eAgAesrIA=
Date: Wed, 4 Jun 2025 08:54:16 +0000
Message-ID: <IA1PR11MB6467550BD73569A3B79CD6A7E36CA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250530091240.56570-1-nemesa.garg@intel.com>
 <aDmYCwbnTG38UiL1@intel.com>
In-Reply-To: <aDmYCwbnTG38UiL1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DM4PR11MB8226:EE_
x-ms-office365-filtering-correlation-id: 314c3bdc-8705-4443-0f85-08dda34562d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?VEdryQsjaIpZyDJ+A3JXpspw3lAkSnxareiRyRKyDfB0FKfYsXh9g47Xzd?=
 =?iso-8859-1?Q?5z+tUi1mpTuRTo1WoNCaRpxKAN4wL0dpn4oiBS2fLgATyB0J9LXmFDVJbg?=
 =?iso-8859-1?Q?+/0S1klOMd28yDsarj6AT/Yyf49w8AC1FWHkdPoizEsa7m7AhZJkQvETjS?=
 =?iso-8859-1?Q?kYxMhQFWa94Y55DS+8Ti4DB/xGUAgB7HxtwVsXrDoE9LVFM5c/Yb6QJ1qA?=
 =?iso-8859-1?Q?Za664aXDcduZWCyM8xsSixwa7M7n3b+KyMmaL3w7VT+7sP6Q9JoJIF8kk4?=
 =?iso-8859-1?Q?PDKwBDvHP7DgigmihqoOXaQIdbDuMtKHwRbeYn2bVndPgmnIT1cJXXRoHo?=
 =?iso-8859-1?Q?TgWKgftlvNWXOjvmnsLJTUVYQNWDEGLDdx/Qkh6eEoJZQZfrMLtkvgd2sH?=
 =?iso-8859-1?Q?bSVMO2U7a+3B8jFsGzJen2nrew9FhOWmvS1cMeFtHtVbQmj6ZtPYNN8onB?=
 =?iso-8859-1?Q?Znaz6Sl4lGI8EheLn0iUQpE/xmgOM5smg594Q41Ma1plym0OBEa0VHGuBb?=
 =?iso-8859-1?Q?7gsoAtVYf3zREzapakPwznloXqkThEZ3Gim6FSGhCKiio4YpUb1oiERIBT?=
 =?iso-8859-1?Q?8XKXCcazue6S3Dn92+C6vqMRzGP+BNnar9SOS8YAliVzheSchaTj9Kly2i?=
 =?iso-8859-1?Q?Pl2/Q1ohh0aQWuZW5P/Kxrw6YDuu8a9DVg9aL6GRuNVKj8yUiPkYfkyoR4?=
 =?iso-8859-1?Q?+AEdnGZSBoxsyaxlNSehY4P1IkTMyJ3E/+sYVwPNXNXz3IT/3/rfuihLiP?=
 =?iso-8859-1?Q?TZ/a843J/ipI+W9s/3Cx7rFGzdYrp3Yt+ncXMJ/JUpqs43NHlub2L1aqdK?=
 =?iso-8859-1?Q?cvSljvT1JUGwGkWncldsurEVh4AI4AeRLsOACmsX3cmBiwHlxXiv8TJ1CK?=
 =?iso-8859-1?Q?brGbLkFnDaYNfMLmGunue61w5f46ZdaPmgIw3WXJmxAphOnd20MRT2z/v9?=
 =?iso-8859-1?Q?aJckhAlHdruC4TbB7YloBD5HGDq6V7HfPHRIiy8scd28Bgw7bcG7hmTksQ?=
 =?iso-8859-1?Q?IPTHVs5cw792hUtjzLu1PqP+a2PKVxfZ6DWDgONHMgojF0IKciHrKtRdi9?=
 =?iso-8859-1?Q?rCFyAgcXb3P+JG8l5LUiywVFMyR7Injusbjhp5lUlgiTaPxXUViUaWM6GO?=
 =?iso-8859-1?Q?CcdUe5iRqpV180ahmsr2qpKEQId6jEPHstcDr0QLKlR+d0JdxSN5IUS6dj?=
 =?iso-8859-1?Q?X608hWy2Ii4oUzDDr6jKdI1en/kmPCW3OevyQAttuMmxXwd+xibDMCLx4u?=
 =?iso-8859-1?Q?l7qPD2op92ZM8hC5jwmmpzfUf8jm9x2oYNmVBnFUZaPS7Hm1RgpbYv/bFv?=
 =?iso-8859-1?Q?acbPkoIJo4bMQnIDQrwX0ymMX36vLDNFaX68cN7yyYa4fsyWTsX3DSj8IR?=
 =?iso-8859-1?Q?yBAfc0021zGrjxGMmfPE2pjUShrte0gcbWiM/HrDa03StCcWX6oEQ521Ov?=
 =?iso-8859-1?Q?JaqVVdWx8iauPZ/ilFFtgBDshXHY0aBGja3dQtY/qLxJwSL2Lo5vEwe6qF?=
 =?iso-8859-1?Q?+14k39EDRH6mPfvCTo8l0cQlFcnq/Fe2cwqLBZJlFyeeTkObiI7Ypj/Mo+?=
 =?iso-8859-1?Q?tr8qrHo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zeGWlzktPSvavctqdYgqxJtgEpwyhT3iTBp4gCKJP2lHa0quaTYB6iPRwM?=
 =?iso-8859-1?Q?j7+1zxOYJZdsEMJxvppbP2gb4kCUvXBXhYYARQXyW4ldj6E1hXUFAbs0ff?=
 =?iso-8859-1?Q?qQFoyPAHK2RlwqeNFuTdHr9PQwNnUZVFgCUzDZOaVkpJYhjcsaoMFAdvIo?=
 =?iso-8859-1?Q?hSmkmsSgMPnW4HrGw7iKoARrYIfSDQny2FOQczlAVzw6T4eltaoR9k0I3u?=
 =?iso-8859-1?Q?Hrr1a0cBZOd5+D20VhLRG0uBUtpdqE/lqNPkK1Zg7jyZM+/iWy6/cCRx+u?=
 =?iso-8859-1?Q?uJgX1PmqIr0j466voVgONhL4JWMLkWYCCcgu2QbZFRGfNVN59QFv98cw8B?=
 =?iso-8859-1?Q?s3TJkoMcG0HNKa24M6IqcW3cNT+V2ZWUnk07016XLxaxsIuHvksIE3fJPH?=
 =?iso-8859-1?Q?sEPJuOwAya1eVHHjtuRaCGgw5EFF3fV4Qlqiz1WxEjTuCH9Vo8F4Inz83G?=
 =?iso-8859-1?Q?BPpFWTiQpid39VS28O/b98QY2RuwbwXk24H0QjIb8yzKikPl7pXjXsyHhI?=
 =?iso-8859-1?Q?UXCf7ilIqk2W1B6A0ufL+mnl37Kic9a4bf6B1Le/N+pAD8pP4j82G3/r1Z?=
 =?iso-8859-1?Q?2tnHCqqSaB/HvzmkwHYT1ZGoO4BfGkWOkw669RY+/i/6Z9FvKpVeEOp02a?=
 =?iso-8859-1?Q?GeW/yAuQVwvh1F8Hboc5/xtcBfhwUJIOgMA14Dn/UKx6JJuvwsg4qHG3Tj?=
 =?iso-8859-1?Q?ldmDsdxMTPTk4XkeSlO6HhzlFIZzE1xgYpcq8b2lxh5hAI8kGpbPJkicpM?=
 =?iso-8859-1?Q?X54zwwcSFahHOYRQCkz5aUru+f08ve4r1e5Dj3pfreM5975Pu7qoUFj4WR?=
 =?iso-8859-1?Q?MzF8GTfytPQX1rCN8oSkByhw32lPXzvbgapHpzcKK/ouuG1rYZt+O07sR2?=
 =?iso-8859-1?Q?IathldxOnJn7e2bm2PnITThyekKqyrVYCiUCwm0UiUBGVJ9E7uWpsjuqL0?=
 =?iso-8859-1?Q?nF2r30PeWLcQ7pADrlWTjbAxQS/J91fehlxovXla6kTxGplGJJtLwEE7zw?=
 =?iso-8859-1?Q?lusdwPNVZS0tlohWF7i1FQVLI1fdos2cg9r1MzRW4DxypG+7rwFOx+TJGn?=
 =?iso-8859-1?Q?FQokgrCMD/4yeEF9l4OxtQ2OYGdPfmjYTDWKioBuD5OaqhkRaoZ+obUspC?=
 =?iso-8859-1?Q?w55u/Yff9TK+VK4eNKUlsaNnr7i19Cv1WpA8ATRnZwZJp+uuo140XuXEey?=
 =?iso-8859-1?Q?5Fxud6yeux1EWpS2CekiQ+O0YraZ3gN17ZinrsT6mmJDhWAVCUnQ+w7ExA?=
 =?iso-8859-1?Q?7bMZPCdvpag1k9kiM2kSWeml7BV4LCn65g4Id/pwOQoMg6d+E7ta9xu7G9?=
 =?iso-8859-1?Q?G+t7LLqULCKdYu0w8Uia0esvfZZCUPRQ7wXhZlxDfXUPFY5B7r91HGDeBK?=
 =?iso-8859-1?Q?nXvNd7TV9MMszvzJw/A+8KBKK09iHFAT4JiUC6OgUM7ZpeajV4P1U04jO/?=
 =?iso-8859-1?Q?h3zgxgvI+v/fTB2FIRTYxaJOi3VVAzDpQ9/J/vPrMKzhYjZz/CUJ4WzFte?=
 =?iso-8859-1?Q?Gh0ENazxQApm1dpOXv6Y40aldG4J+3iKWYABaEFOy25lOV8cIbZSMWeuuu?=
 =?iso-8859-1?Q?rHY6WOOG1WYtusX7zsPfwH+y72fJivtJXM19Kn/wjGGq3JO4b3RnVrow/X?=
 =?iso-8859-1?Q?kebLD8Yo/G4RI7jyID4wtu7ClBGTOD2Epq?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 314c3bdc-8705-4443-0f85-08dda34562d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 08:54:16.2250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LTpsPxtY47jyVrpJBNmkA9Z2K2KuwNNpn998ssXRXANcURCr6yFY/Uxwn+eg4RbBVY15aX04y3ZmVfF6IcmcBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8226
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, May 30, 2025 5:06 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/display: Implement wa_16011342517
>=20
> On Fri, May 30, 2025 at 02:42:40PM +0530, Nemesa Garg wrote:
> > While doing voltage swing for type-c phy for DP 1.62 and HDMI write
> > the LOADGEN_SHARING_PMD_DISABLE bit to 1.
> >
> > -v2: Update commit message.
> >      Add bspec[Suraj]
> >
> > Bspec: 55359
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
> >  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 4c845dd410a2..2cdd51cdfe17 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -77,6 +77,7 @@
> >  #include "intel_psr.h"
> >  #include "intel_quirks.h"
> >  #include "intel_snps_phy.h"
> > +#include "intel_step.h"
> >  #include "intel_tc.h"
> >  #include "intel_vdsc.h"
> >  #include "intel_vdsc_regs.h"
> > @@ -1439,6 +1440,21 @@ static void tgl_dkl_phy_set_signal_levels(struct
> intel_encoder *encoder,
> >
> DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
> >  					  val);
> >  		}
> > +
> > +		/* Wa_16011342517:adl-p */
>=20
> That one is tagged as 'pre-prod stepping' in bspec. Can someone try to fi=
gure
> out which steppings are actually pre-prod and which are not?
> The bspec page that is supposed to have that information has become
> completely useless for new platforms :(
>=20
> > +		if (display->platform.alderlake_p &&
> > +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> > +			if ((intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_HDMI) &&
> > +			     crtc_state->port_clock =3D=3D 594000) ||
>=20
> The w/a says to do it for HDMI in general. Hmm, Windows does seem to do
> the link rate change for HDMI as well though. Shrug.
>=20
> > +			     (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_DP) &&
>=20
> Insufficient to catch all DP cases.
>=20
The wa is specific to DP 1.62.
> > +			     crtc_state->port_clock =3D=3D 162000)) {
> > +				intel_dkl_phy_rmw(display,
> DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
> > +
> LOADGEN_SHARING_PMD_DISABLE, 1);
> > +			} else {
> > +				intel_dkl_phy_rmw(display,
> DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
> > +
> LOADGEN_SHARING_PMD_DISABLE, 0);
> > +			}
> > +		}
> >  	}
>=20
> Windows seems to do this w/a before the DKL_TX_PMD_LANE_SUS write.
> No idea if the order is meaningful or not, if yes we should do the same, =
if not
> we should just combine this with the DKL_TX_DPCNTL2 loadgen programming
> we already do.
>=20
Will add the condition before DKL_TX_PMD_LANE_SUS write.
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > index 56085b32956d..70ad3f1b1289 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > @@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
> >
> _DKL_CMN_UC_DW27)
> >  #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
> >
> > +#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
>=20
> No idea what these weird 0x168b?? addressed are that are listed in bspec.
> The whole DKL register documentation is a complete mess, but this seems t=
o
> be just DKL_TX_DPCNTL2.
>=20
> > +#define DKLP_PCS_GLUE_TX_DPCNTL2(tc_port)
> 	_DKL_REG(tc_port, \
> > +
> _DKLP_PCS_GLUE_TX_DPCNTL2)
> > +#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
> >  /*
> >   * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has mo=
re
> than
> >   * 4KB of register space, so a separate index is programmed in
> > HIP_INDEX_REG0
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
