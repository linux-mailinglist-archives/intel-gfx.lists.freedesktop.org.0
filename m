Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734A0AB2E46
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 06:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D03B10E2D3;
	Mon, 12 May 2025 04:00:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4dscYuc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C9B10E282;
 Mon, 12 May 2025 04:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747022417; x=1778558417;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Xc4yvS7uRhWMiHh1moqIDhG4fw5OPp8dPrVUlkSjH8=;
 b=O4dscYucEFGoyRRz6Gl0E+TadfnxN5Rf242Jk2MCgiOJF5qaH9Y17cTm
 8Mg4l/5go7YiNOQf0JFjYDCrjL6FgTFJlPx85YdwbN0r3QskQsQ8eDT5i
 3f69tcMBEse9qsj+71bqLa1yrIFcLuZwwfpwVWPpZD/1KZUZ7sgSsWYSI
 5KC1jW6iSK51VVzCksguW3TueJgPciLWhm2Dj1yHiqzZlW5+1JIBUlF1Q
 GPNuzDDj6XjuulOaOncApYBUKxqwn8TMz+WZudq1/CoQswhp12xKQ4LHL
 TzlCNMKHpM9fhKX7Mhu4F7q0g8X6LGnEgLYo519WUvicak3syIpw/ujBK w==;
X-CSE-ConnectionGUID: rOwfAxbvQgWyBmHDd6lRTA==
X-CSE-MsgGUID: zRhvQY3lSJiQS9C3/5ESVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="48050487"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="48050487"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 21:00:16 -0700
X-CSE-ConnectionGUID: oDef6gcVSI64yl6acOgCZw==
X-CSE-MsgGUID: cjOBdbX5SfaoBVufj7EEkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="160500628"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 21:00:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 11 May 2025 21:00:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 11 May 2025 21:00:15 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 11 May 2025 21:00:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wBM/jcnRlk2o559zMGnLi6R3BRZcbgG6tZilfW4tZ1rehhWNHEMD/D/vXMkpQki27mJVTPSJGrnP20Sf6ypMEfbAS/3cUlJsD1RNmIJshiErl6scUzMMDYrUUEftALthPvRyebxfhL7L617rtWM7dk6K9c8fHcelids4beBiAWPp1OS8aeK/1FuF8novSIb/eYoSLar1/NpfD1B6wlgDLjEM+aIHYLWLWBWyj2RyipNLf5Ov60yk3KTxxiF3irXFgFPzBpnja6yafhfPlFDR8POV08Y86/QajEDgcl9nC+CoKsn/hyJNW7Pm0txoT05d9CIOH94R5sqFM14yqsOjWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6mCOfJB5RMhfuW8WS+niW3s8j0FKhIifd7Fwr5Kpj/8=;
 b=rRKB/MatDD+bsjs95/h1yMvA2jimSrRLZmklzt77vXbIjANyIxXdMX+qgMZXzWFwTXJRGKHpN0OWL8F/JSG9FZRY5HwZQZ05s7vJGCquFMWwMBHHQX7ipAmhijG/EP6VKbyhuG3pm5n7OGufSReoS4GOEBU7mR9m9FGGhDwsUTiPPaQGAKL8frjRJkOKSCFkcpiaPIB4/6xijJYlFkwnyKGKTJE4PydTG5i/+TT4/7KvfM0gSodn4pEFoUqlIVViEeAhh4hoycp5hwf3IcpCcmfV11YSyNW1HaIxA7I9skdBEx/xeMNrFTxDOhkZy8W/cWd1s9CgHUgJg3GebhnlvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6666.namprd11.prod.outlook.com (2603:10b6:303:1eb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Mon, 12 May
 2025 04:00:11 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 04:00:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH 06/18] drm/i915/dpll: Rename intel_shared_dpll
