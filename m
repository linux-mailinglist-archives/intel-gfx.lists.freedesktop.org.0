Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4152797BF15
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 18:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B5D10E1A9;
	Wed, 18 Sep 2024 16:24:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FlScend8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F5E10E1A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 16:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726676695; x=1758212695;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=grwJYakPS76piTEAnFzWCU7Ig9GnOHiRZXMvx63iP8U=;
 b=FlScend8dwGoE/bopt8+pUS926/Wgk/aAKe9ec1z6E2DnafneqegzivP
 V/Dp6kZs5zM89tyYGeD0sawJ49nX+dR8AmnCLxe0LQu15yNcDOnDa448c
 os4Kup2HrjA3H5f/BN5aQHTJXKAP0jtOuuw09NqQ50eXAAxGG0G7RhWWd
 X4c/1k5VK5S77UfwuFrzwfVpnvIrbTrZzmaONOp2qZ4TEO7q63PIjmI3D
 seT+evrbeVM+5XpRXTlkVp0mRwoQVnoFZsR2fpeP3FA4VfgEuldq6GWYC
 CyFOmNz8IkoLjT/m7EAwsgJozKWlt6LDyReQ5NRJSS6Apy8hyFl747Ek3 g==;
X-CSE-ConnectionGUID: UY3uwXzyTLS5SVdUuiI0Qw==
X-CSE-MsgGUID: pYrl/lauQM6mfIHARtSUxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29392518"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29392518"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 09:24:55 -0700
X-CSE-ConnectionGUID: Y8NZ7LaLTBSa1agCk4Yxeg==
X-CSE-MsgGUID: ibha+GYKSpCTRSInXyCjyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69513878"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 09:24:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 09:24:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 09:24:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 09:24:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 09:24:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NeEtcizuCAwf1wCJRpuLrDT6+sUs71Yw2Hkgl4twc26PQLAuTu4QNCJGdMblPGPXQgBsaMxjWyg4F3iO2PTdjIhMqRLosKmNCriMIQT1is1alr8DwAL4ZePNN7LRxqtHfsB3Act/mhfJDWepdApYEGg+LRVbt1+Q6ADVUz71e/ZmnBx54OEydGc6Goz/Se5Nxzb9JlxO0oew0EuJfn4Kp56A7UGyS+G4FDoeLBZjmbug4e6sm9LixfDLFhq/r8mggMsRIT7hoi8FvqvsMu9hCnCb2OWFCOgTH1w7BUrO3rnYSTZ7cUMcwRhkHEdBjQVftPZZoxhRh7te8/Y49GJkdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=grwJYakPS76piTEAnFzWCU7Ig9GnOHiRZXMvx63iP8U=;
 b=CxbfuDP3J8fxRSq+0Kh+6uQA6fwnspUsGkclouaPw+CriA61HLuWzGzaHT9h7JltZn7EQ2DJaVe8gK+0V6q8tgYFNSFXxkRUOx7ArNW5/WpKeYcsDZDHMWVSE/+tNrXRgAaDomc43mFACf7HfO8qcs6hsDCZCbBONwSpDR/McaM60bLB2r916b4nwDmkuWR61fZ/zrJiori6OkvscJMftPaVhqJPvhYS8iyJvq0mTL9eeB0uLE9wZtX7yxqnHJtMOXYj/hj290pFZvQiBWQJQujXyx6HePXX6Ehbpnmwfg0oAOvlaAD8xKY84TKctUA8qOejJGY5MOX2JvM2ge0A4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Wed, 18 Sep
 2024 16:24:49 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 16:24:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Topic: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Index: AQHa87WdUWsctdOqxEmXUoULaQR1orJShvoAgAtf9tA=
Date: Wed, 18 Sep 2024 16:24:48 +0000
Message-ID: <IA0PR11MB7307D719D9074D17470C4A17BA622@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-5-arun.r.murthy@intel.com>
 <SN7PR11MB6750B4839F65B4129B64EF8AE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750B4839F65B4129B64EF8AE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB7409:EE_
