Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 174BDA34BF2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 18:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F29410EB61;
	Thu, 13 Feb 2025 17:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEuvltvz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378B810E0D7;
 Thu, 13 Feb 2025 17:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739467880; x=1771003880;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J9t5nQratRpU0jGNDVa4CvMOyfknw55eHn1lMF8B13o=;
 b=SEuvltvz+7QqEc3+bwABuYgQSXINO/tiRFJGgo0j3IUSZbQclujLeA46
 ZiiYZdlmEZZaVNnrTYV9xAoJloZ+qTr4SP2HRoIJPYdKutCxh2W0GIQvF
 hkdYiNr/0emfEOQ6VgnLpS/JS00CZJU3QFqcAk7lVoNTUj9BSGHjnCctT
 yMQz2mggbFxWRFJAdeMjVkqTQqRoG0mXxDQ4DgPSKWzXC+stGMYedXb5a
 +oOrNapDJtbSXjz1C1PhS8h0v4dQHlQoCaN4q4Weu67xi/cKYSFtb7HlQ
 jhYgWlnLduN5XoOvAxCeRMBjUV0Yt8Nc3b5qc0JvACM2fkI/+doQuGZqv Q==;
X-CSE-ConnectionGUID: zfRutC3bSbKBfus4pfSO0w==
X-CSE-MsgGUID: gDG2ACYKRumQBm+8q+WPnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50810423"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50810423"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 09:31:18 -0800
X-CSE-ConnectionGUID: giT1pNN4SimoRaqmQJx6Uw==
X-CSE-MsgGUID: TEzyv9r+QNWAKwjvMpRidg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113086016"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 09:31:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 09:31:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 09:31:11 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 09:31:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=msORTow3cjK31UvHDRC0uQQhLRB2afRpLpnbEWYMsN1TJXZ4AiVmWoLcmRsO0/PvONLpABzICW0lE/0fwAgDDz3smwyxzK+CbUC51DR+OiXqgm+mAn0NQnTheZFu3RajEZn/lEpKxBGXM2AkX1xpAsX0/tqL9xdMaZDTt9G42Shc3qHNu+eQBzhlmBweie1ZeBXvKf9XDYpobaPJ7FBldSZEOWE2nSiw3LzKHfUJfYT767ucPxCpOmXifoY4XcGU/R6rh6OJ45gUlVtbjUsfiDmtxiLzBf7AOQ6tiFuhqyue/+GywP4/RESpA4PDamESYMYGl1bjv13Z0CT+6pSAHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q6yJTYsonc3Skmj7mG0/ygKtEIrmOeMJPi+3rdcSUMM=;
 b=xEv2FVyRxyxGzEKxzhaXL98HW4hL/g9XYg/Er6J6qMQ8bR1xaBvd0aBg6k3YOC62HM0n7HTfB+dIB5mp6tju5Bb8Lhe9JaWpiq8WhpzDvVb/Y1C1cbbRuiKsmuPEXQ5S0rkJKfzgTGxssrWHLtjC9NiEHnmE4aOEMCKuPvjf96a6cpSCUcjqydjus8DRgwqoOvfpz9rZ0+pUIRQW8qzb/XtpS1jF/G9uVyBpp2ckj6Qt83FuRvb19TvpN+CbjwE9ebBbc3Zpe5qzOorvlNzIE1LQzn730hc+enw1nCiuPhrJe9bXeL4sWZ24vqSSQ8RXXvw+k0Jss08wmDAs8hrNkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB7980.namprd11.prod.outlook.com (2603:10b6:806:2fc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Thu, 13 Feb
 2025 17:30:25 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8445.008; Thu, 13 Feb 2025
 17:30:24 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Mike Rapoport <rppt@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Saarinen, 
 Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "x86@kernel.org" <x86@kernel.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: Regression on linux-next (next-20250205)
Thread-Topic: Regression on linux-next (next-20250205)
Thread-Index: Adt7hEGcp0GkztS8SASxDv/3sHEkZAA1WxaAAAmnjpAAJlZNAABIunoQ
Date: Thu, 13 Feb 2025 17:30:24 +0000
Message-ID: <SJ1PR11MB6129E21DBF1CA47BF29390D8B9FF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129A45FFE75371036820909B9F22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z6sBX-tPotgS2ARh@kernel.org>
 <DM4PR11MB61417F2A11D08FE2DD7826CCB9FD2@DM4PR11MB6141.namprd11.prod.outlook.com>
 <Z6xDcBnw9KB5IqMl@kernel.org>
In-Reply-To: <Z6xDcBnw9KB5IqMl@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB7980:EE_
x-ms-office365-filtering-correlation-id: 2810351a-252c-4aa1-692e-08dd4c5419ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?E4LWEs3F9Sn1o0zLHdAwyRorSzL1WmkA6iHUKS3///iJSJtnETd+kRzC16?=
 =?iso-8859-1?Q?d95BPGTkFFsrRFaWkSoQ8qWKGCDTsbfuVPijuNXs3wPmTM2EE65gubDyFL?=
 =?iso-8859-1?Q?M/387KYUDF0VJyJ1J4wZqUni/Z7E+DYmApEuj+xN5LNZ5u/BzoHbh4d3Vk?=
 =?iso-8859-1?Q?BlNSpr2ZqOrwYMeXc2beC0A7BDQSYMbg0ivB4JfWOAbJQFRAEG8cgU3RFw?=
 =?iso-8859-1?Q?7myp07O5EaaKKumL5KozWQo4t/IkLk8UJbWNciPH4tOFKoQO9q8LCOZyn5?=
 =?iso-8859-1?Q?f6cQN6k1Xnh4cuuwJCqaGG9T49hDKEgpzKLv8KtPIzbUOXxgSnRiFeAuPh?=
 =?iso-8859-1?Q?8O6SOcJQEnXLrH3aiTO/tVs1Khfd6sD2ht8GUAqlWemovAZftzg2nuBtiG?=
 =?iso-8859-1?Q?mP6Qe33z1x09R5tG731GgqPJuGuqrpUPcZG/fSwEhk12NW5LRP02Rtu7kD?=
 =?iso-8859-1?Q?S3qZtgafHlHpYjQS7UE95/R+LRMYRARh4t/DoQmBy7EvIj0x4lCwgtAD6y?=
 =?iso-8859-1?Q?4STu9RdD8cQit5L0AGsELO6glL64Pc/DWzp0tKAzGi3p6IVUxEGMV7Ws+f?=
 =?iso-8859-1?Q?W0yS4ToHcfaKKXMnOgf0qZXLgQ9MRGkwHY5C6c4f1Ek2kFQkLBZuTkjnb6?=
 =?iso-8859-1?Q?/X4Uj5hlSgNh/q/muKuoKDTG2C9bqOP5Y6jvJwKc4Wea1JVWX+2IaIbDef?=
 =?iso-8859-1?Q?K3RTSh5U9/q15YFR4NY/WIqPK3ZVkEEsBXB8LrdiycCir57zGuhbcZ3fCn?=
 =?iso-8859-1?Q?N50H2yAFJM2AW2YxSNNaLi/tiYmOI7aQlPUrlj2zfxSHOi1i82iSZ6DnNe?=
 =?iso-8859-1?Q?5Ljjy70ilCaHqWdLlglZZeKNmYNr+cNzbKdvVfHkNgYW/pw3en8nMfzFSG?=
 =?iso-8859-1?Q?BlHEuDKZVGLBZlCdyVyieG0TO0Q2bhn3xWUOYm/SgvZRIZz6OJq+t8DZ3y?=
 =?iso-8859-1?Q?OGLB1UPMZJ2AF7FbETmJdPPgmO364udF8TWJHPHxLH4EkkJEgAknh5iDCn?=
 =?iso-8859-1?Q?Yuv8pyfqBHWOrsDB4UH1yAGvUxn05JfQz6AhD0NH6bbkcx/jOyiZ+GhkQh?=
 =?iso-8859-1?Q?sIsv+OlSAy/uhYbjdSkhg+mViTD6+PQER7TIrFy3i+NE8JDq1yqPuJHlh6?=
 =?iso-8859-1?Q?VcjOVR0Rw4IU+ndLg3CO1Is636s2eIg+MJAi2euzIhFfd+EqzKzmCa+agr?=
 =?iso-8859-1?Q?SzqIPAYLQ6z3s88bmZ2QzDnLJsN3sbdVH7bLpRecPzj/5aHxWaDg6Ud4am?=
 =?iso-8859-1?Q?lTgp0L2paPMBziKxVRpOnqqHcBn7ENAvqPv8fSISmIQ/a7J+GItdXn56F6?=
 =?iso-8859-1?Q?I2xbbwQo/z38JwP+SYmtIY/SvkT8bl1Yz0ftTe9pv1+6sMVOE97QSXpKmv?=
 =?iso-8859-1?Q?ukNDUzK/Ty6SPrA1NfIoQ172rEXacNBv5utdEjUjhS3MLvgyIdNQL0Sx5a?=
 =?iso-8859-1?Q?Q8XcmbXLe0+jaSDMv3vXOhNHxq3CHI1PTBovTw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?UAAA8BNtzyc1zUAGUGr4MQft1vSqbfg48s+kcj9cBoEjbr9tlCrZr8+bYH?=
 =?iso-8859-1?Q?UiT6ocu2/A4g1yrWc+qBeH0oIIU/v2jh6BuC3ikgZWWakmVhmmIjadaZjt?=
 =?iso-8859-1?Q?b6qRLEvKurTjq9mx01RmHkoHUeBJ08RYFtOSO6VWVUTiSaoU0MXh3ev95h?=
 =?iso-8859-1?Q?wEthaR14htFLG2F7GAqidS+7WplWlTttIpz7P+Avq+kodO0A2ziWFH0cfc?=
 =?iso-8859-1?Q?8hWvQCyDl30dtGJgpI39gpuL68xZb5q5dNGZFoWSNotGlRWM9FNysrmGM1?=
 =?iso-8859-1?Q?uvphDspCAEPdO8xi7lwHVVgIYeo82p+uIyOCUbPNLQ0Lb0E7x6D2exo0Je?=
 =?iso-8859-1?Q?36s/lU0rlum/1UxWsa+NvvKsYexLhPpyCfkUc9I17emqGrUBBVffps/UPJ?=
 =?iso-8859-1?Q?dNaR1KHBxL0ogQLt4yM8Awkg/NpKWsaAZ/xkS+S2H5UgfKqqOT0w+CyFLt?=
 =?iso-8859-1?Q?nmykFXEqi9WmPNJ0XgpxEV0qot8HRStEDaR7soCUePwFM6IoB69PoUv9Ds?=
 =?iso-8859-1?Q?RKAPlvC2ptwmPbWMD6Yj6FFFsEvN4O3/4qkDyViG3GiW+CyBIySaaRWhr7?=
 =?iso-8859-1?Q?u238zvbvce3cSXU4THsWcNGjg9ByfB4OkAziVyb+FSGAowNBfUly5v4zjy?=
 =?iso-8859-1?Q?fnRkC6gUwuOJsyRPCkDVkiDAo0XlvMC3AKJm9/a9l197YvTqPSkOKrCr+A?=
 =?iso-8859-1?Q?WcYXI3M5pjxwI9S7wCHMHgtwYd/Mp8O/jp17vwD2fA2K1MK4ODFYVWxNiL?=
 =?iso-8859-1?Q?tOcmOhzs/vxgHGHLO72m+MLcYBZZGTxAlr1ZZbF2EFZ477E3RLQFpBR08j?=
 =?iso-8859-1?Q?LHE33kLf9vOX1iCJxBPb2EMQREYWJYVv01Ugxdh6RniUyMmNiAgg5xPddb?=
 =?iso-8859-1?Q?LqIOfyv7jNAdt2db2JVwosjk7CfwK52Kq2TNXPGA7Q0qJTS7+845IVHmmJ?=
 =?iso-8859-1?Q?Mw8jHeckFoiggbg81u5iQ8Bbrzo+wy7IELksKOaeKykNDekQ3eqjbhJLu1?=
 =?iso-8859-1?Q?T9Qw3i1w57EdhqDAOGHIWyxIu8iwCVLd03LLG9gXv+I3Bxamlzjd7gXDIl?=
 =?iso-8859-1?Q?ACY+cLATQFSPie698uRO6mzdoKoZp2hxyj9uQH7shGCf9IEas3ErB/wFeH?=
 =?iso-8859-1?Q?3acgWNh+c/nZPfLyOYy18DTOMD+9wipCIrr/bnL9IPSwqp0bSyRs0W52ua?=
 =?iso-8859-1?Q?6Pic5DHKiWiYFXS/ieesu7kqGARDvOdDtnLmVw483lHSkd8LFsFQh/uFLz?=
 =?iso-8859-1?Q?3/fPKMC5myP0cO1PYtfSDqD0zU3bAt6HSQbpjSDjxeOw/RshDWg/gfXj49?=
 =?iso-8859-1?Q?+G2xtQ8aXa6pBLkPJ128iLGir4esXjkGHW5ZUcmAzx39DO4glqTRUh/UCH?=
 =?iso-8859-1?Q?f4lpJFACSoLndQDIYesNqv8efouZ9nESgVRIEgaJdyXu7hMNn8d1klunw4?=
 =?iso-8859-1?Q?OfFhBy1Ksc/gV/PpPSjtGHRIBXpWXEJXkmtYJS3BrCZ4wXTZKdUCpOrm92?=
 =?iso-8859-1?Q?vMpjoO2aYc40lQPCFdZ/25QXbpNZgDVg6SDnTFZ47DTlOVahjPB+Gf99U+?=
 =?iso-8859-1?Q?PrtNYvxw9QgZxFkTIqW8WtzGsOaHRO4HyTzWje8qUXFdsRvzmftx9+mTfn?=
 =?iso-8859-1?Q?fH/yyFEEXy5x3YK4c0zloQ4DDCSVsG4uCH+VIN3o0h1AWG/R4mk/AfcA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2810351a-252c-4aa1-692e-08dd4c5419ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 17:30:24.8534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9IteMskfvmgRdWSxoMVkKcKYrsn2Hms4LjjsPG9+zIcYQvpxyn85qwq0SeJXXoMMvhLniKOv0Xy1UvzGrXdfPyd11IFhx+42QGAGPE5p6Q8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7980
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
> From: Mike Rapoport <rppt@kernel.org>
> Sent: Wednesday, February 12, 2025 12:15 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Saar=
inen,
> Jani <jani.saarinen@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; x86@kernel.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: Regression on linux-next (next-20250205)
>=20
> On Tue, Feb 11, 2025 at 12:30:01PM +0000, Borah, Chaitanya Kumar wrote:
> > Hello Mike,
> >
> > > -----Original Message-----
> > > From: Mike Rapoport <rppt@kernel.org>
> > > Sent: Tuesday, February 11, 2025 1:21 PM
> > > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > > Saarinen, Jani <jani.saarinen@intel.com>; Kurmi, Suresh Kumar
> > > <suresh.kumar.kurmi@intel.com>; x86@kernel.org; De Marchi, Lucas
> > > <lucas.demarchi@intel.com>
> > > Subject: Re: Regression on linux-next (next-20250205)
> > >
> > > Hello Chaitanya,
> > >
> > > On Mon, Feb 10, 2025 at 06:52:35AM +0000, Borah, Chaitanya Kumar
> > > wrote:
> > > > Hello Mike,
> > > >
> > > > Hope you are doing well. I am Chaitanya from the linux graphics
> > > > team in
> > > Intel.
> > > >
> > > > This mail is regarding a regression we are seeing in our CI
> > > > runs[1] on linux-
> > > next repository.
> > > >
> > > > Since the version next-20250205 [2], we are seeing the following
> > > > regression
> > > >
> > > > ``````````````````````````````````````````````````````````````````
> > > > ```` ``````````` <4>[=A0 314.781734] kmemleak: Found object by alia=
s
> > > > at
> > > > 0xffffffffa0595000 <4>[=A0 314.781738] CPU: 11 UID: 0 PID: 6042 Com=
m:
> > > > i915_selftest Tainted: G=A0=A0=A0=A0 U
> > > > 6.14.0-rc1-next-20250205-next-20250205-ged88b8b82c53+ #1 <4>[
> > > > 314.781741] Tainted: [U]=3DUSER <4>[=A0 314.781741] Hardware name:
> > > > ASUS System Product Name/PRIME Z790-P WIFI, BIOS 0812 02/24/2023
> > > <4>[=A0 314.781742] Call Trace:
> > > > <4>[=A0 314.781743]=A0 <TASK>
> > > > <4>[=A0 314.781744]=A0 dump_stack_lvl+0x91/0xf0 <4>[=A0 314.781749]
> > > > dump_stack+0x10/0x20 <4>[=A0 314.781751]=A0 __lookup_object+0x90/0x=
a0
> > > <4>[
> > > > 314.781755]=A0 __find_and_get_object+0x6c/0x190 <4>[=A0 314.781758]
> > > > paint_ptr+0x1b/0xa0 <4>[=A0 314.781759]=A0 kmemleak_not_leak+0x33/0=
x70
> > > > <4>[=A0 314.781762]=A0 load_module+0xa20/0x2d10
> > > > ``````````````````````````````````````````````````````````````````
> > > > ````
> > > > ```````````
> > > > Details log can be found in [3].
> > >
> > > Does this fix it for you?
> > >
> > >
> > > diff --git a/kernel/module/main.c b/kernel/module/main.c index
> > > 4a02503836d7..a598888e7072 100644
> > > --- a/kernel/module/main.c
> > > +++ b/kernel/module/main.c
> > > @@ -1260,7 +1260,8 @@ static int module_memory_alloc(struct module
> > > *mod, enum mod_mem_type type)
> > >  	 * *do* eventually get freed, but let's just keep things simple
> > >  	 * and avoid *any* false positives.
> > >  	 */
> > > -	kmemleak_not_leak(ptr);
> > > +	if (!mod->mem[type].is_rox)
> > > +		kmemleak_not_leak(ptr);
> > >
> > >  	memset(ptr, 0, size);
> > >  	mod->mem[type].base =3D ptr;
> > >
> > >
> >
> > Thank you for your reply.
> >
> > Unfortunately, the change makes it worse. Our local system seems to be =
in
> continuous reboot.
>=20
> Are there any logs available?

False alarm! The cyclic resets we are seeing may not be related to your cha=
nge. Our systems are facing this even with the latest vanilla linux-next. W=
e are looking into it.

Good news is that if we take your change over the version which first detec=
ted the issue(next-20250205), it seems to resolve it. Can we expect a forma=
l patch soon?

Regards

Chaitanya


>=20
> > Regards
> >
> > Chaitanya
> >
> > > > [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> > > > [2]
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi
> > > > t/co
> > > > mmit/?h=3Dnext-20250205 [3]
> > > > https://intel-gfx-ci.01.org/tree/linux-next/next-20250205/bat-rpls
> > > > -4/d
> > > > mesg0.txt [4]
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi
> > > > t/co
> > > > mmit/?h=3Dnext-
> > > 20250205&id=3D64f6a4e10c05ed527f0f24b7954964255e0d3535
> > > >
> > > > Regards
> > > > Chaitanya
> > >
> > > --
> > > Sincerely yours,
> > > Mike.
>=20
> --
> Sincerely yours,
> Mike.
