Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE6A9736E0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 14:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119D210E04D;
	Tue, 10 Sep 2024 12:11:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cj9b5eIe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BED410E04D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725970285; x=1757506285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=inuSCUvFI7DJLrASBGBKErboDpSYc4n1uM/P7biJPnk=;
 b=cj9b5eIeFI+FnYM3ML5BcnMhoDVwMJjqxVSvBFK9nVgxS9/zQvdMrxZf
 kNc3xB+ctlWVUwFtnLM/LOF+uerYf/Mt5u+qON7V0nEK80wx6Xcv0evh1
 d/E5hVtMX4uvk6ST3jOeY1BNr16laF8JtGvSKd+kjEmb3CEEarSCH06/o
 CGPwR2oY1HnIO3/IQPtaW8nd0XgTivgm3hBmc9VT3fgGMAiR1EVuUepMA
 eWYnnamxMIWTxU8C2dQbrPQnPEcRcHLPtU/Tsf79hIxsZz96ofEOhcBNq
 PP4+7VxIwTvcWcj4enIMPB/04njnYN/e//1PjaPHBCZMCRuhgEVkG6rxn A==;
X-CSE-ConnectionGUID: F4O/gDGAS4i0vyHUfSvjgQ==
X-CSE-MsgGUID: Ji6+SJWoQruGJ3IILZo+cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="27632326"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="27632326"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 05:11:25 -0700
X-CSE-ConnectionGUID: BmIVmBJQQhqO8WdO6v1Q3w==
X-CSE-MsgGUID: 6JELjZ7NS3+5LWWNsmKbTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67256219"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 05:11:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 05:11:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 05:11:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 05:11:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 05:11:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mhTY8Ol8RjYhzDm4QdNG7iZHWLuIjPsbG/wVFwLyntXmfL9OPi4B/rtKBGyeg376fFzqDkAzw5uFS7mWunBIGyGtu2CVCNFrWxUdZUOdkdq9E6gi/OUXt7/obK4EIXsV4lpjO3lPY/yzRTK9XavVUEeJeNc8nZoPrCxQ42Q5UoXzxV04TD2oz4Lpuju9z76OlqXhRiP3IuvczmfXS+ZVWFRCgR8LnDyNEg6Orb0moOk9hw58gfI3ZxpDpAW5nRHCJToiIs5d0/TZx939YUd8UknesAyyWc6OkSLrEBPL8Htdj+wptvrYV534dId/Bp6dtHQ/bPdKZvkTkcnCo7jWVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctXvsyCE7bLKtRuegi0sQeUa+EGKN3QOJo1Uq7jdudU=;
 b=OSOjdXjhEJK8Q4DBwCwbodqKSOVD/FWecmEq2uq73XAQFaiN6c7dod4qFWnsOhzK3sMdiwc/EJ3Y5TXQxufINJfpuBKuVWY2o8M6V4vLjNhqT78oTsedK4oe9s5R3B89qmDi0OAaeLhWvX4dPQ5OBdsV2TXObwY4W/rYJ31hkd4fA6gg4JfoBw3DfHvjAU+TefffVnLIsguYQEcngtz7suDoX7i99wqhk1qksaHS2UF9DvYMig7MrDixxqzNBlS5Fs4z22YX1f1asvRNvvw1wTc1t49QoP6yOipO783kSLT6oudAy3qXMx5jUWtfmvkky1o//vQ9BBZjRJkvEjMKaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 10 Sep
 2024 12:11:19 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 12:11:18 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87Wn67wWJCU4mka9WcZyzagep7JHCK1w