x-ms-office365-filtering-correlation-id: 8f60dd72-d7bd-4902-e16d-08dcd7fe6a98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?58MK908S/BDE4tQnvGN+gU71LRySox+opzMw5/6foXsmWHTAY+cTUv/u05om?=
 =?us-ascii?Q?1V0T6y0ajZ7au/uAbnRZzhmcj3hxSRQkC7Sx3XqxnTHPj5jg+gQtIh2YJKXR?=
 =?us-ascii?Q?TkDfZQKKct+0ud4VL9GuA2mPAFf1JRPEE/7q9Jpnj5wxamhzOFzM+PdUYV7d?=
 =?us-ascii?Q?OJWVrN2RXVTgBx35cfJs471IiAdBiZGhDYhpyvCufnL6z/pUd4/nRO0j5OWv?=
 =?us-ascii?Q?OS6QOr+vDp6Ipdk1UFD3eFRcarcEpQd8ARbXPSiVk1ioF3rMCYztA+qTfghX?=
 =?us-ascii?Q?WE9+qcAJeJymK8lcxlLMuUxbTW7wYNpczr5Ob+m0sm7PJUxdwFQiz66Cp4c6?=
 =?us-ascii?Q?dAvKSVslkzQCihHw5lknqdpTMalUCQVC3OFPOWw8lppvjTInRPDd+h/ZFlEI?=
 =?us-ascii?Q?srYCp8uUvprWUq8JexxVeU446hhrjj+XiX7dE6kveOViGFWLaNK77BTEoieu?=
 =?us-ascii?Q?xjXidh2l4ybE1AoP/HWPHUzwsW9XVry/WqKp9QrDfXX1gfdXEiLW0egI6Slq?=
 =?us-ascii?Q?H1W6xVrtpCnpe1M38SKmTn8Zz6drb/yDghLZ03YzdyE+1EOLOug3LoBHvmRF?=
 =?us-ascii?Q?SdnZZOgY26KQCn+sTMIRTmVQIo6hCnNivWRDUyeu2+vAR0wtCe6yVaiGyAoe?=
 =?us-ascii?Q?8DJygQouFlmCZxwTMh173mPu+QQ2e/KFodvVuScIEHdW+SDHaXbYpzi3iNzJ?=
 =?us-ascii?Q?RdrINSFT1Xr3ecgyHx2mKBJvrhq8tf+j66Ga0TbprbGPQ/eRZ4x6ib3yhBsT?=
 =?us-ascii?Q?SOOvDh14ovaV0JPIreP8Ec+8rY4b87qcoOVNi4MnIBz55TcdQb7TByKyecna?=
 =?us-ascii?Q?VEsgLWjJ56rVWhW/XA4yttkx6WkL1sJqLib7uAxhraAWe0uGgqtZ4xJGU/qe?=
 =?us-ascii?Q?jB8lcjpZcAVeUY05sfWDgMJK7Br8fxqgoL6cr7jkluLupTqJT2NCEhkxyxpF?=
 =?us-ascii?Q?ixdrZjcIRlvHSeSlry2MLKu3Rh1CvaVBOrG12mhcc+OlcfJvinn89t/5r9t/?=
 =?us-ascii?Q?1OT/sNn0TAsT6dlIhtFH63v/NEdsZVu2uGBKRJ9y1rIwvnBi9hsZAbz253ec?=
 =?us-ascii?Q?DcEpsmOpZkHGy6RZrLz+1rIyKpl6TRPqFK2d2rRlz0BL1Xukt4uQTu6QzgUi?=
 =?us-ascii?Q?A3ZA4qPMaXXMpisjj9jE14cE2A507RowFEC3c8OV2f4NdR66EKuu94wf0u/C?=
 =?us-ascii?Q?BrLiVN+Hhlk2RAb4bcZH3aPNmKLnXdJmK8dKsygjo5nZgYTRweSM6ZClAI0I?=
 =?us-ascii?Q?ZcVghplXr6B5JbbjxoWxzmnxbEulEcfFXLKh5TqhihL7AcDSNzIg3XTSrADy?=
 =?us-ascii?Q?7R4efVuyIIrumKIHXtzqmuiZHDVFVVdYJSrNebt3u1lZFfYrhh6FcYzyEAUJ?=
 =?us-ascii?Q?9IHZ7iR0ovu5Du8P92zJ2qX3yvb/NAUaRSTE3Sy6Sa0eM8s99Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?96+LnkoG7yTFYKY6eoABnMP5X89VgAFoyk1jXarsSGBBhO4v7M4AQbeNDw1b?=
 =?us-ascii?Q?ksSFFUNYzkX81aWR62pDQF0TBLNvIMrXUv8KNpkq2xE8jOuO1lqnVGYIc5/V?=
 =?us-ascii?Q?3ON+HOS8kMunLH0bcdUGR27wdVMW+xALmwoA1P24vWeNhmGfT9WLP3oNFgdG?=
 =?us-ascii?Q?ZpRBda94jpDpaEU1s3iqNXtnWLvTkB9FQL5A8VJw2M3AL+H/trjanFrkbsFt?=
 =?us-ascii?Q?wQOagoReI6BieitDjgM9P3jrxNDAgl9tIwewB1Kwpeq8ZELLplqqDqc4A9pm?=
 =?us-ascii?Q?f+O5EsH4bEj59crllKju8DJ2h0p5fk/lFuStINIlwV6tVfSgeN0YGW3xvOjK?=
 =?us-ascii?Q?owIPV4mgCryxsikhOx/iVcJeZIhoKRUWsRhCaUGNE6FSfA7GVdXtwG6lDcVd?=
 =?us-ascii?Q?yA15ity25IkAf9xaMU8d/8v2naZL4YTNms67a7VEYK1A6+74u7ANpj5HVJuT?=
 =?us-ascii?Q?auZRz3KnPWPJEUf16GQooOZyNuKIlOvrGaDhARsJvhdKCq8Tam9kiSwlRNQy?=
 =?us-ascii?Q?E+5H0I7q6Ha2l9jnGBNE0neArkFGCR8xI1mKqdZ1J6qkXSuErAhhoGO+MHhH?=
 =?us-ascii?Q?+3clhpVfNg8c87OPLm37niIdwp6O1cbqQdqvr58eWpUibEDP7BRLH0h/DFdt?=
 =?us-ascii?Q?e5M03zyZAB/obI2vsrIRcJxMLP7OvpS2SYBo2BGagYJnQ64RJDmqlcjSJJ2a?=
 =?us-ascii?Q?MqVHuBUvIN2TP72jaB81Mtky969DQsidFQzmGxlqGSW8mKZdS9KbYekYvq7v?=
 =?us-ascii?Q?4zPrijDxXRsYY46dwWRa4nTtPXYBzgRlss7gLgnWrmpEnTycWuBDaiBV/AGK?=
 =?us-ascii?Q?o9po7LJUeyqHv0HZ3pPe43ctlFIBYd4iecfQKhWmLRjh2yDnsJWLn6fMl9c9?=
 =?us-ascii?Q?81zZZbJIt6MU2ztLEp48CM9fZa5yPiJpfWC9RvlPrlOd1foLkgzNNXbFgC4W?=
 =?us-ascii?Q?iSvEzv6Fr8DklZ8Hk+c1+ajOpaSQcSCN+tjxagUzaEkTpG0go7Wt47Y0Jor7?=
 =?us-ascii?Q?Vwrh58QxUNpuevnzqSUwRD7hqKJnVzM2HFxgkBImoEOtDNwK8jj09tp/XN2S?=
 =?us-ascii?Q?a5FvfLCFSf8N2inFNGHw5Fwru5JPj01Gqdk8QXfOjWWL5VXMREKl4z0yQ0sj?=
 =?us-ascii?Q?VwC5wI//8YkcXvkLOZUCcTdzBW78NQUGP9IIPv7/Z5KxUGUbNtW5pYf8aG5g?=
 =?us-ascii?Q?Y0rrZiMBZZ0bX6+msMcwOP0ZmXNtNSTqVShu2xC56SkqoOoL4qc+d+Geh65L?=
 =?us-ascii?Q?YowYu75Dg+Ym7/DiRRwdu8P2zKC6NMur4uXwO0IQf0ft9Hd74LmfTVIMqRWn?=
 =?us-ascii?Q?iCxBR8bnlr4UKRgFx3vsp/fk09gugGPe4E8xCZ0NtpTpG6anHO1lHPiko7Oy?=
 =?us-ascii?Q?n2Vnytnkry2PV5p028/h5ao6edCetSby5qWK0HiY223EsyQXHT5uzlInVV/R?=
 =?us-ascii?Q?sakcp2epuCRgmdg7J7ZHHsQeda7MrZG9Wo47wSmzBIwBoRIE3gJ8HBFT+4pM?=
 =?us-ascii?Q?ZM/UlGlgnBxj0qlUh/ocFGgLarzvp/o736zTD7Xa9k9+0c1x48JPO9jcj1WP?=
 =?us-ascii?Q?XO2tr7p4nHh/FL3lVVm9TXrFPlUDwRLMo2cNU+az?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f60dd72-d7bd-4902-e16d-08dcd7fe6a98
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 16:24:48.9715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GVVpSQkUAwe5xsKUzaP9pitPd8xpKFquiqlAHhnZOVoaZO79cSC8DitBeTkkQTRqxVhnCwEMGJdzm1pUy4wk1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
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

> > The delay counter for histogram does not reset and as a result the
> > histogram bin never gets updated. Woraround would be to use save and
> > restore histogram register.
>=20
> Lets not mention the issue in the commit message just what the patch/ WA =
is
> doing The issue is very well describe in WA no.
> That's reminds me add wa no in commit message
>=20
Done

Thanks and Regards,
Arun R Murthy
--------------------