Thread-Topic: [PATCH 06/18] drm/i915/dpll: Rename intel_shared_dpll
Thread-Index: AQHbwJrSOy6eZmJA8E2qT2N8wkdY4bPKFLeAgARIsFA=
Date: Mon, 12 May 2025 04:00:11 +0000
Message-ID: <SN7PR11MB67502220EFD58F70D8335AC7E397A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-7-suraj.kandpal@intel.com> <87v7qaks7e.fsf@intel.com>
In-Reply-To: <87v7qaks7e.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6666:EE_
x-ms-office365-filtering-correlation-id: 0c7356ad-9e69-4e6b-88d1-08dd91097e52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZtOWZdgw88lupXRhdMuV5CpVjBFM8w1TUmS3GMnCO3+tC5JcVxnYHb3j3eMx?=
 =?us-ascii?Q?x5t457Qjwx2T2tvzeUkoa4Tys/l4eRCJ9H3Vk3XdBgqatkwlxFz+szW7Sfb+?=
 =?us-ascii?Q?yX2xM8cJ8vq4jfi2oG9IgciNP9tA6b2NQsX90jKj1hNT+ccjN5o849m/Cmff?=
 =?us-ascii?Q?uJQcQATBdCctbIyiODsh/RXJjqLeX1eDpzyetSgWJPYHgRWlNZbw7IlUYhOI?=
 =?us-ascii?Q?+aSmNJWt26xGvV7fN2TuXh9UIeD+hjUTusG29gjeQLsqJ/oh2ViVNSBsr9FZ?=
 =?us-ascii?Q?B3jvSWicsZ7kwq2YwwJqB02rKdGiJ4GOF6qtxHpfC6yWyd7VBVeSiihHJbUY?=
 =?us-ascii?Q?4ZPpI1CgJY2z2A/jlN+GfbGZfqYEQerhBAGx4AA2c+7ijyENKR6wuMv6PIku?=
 =?us-ascii?Q?yCqC5FnLAjCynd1W8PVFiCQ+MP3jJ8Pechcy8lsSnYlVCoaNTxCCQV3n019p?=
 =?us-ascii?Q?/gv3bKsL4sTRY1wKyA6D1XCOlBi6sGvy66FJEx12hBkPneHgiGr7hr4Sh4oz?=
 =?us-ascii?Q?BrShLWsvhZB1pNmuUUGhCcBwIrJG5ljwZdPf3uT41kyS9Ig9Wqk8P99UrBX2?=
 =?us-ascii?Q?X0jz2GlyKZq/94qW8Eq8OWgLhViE02dp5Gm2YVu17dhjJV/ExF/Xzn5jN7gL?=
 =?us-ascii?Q?fsADVfPsEHIVhFlZuDP8c+ZHgC1n/dtLCZ8Itzh3SNIW62DSMJAbNw5s0X82?=
 =?us-ascii?Q?vMrOtm24YNDV9wlobDug540zOyGYt1/lbH16Uc+BuPJeZtZhc5f2srv6zNjS?=
 =?us-ascii?Q?FTWy8X3fTaUoiiYWX1z3IKKXxeuL8gg9xEdCOSHXEbaFU4ijd0ZSzdUgAA2e?=
 =?us-ascii?Q?jn6stNBfuez8UdaK8sSSd7w8moKcQ0d+YqzT4AbcXel3rah39qZxrnuvLmXw?=
 =?us-ascii?Q?CM7SyPTlaUB+YdfbdbD8epucIcodW4bW36LPqj85AKRRdRoFKGlMTCSv48uv?=
 =?us-ascii?Q?N20dnbeu8deYRIydj7yxGLcaEXR4+AM7GBYemodlLYybiYKUYYJWjn6vWjKD?=
 =?us-ascii?Q?qgKO3RSSFzaBi1svoWZs6/NRBrLWdXcEJ01kcxp8/ojTscVbCWXqgdCYgEWf?=
 =?us-ascii?Q?hYVQwq7y3v4TcbrAcB5YnUMHyFDQdV/9bKkboSEKIb5g3V8MffBiKTX4IKTb?=
 =?us-ascii?Q?jFgHEAG7Is8gVbyEMyuMshkUeq9gINP+jr7wGA3ncIqZN5aenPL90D04NI1H?=
 =?us-ascii?Q?q4jxn5awNCp93SnwuG4XmbJGcpNuIlh1+5F6q6tshZ19O8c++0TwOXgwauf8?=
 =?us-ascii?Q?dsGSBRi9S7TcI+1cJdkRZk6pKKe0ew/Qi9vBot/0tKY9PAEhdMuUnHsyFLBM?=
 =?us-ascii?Q?yXG8695N3ZNryxfDe+Yl4qT5ZZNeo4tRBY8xj0wQKoOnfV+D+9VMC9FftlRf?=
 =?us-ascii?Q?KQnjtrzzqeTDxZ/qnanUevRqkLHdd/H8jeJbvnq+h8FUWBVcQwjAUS4koWyf?=
 =?us-ascii?Q?Mp0juGONU3oeq+zBRKtBZtC6/Y3g2ICMl/A5mRVZ/RB1OUZ74OlWeX9VxRXT?=
 =?us-ascii?Q?Q6wc55Ni6CNkYSU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xEHpF/bZuTSNXyQ7AEuAxOuh06M63yKH3VVNQiG0G2UMGGIvgxW0llK/ptYh?=
 =?us-ascii?Q?KOYWd7AO1TEgTUaXTDA2ebti19Spvjuav54MiOLVj7hnNQcEPbE09GzDV9Fr?=
 =?us-ascii?Q?bswWmNw/Yhuvx2fSpCYJ0w+zbkT7BQ1pmn5pNI2rU1eRDTIr8yFo/mVvN1Ml?=
 =?us-ascii?Q?cZF5OyZNjLAWNGztD/iGNt+33uR+izE91gufCeeeF/otnEHuDUSD1tBknSzf?=
 =?us-ascii?Q?00T2H/zr9/OwfZk0D/lYnM29aSIY4vI9ny+4w20YCPppdLvmiR1AicZELi31?=
 =?us-ascii?Q?UzyCNXnHrDcwaXmqWS4anYIy7k14kMgL54Abvc3j1v2ELYh6qS5O5FKyLgW/?=
 =?us-ascii?Q?hh7Kc8lSx0lboK0wxmxSi5BiomOR9C9BQpfb62eokwkTE/cy4qtwRxHag7DR?=
 =?us-ascii?Q?M+gmb/h+59j88neZfTiKt8YBoudJWzrh/a7mGDBVxw8JycFe7Eoygta2VA5c?=
 =?us-ascii?Q?BH2pw92rPkDx+F+Q31hceFVJrqUIZMQVVi7T1qunr7FFIOFo+Xd+B+HfSC1Y?=
 =?us-ascii?Q?H+W0Hc61g0v+gZnCpZN/jjIfk5LYEj0OeY0UZXxC4aCFnunjzmLLRg6m4fpg?=
 =?us-ascii?Q?Y9L4Lqm5YDs0AfswNQ73Aw75o7pl70N1RDf8EhB6yQhWcHjL+GzZ/KvFksHj?=
 =?us-ascii?Q?AyvVwdOgyb8xuMn/OGzBR4aMLKAh3mnbasYiQ6N9a/1xqT/wMwiSA+cF3EtR?=
 =?us-ascii?Q?YKmW8W660PLpsa1bOI8J4FOt393IqPbFlmpEvwsVUvP1IfVwSZkMZcoIuu2d?=
 =?us-ascii?Q?xtpT+1RZZR6D5B28pHwANiEQ+JAmWxN4Idqbbo+rVOpKQCxWPfLtakS2aOyS?=
 =?us-ascii?Q?HW/FH0jF0fr+KsTenX3e8B12gPsPxRoCjrHm0VA9ExBdeDYt481BW4iCSMh0?=
 =?us-ascii?Q?QYY5U1HhwFGEu2jrJY9RF7bOJb2tP0zxaKMcf35EBO5Q48GkLcqOlUcpkulX?=
 =?us-ascii?Q?xlv9bnt1YBDwd8prJMPy+1FmCIVA+FhxTCDRNja3geVRCh5pXrEUfD5BDWrf?=
 =?us-ascii?Q?5CS/KoQvuK8+n9BN7Dn3ZNFry2q1C9gmiePey9bqDkzOpAjSVRfzIJoriJh7?=
 =?us-ascii?Q?xILOHuBEInPKDDhXNMw8RZQRGo2vLMlzZmKbIZN9yXvbkSUIaT3Fg+Pr9PHN?=
 =?us-ascii?Q?qAOYBctigBAbX3p52P+AmyLq/BnqEZ+kW/1wjgfQPwFA/U2IlLn/jCyCyWtG?=
 =?us-ascii?Q?PI4JJE2YNVxIGPLSM5RRtyJp/hDUD26BBP2G3r/FRZ4g+oqJgPObwhlrLPKZ?=
 =?us-ascii?Q?BQwNn7AOmc6GCBuH2RJI6j/NBoJOLLszZzdTFTpZEd62yAmdqigHmiFyza+Q?=
 =?us-ascii?Q?eiKfUkaEMpo4gE0eHJuTiiqvOxNPIhsRcdOg2WAknrJyOPUUGhxClPFwv5OU?=
 =?us-ascii?Q?5A5folylYDfKx8Y/pe94c9xuqmbh28SAcKUyW9wFi53uZCPULbfdzGL5hzCL?=
 =?us-ascii?Q?EmZVVmXJPVW550mulvA38B7tFSfQqRkK3x5Pjp2o5z0UWcAsAVjI7Hdtz/xX?=
 =?us-ascii?Q?lsfZwobMF9GKfgVD2pJHyKypfViK64zzCVrIohCT3sh9xyKkRgo+MTfNqm1A?=
 =?us-ascii?Q?KX8IK5kDu3d6EbGXlnZveJaPhoPL5wS+HDYhe5sl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c7356ad-9e69-4e6b-88d1-08dd91097e52
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 04:00:11.6164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iCZu4w2dtYwiADzOsndavnxwgmAdKkwnnA6eKIIyoszUc+ge5qp46qkU4jSDGw9BkJaDfpmKZBTc/JqBl4aeKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6666
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, May 9, 2025 3:43 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 06/18] drm/i915/dpll: Rename intel_shared_dpll
>=20
> On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename intel_shared_dpll to intel_dpll to represent both
> > shared and individual dplls. Since from MTL each PHY has it's
> > own PLL making the shared PLL naming a little outdated. In an
> > effort to make this framework accepting of future changes this
> > needs to be done.
> >
> > --v2
> > -Use intel_dpll_global to make sure names start with the filename
> > [Jani/Ville]
> > -Explain the need of this rename [Jani]
> >
> > --v3
> > -Just keep it intel_dpll [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  52 ++--
> >  drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
> >  .../gpu/drm/i915/display/intel_display_core.h |   4 +-
> >  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
> >  .../drm/i915/display/intel_display_types.h    |   6 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 228 +++++++++---------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  18 +-
> >  drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    |   8 +-
> >  .../gpu/drm/i915/display/intel_pch_display.c  |  10 +-
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
> >  15 files changed, 179 insertions(+), 179 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index ca7033251e91..55f0a20e0874 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -658,7 +658,7 @@ static void gen11_dsi_map_pll(struct intel_encoder
> *encoder,
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> > -	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum phy phy;
> >  	u32 val;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 74132c1d6385..4d631cbc81d2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -236,7 +236,7 @@ static void intel_wait_ddi_buf_active(struct
> intel_encoder *encoder)
> >  			port_name(port));
> >  }
> >
> > -static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> > +static u32 hsw_pll_to_ddi_pll_sel(const struct intel_dpll *pll)
> >  {
> >  	switch (pll->info->id) {
> >  	case DPLL_ID_WRPLL1:
> > @@ -260,7 +260,7 @@ static u32 hsw_pll_to_ddi_pll_sel(const struct
> intel_shared_dpll *pll)
> >  static u32 icl_pll_to_ddi_clk_sel(struct intel_encoder *encoder,
> >  				  const struct intel_crtc_state *crtc_state)
> >  {
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	int clock =3D crtc_state->port_clock;
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -1561,7 +1561,7 @@ static bool _icl_ddi_is_clock_enabled(struct
> intel_display *display, i915_reg_t
> >  	return !(intel_de_read(display, reg) & clk_off);
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll *
> >  _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
> >  		 u32 clk_sel_mask, u32 clk_sel_shift)
> >  {
> > @@ -1576,7 +1576,7 @@ static void adls_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				  const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1606,7 +1606,7 @@ static bool adls_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll *adls_ddi_get_pll(struct intel_encoder *encod=
er)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1620,7 +1620,7 @@ static void rkl_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1650,7 +1650,7 @@ static bool rkl_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll *rkl_ddi_get_pll(struct intel_encoder *encode=
r)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1664,7 +1664,7 @@ static void dg1_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1703,7 +1703,7 @@ static bool dg1_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll *dg1_ddi_get_pll(struct intel_encoder *encode=
r)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1730,7 +1730,7 @@ static void icl_ddi_combo_enable_clock(struct
> intel_encoder *encoder,
> >  				       const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1760,7 +1760,7 @@ static bool icl_ddi_combo_is_clock_enabled(struct
> intel_encoder *encoder)
> >
> ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> >  }
> >
> > -struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder
> *encoder)
> > +struct intel_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder=
)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum phy phy =3D intel_encoder_to_phy(encoder);
> > @@ -1774,7 +1774,7 @@ static void jsl_ddi_tc_enable_clock(struct
> intel_encoder *encoder,
> >  				    const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum port port =3D encoder->port;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1817,7 +1817,7 @@ static void icl_ddi_tc_enable_clock(struct
> intel_encoder *encoder,
> >  				    const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum tc_port tc_port =3D intel_encoder_to_tc(encoder);
> >  	enum port port =3D encoder->port;
> >
> > @@ -1868,7 +1868,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct
> intel_encoder *encoder)
> >  	return !(tmp & ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
> >  }
> >
> > -static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encod=
er
> *encoder)
> > +static struct intel_dpll *icl_ddi_tc_get_pll(struct intel_encoder *enc=
oder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum tc_port tc_port =3D intel_encoder_to_tc(encoder);
> > @@ -1898,7 +1898,7 @@ static struct intel_shared_dpll
> *icl_ddi_tc_get_pll(struct intel_encoder *encode
> >  	return intel_get_shared_dpll_by_id(display, id);
> >  }
> >
> > -static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll *bxt_ddi_get_pll(struct intel_encoder *encode=
r)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder->base.dev)=
;
> >  	enum intel_dpll_id id;
> > @@ -1925,7 +1925,7 @@ static void skl_ddi_enable_clock(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum port port =3D encoder->port;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -1967,7 +1967,7 @@ static bool skl_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >  	return !(intel_de_read(display, DPLL_CTRL2) &
> DPLL_CTRL2_DDI_CLK_OFF(port));
> >  }
> >
> > -static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll *skl_ddi_get_pll(struct intel_encoder *encode=
r)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum port port =3D encoder->port;
> > @@ -1993,7 +1993,7 @@ void hsw_ddi_enable_clock(struct intel_encoder
> *encoder,
> >  			  const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	enum port port =3D encoder->port;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> > @@ -2018,7 +2018,7 @@ bool hsw_ddi_is_clock_enabled(struct
> intel_encoder *encoder)
> >  	return intel_de_read(display, PORT_CLK_SEL(port)) !=3D
> PORT_CLK_SEL_NONE;
> >  }
> >
> > -static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder
> *encoder)
> > +static struct intel_dpll *hsw_ddi_get_pll(struct intel_encoder *encode=
r)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum port port =3D encoder->port;
> > @@ -4187,7 +4187,7 @@ static void intel_ddi_get_config(struct
> intel_encoder *encoder,
> >
> >  void intel_ddi_get_clock(struct intel_encoder *encoder,
> >  			 struct intel_crtc_state *crtc_state,
> > -			 struct intel_shared_dpll *pll)
> > +			 struct intel_dpll *pll)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> > @@ -4203,7 +4203,7 @@ void intel_ddi_get_clock(struct intel_encoder
> *encoder,
> >
> >  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
> >
> > -	crtc_state->port_clock =3D intel_dpll_get_freq(display, crtc_state-
> >shared_dpll,
> > +	crtc_state->port_clock =3D intel_dpll_get_freq(display, crtc_state-
> >intel_dpll,
> >  						     &crtc_state-
> >dpll_hw_state);
> >  }
> >
> > @@ -4257,7 +4257,7 @@ static void icl_ddi_combo_get_config(struct
> intel_encoder *encoder,
> >  	intel_ddi_get_config(encoder, crtc_state);
> >  }
> >
> > -static bool icl_ddi_tc_pll_is_tbt(const struct intel_shared_dpll *pll)
> > +static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
> >  {
> >  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL;
> >  }
> > @@ -4267,7 +4267,7 @@ icl_ddi_tc_port_pll_type(struct intel_encoder
> *encoder,
> >  			 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > -	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	const struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >
> >  	if (drm_WARN_ON(display->drm, !pll))
> >  		return ICL_PORT_DPLL_DEFAULT;
> > @@ -4290,7 +4290,7 @@ intel_ddi_port_pll_type(struct intel_encoder
> *encoder,
> >
> >  static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
> >  				 struct intel_crtc_state *crtc_state,
> > -				 struct intel_shared_dpll *pll)
> > +				 struct intel_dpll *pll)
> >  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	enum icl_port_dpll_id port_dpll_id;
> > @@ -4313,10 +4313,10 @@ static void icl_ddi_tc_get_clock(struct
> intel_encoder *encoder,
> >
> >  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
> >
> > -	if (icl_ddi_tc_pll_is_tbt(crtc_state->shared_dpll))
> > +	if (icl_ddi_tc_pll_is_tbt(crtc_state->intel_dpll))
> >  		crtc_state->port_clock =3D icl_calc_tbt_pll_link(display, encoder-
> >port);
> >  	else
> > -		crtc_state->port_clock =3D intel_dpll_get_freq(display,
> crtc_state->shared_dpll,
> > +		crtc_state->port_clock =3D intel_dpll_get_freq(display,
> crtc_state->intel_dpll,
> >  							     &crtc_state-
> >dpll_hw_state);
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 353eb04079e9..c18a69b2ae6d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -18,7 +18,7 @@ struct intel_display;
> >  struct intel_dp;
> >  struct intel_dpll_hw_state;
> >  struct intel_encoder;
> > -struct intel_shared_dpll;
> > +struct intel_dpll;
>=20
> Nitpick, these should remain sorted.
>=20
> >  enum pipe;
> >  enum port;
> >  enum transcoder;
> > @@ -40,7 +40,7 @@ void intel_ddi_enable_clock(struct intel_encoder
> *encoder,
> >  void intel_ddi_disable_clock(struct intel_encoder *encoder);
> >  void intel_ddi_get_clock(struct intel_encoder *encoder,
> >  			 struct intel_crtc_state *crtc_state,
> > -			 struct intel_shared_dpll *pll);
> > +			 struct intel_dpll *pll);
> >  void hsw_ddi_enable_clock(struct intel_encoder *encoder,
> >  			  const struct intel_crtc_state *crtc_state);
> >  void hsw_ddi_disable_clock(struct intel_encoder *encoder);
> > @@ -50,7 +50,7 @@ intel_ddi_port_pll_type(struct intel_encoder *encoder=
,
> >  			const struct intel_crtc_state *crtc_state);
> >  void hsw_ddi_get_config(struct intel_encoder *encoder,
> >  			struct intel_crtc_state *crtc_state);
> > -struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder
> *encoder);
> > +struct intel_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder=
);
> >  void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> >  				const struct intel_crtc_state *crtc_state);
> >  void intel_wait_ddi_buf_idle(struct intel_display *display, enum port =
port);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > index 287110e4e435..b765d5765b32 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1325,7 +1325,7 @@ static void intel_encoders_update_prepare(struct
> intel_atomic_state *state)
> >  			if (intel_crtc_needs_modeset(new_crtc_state))
> >  				continue;
> >
> > -			new_crtc_state->shared_dpll =3D old_crtc_state-
> >shared_dpll;
> > +			new_crtc_state->intel_dpll =3D old_crtc_state-
> >intel_dpll;
> >  			new_crtc_state->dpll_hw_state =3D old_crtc_state-
> >dpll_hw_state;
> >  		}
> >  	}
> > @@ -1663,7 +1663,7 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> >
> >  	intel_encoders_pre_pll_enable(state, crtc);
> >
> > -	if (new_crtc_state->shared_dpll)
> > +	if (new_crtc_state->intel_dpll)
> >  		intel_enable_shared_dpll(new_crtc_state);
> >
> >  	intel_encoders_pre_enable(state, crtc);
> > @@ -1959,7 +1959,7 @@ static void get_crtc_power_domains(struct
> intel_crtc_state *crtc_state,
> >  	if (HAS_DDI(display) && crtc_state->has_audio)
> >  		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
> >
> > -	if (crtc_state->shared_dpll)
> > +	if (crtc_state->intel_dpll)
> >  		set_bit(POWER_DOMAIN_DISPLAY_CORE, mask->bits);
> >
> >  	if (crtc_state->dsc.compression_enable)
> > @@ -4501,7 +4501,7 @@ copy_joiner_crtc_state_modeset(struct
> intel_atomic_state *state,
> >  	/* preserve some things from the slave's original crtc state */
> >  	saved_state->uapi =3D secondary_crtc_state->uapi;
> >  	saved_state->scaler_state =3D secondary_crtc_state->scaler_state;
> > -	saved_state->shared_dpll =3D secondary_crtc_state->shared_dpll;
> > +	saved_state->intel_dpll =3D secondary_crtc_state->intel_dpll;
> >  	saved_state->crc_enabled =3D secondary_crtc_state->crc_enabled;
> >
> >  	intel_crtc_free_hw_state(secondary_crtc_state);
> > @@ -4564,7 +4564,7 @@ intel_crtc_prepare_cleared_state(struct
> intel_atomic_state *state,
> >  	saved_state->uapi =3D crtc_state->uapi;
> >  	saved_state->inherited =3D crtc_state->inherited;
> >  	saved_state->scaler_state =3D crtc_state->scaler_state;
> > -	saved_state->shared_dpll =3D crtc_state->shared_dpll;
> > +	saved_state->intel_dpll =3D crtc_state->intel_dpll;
> >  	saved_state->dpll_hw_state =3D crtc_state->dpll_hw_state;
> >  	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
> >  	       sizeof(saved_state->icl_port_dplls));
> > @@ -5318,7 +5318,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_BOOL(double_wide);
> >
> >  	if (display->dpll.mgr)
> > -		PIPE_CONF_CHECK_P(shared_dpll);
> > +		PIPE_CONF_CHECK_P(intel_dpll);
> >
> >  	/* FIXME convert everything over the dpll_mgr */
> >  	if (display->dpll.mgr || HAS_GMCH(display))
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index e0221e514326..3121a987d07b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -125,8 +125,8 @@ struct intel_audio {
> >  struct intel_dpll_global {
> >  	struct mutex lock;
> >
> > -	int num_shared_dpll;
> > -	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
> > +	int num_intel_dpll;
> > +	struct intel_dpll intel_dplls[I915_NUM_PLLS];
>=20
> I don't think we have any cases where struct members would be prefixed
> intel_. I think this should be just num_dpll and dplls.
>=20

Got it will fix

> With that fixed,
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
>=20
> >  	const struct intel_dpll_mgr *mgr;
> >
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 3770ce9469d1..ea9e271bc6ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -618,7 +618,7 @@ static int i915_shared_dplls_info(struct seq_file *=
m,
> void *unused)
> >  {
> >  	struct intel_display *display =3D node_to_intel_display(m->private);
> >  	struct drm_printer p =3D drm_seq_file_printer(m);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	drm_modeset_lock_all(display->drm);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 1bdffaca153a..826af285e7fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1075,8 +1075,8 @@ struct intel_crtc_state {
> >  	 * haswell. */
> >  	struct dpll dpll;
> >
> > -	/* Selected dpll when shared or NULL. */
> > -	struct intel_shared_dpll *shared_dpll;
> > +	/* Selected dpll. */
>=20
> Or NULL?

Sure will fix this

Regards,
Suraj Kandpal

>=20
> > +	struct intel_dpll *intel_dpll;
> >
> >  	/* Actual register state of the dpll, for shared dpll cross-checking.=
 */
> >  	struct intel_dpll_hw_state dpll_hw_state;
> > @@ -1086,7 +1086,7 @@ struct intel_crtc_state {
> >  	 * setting shared_dpll and dpll_hw_state to one of these reserved
> ones.
> >  	 */
> >  	struct icl_port_dpll {
> > -		struct intel_shared_dpll *pll;
> > +		struct intel_dpll *pll;
> >  		struct intel_dpll_hw_state hw_state;
> >  	} icl_port_dplls[ICL_PORT_DPLL_COUNT];
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index 8db603d9c823..4d1f7fccd28a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -1767,9 +1767,9 @@ int intel_dpll_crtc_get_shared_dpll(struct
> intel_atomic_state *state,
> >  	int ret;
> >
> >  	drm_WARN_ON(display->drm, !intel_crtc_needs_modeset(crtc_state));
> > -	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state-
> >shared_dpll);
> > +	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state-
> >intel_dpll);
> >
> > -	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
> > +	if (!crtc_state->hw.enable || crtc_state->intel_dpll)
> >  		return 0;
> >
> >  	if (!display->funcs.dpll->crtc_get_shared_dpll)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index bdad4d72cc01..e63568be3150 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -70,7 +70,7 @@ struct intel_dpll_funcs {
> >  	 * the pll is not already enabled.
> >  	 */
> >  	void (*enable)(struct intel_display *display,
> > -		       struct intel_shared_dpll *pll,
> > +		       struct intel_dpll *pll,
> >  		       const struct intel_dpll_hw_state *dpll_hw_state);
> >
> >  	/*
> > @@ -79,7 +79,7 @@ struct intel_dpll_funcs {
> >  	 * tracked users for it.
> >  	 */
> >  	void (*disable)(struct intel_display *display,
> > -			struct intel_shared_dpll *pll);
> > +			struct intel_dpll *pll);
> >
> >  	/*
> >  	 * Hook for reading the values currently programmed to the DPLL
> > @@ -87,7 +87,7 @@ struct intel_dpll_funcs {
> >  	 * verification after a mode set.
> >  	 */
> >  	bool (*get_hw_state)(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state);
> >
> >  	/*
> > @@ -95,7 +95,7 @@ struct intel_dpll_funcs {
> >  	 * in state.
> >  	 */
> >  	int (*get_freq)(struct intel_display *i915,
> > -			const struct intel_shared_dpll *pll,
> > +			const struct intel_dpll *pll,
> >  			const struct intel_dpll_hw_state *dpll_hw_state);
> >  };
> >
> > @@ -124,7 +124,7 @@ static void
> >  intel_atomic_duplicate_dpll_state(struct intel_display *display,
> >  				  struct intel_dpll_state *dpll_state)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	/* Copy dpll state */
> > @@ -158,11 +158,11 @@ intel_atomic_get_shared_dpll_state(struct
> drm_atomic_state *s)
> >   * Returns:
> >   * A pointer to the DPLL with @id
> >   */
> > -struct intel_shared_dpll *
> > +struct intel_dpll *
> >  intel_get_shared_dpll_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	for_each_dpll(display, pll, i) {
> > @@ -176,7 +176,7 @@ intel_get_shared_dpll_by_id(struct intel_display
> *display,
> >
> >  /* For ILK+ */
> >  void assert_shared_dpll(struct intel_display *display,
> > -			struct intel_shared_dpll *pll,
> > +			struct intel_dpll *pll,
> >  			bool state)
> >  {
> >  	bool cur_state;
> > @@ -205,7 +205,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum
> tc_port tc_port)
> >
> >  static i915_reg_t
> >  intel_combo_pll_enable_reg(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll)
> > +			   struct intel_dpll *pll)
> >  {
> >  	if (display->platform.dg1)
> >  		return DG1_DPLL_ENABLE(pll->info->id);
> > @@ -218,7 +218,7 @@ intel_combo_pll_enable_reg(struct intel_display
> *display,
> >
> >  static i915_reg_t
> >  intel_tc_pll_enable_reg(struct intel_display *display,
> > -			struct intel_shared_dpll *pll)
> > +			struct intel_dpll *pll)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(id);
> > @@ -230,7 +230,7 @@ intel_tc_pll_enable_reg(struct intel_display *displ=
ay,
> >  }
> >
> >  static void _intel_enable_shared_dpll(struct intel_display *display,
> > -				      struct intel_shared_dpll *pll)
> > +				      struct intel_dpll *pll)
> >  {
> >  	if (pll->info->power_domain)
> >  		pll->wakeref =3D intel_display_power_get(display, pll->info-
> >power_domain);
> > @@ -240,7 +240,7 @@ static void _intel_enable_shared_dpll(struct
> intel_display *display,
> >  }
> >
> >  static void _intel_disable_shared_dpll(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll)
> > +				       struct intel_dpll *pll)
> >  {
> >  	pll->info->funcs->disable(display, pll);
> >  	pll->on =3D false;
> > @@ -259,7 +259,7 @@ void intel_enable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	unsigned int pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
> >  	unsigned int old_mask;
> >
> > @@ -305,7 +305,7 @@ void intel_disable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> > +	struct intel_dpll *pll =3D crtc_state->intel_dpll;
> >  	unsigned int pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
> >
> >  	/* PCH only available on ILK+ */
> > @@ -344,7 +344,7 @@ void intel_disable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  static unsigned long
> >  intel_dpll_mask_all(struct intel_display *display)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	unsigned long dpll_mask =3D 0;
> >  	int i;
> >
> > @@ -357,7 +357,7 @@ intel_dpll_mask_all(struct intel_display *display)
> >  	return dpll_mask;
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll *
> >  intel_find_shared_dpll(struct intel_atomic_state *state,
> >  		       const struct intel_crtc *crtc,
> >  		       const struct intel_dpll_hw_state *dpll_hw_state,
> > @@ -366,7 +366,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_display *display =3D to_intel_display(crtc);
> >  	unsigned long dpll_mask_all =3D intel_dpll_mask_all(display);
> >  	struct intel_dpll_state *dpll_state;
> > -	struct intel_shared_dpll *unused_pll =3D NULL;
> > +	struct intel_dpll *unused_pll =3D NULL;
> >  	enum intel_dpll_id id;
> >
> >  	dpll_state =3D intel_atomic_get_shared_dpll_state(&state->base);
> > @@ -374,7 +374,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >  	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
> >
> >  	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
> > -		struct intel_shared_dpll *pll;
> > +		struct intel_dpll *pll;
> >
> >  		pll =3D intel_get_shared_dpll_by_id(display, id);
> >  		if (!pll)
> > @@ -421,7 +421,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >   */
> >  static void
> >  intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > -				 const struct intel_shared_dpll *pll,
> > +				 const struct intel_dpll *pll,
> >  				 struct intel_dpll_state *dpll_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc);
> > @@ -437,7 +437,7 @@ intel_reference_shared_dpll_crtc(const struct
> intel_crtc *crtc,
> >  static void
> >  intel_reference_shared_dpll(struct intel_atomic_state *state,
> >  			    const struct intel_crtc *crtc,
> > -			    const struct intel_shared_dpll *pll,
> > +			    const struct intel_dpll *pll,
> >  			    const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct intel_dpll_state *dpll_state;
> > @@ -460,7 +460,7 @@ intel_reference_shared_dpll(struct
> intel_atomic_state *state,
> >   */
> >  void
> >  intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > -				   const struct intel_shared_dpll *pll,
> > +				   const struct intel_dpll *pll,
> >  				   struct intel_dpll_state *dpll_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc);
> > @@ -475,7 +475,7 @@ intel_unreference_shared_dpll_crtc(const struct
> intel_crtc *crtc,
> >
> >  static void intel_unreference_shared_dpll(struct intel_atomic_state *s=
tate,
> >  					  const struct intel_crtc *crtc,
> > -					  const struct intel_shared_dpll *pll)
> > +					  const struct intel_dpll *pll)
> >  {
> >  	struct intel_dpll_state *dpll_state;
> >
> > @@ -492,12 +492,12 @@ static void intel_put_dpll(struct intel_atomic_st=
ate
> *state,
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >
> > -	new_crtc_state->shared_dpll =3D NULL;
> > +	new_crtc_state->intel_dpll =3D NULL;
> >
> > -	if (!old_crtc_state->shared_dpll)
> > +	if (!old_crtc_state->intel_dpll)
> >  		return;
> >
> > -	intel_unreference_shared_dpll(state, crtc, old_crtc_state-
> >shared_dpll);
> > +	intel_unreference_shared_dpll(state, crtc, old_crtc_state->intel_dpll=
);
> >  }
> >
> >  /**
> > @@ -515,7 +515,7 @@ void intel_shared_dpll_swap_state(struct
> intel_atomic_state *state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_dpll_state *dpll_state =3D state->dpll_state;
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	if (!state->dpll_set)
> > @@ -526,7 +526,7 @@ void intel_shared_dpll_swap_state(struct
> intel_atomic_state *state)
> >  }
> >
> >  static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
> > -				      struct intel_shared_dpll *pll,
> > +				      struct intel_dpll *pll,
> >  				      struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct i9xx_dpll_hw_state *hw_state =3D &dpll_hw_state->i9xx;
> > @@ -562,7 +562,7 @@ static void ibx_assert_pch_refclk_enabled(struct
> intel_display *display)
> >  }
> >
> >  static void ibx_pch_dpll_enable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll,
> > +				struct intel_dpll *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct i9xx_dpll_hw_state *hw_state =3D &dpll_hw_state->i9xx;
> > @@ -591,7 +591,7 @@ static void ibx_pch_dpll_enable(struct intel_displa=
y
> *display,
> >  }
> >
> >  static void ibx_pch_dpll_disable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll)
> > +				 struct intel_dpll *pll)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -614,7 +614,7 @@ static int ibx_get_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	enum intel_dpll_id id;
> >
> >  	if (HAS_PCH_IBX(display)) {
> > @@ -640,7 +640,7 @@ static int ibx_get_dpll(struct intel_atomic_state
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->intel_dpll =3D pll;
> >
> >  	return 0;
> >  }
> > @@ -692,7 +692,7 @@ static const struct intel_dpll_mgr pch_pll_mgr =3D =
{
> >  };
> >
> >  static void hsw_ddi_wrpll_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -704,7 +704,7 @@ static void hsw_ddi_wrpll_enable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static void hsw_ddi_spll_enable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll,
> > +				struct intel_dpll *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -715,7 +715,7 @@ static void hsw_ddi_spll_enable(struct intel_displa=
y
> *display,
> >  }
> >
> >  static void hsw_ddi_wrpll_disable(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll *pll)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -731,7 +731,7 @@ static void hsw_ddi_wrpll_disable(struct intel_disp=
lay
> *display,
> >  }
> >
> >  static void hsw_ddi_spll_disable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll)
> > +				 struct intel_dpll *pll)
> >  {
> >  	enum intel_dpll_id id =3D pll->info->id;
> >
> > @@ -747,7 +747,7 @@ static void hsw_ddi_spll_disable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll,
> > +				       struct intel_dpll *pll,
> >  				       struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -769,7 +769,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
> > -				      struct intel_shared_dpll *pll,
> > +				      struct intel_dpll *pll,
> >  				      struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -996,7 +996,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
> >  }
> >
> >  static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -1059,7 +1059,7 @@ hsw_ddi_wrpll_compute_dpll(struct
> intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll *
> >  hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
> >  		       struct intel_crtc *crtc)
> >  {
> > @@ -1090,11 +1090,11 @@ hsw_ddi_lcpll_compute_dpll(struct
> intel_crtc_state *crtc_state)
> >  	}
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll *
> >  hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	enum intel_dpll_id pll_id;
> >  	int clock =3D crtc_state->port_clock;
> >
> > @@ -1122,7 +1122,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state
> *crtc_state)
> >  }
> >
> >  static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	int link_clock =3D 0;
> > @@ -1162,7 +1162,7 @@ hsw_ddi_spll_compute_dpll(struct
> intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > -static struct intel_shared_dpll *
> > +static struct intel_dpll *
> >  hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
> >  		      struct intel_crtc *crtc)
> >  {
> > @@ -1174,7 +1174,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state
> *state,
> >  }
> >
> >  static int hsw_ddi_spll_get_freq(struct intel_display *display,
> > -				 const struct intel_shared_dpll *pll,
> > +				 const struct intel_dpll *pll,
> >  				 const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> > @@ -1221,7 +1221,7 @@ static int hsw_get_dpll(struct intel_atomic_state
> *state,
> >  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll =3D NULL;
> > +	struct intel_dpll *pll =3D NULL;
> >
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> >  		pll =3D hsw_ddi_wrpll_get_dpll(state, crtc);
> > @@ -1236,7 +1236,7 @@ static int hsw_get_dpll(struct intel_atomic_state
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->intel_dpll =3D pll;
> >
> >  	return 0;
> >  }
> > @@ -1285,18 +1285,18 @@ static const struct intel_dpll_funcs
> hsw_ddi_spll_funcs =3D {
> >  };
> >
> >  static void hsw_ddi_lcpll_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 const struct intel_dpll_hw_state *hw_state)
> >  {
> >  }
> >
> >  static void hsw_ddi_lcpll_disable(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll *pll)
> >  {
> >  }
> >
> >  static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll,
> > +				       struct intel_dpll *pll,
> >  				       struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	return true;
> > @@ -1364,7 +1364,7 @@ static const struct skl_dpll_regs skl_dpll_regs[4=
] =3D {
> >  };
> >
> >  static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
> > -				    struct intel_shared_dpll *pll,
> > +				    struct intel_dpll *pll,
> >  				    const struct skl_dpll_hw_state *hw_state)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> > @@ -1378,7 +1378,7 @@ static void skl_ddi_pll_write_ctrl1(struct
> intel_display *display,
> >  }
> >
> >  static void skl_ddi_pll_enable(struct intel_display *display,
> > -			       struct intel_shared_dpll *pll,
> > +			       struct intel_dpll *pll,
> >  			       const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1400,7 +1400,7 @@ static void skl_ddi_pll_enable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static void skl_ddi_dpll0_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1409,7 +1409,7 @@ static void skl_ddi_dpll0_enable(struct
> intel_display *display,
> >  }
> >
> >  static void skl_ddi_pll_disable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll)
> > +				struct intel_dpll *pll)
> >  {
> >  	const struct skl_dpll_regs *regs =3D skl_dpll_regs;
> >  	const enum intel_dpll_id id =3D pll->info->id;
> > @@ -1420,12 +1420,12 @@ static void skl_ddi_pll_disable(struct
> intel_display *display,
> >  }
> >
> >  static void skl_ddi_dpll0_disable(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll *pll)
> >  {
> >  }
> >
> >  static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
> > -				     struct intel_shared_dpll *pll,
> > +				     struct intel_dpll *pll,
> >  				     struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1463,7 +1463,7 @@ static bool skl_ddi_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
> > -				       struct intel_shared_dpll *pll,
> > +				       struct intel_dpll *pll,
> >  				       struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1736,7 +1736,7 @@ skl_ddi_calculate_wrpll(int clock,
> >  }
> >
> >  static int skl_ddi_wrpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1884,7 +1884,7 @@ skl_ddi_dp_set_dpll_hw_state(struct
> intel_crtc_state *crtc_state)
> >  }
> >
> >  static int skl_ddi_lcpll_get_freq(struct intel_display *display,
> > -				  const struct intel_shared_dpll *pll,
> > +				  const struct intel_dpll *pll,
> >  				  const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -1939,7 +1939,7 @@ static int skl_get_dpll(struct intel_atomic_state
> *state,
> >  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> >  		pll =3D intel_find_shared_dpll(state, crtc,
> > @@ -1957,13 +1957,13 @@ static int skl_get_dpll(struct intel_atomic_sta=
te
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->intel_dpll =3D pll;
> >
> >  	return 0;
> >  }
> >
> >  static int skl_ddi_pll_get_freq(struct intel_display *display,
> > -				const struct intel_shared_dpll *pll,
> > +				const struct intel_dpll *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
> > @@ -2038,7 +2038,7 @@ static const struct intel_dpll_mgr skl_pll_mgr =
=3D {
> >  };
> >
> >  static void bxt_ddi_pll_enable(struct intel_display *display,
> > -			       struct intel_shared_dpll *pll,
> > +			       struct intel_dpll *pll,
> >  			       const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> > @@ -2141,7 +2141,7 @@ static void bxt_ddi_pll_enable(struct intel_displ=
ay
> *display,
> >  }
> >
> >  static void bxt_ddi_pll_disable(struct intel_display *display,
> > -				struct intel_shared_dpll *pll)
> > +				struct intel_dpll *pll)
> >  {
> >  	enum port port =3D (enum port)pll->info->id; /* 1:1 port->PLL mapping=
 */
> >
> > @@ -2160,7 +2160,7 @@ static void bxt_ddi_pll_disable(struct intel_disp=
lay
> *display,
> >  }
> >
> >  static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
> > -				     struct intel_shared_dpll *pll,
> > +				     struct intel_dpll *pll,
> >  				     struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> > @@ -2360,7 +2360,7 @@ static int bxt_ddi_set_dpll_hw_state(struct
> intel_crtc_state *crtc_state,
> >  }
> >
> >  static int bxt_ddi_pll_get_freq(struct intel_display *display,
> > -				const struct intel_shared_dpll *pll,
> > +				const struct intel_dpll *pll,
> >  				const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> > @@ -2429,7 +2429,7 @@ static int bxt_get_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	enum intel_dpll_id id;
> >
> >  	/* 1:1 mapping between ports and PLLs */
> > @@ -2442,7 +2442,7 @@ static int bxt_get_dpll(struct intel_atomic_state
> *state,
> >  	intel_reference_shared_dpll(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> > -	crtc_state->shared_dpll =3D pll;
> > +	crtc_state->intel_dpll =3D pll;
> >
> >  	return 0;
> >  }
> > @@ -2755,7 +2755,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_sta=
te
> *crtc_state,
> >  }
> >
> >  static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
> > -				    const struct intel_shared_dpll *pll,
> > +				    const struct intel_dpll *pll,
> >  				    const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	/*
> > @@ -2826,7 +2826,7 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_stat=
e,
> >  }
> >
> >  static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
> > -				      const struct intel_shared_dpll *pll,
> > +				      const struct intel_dpll *pll,
> >  				      const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3199,7 +3199,7 @@ static int icl_calc_mg_pll_state(struct
> intel_crtc_state *crtc_state,
> >  }
> >
> >  static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
> > -				   const struct intel_shared_dpll *pll,
> > +				   const struct intel_dpll *pll,
> >  				   const struct intel_dpll_hw_state
> *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3285,7 +3285,7 @@ void icl_set_active_port_dpll(struct
> intel_crtc_state *crtc_state,
> >  	struct icl_port_dpll *port_dpll =3D
> >  		&crtc_state->icl_port_dplls[port_dpll_id];
> >
> > -	crtc_state->shared_dpll =3D port_dpll->pll;
> > +	crtc_state->intel_dpll =3D port_dpll->pll;
> >  	crtc_state->dpll_hw_state =3D port_dpll->hw_state;
> >  }
> >
> > @@ -3428,8 +3428,8 @@ static int icl_compute_tc_phy_dplls(struct
> intel_atomic_state *state,
> >  		return ret;
> >
> >  	/* this is mainly for the fastset check */
> > -	if (old_crtc_state->shared_dpll &&
> > -	    old_crtc_state->shared_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> > +	if (old_crtc_state->intel_dpll &&
> > +	    old_crtc_state->intel_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> >  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> >  	else
> >  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> > @@ -3521,7 +3521,7 @@ static void icl_put_dplls(struct intel_atomic_sta=
te
> *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum icl_port_dpll_id id;
> >
> > -	new_crtc_state->shared_dpll =3D NULL;
> > +	new_crtc_state->intel_dpll =3D NULL;
> >
> >  	for (id =3D ICL_PORT_DPLL_DEFAULT; id < ICL_PORT_DPLL_COUNT; id++) {
> >  		const struct icl_port_dpll *old_port_dpll =3D
> > @@ -3539,7 +3539,7 @@ static void icl_put_dplls(struct intel_atomic_sta=
te
> *state,
> >  }
> >
> >  static bool mg_pll_get_hw_state(struct intel_display *display,
> > -				struct intel_shared_dpll *pll,
> > +				struct intel_dpll *pll,
> >  				struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3606,7 +3606,7 @@ static bool mg_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool dkl_pll_get_hw_state(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3678,7 +3678,7 @@ static bool dkl_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool icl_pll_get_hw_state(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 struct intel_dpll_hw_state *dpll_hw_state,
> >  				 i915_reg_t enable_reg)
> >  {
> > @@ -3739,7 +3739,7 @@ static bool icl_pll_get_hw_state(struct intel_dis=
play
> *display,
> >  }
> >
> >  static bool combo_pll_get_hw_state(struct intel_display *display,
> > -				   struct intel_shared_dpll *pll,
> > +				   struct intel_dpll *pll,
> >  				   struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(display, pll);
> > @@ -3748,14 +3748,14 @@ static bool combo_pll_get_hw_state(struct
> intel_display *display,
> >  }
> >
> >  static bool tbt_pll_get_hw_state(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	return icl_pll_get_hw_state(display, pll, dpll_hw_state,
> TBT_PLL_ENABLE);
> >  }
> >
> >  static void icl_dpll_write(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll,
> > +			   struct intel_dpll *pll,
> >  			   const struct icl_dpll_hw_state *hw_state)
> >  {
> >  	const enum intel_dpll_id id =3D pll->info->id;
> > @@ -3797,7 +3797,7 @@ static void icl_dpll_write(struct intel_display
> *display,
> >  }
> >
> >  static void icl_mg_pll_write(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll *pll,
> >  			     const struct icl_dpll_hw_state *hw_state)
> >  {
> >  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(pll->info->id);
> > @@ -3840,7 +3840,7 @@ static void icl_mg_pll_write(struct intel_display
> *display,
> >  }
> >
> >  static void dkl_pll_write(struct intel_display *display,
> > -			  struct intel_shared_dpll *pll,
> > +			  struct intel_dpll *pll,
> >  			  const struct icl_dpll_hw_state *hw_state)
> >  {
> >  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(pll->info->id);
> > @@ -3905,7 +3905,7 @@ static void dkl_pll_write(struct intel_display
> *display,
> >  }
> >
> >  static void icl_pll_power_enable(struct intel_display *display,
> > -				 struct intel_shared_dpll *pll,
> > +				 struct intel_dpll *pll,
> >  				 i915_reg_t enable_reg)
> >  {
> >  	intel_de_rmw(display, enable_reg, 0, PLL_POWER_ENABLE);
> > @@ -3920,7 +3920,7 @@ static void icl_pll_power_enable(struct
> intel_display *display,
> >  }
> >
> >  static void icl_pll_enable(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll,
> > +			   struct intel_dpll *pll,
> >  			   i915_reg_t enable_reg)
> >  {
> >  	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
> > @@ -3930,7 +3930,7 @@ static void icl_pll_enable(struct intel_display
> *display,
> >  		drm_err(display->drm, "PLL %d not locked\n", pll->info->id);
> >  }
> >
> > -static void adlp_cmtg_clock_gating_wa(struct intel_display *display, s=
truct
> intel_shared_dpll *pll)
> > +static void adlp_cmtg_clock_gating_wa(struct intel_display *display, s=
truct
> intel_dpll *pll)
> >  {
> >  	u32 val;
> >
> > @@ -3955,7 +3955,7 @@ static void adlp_cmtg_clock_gating_wa(struct
> intel_display *display, struct inte
> >  }
> >
> >  static void combo_pll_enable(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll *pll,
> >  			     const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -3979,7 +3979,7 @@ static void combo_pll_enable(struct intel_display
> *display,
> >  }
> >
> >  static void tbt_pll_enable(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll,
> > +			   struct intel_dpll *pll,
> >  			   const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -4000,7 +4000,7 @@ static void tbt_pll_enable(struct intel_display
> *display,
> >  }
> >
> >  static void mg_pll_enable(struct intel_display *display,
> > -			  struct intel_shared_dpll *pll,
> > +			  struct intel_dpll *pll,
> >  			  const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
> > @@ -4025,7 +4025,7 @@ static void mg_pll_enable(struct intel_display
> *display,
> >  }
> >
> >  static void icl_pll_disable(struct intel_display *display,
> > -			    struct intel_shared_dpll *pll,
> > +			    struct intel_dpll *pll,
> >  			    i915_reg_t enable_reg)
> >  {
> >  	/* The first steps are done by intel_ddi_post_disable(). */
> > @@ -4056,7 +4056,7 @@ static void icl_pll_disable(struct intel_display
> *display,
> >  }
> >
> >  static void combo_pll_disable(struct intel_display *display,
> > -			      struct intel_shared_dpll *pll)
> > +			      struct intel_dpll *pll)
> >  {
> >  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(display, pll);
> >
> > @@ -4064,13 +4064,13 @@ static void combo_pll_disable(struct
> intel_display *display,
> >  }
> >
> >  static void tbt_pll_disable(struct intel_display *display,
> > -			    struct intel_shared_dpll *pll)
> > +			    struct intel_dpll *pll)
> >  {
> >  	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
> >  }
> >
> >  static void mg_pll_disable(struct intel_display *display,
> > -			   struct intel_shared_dpll *pll)
> > +			   struct intel_dpll *pll)
> >  {
> >  	i915_reg_t enable_reg =3D intel_tc_pll_enable_reg(display, pll);
> >
> > @@ -4346,19 +4346,19 @@ void intel_shared_dpll_init(struct intel_displa=
y
> *display)
> >
> >  	for (i =3D 0; dpll_info[i].name; i++) {
> >  		if (drm_WARN_ON(display->drm,
> > -				i >=3D ARRAY_SIZE(display->dpll.shared_dplls)))
> > +				i >=3D ARRAY_SIZE(display->dpll.intel_dplls)))
> >  			break;
> >
> >  		/* must fit into unsigned long bitmask on 32bit */
> >  		if (drm_WARN_ON(display->drm, dpll_info[i].id >=3D 32))
> >  			break;
> >
> > -		display->dpll.shared_dplls[i].info =3D &dpll_info[i];
> > -		display->dpll.shared_dplls[i].index =3D i;
> > +		display->dpll.intel_dplls[i].info =3D &dpll_info[i];
> > +		display->dpll.intel_dplls[i].index =3D i;
> >  	}
> >
> >  	display->dpll.mgr =3D dpll_mgr;
> > -	display->dpll.num_shared_dpll =3D i;
> > +	display->dpll.num_intel_dpll =3D i;
> >  }
> >
> >  /**
> > @@ -4482,7 +4482,7 @@ void intel_update_active_dpll(struct
> intel_atomic_state *state,
> >   * Return the output frequency corresponding to @pll's passed in
> @dpll_hw_state.
> >   */
> >  int intel_dpll_get_freq(struct intel_display *display,
> > -			const struct intel_shared_dpll *pll,
> > +			const struct intel_dpll *pll,
> >  			const struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
> > @@ -4500,14 +4500,14 @@ int intel_dpll_get_freq(struct intel_display
> *display,
> >   * Read out @pll's hardware state into @dpll_hw_state.
> >   */
> >  bool intel_dpll_get_hw_state(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state)
> >  {
> >  	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
> >  }
> >
> >  static void readout_dpll_hw_state(struct intel_display *display,
> > -				  struct intel_shared_dpll *pll)
> > +				  struct intel_dpll *pll)
> >  {
> >  	struct intel_crtc *crtc;
> >
> > @@ -4521,7 +4521,7 @@ static void readout_dpll_hw_state(struct
> intel_display *display,
> >  		struct intel_crtc_state *crtc_state =3D
> >  			to_intel_crtc_state(crtc->base.state);
> >
> > -		if (crtc_state->hw.active && crtc_state->shared_dpll =3D=3D pll)
> > +		if (crtc_state->hw.active && crtc_state->intel_dpll =3D=3D pll)
> >  			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
> >  	}
> >  	pll->active_mask =3D pll->state.pipe_mask;
> > @@ -4539,7 +4539,7 @@ void intel_dpll_update_ref_clks(struct
> intel_display *display)
> >
> >  void intel_dpll_readout_hw_state(struct intel_display *display)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	for_each_dpll(display, pll, i)
> > @@ -4547,7 +4547,7 @@ void intel_dpll_readout_hw_state(struct
> intel_display *display)
> >  }
> >
> >  static void sanitize_dpll_state(struct intel_display *display,
> > -				struct intel_shared_dpll *pll)
> > +				struct intel_dpll *pll)
> >  {
> >  	if (!pll->on)
> >  		return;
> > @@ -4566,7 +4566,7 @@ static void sanitize_dpll_state(struct intel_disp=
lay
> *display,
> >
> >  void intel_dpll_sanitize_state(struct intel_display *display)
> >  {
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	intel_cx0_pll_power_save_wa(display);
> > @@ -4623,7 +4623,7 @@ bool intel_dpll_compare_hw_state(struct
> intel_display *display,
> >
> >  static void
> >  verify_single_dpll_state(struct intel_display *display,
> > -			 struct intel_shared_dpll *pll,
> > +			 struct intel_dpll *pll,
> >  			 struct intel_crtc *crtc,
> >  			 const struct intel_crtc_state *new_crtc_state)
> >  {
> > @@ -4676,8 +4676,8 @@ verify_single_dpll_state(struct intel_display
> *display,
> >  				 pll->info->name);
> >  }
> >
> > -static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
> > -			      const struct intel_shared_dpll *new_pll)
> > +static bool has_alt_port_dpll(const struct intel_dpll *old_pll,
> > +			      const struct intel_dpll *new_pll)
> >  {
> >  	return old_pll && new_pll && old_pll !=3D new_pll &&
> >  		(old_pll->info->is_alt_port_dpll || new_pll->info-
> >is_alt_port_dpll);
> > @@ -4692,22 +4692,22 @@ void intel_shared_dpll_state_verify(struct
> intel_atomic_state *state,
> >  	const struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >
> > -	if (new_crtc_state->shared_dpll)
> > -		verify_single_dpll_state(display, new_crtc_state->shared_dpll,
> > +	if (new_crtc_state->intel_dpll)
> > +		verify_single_dpll_state(display, new_crtc_state->intel_dpll,
> >  					 crtc, new_crtc_state);
> >
> > -	if (old_crtc_state->shared_dpll &&
> > -	    old_crtc_state->shared_dpll !=3D new_crtc_state->shared_dpll) {
> > +	if (old_crtc_state->intel_dpll &&
> > +	    old_crtc_state->intel_dpll !=3D new_crtc_state->intel_dpll) {
> >  		u8 pipe_mask =3D BIT(crtc->pipe);
> > -		struct intel_shared_dpll *pll =3D old_crtc_state->shared_dpll;
> > +		struct intel_dpll *pll =3D old_crtc_state->intel_dpll;
> >
> >  		INTEL_DISPLAY_STATE_WARN(display, pll->active_mask &
> pipe_mask,
> >  					 "%s: pll active mismatch (didn't expect
> pipe %c in active mask (0x%x))\n",
> >  					 pll->info->name, pipe_name(crtc-
> >pipe), pll->active_mask);
> >
> >  		/* TC ports have both MG/TC and TBT PLL referenced
> simultaneously */
> > -		INTEL_DISPLAY_STATE_WARN(display,
> !has_alt_port_dpll(old_crtc_state->shared_dpll,
> > -
> new_crtc_state->shared_dpll) &&
> > +		INTEL_DISPLAY_STATE_WARN(display,
> !has_alt_port_dpll(old_crtc_state->intel_dpll,
> > +
> new_crtc_state->intel_dpll) &&
> >  					 pll->state.pipe_mask & pipe_mask,
> >  					 "%s: pll enabled crtcs mismatch
> (found pipe %c in enabled mask (0x%x))\n",
> >  					 pll->info->name, pipe_name(crtc-
> >pipe), pll->state.pipe_mask);
> > @@ -4717,7 +4717,7 @@ void intel_shared_dpll_state_verify(struct
> intel_atomic_state *state,
> >  void intel_shared_dpll_verify_disabled(struct intel_atomic_state *stat=
e)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >
> >  	for_each_dpll(display, pll, i)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 658174b99db3..3604ebbc78b5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -31,8 +31,8 @@
> >  #include "intel_wakeref.h"
> >
> >  #define for_each_dpll(__display, __pll, __i) \
> > -	for ((__i) =3D 0; (__i) < (__display)->dpll.num_shared_dpll && \
> > -		     ((__pll) =3D &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
> > +	for ((__i) =3D 0; (__i) < (__display)->dpll.num_intel_dpll && \
> > +		     ((__pll) =3D &(__display)->dpll.intel_dplls[(__i)]) ; (__i)++)
> >
> >  enum tc_port;
> >  struct drm_printer;
> > @@ -344,9 +344,9 @@ struct dpll_info {
> >  };
> >
> >  /**
> > - * struct intel_shared_dpll - display PLL with tracked state and users
> > + * struct intel_dpll - display PLL with tracked state and users
> >   */
> > -struct intel_shared_dpll {
> > +struct intel_dpll {
> >  	/**
> >  	 * @state:
> >  	 *
> > @@ -388,11 +388,11 @@ struct intel_shared_dpll {
> >  #define SKL_DPLL3 3
> >
> >  /* shared dpll functions */
> > -struct intel_shared_dpll *
> > +struct intel_dpll *
> >  intel_get_shared_dpll_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id);
> >  void assert_shared_dpll(struct intel_display *display,
> > -			struct intel_shared_dpll *pll,
> > +			struct intel_dpll *pll,
> >  			bool state);
> >  #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true=
)
> >  #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, fal=
se)
> > @@ -405,7 +405,7 @@ int intel_reserve_shared_dplls(struct
> intel_atomic_state *state,
> >  void intel_release_shared_dplls(struct intel_atomic_state *state,
> >  				struct intel_crtc *crtc);
> >  void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > -					const struct intel_shared_dpll *pll,
> > +					const struct intel_dpll *pll,
> >  					struct intel_dpll_state
> *shared_dpll_state);
> >  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
> >  			      enum icl_port_dpll_id port_dpll_id);
> > @@ -413,10 +413,10 @@ void intel_update_active_dpll(struct
> intel_atomic_state *state,
> >  			      struct intel_crtc *crtc,
> >  			      struct intel_encoder *encoder);
> >  int intel_dpll_get_freq(struct intel_display *display,
> > -			const struct intel_shared_dpll *pll,
> > +			const struct intel_dpll *pll,
> >  			const struct intel_dpll_hw_state *dpll_hw_state);
> >  bool intel_dpll_get_hw_state(struct intel_display *display,
> > -			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state);
> >  void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_stat=
e);
> >  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_sta=
te);
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> b/drivers/gpu/drm/i915/display/intel_fdi.c
> > index 169bbe154b5c..b1d2ba9b7295 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> > @@ -910,7 +910,7 @@ void hsw_fdi_link_train(struct intel_encoder
> *encoder,
> >  	intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> >
> >  	/* Configure Port Clock Select */
> > -	drm_WARN_ON(display->drm, crtc_state->shared_dpll->info->id !=3D
> DPLL_ID_SPLL);
> > +	drm_WARN_ON(display->drm, crtc_state->intel_dpll->info->id !=3D
> DPLL_ID_SPLL);
> >  	intel_ddi_enable_clock(encoder, crtc_state);
> >
> >  	/* Start the training iterating through available voltages and emphas=
is,
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index 8ce7c630da52..ec8f38fba178 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -249,7 +249,7 @@ static void intel_pre_enable_lvds(struct
> intel_atomic_state *state,
> >
> >  	if (HAS_PCH_SPLIT(display)) {
> >  		assert_fdi_rx_pll_disabled(display, pipe);
> > -		assert_shared_dpll_disabled(display, crtc_state->shared_dpll);
> > +		assert_shared_dpll_disabled(display, crtc_state->intel_dpll);
> >  	} else {
> >  		assert_pll_disabled(display, pipe);
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 0325b0c9506d..46e0002a1358 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -92,10 +92,10 @@ static void intel_crtc_disable_noatomic_begin(struc=
t
> intel_crtc *crtc,
> >  	crtc->active =3D false;
> >  	crtc->base.enabled =3D false;
> >
> > -	if (crtc_state->shared_dpll)
> > +	if (crtc_state->intel_dpll)
> >  		intel_unreference_shared_dpll_crtc(crtc,
> > -						   crtc_state->shared_dpll,
> > -						   &crtc_state->shared_dpll-
> >state);
> > +						   crtc_state->intel_dpll,
> > +						   &crtc_state->intel_dpll-
> >state);
> >  }
> >
> >  static void set_encoder_for_connector(struct intel_connector *connecto=
r,
> > @@ -565,7 +565,7 @@ static bool has_bogus_dpll_config(const struct
> intel_crtc_state *crtc_state)
> >  	 */
> >  	return display->platform.sandybridge &&
> >  		crtc_state->hw.active &&
> > -		crtc_state->shared_dpll &&
> > +		crtc_state->intel_dpll &&
> >  		crtc_state->port_clock =3D=3D 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > index 1743ebf551cb..b38305c16e77 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > @@ -251,7 +251,7 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
> >  	u32 val, pipeconf_val;
> >
> >  	/* Make sure PCH DPLL is enabled */
> > -	assert_shared_dpll_enabled(display, crtc_state->shared_dpll);
> > +	assert_shared_dpll_enabled(display, crtc_state->intel_dpll);
> >
> >  	/* FDI must be feeding us bits for PCH ports */
> >  	assert_fdi_tx_enabled(display, pipe);
> > @@ -381,7 +381,7 @@ void ilk_pch_enable(struct intel_atomic_state *stat=
e,
> >  		temp =3D intel_de_read(display, PCH_DPLL_SEL);
> >  		temp |=3D TRANS_DPLL_ENABLE(pipe);
> >  		sel =3D TRANS_DPLLB_SEL(pipe);
> > -		if (crtc_state->shared_dpll =3D=3D
> > +		if (crtc_state->intel_dpll =3D=3D
> >  		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
> >  			temp |=3D sel;
> >  		else
> > @@ -496,7 +496,7 @@ void ilk_pch_get_config(struct intel_crtc_state
> *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	enum pipe pipe =3D crtc->pipe;
> >  	enum intel_dpll_id pll_id;
> >  	bool pll_active;
> > @@ -528,8 +528,8 @@ void ilk_pch_get_config(struct intel_crtc_state
> *crtc_state)
> >  			pll_id =3D DPLL_ID_PCH_PLL_A;
> >  	}
> >
> > -	crtc_state->shared_dpll =3D intel_get_shared_dpll_by_id(display, pll_=
id);
> > -	pll =3D crtc_state->shared_dpll;
> > +	crtc_state->intel_dpll =3D intel_get_shared_dpll_by_id(display, pll_i=
d);
> > +	pll =3D crtc_state->intel_dpll;
> >
> >  	pll_active =3D intel_dpll_get_hw_state(display, pll,
> >  					     &crtc_state->dpll_hw_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > index 8bec55deff9f..9f6102d7c7be 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > @@ -499,7 +499,7 @@ static void lpt_init_pch_refclk(struct intel_displa=
y
> *display)
> >  static void ilk_init_pch_refclk(struct intel_display *display)
> >  {
> >  	struct intel_encoder *encoder;
> > -	struct intel_shared_dpll *pll;
> > +	struct intel_dpll *pll;
> >  	int i;
> >  	u32 val, final;
> >  	bool has_lvds =3D false;
>=20
> --
> Jani Nikula, Intel
