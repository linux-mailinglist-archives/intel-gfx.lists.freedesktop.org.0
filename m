Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5979E8C4482
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 17:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6015010E878;
	Mon, 13 May 2024 15:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iEsa0WLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A780E10E05D;
 Mon, 13 May 2024 15:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715615149; x=1747151149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vpBIr4VC8o3RPLp4vsgaTkNcmfaGfLaQ+X17PV/zNhE=;
 b=iEsa0WLv7lVy8VObUUAXkLX0jg5avsQW7xB/MjPIqby7bMlgLpcN2DdN
 KV4DFoSC93YzZrz9EJP+/paM5HX/MAw4Lp1m3YBtBZIt/gKzNvleMTIyd
 WCT0si4KQECDig/uh1DZJuno2d6pjRAGJT6i335e7Udv8mCMDP91KqiJa
 XDU9QvO73h48jnOq/4n4CJMYXdWmEsks2fbrjnmeI5JEY1gx31PxqI5gO
 Z7sECy10tCG/IXJqDtLODvS24FUXhLNswrqjx3j75s8ApdrUyeqPpR2P8
 UPHSvnkLLdmcx2G4qM6OqrNrEhrZUcX6CtaXY624kR6ZwG81b2kMsWT7a Q==;
X-CSE-ConnectionGUID: 15F8O22xRBCenpdzB5sHzw==
X-CSE-MsgGUID: 0r5OHY3vRVqiuq/On8N73g==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11431639"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11431639"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 08:45:37 -0700
X-CSE-ConnectionGUID: jP7W1fnMQryyqiCniCHktA==
X-CSE-MsgGUID: PsDOtgNiSxyBSxsVP/OM/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61211284"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 08:45:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 08:45:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 08:45:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 08:45:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 08:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SFJjBj9/IqGdIWAZ33TySlGqT31vWkg6iZQtFb+EqOjcbwAAsjlvmXkMg9E/F4QBJmXCY5cz4c6E4Ib25/kNAIYt0iFTq1C7+Ayh71li2B6V8xaSZaU0BO0V/um2QnTZH2DaJqeCpIeUt/ocf5H6LnibXC/Er0X9NewWqYN9/SZOu/Jc0f+i+9wgqWYL0g1j953vaZ4rb5jpImv84wNqW6ZuB4e6mxC6QVPzYlNyQMAQFSEXl7BvJmH719KTQGYS8nU27nFAupfo1T6Fi32xJh++ulYjBDTHVfIpCEVuCt7qNZeaCG2nXSjjTKZQv5Xf79CLVenY3wIr38s0Lv5xzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikgEnn+h8IF60SJorLtOVj6ZvSQZN8wL30NWawY7SzM=;
 b=C8vpzyY7WhuQjXV59eZ/QamjZWDizHLa5OkHjuH3uopy45hlgE9aNJCZnvw13E1ujHekoZjdySiCh2DzaVnuECMNWJJ4ggfMaVmpJtxKf3LKuzIp73xphDHUDMO71aMfL2rtqSPIzoXeHwlRofYN+RyYBmFLxTvB9CFbYH9HGlSlA1vntQoPBhsNZ0l9h26BybVWGAx2AivBilOfak/iP0Qf2Nm2Eh9SeF4FoQFpu6BAus5L1bB2EVr8iBCN3friDZsfvyj20FReUffHz6Ju51kY7kFzkmSPr/H4Uhry0EMMDI4w7ez+07/j0GkyHU6lC9AzWY1pdUSUlKJ8CAikag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7951.namprd11.prod.outlook.com (2603:10b6:8:eb::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.55; Mon, 13 May 2024 15:45:33 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 15:45:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Roper, Matthew
 D" <matthew.d.roper@intel.com>
Subject: RE: [v4] drm/i915: Implement Audio WA_14020863754
Thread-Topic: [v4] drm/i915: Implement Audio WA_14020863754
Thread-Index: AQHaodGJzzImBu2yFkaetc8PeSDqhrGVVVBw
Date: Mon, 13 May 2024 15:45:33 +0000
Message-ID: <DM4PR11MB6360976591431D2098D0A6ECF4E22@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240509053508.2807834-1-uma.shankar@intel.com>
In-Reply-To: <20240509053508.2807834-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7951:EE_
x-ms-office365-filtering-correlation-id: d4b9f9de-a4ab-4bdf-5c43-08dc7363b993
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?cksPLBH3X9/veomcZAOSKZ8ejId1WZzgI0xH70ZA70ZRwWaBsT/KCO4/tMDi?=
 =?us-ascii?Q?xV/RZpG2gRFrYygozBMkVj+ogypbmhrlAcAl4kBW0u1zeGgRo3j39hqebija?=
 =?us-ascii?Q?Tk5eA9QIbLTQrHxT4OpWVLD1Ln36GXvvXsFvYbKb5MpN6VhBqyG07Fv4lAKQ?=
 =?us-ascii?Q?K3kqAfTm7AZ68ptI5+/O3IeI9Yv9TXalVocaPM+AmbIUbWl8qiDRyKqFmRi2?=
 =?us-ascii?Q?QOM+hJ4YZlCEuRI0lUmlSfLNiKmfYj2QeQkkVl9jDOkTo4WRVMUG8LoS80Hq?=
 =?us-ascii?Q?yPibhOBNIpO+D1HbPln3/v99Ntdxr3tqf461tDoAQwkTukZWSa97JXbozCQl?=
 =?us-ascii?Q?Rb588mbBvKi3EhiaNexoLk6q/eTHK2jd459PtToZqAimyu9f4ZTonH7QCojA?=
 =?us-ascii?Q?4MgQJWwbfmaNTJWDoBk49V4jW2Ob1Yn4VUXxGbGwVWKi3Ldo/LZMAD5G6QxZ?=
 =?us-ascii?Q?HYGxn6KoqfXz5QkEk9vFAXlHFGth+P2mbN8pq0ZeMeDHjDjdGWx/vJ1iIhri?=
 =?us-ascii?Q?NEFgtJHJ8cA3VulwI1IE9Qym+pEsjq6XrgFjDHavypAKC0rNxTGUBXqA1wHm?=
 =?us-ascii?Q?I2kM48+RUyqsdrB11eel9WvTwBZBNk9BQx0kQZ4Yx8U85R8MaT5kota4k6w+?=
 =?us-ascii?Q?RUDG5HBUUxClZA9vtzKifAddPvTnGzJgITiBljSzw6YnXRAqzgzUufoQlZ/I?=
 =?us-ascii?Q?htgPFfYbcbspq64DzdEaWYK/JV4rXYjacqYdSBT6i5nrrCh8fgo25OBPYV9E?=
 =?us-ascii?Q?64zhXQ4Qg10bo6Er3+efRmCh0cikZWygN6hszVTygPewbUDKL0MhnAk3SDn1?=
 =?us-ascii?Q?4lY1DXTAPnVCzhFgoMScuhJ5J7ILqZnOnLI7eQpxcI3mZFrYASy1h+JycNK4?=
 =?us-ascii?Q?IVlosZ6u7jTLwQxOoApiFdkMsS2t1rGz+/Av549/9yAliNbyYbPkUv5uCya2?=
 =?us-ascii?Q?41C1mbAWwBteqbtJLRRZoOeyQ+nVyhCg5Wa1TejZ9fmcwaEt8iAeGcjHbS79?=
 =?us-ascii?Q?QJA22eKONKUE3pu/I3dRzbpteZ1QrK6HUTSFC+9Yfz8Q9UJZkZcB8azU42ud?=
 =?us-ascii?Q?KeMijdrgzutcbUgGRcZr8Uo1gjwXvd3r78de31vkknYot5Sc45MITtcV6afv?=
 =?us-ascii?Q?U3SLZn/CvogEfweASDLmjjXi1gj9D8kW47qgEQIW2LcqbUqJ3n9LPNmE+NP/?=
 =?us-ascii?Q?Erg5YHI1QZGLZpeSQP8gLbzB7Kdd07E+Q5qkpcvnRpl3vC8HkC6cHPf6BGiU?=
 =?us-ascii?Q?TPfArQdektr/yy4AMdKXkOtRQwHeVsg0CRwNCb4YDso5RKBdQ159dzzwRuGX?=
 =?us-ascii?Q?SBIldHvphdYHr3ZfJV08T5eN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mb+nM/BvkEZJMAMjsvnw+si7r3x8Gk97pvbUrH6CZLeX6g3dym+BGmqmSEBr?=
 =?us-ascii?Q?hM/DB4fBIAQ5Rl1uRo4F8EIzwVJe1KAvtfHrFK5pxElOoccUk46VSoxJR/YL?=
 =?us-ascii?Q?bTWh6b3jK3tCGvm90Qw2Qe35Fvmio53indIx+VXKeptqA6UBbTK3p65oxsG3?=
 =?us-ascii?Q?/abQ25AYh/VIJfhFNEN+cjaeiL1Dc+yfeBsCNWwroUVsJaNUHo6qtJTMLiGw?=
 =?us-ascii?Q?1lfv9h7ZcbGNL3C2X6BYJgWkR2uxML5quji7V0QvpRW2SX8DuaPE3JUX/2og?=
 =?us-ascii?Q?RFlKe03WmUisRgzEhWExNDLwTXa6cEXyiyvnpNXLQPoMmaA32LRvq1xetROJ?=
 =?us-ascii?Q?Er+mKm9JhR918lgQTbDnmkfsQjmCnwj6YiHI9xpANbxXv8yqUb6TD1pk4DYo?=
 =?us-ascii?Q?WyXr8RfdwtKuDOlGPYsEq0nqdNU6zZvbjf6+FiMQotF31BHyIgzrsWcqR8AD?=
 =?us-ascii?Q?EdpKdnP7KPPP7tKE/OZzPb9lSy9dXf8RKiKd9suqbnV1BOVE63iSMzZyyv4R?=
 =?us-ascii?Q?g5lwEHQyhGsndR128Jd1bhgVl/5tX0vlZrHJ6Dpr4lsK/COrsHBz7GosMiG/?=
 =?us-ascii?Q?aZqgX6sy0D74oMCdAkdA59L5zF9oxHtA7Uzkpvsr57de5AwvifWpynsXlGqI?=
 =?us-ascii?Q?wcDAKNgW4Sc4QLXvD6adZWyos92QBGYqv/lRfQDBlrNknfRYr8DA4aFhwE8D?=
 =?us-ascii?Q?C6Mv+76fqthcWbXU0Cbhc/kg0O3gO98DTHy4AKjJzO/MnYU+3UytR4J3lSDk?=
 =?us-ascii?Q?rOJeoZayy7zz1GtS2hFm7/VdqH9wAYNVo9/Z7dQVdBcZDLeJEeTlNJDMUmu7?=
 =?us-ascii?Q?Pbqosonx8mRPnKnwhRIRxsFd6ipqN7yPZPNLbIRaUHexSNUfhe8JZ2Ka8cft?=
 =?us-ascii?Q?duZMljKFSVPKIFicWVm7canagzbfEsb4ZSwekY4M7q9LggE/Hiq4wxRKQquE?=
 =?us-ascii?Q?GQG5iIjet+EeXbHv8hHd47nP5O2c1nNhnmkroTtdbq98ArVGlMncxSXwRMJb?=
 =?us-ascii?Q?WAZCKW4Etz0ehjJDWgfTnAN3eDmDiwzW5mJRXUslBzmZsOveJdoOMvoqO1Vc?=
 =?us-ascii?Q?bVqJey/HuIlCqOV06ieCInkZZqJjZ8Vu04k2OdeBcqn6tJOGQtN6ERjOTBFU?=
 =?us-ascii?Q?uNjyabDhXPgpn6zCC9nQiGbnh+8Z6iOlM4RKtHfwOL8uSeoSQw4R98uT2p99?=
 =?us-ascii?Q?xiiiJSLOrYyT8gJj9VdvWxoojF1FTzHMumaJx60DiIepo9SFhcRJR4DXKkwm?=
 =?us-ascii?Q?WuEqtynR7wnSwymuTBsY1mlFwvdK0dAaoe5CR3K88nKVehgynSCixxvDQJ4x?=
 =?us-ascii?Q?BppviskkXZLbDI85GtkmDnxCfVC1JPevtEJyUSVoIPLmM/5JUHIo/EHACAFL?=
 =?us-ascii?Q?0btC2ZD6b4evL/Au/aRMt84nsPCDwRroIMzhD68Fxf21QwYXPkTzsLYHOaFj?=
 =?us-ascii?Q?HTk/B2FM85zgfWv8nJUcRfYTwuSJAM385pHJlHXrtsNmJHzy6z1TBiclnkdr?=
 =?us-ascii?Q?oJEfjMrWHqJuPUJkJuktuVoPQzXvHMYO2kmb7KK4vNmpkoEgk20U3Hpr3srs?=
 =?us-ascii?Q?smhB9ot+TsUi4zG1Scckr+R0qz3yz3xNvn8vWhv5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b9f9de-a4ab-4bdf-5c43-08dc7363b993
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 15:45:33.1560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: STGtLh1alZvZN/XX5melOq6nNyaWRrCJ0dFAQTMVXu/h0VMoNyS8xUs/amzUDMCAW/VP95owU8U3GMg6vR0u5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7951
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, May 9, 2024 11:05 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> jani.nikula@linux.intel.com; Roper, Matthew D <matthew.d.roper@intel.com>=
;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: [v4] drm/i915: Implement Audio WA_14020863754
>=20
> WA_14020863754: Corner case with Min Hblank Fix can cause audio hang
>=20
> Issue: Previously a fix was made to avoid issues with extremely small hbl=
anks,
> called the "Min Hblank Fix". However, this can potentially cause an audio=
 hang.
>=20
> Workaround :
> During "Audio Programming Sequence" Audio Enabling - When DP mode is
> enabled Set mmio offset 0x65F1C bit 18 =3D 1b, before step #1 "Enable aud=
io
> Presence Detect"
>=20
> During "Audio Programming Sequence" Audio Disabling - When DP mode is
> enabled Clear mmio offset 0x65F1C bit 18 =3D 0b, after step #6 "Disable A=
udio PD
> (Presence Detect)"
> If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave =3D 1b)
>=20
> v2: Update the platform checks (Jani Nikula)
>=20
> v3: Limited the WA to LNL and BMG, added a helper (Matt Roper)
>=20
> v4: Updated the bit naming, fixed redundant if statement

