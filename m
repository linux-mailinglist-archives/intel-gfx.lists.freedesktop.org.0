Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 519B28B6E0D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A0410E85E;
	Tue, 30 Apr 2024 09:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReJXAAVA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8536E10E85E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714468785; x=1746004785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GItvod/I7dCDfMa0/A85pyKpWPGSH0gEU8UYGCT2gj8=;
 b=ReJXAAVA2lgPtqbQuyymEtvtq3ljs5xSVx9vlkbIEpWivAu56qhCo9/A
 UEu9j4mrALCgnliUmoSOlf/VFFiJ7sVbWZn9YnOLM+PtUeHB7sZMIxp/M
 2h6sI/H7KVmB7Tv/FmrUTO1J130Q1ZKjE0hadNirPl33+jBiG3mzvlMm4
 a5l5xwlMKIYLq7n9trCxGltsg/wMoM/U5t5IM1PAULJ/Zr/rzn6nBV2v6
 AQVQJlJjPJomCV4fqoWI/I/FqpRV39I9yQZx2sDV/BGQb7X2mdeXoXyhl
 dZeg8ACpuyGSP+wXueKdg88Ar+OqFl6TT0Ua5iCJAyOKp0CumVjdvzc4g Q==;
X-CSE-ConnectionGUID: OmkUhegMT8CGyKw3VCCbiQ==
X-CSE-MsgGUID: uIV18OlxRriwO4xNMDV8yw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32667803"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="32667803"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:19:44 -0700
X-CSE-ConnectionGUID: afBZkhvlTc6CXoR3ATRbtA==
X-CSE-MsgGUID: l/3vOf4ASnWL3AmNMTmZjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30882430"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 02:19:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 02:19:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 02:19:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 02:19:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 02:19:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SyCia7iRst3pCH9K8P4mg3LjVEmrifmzIXt62V0HyYOVXEzp6HQ5Ws9nWoxdv6ssEsVrTyUbujDZENO54i+2jZ6pGju1YJ+k0moxhqnLDcJJ0VTsReDaKjox9T0z5duTmaDqmpNS4nDj5IcTXp8PHuPA+ve9xR+i3LSJ7HfqhgYw3788rDLgjWWjzU9JxnsWz708mqYQpJDRMRuJZrkTfc74Jf9lStd7NY2S9M5iV8ksqbJgVh3iX7UH7YXB/S0zr7GXfx55mnsqAhqwdeJJOe2ddeJngVnPmRpglfNFuGlRGQ59W6BB+AHEHvdRFP4ICcS7OY01EWeui+rPhORVzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ETQSkTSxZ/LdwTRrBfuj9UEtQgFGE5VrI2y87JkHF0=;
 b=jzVODQU3EKxzAq6+YQGl2e5NSi4povGTB0indCjSNX67TWcbBC7NLKVJ+w6rCuh1gGBlAT19c0TVkbrkk8gh+z2achec3eCjGkvvEAT0ouu93kbmcMBwrcHL/4PdpCC51AYuNlwADEzHIA6kQgezegNzJ9bkqHqVDrXITC8gCkU6mkAkCQrHkuJ11ddlarGXoXLFYmJDWcwRbaZMvgXuVFk7Xf1kaQhV2h3VLvaDdOkXX+q6DC4xCFhUqckisMyKNgN/xEfiCRXasW8i8WBchqAwqaPBS+av5O1DKXW9fWMPG/SESmLuE6z6qSARsUxXvxLeGp8DkKwB0znGBzWBCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB8076.namprd11.prod.outlook.com (2603:10b6:806:2f0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Tue, 30 Apr
 2024 09:19:40 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 09:19:40 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vehmanen, Kai" <kai.vehmanen@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Yang, Libin" <libin.yang@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
Thread-Topic: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
Thread-Index: AQHamto3qPwkYC1SxEuIJBVTExvv5rGAiK5g
Date: Tue, 30 Apr 2024 09:19:40 +0000
Message-ID: <SJ1PR11MB612925C5CE45E2F67E04C400B91A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240430083429.729247-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240430083429.729247-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB8076:EE_
x-ms-office365-filtering-correlation-id: c25c85ee-2671-43ce-a00c-08dc68f6aa14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?y8JKkY+Wza3cTnoHVaBskXTD2/Ov5Dhl0HBIzSozOuPJP/uiNx1CfDPeHOZt?=
 =?us-ascii?Q?lll0RctPjA4ScUj8QOeFYIdfuG9BStwQv1uexM8v3nGpGpSfXSYAljIG1e2i?=
 =?us-ascii?Q?mnwRfw14d0Jwe/FGMb5eSMS3XZKPTq43BzQoU8/7lNtxCVX5ztgYNW508lV0?=
 =?us-ascii?Q?4ji8Kn0SxqwlkJt0JMkXxVUyV50HYEKQxXFYvDsIQzczHAU0OV1Srp7ITAQN?=
 =?us-ascii?Q?VqFJON9jDTNKNKCPrdeFxCge4Ajt8fK6lkRkNJ73WEGK1j1dE7Pto6hrBd++?=
 =?us-ascii?Q?WVojZl/0yoy6ndErmGTUxs0/DIOZgIX09GCZRhmepNpusny3gYCgAZzMNcfd?=
 =?us-ascii?Q?XHFpUg220k6D8gOlY9S1k9/ZHuDnS7I4PQRXZ8meSoywPmwQxVgt1RND1sEU?=
 =?us-ascii?Q?QiVP1ZjdFl8WehrhP/1ZHJ/sL22wyJaYeOWhrJdn5oR2tRjl02wqCLPEKr0E?=
 =?us-ascii?Q?zU40lHJA9262aVYaR+wgLzY/0LL+4kOcbDTjInbDNlUJEIHl22RudwzUD0Tr?=
 =?us-ascii?Q?sbf0QVn3QkUkBUZmy063HrbNePtu20pZs6d6ZpICfiKfgOv/qsdkjLG4mudO?=
 =?us-ascii?Q?9F5aMyUVmn+g4J107CxGr/3urItouFF0bIlLZkLECX9lJ9vb3ZuRg/ygSt03?=
 =?us-ascii?Q?BZIDb+guz8YqjCmLYe/lalBaYmvNmL7BeBQbGRwB3avnZo+TTDZbYvCAk0EI?=
 =?us-ascii?Q?kgHbX+jcvWgDk/0bAWggrtltCQYi+vK4kNBCr92qBojzgUNocpouCWnrryw9?=
 =?us-ascii?Q?FzrlZMAQWP3F4UzxqXTMNNF8jzsExhO3AdInmV6dUZ/9fYZ3B5yOVDSSibfH?=
 =?us-ascii?Q?CwwQr7PW7LhJnmQR7Lz3xHWXqgPy6NQ/S+KfGMArOpiAADzGpTDN1NDr3MKO?=
 =?us-ascii?Q?frey8BMA+rE5hdtf/E2rtEF7JjaOFXEoVtXGk99xCl/QAxicoxv9Y0z8jPil?=
 =?us-ascii?Q?f9yxdDdGXdf3a6GDj+busJeZqjCNgRqDLG/Fa7QFgu9FKqyYJIGyMVc48jUa?=
 =?us-ascii?Q?KRm8Hk6htAygw2Lyep/1fghxpTN0ziqHQImTq7HebSCF9gYEbxwwnF/IKqC0?=
 =?us-ascii?Q?p5XMiEOh4xvFcS0lJWdYUWKaU445mJgem3NWRn9CsyozlMrdf0J6XhIc/ndO?=
 =?us-ascii?Q?Hindxj4N0KzohJf1MhO8ILZgzjJMWYNJ7UpAnuxzAL5vQ3TmFW+hjEU5+t68?=
 =?us-ascii?Q?g2ijcIYm75k/lFbnMUFN45912EFWTns8n2QTEPMzl3m9qZoRuoaj7nEtM2tL?=
 =?us-ascii?Q?Ob6PwLAN87+dyQHVW1SErBo9UV+tL54IBYHOIdVnmQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DYJLhv530CoqxtrpVGHzcUmWpPK4y93n2P+BBxEYmckgXz2iZkTjHCS9YI0R?=
 =?us-ascii?Q?HOlmf/YMukmGwaZE2NH+ZrOjcos0wC2+Ki3GRgGHv+YMSlgMINXxljAaov6w?=
 =?us-ascii?Q?aPHyJWdvTlqDLOpDsjV8SAYiKngeMFbhCUpvNDfYAvWMFUOZkiN0FUfdJy9M?=
 =?us-ascii?Q?PcllogdiJP4K2zTO2tWDGaCCdfD4oNH2V1sbuRCVOK7fOYOB8ea9qNh9j1rC?=
 =?us-ascii?Q?sNJb8q0ANCq0G3+cJOkrgOPPma4rRyxxQwmmey00b5dnEL/ybbtQXTThiw4f?=
 =?us-ascii?Q?dXn03n3upDaICg9HwsIMFFl3pRZnaxY6/gLsgKz4ViLqWHTs32OhJzVDaDO+?=
 =?us-ascii?Q?pb4QhlPtGP1t1+eyPs0YS1IPFiejMK+aNEQrSUHRDW0GC+j/Vfo/nSZau+76?=
 =?us-ascii?Q?NtJ6kOrQv8sMv1u7pFFFdf/peMPFvSetRBcGa857zCMC4ox6+lMUXSEfmVcV?=
 =?us-ascii?Q?QQedMly0mH51f7qZWeeeLBYxwj4NeNhNo9L+l0adOXOpjyNxp4G+nnAWyI0N?=
 =?us-ascii?Q?IogzEcJQ1wyAR2aUvrcpIRHzqUEKZtrC+s7G7EoXbFVypB6ZYV0USo2J73uS?=
 =?us-ascii?Q?c/p6NO4cB/ofzgJnN4TBEMvoIuXhLLWvDSEI0OkfaX7e/SRxqP/P58nrvpXK?=
 =?us-ascii?Q?YuqTdgV8E9t3urOoKmIr0+09a+XGit8iueJulGtERUR9vcOuv8ZebDYgNzjk?=
 =?us-ascii?Q?gMMMY6snkvp/te3Zeh6T94Aq9yRrF0q7JdBy5Q4j0SZPf8eMKTXrr9GGWz/r?=
 =?us-ascii?Q?YxkFymauCjIK+CwTnHQOM7vgdUSxaVMaXOwBUhM0Vf/tVJGel4EkqTCut7kp?=
 =?us-ascii?Q?lCUVEBCm+3eg3R2ATwjVsg5Ap4yxP+T3GJZ0UDn0yIiAD0krLH2R1Sz0tDb6?=
 =?us-ascii?Q?P9jTvCrZEWpGeG2SXW6joG1CFjYUpqEmOCtS89++ZIF9D4PIJF3OO22kGEeX?=
 =?us-ascii?Q?/F1nBd6OQXFVxvA92dmZBfAqbmdxcG8j3KEK7PjRERZmZc/OZXZCH6j6yoj8?=
 =?us-ascii?Q?LHDvZck6OeEWgEGazgkEm8sszqG9rRFvBWyd4zX9CeSfq2y+gssn0ZaspSTf?=
 =?us-ascii?Q?Su8btdnD11KlnB7lFGvghPWZ2ddEyB3KNvhXUQOPbkfShFt3J2XlNYgz2zKO?=
 =?us-ascii?Q?azGlM4zFkgbPa/YYPBT3SPwwpflzd+QwnoSim6lxuKnbPO26V3BufmKo/I9W?=
 =?us-ascii?Q?un+Fxi0EjM0PIza03Jj+99K9lbJMBe0Rg0xpq+/lNwVEUe1GEL8aegnWykcD?=
 =?us-ascii?Q?SLEaurrZWBSw8do7ju3u6bBRrKgyLzzlXMynRxCfym4K2mi1SX4iIrBo+UZ5?=
 =?us-ascii?Q?CgQ0SBj3Zwefqv0mffnfUWNqbQyJhSDAtYIHWYTpJxB9yPRKKmJOSVPJmokO?=
 =?us-ascii?Q?38cwT6k5EpGmPFPHg7B40d+Khiu7/cTgJ7cWqNtg62YFnsvCbprwB1/pwd0d?=
 =?us-ascii?Q?UsUU/XVXYgQxxDx1yZ5Qa3eH5HwtD2eYnqYe4HYaDsjz6wjt5u8P1Rgth+Hh?=
 =?us-ascii?Q?kLQcCFCwymhks6TUZOAJ3EvER63T5lUkKvlKDQAQ6QqNQ8YfMcUIJx+f0HLB?=
 =?us-ascii?Q?3/gAIgoFzZJo3sbNsoEhl4x5z59fr0L9XI53i5bXin7leUZQ4VDQelvacCs9?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c25c85ee-2671-43ce-a00c-08dc68f6aa14
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2024 09:19:40.3902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: syW3QKylSAkbdwV62k/Z/lUWXuYlXN+Nyci00B0QzSHUi0Z4ogsKJcuEv1Lb36n7zmsBwc/ixD2g/rA1ryjubzFaa550QBzEfeIQnUnojVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
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

Hello all,

Please ignore this version. I accidentally sent a version I was experimenti=
ng with. I will correct it in the next revision.
Sorry for the spam.


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Tuesday, April 30, 2024 2:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vehmanen, Kai <kai.vehmanen@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com;
> jani.nikula@linux.intel.com; Yang, Libin <libin.yang@intel.com>; Shankar,=
 Uma
> <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915/audio: Fix audio time stamp programming for DP
>=20
> Intel hardware is capable of programming the Maud/Naud SDPs on its own
> based on real-time clocks. While doing so, it takes care of any deviation=
s from
> the theoretical values. Programming the registers explicitly with static =
values
> can interfere with this logic. Therefore, let the HW decide the Maud and =
Naud
> SDPs on it's own.
>=20
> Cc: stable@vger.kernel.org # v5.17
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8097
> Co-developed-by: Kai Vehmanen <kai.vehmanen@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 111 ++-------------------
>  1 file changed, 6 insertions(+), 105 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 07e0c73204f3..12e2ba462077 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -76,19 +76,6 @@ struct intel_audio_funcs {
>  				       struct intel_crtc_state *crtc_state);  };
>=20
> -/* DP N/M table */
> -#define LC_810M	810000
> -#define LC_540M	540000
> -#define LC_270M	270000
> -#define LC_162M	162000
> -
> -struct dp_aud_n_m {
> -	int sample_rate;
> -	int clock;
> -	u16 m;
> -	u16 n;
> -};
> -
>  struct hdmi_aud_ncts {
>  	int sample_rate;
>  	int clock;
> @@ -96,60 +83,6 @@ struct hdmi_aud_ncts {
>  	int cts;
>  };
>=20
> -/* Values according to DP 1.4 Table 2-104 */ -static const struct dp_aud=
_n_m
> dp_aud_n_m[] =3D {
> -	{ 32000, LC_162M, 1024, 10125 },
> -	{ 44100, LC_162M, 784, 5625 },
> -	{ 48000, LC_162M, 512, 3375 },
> -	{ 64000, LC_162M, 2048, 10125 },
> -	{ 88200, LC_162M, 1568, 5625 },
> -	{ 96000, LC_162M, 1024, 3375 },
> -	{ 128000, LC_162M, 4096, 10125 },
> -	{ 176400, LC_162M, 3136, 5625 },
> -	{ 192000, LC_162M, 2048, 3375 },
> -	{ 32000, LC_270M, 1024, 16875 },
> -	{ 44100, LC_270M, 784, 9375 },
> -	{ 48000, LC_270M, 512, 5625 },
> -	{ 64000, LC_270M, 2048, 16875 },
> -	{ 88200, LC_270M, 1568, 9375 },
> -	{ 96000, LC_270M, 1024, 5625 },
> -	{ 128000, LC_270M, 4096, 16875 },
> -	{ 176400, LC_270M, 3136, 9375 },
> -	{ 192000, LC_270M, 2048, 5625 },
> -	{ 32000, LC_540M, 1024, 33750 },
> -	{ 44100, LC_540M, 784, 18750 },
> -	{ 48000, LC_540M, 512, 11250 },
> -	{ 64000, LC_540M, 2048, 33750 },
> -	{ 88200, LC_540M, 1568, 18750 },
> -	{ 96000, LC_540M, 1024, 11250 },
> -	{ 128000, LC_540M, 4096, 33750 },
> -	{ 176400, LC_540M, 3136, 18750 },
> -	{ 192000, LC_540M, 2048, 11250 },
> -	{ 32000, LC_810M, 1024, 50625 },
> -	{ 44100, LC_810M, 784, 28125 },
> -	{ 48000, LC_810M, 512, 16875 },
> -	{ 64000, LC_810M, 2048, 50625 },
> -	{ 88200, LC_810M, 1568, 28125 },
> -	{ 96000, LC_810M, 1024, 16875 },
> -	{ 128000, LC_810M, 4096, 50625 },
> -	{ 176400, LC_810M, 3136, 28125 },
> -	{ 192000, LC_810M, 2048, 16875 },
> -};
> -
> -static const struct dp_aud_n_m *
> -audio_config_dp_get_n_m(const struct intel_crtc_state *crtc_state, int r=
ate) -
> {
> -	int i;
> -
> -	for (i =3D 0; i < ARRAY_SIZE(dp_aud_n_m); i++) {
> -		if (rate =3D=3D dp_aud_n_m[i].sample_rate &&
> -		    crtc_state->port_clock =3D=3D dp_aud_n_m[i].clock)
> -			return &dp_aud_n_m[i];
> -	}
> -
> -	return NULL;
> -}
> -
>  static const struct {
>  	int clock;
>  	u32 config;
> @@ -387,47 +320,15 @@ hsw_dp_audio_config_update(struct
> intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state)  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D i915-
> >display.audio.component;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	enum port port =3D encoder->port;
> -	const struct dp_aud_n_m *nm;
> -	int rate;
> -	u32 tmp;
>=20
> -	rate =3D acomp ? acomp->aud_sample_rate[port] : 0;
> -	nm =3D audio_config_dp_get_n_m(crtc_state, rate);
> -	if (nm)
> -		drm_dbg_kms(&i915->drm, "using Maud %u, Naud %u\n",
> nm->m,
> -			    nm->n);
> -	else
> -		drm_dbg_kms(&i915->drm, "using automatic Maud,
> Naud\n");
> -
> -	tmp =3D intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
> -	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
> -	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
> -	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
> -	tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -
> -	if (nm) {
> -		tmp &=3D ~AUD_CONFIG_N_MASK;
> -		tmp |=3D AUD_CONFIG_N(nm->n);
> -		tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
> -	}
> -
> -	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
> -
> -	tmp =3D intel_de_read(i915,
> HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
> -	tmp &=3D ~AUD_CONFIG_M_MASK;
> -	tmp &=3D ~AUD_M_CTS_M_VALUE_INDEX;
> -	tmp &=3D ~AUD_M_CTS_M_PROG_ENABLE;
> -
> -	if (nm) {
> -		tmp |=3D nm->m;
> -		tmp |=3D AUD_M_CTS_M_VALUE_INDEX;
> -		tmp |=3D AUD_M_CTS_M_PROG_ENABLE;
> -	}
> +	/* Enable time stamps. Let HW calculate Maud/Naud values */
> +	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
> +		     AUD_CONFIG_N_VALUE_INDEX |
> +		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK |
> +		     AUD_CONFIG_N_PROG_ENABLE,
> +		     AUD_CONFIG_N_VALUE_INDEX);
>=20
> -	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder),
> tmp);
>  }
>=20
>  static void
> --
> 2.25.1