Date: Tue, 10 Sep 2024 12:11:18 +0000
Message-ID: <SJ0PR11MB67893EF32300D1B26127066F8D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-2-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|SJ2PR11MB8567:EE_
x-ms-office365-filtering-correlation-id: aee54048-fa1c-4c97-6786-08dcd191ad60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ham6f3Xp22XkEfbwId2vvVUVQTt2YoxN7nMtHcPWfBRS7jp0C415N2+EsW?=
 =?iso-8859-1?Q?OxFgaYjHrdCTcVaWiRrr9ZrakH8NdYWtxaxkHDvoUG8mBqU27UwFnwvTpm?=
 =?iso-8859-1?Q?JbolEphxkPeqF/0C3QulIc9h0vBhcNNbSQeD11bqK8G+ld0q3eREyMCoqE?=
 =?iso-8859-1?Q?b7hbrcYJTDGSpPqpT5dZzcrWToCBnX2JB7/ZKuZZTHC+hA/auiarXMpGK2?=
 =?iso-8859-1?Q?r1sgkMiLt5l15+B6rOW9qfTecsbC411GBUiBJEn2B8WtZTbbxeOeCTE0Et?=
 =?iso-8859-1?Q?Jmb03Em0NfqUQPwJf3e/llW1bip6ExB+iCUQkBLyPbQuALlUodgr5pGTUI?=
 =?iso-8859-1?Q?WWIsSjxlK4/OeApO4oAH/ZMpveyZP9hDb0X+kOYkN9BST58lS6WbiluxCg?=
 =?iso-8859-1?Q?XpO4rKn489FzTIwD/I/mkqtFKvVu0H5fAWuMlfXCULikwFWGsUwUSHIKDx?=
 =?iso-8859-1?Q?AOQjsx0hvp6F7o510q4Bp1kchnMJ2GDUY55WypIyjxJLg5euqq4VQOYd1+?=
 =?iso-8859-1?Q?mHyw+kl45p9oRXwBj4QZuDuwX0/EvtEyuaWQPd55xZ7eO+g0NdXx0wiH0p?=
 =?iso-8859-1?Q?UONg6BMmCUeAsy1FLYKx0JiZ/6PxVq3lr7x6GV2vyAD2JmQ0HzDtsHVYRB?=
 =?iso-8859-1?Q?ePKNwAQvdo9txyoy3aIgWwn8jeJlXkZFfNFtqDsKc0e3PR+wEy6gwZ3m4Q?=
 =?iso-8859-1?Q?gY3v6tSHU8JUS5lA6dbnZ4upNJnJ+FkshoCvJq+66PMyjFdJeV2DcEvqaJ?=
 =?iso-8859-1?Q?C4c4HLqIoh85M54u9yzwyuvWH0QRHABGOLwmAdf7JvwNP4sRsUFVmRTLlT?=
 =?iso-8859-1?Q?uXBErkKu6c6s9hFzv/QznF10VwrsUlR6R883rm24tI2l5LEDgxjosgK9cp?=
 =?iso-8859-1?Q?5ddbTXb6FHwAgNF3vu+963mIgx3tKxbuuFWll+rHwTfJzO4YoRObsffE++?=
 =?iso-8859-1?Q?RuuwK17ZyPkQpU1F4NIK4dSqvvsksQcB/4tyZWrxSlRj/OcObuOi3atz+H?=
 =?iso-8859-1?Q?fzDIFWPUIats3zGoVzP7oq0SOrbCbYh6JSyuP+PA3eAu4NrFu1yFAoqkuM?=
 =?iso-8859-1?Q?/SsRuLciFhmXCbESEmaMTtR3YjpisJvyo4WzFjjWIYd3FUEMl6ofn4EmI+?=
 =?iso-8859-1?Q?UBZoTOAOqWq6koxoKhqEx/XQnUi7GYP39kTUEzQasjjDbw0H0A/unwfbfc?=
 =?iso-8859-1?Q?Y3PpaGaZkDm8CdTZI41Gn43u22TI3++09UC6/u6hl46waHV0JfM5TRMf/t?=
 =?iso-8859-1?Q?MLyJV9iVVeDa5CQaFoN+H8WJWPERwCn77onxr8Pjo9fg6+dOVl995gHQ3R?=
 =?iso-8859-1?Q?QOgWCjTemRshn1DLMvHfx7961bcgHruwlZOschJ1QCNaRNNLFZgPbU0jxj?=
 =?iso-8859-1?Q?JQ5qu6iILPctU314CraGn0cVAEbBF/mSBQnrmtMftmXkTCRL0NLDayCkhm?=
 =?iso-8859-1?Q?osp6WVuuKOV+cQnd+buAHW0QeJC0ZRzUF8bdUA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?BQUQUwNS/zZqjVeinyR1HuCHim6grpo7XX1KOOy8L5+ThFUV7qB85Wpr7B?=
 =?iso-8859-1?Q?tMvyziuSSp+b13ff9/H0ozY/pYbloYKQXL0CysWhT1VSWysG/WveXaVaVj?=
 =?iso-8859-1?Q?oK+kTZs6w9XRAm1Va5P6vLCEycxHvJB9Lfn7nkthXw2ifQ0BKhUCIda2aj?=
 =?iso-8859-1?Q?MTMA1KgEwcrZ//8dD1jpMBMjhtLzR3DxqKyhPm2rpGL0xY/MImlodFZd+Q?=
 =?iso-8859-1?Q?lPZutI2yxlDxgmShFexvEmUrsxwxqJQvo/f071x/3WrVe1JHWyjGBsR11+?=
 =?iso-8859-1?Q?5w7RvxBMIf3DVZpVv5nP2LRciOZkG3aDe8ATGVoXoZxfoiiViBtHKEm2b9?=
 =?iso-8859-1?Q?lzq81Zh+k1jU727TD14NKlGnqPrrwsVNC3fUX0hcd3JohNhMYQg8tSh9cI?=
 =?iso-8859-1?Q?wqntxxlGFBhHnTexydIgDf9zL5qfSwgO5A8q/JO5Gde54I/Y9porHtlxIM?=
 =?iso-8859-1?Q?U/ghlaujorBClSh7ZYVOmmCnw3udYE6fxbWrAm4+0qCEhfkeOv2kF3y8HM?=
 =?iso-8859-1?Q?v99PPsm4yYI91LsdXZx8+yYapOZ/Jtt6rlIkPagRDoMThSsqDqsXkmFKJQ?=
 =?iso-8859-1?Q?21f0f1nW8bKvboZ/c3EDCZ5TPaaXuWdISx8WT1oUYB9MBKFN68xMw6nRpg?=
 =?iso-8859-1?Q?pycUrTohCldZKvVID1l1c3tWEqBPUGQetRbNsl/Bntbq5ma8hDgoZoTzQU?=
 =?iso-8859-1?Q?5EwnMnM68OUYad2BV+57kVy0148eiqlbzzCd6Gh9Fo0lA+B0mqMUcvJYwQ?=
 =?iso-8859-1?Q?dOYZ5OinxD9in02f3TRzBrB72cbBaYhMfZyPa6uH8vv+a3DBNW7tjwlG4m?=
 =?iso-8859-1?Q?02v/3BRRugOfJeF7wEoTX4fdXH0tLflM5OqNxPaObL+qQ+yHKWI627V2KT?=
 =?iso-8859-1?Q?HsR+MFC+3Mc6H81rkRfwU8ID3JOtsihnZ+0szE4Cjz/0jxXokQNNEg9rd/?=
 =?iso-8859-1?Q?KplEO8k7Qs4QDiyJaLO3dgxHGuLgs99x/1pDKQKBM+jyCSwNsSs2Ieg1b1?=
 =?iso-8859-1?Q?s5obz1y/MQuAb0aXl0FagIcU4gGhalKk55thGGwIpNBvYEXGdItFw89gJC?=
 =?iso-8859-1?Q?QCrMAWn3rgOjo9NXbpcF6UxkLMQpDwcyCGTg2DiUiFEo1El8l1iPVER3Dg?=
 =?iso-8859-1?Q?27xTrGptc5u9a6ail1u8+CBEypzZpGmOn7GMbFUGezj0a6YvxcgEpPBdV4?=
 =?iso-8859-1?Q?Jun9iGCRZIBNepuCLeNO07ZAyooJEqL0VoLSEEQ2FeU9BnnrGYuRDzbrDJ?=
 =?iso-8859-1?Q?8lpp2Fz0HvVC/QmXlGy8z84vCCHletPSSmQierLtbgtf7hdV7safPe256T?=
 =?iso-8859-1?Q?paZH+jCqFauNhj6floa07OXvmyXNA86V2/W8itaHo/X+1cthLurvNs+FK9?=
 =?iso-8859-1?Q?cFCpAeltNqvHp6DqL2UF/RD3ySR+siZfQNI1DwhuBVxje1l68VVHKrf6rb?=
 =?iso-8859-1?Q?a2qApjJ3zsFxHAtTgqBaoVxc9ziIxLhT6mvGv2h6hoUjohK4doH8DoipEA?=
 =?iso-8859-1?Q?75r5ISnadliG6IGvjOR6E6ljYQbqpVb3T9ruN8Rg/sfPWD+JOSUlN2SjYq?=
 =?iso-8859-1?Q?Gga1hOueZOVDVWwG5drxtgtc7GF0GIR2wdCV2FVOejZvM7dXtzhPSLE6JE?=
 =?iso-8859-1?Q?a2INwID4+BFJy2Wn+rfk2BvEj0mlRFKgf1BMWPeivCNfJvXMvm6f3f7A?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aee54048-fa1c-4c97-6786-08dcd191ad60
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 12:11:18.8480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pGV6o4wY7aLUwLKfOgRDnC4O1WF3+4gLyvqZRwwEh/C05tGuQBb/cqKWKXpINVTNF8rFq5rtmEf8SKer2x3CMIqbQQ2st6l6QxOjslhiTDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un
> R Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 1/5] drm/i915/display: Add support for histogram
>=20
> Statistics is generated from the image frame that is coming to display an=
d an
> event is sent to user after reading this histogram data.
> This statistics/histogram is then shared with the user upon getting a req=
uest
> from user. User can then use this histogram and generate an enhancement
> factor. This enhancement factor can be multiplied/added with the incoming
> pixel data frame.
>=20
> v2: forward declaration in header file along with error handling (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  .../gpu/drm/i915/display/intel_histogram.c    | 205 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_histogram.h    |  78 +++++++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  5 files changed, 287 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index c63fa2133ccb..03caf3a24966 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -264,6 +264,7 @@ i915-y +=3D \
>  	display/intel_hdcp.o \
>  	display/intel_hdcp_gsc.o \
>  	display/intel_hdcp_gsc_message.o \
> +	display/intel_histogram.o \
>  	display/intel_hotplug.o \
>  	display/intel_hotplug_irq.o \
>  	display/intel_hti.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index bd290536a1b7..79d34d6d537d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1537,6 +1537,8 @@ struct intel_crtc {
>  	/* for loading single buffered registers during vblank */
>  	struct pm_qos_request vblank_pm_qos;
>=20
> +	struct intel_histogram *histogram;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> new file mode 100644
> index 000000000000..45e968e00af6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -0,0 +1,205 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_file.h>
> +
> +#include "i915_reg.h"
> +#include "i915_drv.h"
> +#include "intel_display.h"
> +#include "intel_histogram.h"
> +#include "intel_display_types.h"
> +#include "intel_de.h"
> +
> +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of
> the pipe's current pixel count.
> +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision
> factor for threshold guardband.
> +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> +
> +struct intel_histogram {
> +	struct drm_i915_private *i915;
> +	bool enable;
> +	bool can_enable;
> +	enum pipe pipe;
> +	u32 bindata[HISTOGRAM_BIN_COUNT];
> +};
> +
> +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	/* TODO: Restrictions for enabling histogram */
> +	histogram->can_enable =3D true;
> +
> +	return 0;
> +}
> +
Looks like we are totally bypassing crtc_state->dither.
Also I see some comments on dither not being enabled on anything which is n=
ot 6bpc. Is that constraint resolved now?

> +static void intel_histogram_enable_dithering(struct drm_i915_private
> *dev_priv,
> +					     enum pipe pipe)
> +{
> +	intel_de_rmw(dev_priv, PIPE_MISC(pipe),
> PIPE_MISC_DITHER_ENABLE,
> +		     PIPE_MISC_DITHER_ENABLE);
> +}
> +
> +static int intel_histogram_enable(struct intel_crtc *intel_crtc) {
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	int pipe =3D intel_crtc->pipe;
> +	u64 res;
> +	u32 gbandthreshold;
> +
> +	if (!histogram)
> +		return -EINVAL;
> +
> +	if (!histogram->can_enable) {
> +		return -EINVAL;
> +	}
> +
> +	if (histogram->enable)
> +		return 0;
> +
I don't see in the spec that dither should be enabled, any quick bspec refe=
rences?
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_histogram_enable_dithering(i915, pipe);
> +
> +	/*
> +	 * enable DPST_CTL Histogram mode
> +	 * Clear DPST_CTL Bin Reg function select to TC
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> +		     DPST_CTL_HIST_MODE |
> DPST_CTL_IE_TABLE_VALUE_FORMAT,
> +		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> +		     DPST_CTL_HIST_MODE_HSV |
> +		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> +
> +	/* Re-Visit: check if wait for one vblank is required */
> +	drm_crtc_wait_one_vblank(&intel_crtc->base);
> +
> +	/* TODO: one time programming: Program GuardBand Threshold */
> +	res =3D (intel_crtc->config->hw.adjusted_mode.vtotal *
> +				intel_crtc->config-
> >hw.adjusted_mode.htotal);
> +	gbandthreshold =3D (res *
> 	HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT) /
> +
> 	HISTOGRAM_GUARDBAND_PRECISION_FACTOR;
> +
> +	/* Enable histogram interrupt mode */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_THRESHOLD_GB_MASK |
> +		     DPST_GUARD_INTERRUPT_DELAY_MASK |
> DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
> +
> DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DEL
> AY) |
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear pending interrupts has to be done on separate write */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +
> +	histogram->enable =3D true;
> +
> +	return 0;
> +}
> +
> +static void intel_histogram_disable(struct intel_crtc *intel_crtc) {
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	int pipe =3D intel_crtc->pipe;
> +
> +	if (!histogram)
> +		return;
> +
> +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> +	intel_histogram_enable_dithering(i915, pipe);
> +
> +	/* Clear pending interrupts and disable interrupts */
> +	intel_de_rmw(i915, DPST_GUARD(pipe),
> +		     DPST_GUARD_HIST_INT_EN |
> DPST_GUARD_HIST_EVENT_STATUS, 0);
> +
> +	/* disable DPST_CTL Histogram mode */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_IE_HIST_EN, 0);
> +
> +	histogram->enable =3D false;
> +}
> +
> +int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
> +{
> +	if (enable)
> +		return intel_histogram_enable(intel_crtc);
> +
> +	intel_histogram_disable(intel_crtc);
> +	return 0;
> +}
> +
> +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32
> +*data) {
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	int pipe =3D intel_crtc->pipe;
> +	int i =3D 0;
> +
> +	if (!histogram)
> +		return -EINVAL;
> +
> +	if (!histogram->enable) {
> +		drm_err(&i915->drm, "histogram not enabled");
> +		return -EINVAL;
> +	}
> +
> +	if (!data) {
> +		drm_err(&i915->drm, "enhancement LUT data is NULL");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * Set DPST_CTL Bin Reg function select to IE
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> +		     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> +
> +	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +		intel_de_rmw(i915, DPST_BIN(pipe),
> +			     DPST_BIN_DATA_MASK, data[i]);
> +		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> +	}
> +
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> DPST_CTL_IE_MODI_TABLE_EN,
> +		     DPST_CTL_EN_MULTIPLICATIVE |
> DPST_CTL_IE_MODI_TABLE_EN);
> +
> +	/* Once IE is applied, change DPST CTL to TC */
> +	intel_de_rmw(i915, DPST_CTL(pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL,
> DPST_CTL_BIN_REG_FUNC_TC);
> +
> +	return 0;
> +}
> +
> +void intel_histogram_deinit(struct intel_crtc *intel_crtc) {
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	kfree(histogram);
> +}
> +
> +int intel_histogram_init(struct intel_crtc *intel_crtc) {
> +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> +	struct intel_histogram *histogram;
> +
> +	/* Allocate histogram internal struct */
> +	histogram =3D kzalloc(sizeof(*histogram), GFP_KERNEL);
> +	if (!histogram) {
> +		return -ENOMEM;
> +	}
> +
> +	intel_crtc->histogram =3D histogram;
> +	histogram->pipe =3D intel_crtc->pipe;
> +	histogram->can_enable =3D false;
> +
> +	histogram->i915 =3D i915;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> new file mode 100644
> index 000000000000..b25091732274
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -0,0 +1,78 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HISTOGRAM_H__
> +#define __INTEL_HISTOGRAM_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc;
> +
> +/* GLOBAL_HIST related registers */
> +#define _DPST_CTL_A					0x490C0
> +#define _DPST_CTL_B					0x491C0
> +#define DPST_CTL(pipe)
> 	_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> +#define DPST_CTL_RESTORE				REG_BIT(28)
> +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_ENHANCEMENT_MODE_MASK
> 	REG_GENMASK(14, 13)
> +#define DPST_CTL_EN_MULTIPLICATIVE
> 	REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT
> 	REG_BIT(15)
> +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> +#define DPST_CTL_BIN_REG_FUNC_TC
> 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 0)
> +#define DPST_CTL_BIN_REG_FUNC_IE
> 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 1)
> +#define DPST_CTL_BIN_REG_MASK
> 	REG_GENMASK(6, 0)
> +#define DPST_CTL_BIN_REG_CLEAR
> 	REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC
> 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC
> 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)
> +#define DPST_CTL_HIST_MODE_YUV
> 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
> +#define DPST_CTL_HIST_MODE_HSV
> 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
> +
> +#define _DPST_GUARD_A					0x490C8
> +#define _DPST_GUARD_B					0x491C8
> +#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe,
> _DPST_GUARD_A, _DPST_GUARD_B)
> +#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
> +#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
> +#define DPST_GUARD_INTERRUPT_DELAY_MASK
> 	REG_GENMASK(29, 22)
> +#define DPST_GUARD_INTERRUPT_DELAY(val)
> 	REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
> +#define DPST_GUARD_THRESHOLD_GB_MASK
> 	REG_GENMASK(21, 0)
> +#define DPST_GUARD_THRESHOLD_GB(val)
> 	REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
> +
> +#define _DPST_BIN_A					0x490C4
> +#define _DPST_BIN_B					0x491C4
> +#define DPST_BIN(pipe)
> 	_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
> +#define DPST_BIN_DATA_MASK
> 	REG_GENMASK(23, 0)
> +#define DPST_BIN_BUSY					REG_BIT(31)
> +
> +#define INTEL_HISTOGRAM_PIPEA			0x90000000
> +#define INTEL_HISTOGRAM_PIPEB			0x90000002
> +#define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> +						     INTEL_HISTOGRAM_PIPEA,
> \
> +						     INTEL_HISTOGRAM_PIPEB)
> +
> +#define HISTOGRAM_BIN_COUNT			32
> +#define HISTOGRAM_IET_LENGTH			33
> +
> +enum intel_global_hist_status {
> +	INTEL_HISTOGRAM_ENABLE,
> +	INTEL_HISTOGRAM_DISABLE,
> +};
> +
> +enum intel_global_histogram {
> +	INTEL_HISTOGRAM,
> +};
> +
> +enum intel_global_hist_lut {
> +	INTEL_HISTOGRAM_PIXEL_FACTOR,
> +};
> +
> +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc); int
> +intel_histogram_update(struct intel_crtc *intel_crtc, bool enable); int
> +intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
> +int intel_histogram_init(struct intel_crtc *intel_crtc); void
> +intel_histogram_deinit(struct intel_crtc *intel_crtc);
> +
> +#endif /* __INTEL_HISTOGRAM_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index b9670ae09a9e..424ea43016dd 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -238,6 +238,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_hdcp.o \
>  	i915-display/intel_hdcp_gsc_message.o \
>  	i915-display/intel_hdmi.o \
> +	i915-display/intel_histogram.o \
>  	i915-display/intel_hotplug.o \
>  	i915-display/intel_hotplug_irq.o \
>  	i915-display/intel_hti.o \
> --
> 2.25.1