Pushed to drm-intel-next. Thanks for the reviews.

Regards,
Uma Shankar

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c      | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
>  2 files changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index ed81e1466c4b..adde87900557 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -183,6 +183,15 @@ static const struct hdmi_aud_ncts
> hdmi_aud_ncts_36bpp[] =3D {
>  	{ 192000, TMDS_445_5M, 20480, 371250 },  };
>=20
> +/*
> + * WA_14020863754: Implement Audio Workaround
> + * Corner case with Min Hblank Fix can cause audio hang  */ static bool
> +needs_wa_14020863754(struct drm_i915_private *i915) {
> +	return (DISPLAY_VER(i915) =3D=3D 20 || IS_BATTLEMAGE(i915)); }
> +
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */  static u32
> audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state) =
 { @@ -
> 415,6 +424,9 @@ static void hsw_audio_codec_disable(struct intel_encoder
> *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>=20
> +	if (needs_wa_14020863754(i915))
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3,
> DACBE_DISABLE_MIN_HBLANK_FIX,
> +0);
> +
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20
> @@ -540,6 +552,9 @@ static void hsw_audio_codec_enable(struct
> intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>=20
> +	if (needs_wa_14020863754(i915))
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0,
> +DACBE_DISABLE_MIN_HBLANK_FIX);
> +
>  	/* Enable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 88ea2740365d..4c31844d21df 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -164,4 +164,7 @@
>=20
> _VLV_AUD_PORT_EN_D_DBG)
>  #define VLV_AMP_MUTE		        (1 << 1)
>=20
> +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> +#define  DACBE_DISABLE_MIN_HBLANK_FIX	REG_BIT(18)
> +
>  #endif /* __INTEL_AUDIO_REGS_H__ */
> --
> 2.42.0

