Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D21A90AEB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 20:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3DA10E083;
	Wed, 16 Apr 2025 18:09:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z75iVjTD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D110710E083;
 Wed, 16 Apr 2025 18:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744826988; x=1776362988;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=LTRPbF5+S1F0201l6ZwXD74BwHxmmbeU7bpmeY4YV8A=;
 b=Z75iVjTDcGG4vetahpdB1BsJbLR1CYqP8GKaxa5aUSo9LwjWVkJ2mWXa
 GgMaKxx0u7Ow0R5qYh6GLfi3p9r2DgmcljZft6iwWSTAwQBY+Gn9OfVAE
 l5tKMPyX+1LRLsTOpGDw0awHqIlpYN+vlwIOSG8reT5usuYHnJ+PEWqkm
 8SKksrWlm3p0ciKoUQ/TpNJe9tEwXKrp9EHkeciaCdPh2NDArSshUCpt5
 5kROM/jqL8ZGH13mJLHEdFl/d9uZC1WXWQY4e/g1RYRlJJMSvty/qdmGZ
 do4X0xSOk23L2Ev+DeuoHnrUhFtEVJX/ldB52qFPMyK6DlT0YYaGKFEWn Q==;
X-CSE-ConnectionGUID: vFAL23IMRL+Y+Wj2pLMwMg==
X-CSE-MsgGUID: Qcvy/++ST8egSXLPVgvWoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="68882373"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="68882373"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 11:09:47 -0700
X-CSE-ConnectionGUID: fexjFpDcSC+MSooSkyKXTg==
X-CSE-MsgGUID: +wzK7PHVSNmeZ4w++jjKcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="131114840"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 11:09:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 11:09:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 11:09:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 11:09:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EX8uP9A3HniTtq4Wcw54cbQAXhDXdcYZaT/zkM5Li2DIr44YqJBhnQsDA6GpPHWY7CfYObV3v7szSb1XrriI+XyZ7VrdDJIE5Bdi1201VutY6LZYwyhJk/IgzQNfI30PUvPW5a8IW9XvYu5JCjTmmEzJvyiN8/itYq+nFkVmQMkUQmudifiKKkM6LX/aQr2VptsSbDiBm8evea13+2Tfj55Njs+IT+qkbcO14O8r8ECGyi7tW7yZTbpNTFAvg+NJWz1aDrCwSKgI+R8KRdY+gxYE0xAaN83p/CZ/Ct5PCKv+H0LpALy30UjWc0/DZBbOtrCuQw/FOeVs8A+ApFLfWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4fiE3DglGvcFY9/oh9SUDK2iPQcQDnu+CPQaqH9vwY=;
 b=ZMGrrV0vEkW2eZeXJ+g2XJ6zk2Yrje1ElzpQvOlt1hdOilPibDEj7x+ptU1GKUzCxfHXTdj022DSaw7H4PfXCEFJ96K9RvuURDvZY8f2+o0W9UHLHa8EQsmsbMm8UjTheVzK5FhOIuaJPJ6Vcu0cci63zj/xW95xfFt4PViXkJcRbEgyNwBSkuUVuPGk9jRNFBpqRAXFJXHASp8iA6SaFePkXCE8oMwF+0StY2CWdJ9LW1DGJFu/lcCfh5bpITfzk8Vfpptawd3jJ6DzJubkqi5ZpBNLVC4ySxSuukUqdJeIHwlVrLL1vOj8vs3iKKtG+lWMoa9LvD9RE/+qBKhMXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB7485.namprd11.prod.outlook.com (2603:10b6:806:31c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Wed, 16 Apr
 2025 18:09:14 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8632.030; Wed, 16 Apr 2025
 18:09:13 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "luto@kernel.org" <luto@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Regression on linux-next (next-20250414)
Thread-Topic: Regression on linux-next (next-20250414)
Thread-Index: Aduu+j9070JL+I5FRPOhRZgCFNsjtA==
Date: Wed, 16 Apr 2025 18:09:13 +0000
Message-ID: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB7485:EE_
x-ms-office365-filtering-correlation-id: 74955ea9-48da-4242-11da-08dd7d11cb87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?TP8ZcJ+Bwe70acwZIs2GhYuCko7Sj688DX+9D5bRXW448rLcQeh9beJ0XY?=
 =?iso-8859-1?Q?/qvhESZmFTmhoMQSlnQXHn10LhHfaiqJx4pyhAaG46/Tu8Con4G8sm7Sqk?=
 =?iso-8859-1?Q?TrXhAnmcbIB+1y7t9OEaf8NJp2H6OkJPcszkXWCytQi9ZJF+oqb/pQ/ox4?=
 =?iso-8859-1?Q?rnfWz1lW1tgQiPkerHlaYu1GiEQDEvyV4wJDl2xtQNpjNwX8I6wy+P36vB?=
 =?iso-8859-1?Q?9K7WA0T01jhVOFS1aIMrmu4c3DFQ4FEjWWmLZa8RoJj87ttLN6KvMxRnX2?=
 =?iso-8859-1?Q?fTkTU3bPwlvBYFoR9EkIaQ9I0tAm3mzQUTiRimS0k57s5yMHRrJ7UPaVNr?=
 =?iso-8859-1?Q?cCEur8a2DjUL9X0d2+mHP+osvR8HPY3djqLRS/z+g/isHEtJL6PrZPyIaw?=
 =?iso-8859-1?Q?Tc3ZUM3lQwhNPLi+kiM2kSq2SvpEEnu+exRoWgtzKUhZ1TIHrz1jisVU75?=
 =?iso-8859-1?Q?3cdr0slgSa+uyL4x+QVXQdue6tg09cdQGQVU1+HWIl64zf0EKJwC6AKP0P?=
 =?iso-8859-1?Q?gSdieQh+fwn3JI6KdtUrKYZ3rsdpIpsLyjegiBO8jGOD0PzNOrifmeKeZw?=
 =?iso-8859-1?Q?rcHOUHhZc2iI1qenJh+dtoKRWUoa//B3LuKPyICmLc5ww+wCq79AHSstd9?=
 =?iso-8859-1?Q?Igugeuz5fJWcjvDvnLh5jqj7C7D6xzcEO3xa43Ok9unw6pZ/0aS09+BHaq?=
 =?iso-8859-1?Q?QiCO+AYKOTFWqVq7shPYpoHSgidZlQCs+EaMakgrfiX/ke1LQPnHCuDep2?=
 =?iso-8859-1?Q?OtjQoXm3R/8ygpBB+YGDEZAOVb8y09Qrgn+2q4CUo8/eXlY/984QPKiCLr?=
 =?iso-8859-1?Q?9jy4iPE2FVpqAAV3XBnja/wiTmZnIe5TsB13hTmQXrpn1YstZyAP6jjWW/?=
 =?iso-8859-1?Q?m+o0sQs6mYA9WvmGh7C/OgYEdR6d5RYmetNsJS+t9eJvHcCbvsSaWlFTyJ?=
 =?iso-8859-1?Q?1k0laMN1UOhPLzt90+WBLSS5IZIG1BjdnHk2M0MTgeqtpW4ykjRPc5RbQ2?=
 =?iso-8859-1?Q?9BrW2UIRuOrLVMQIIwzVwmQRjyy6r/ktmDTYdqV0iKuhtUZjQNTjKj8a6U?=
 =?iso-8859-1?Q?itlo2CiIUgEvMwe263P9vjwD0ibRcRBRa93eII4bJgVCk5JpOct3bwNfit?=
 =?iso-8859-1?Q?/gx99izgwPglstcfSLYdh7r+2eUVyBQ6jpIx0DjTV61nwUvqL0q0PNz6cS?=
 =?iso-8859-1?Q?qBlCH3IVDcHTrnMXx8jcaONGDoIzWBdc4bGUY+NY26HFTSsFenzassqSGc?=
 =?iso-8859-1?Q?8X3MQ/33kuPXc5h8wUrJLbP97Aqvo980EHgjEikOIa7SCNVnSnMKfqGgDM?=
 =?iso-8859-1?Q?x5wiIf7Ef4pblw/CBh2faykn5+vyIUp6/ZvNDqHEwcbqMaCTWfskBg05pX?=
 =?iso-8859-1?Q?lZE3z8o3MwhCCD432LpS+ou0xUme5eU6/4wDrcXlfQUDHfVrqskke7j5+6?=
 =?iso-8859-1?Q?ptikJm3E8kttIE4JV6UwFBo3ISeZT8V4ESvd6616IswNQa7iwuxu50qyjV?=
 =?iso-8859-1?Q?g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?c25NYCHdOaQEPcAF+VrgQdrALUFi3LVvNVVlQG+/3hBy4rRSlF0cYa6dRj?=
 =?iso-8859-1?Q?9eRVRcitGj6hB85lfxypfID727f9zojaSD0FuOtAVI8xM0q+ueVAQWSOB6?=
 =?iso-8859-1?Q?owFWvwUnsq8ty7w5eAG+PsGRtPQhnd/nKKbHzbieL2YHtdyJy/ZwYiF6/O?=
 =?iso-8859-1?Q?k2zOtkV5XRcMGbog8IA9j/jClNrscL1I8GDtqxgP9Z2thN3sB1JkhY53Be?=
 =?iso-8859-1?Q?1l2MshRnEA1ilhXSe4Qw9nq8YXQi0ZigYeiTTmYnfoxBlj+CRCNOUtM1ST?=
 =?iso-8859-1?Q?1U6chtpQNg/W4FijP9DlwneaRj/DrpoWnYGNFgC/L2AkFDiRcFUoNNppXB?=
 =?iso-8859-1?Q?qTOPdSF5m7keMTges/CZWbJA1Hydt6KMppYbLPIQn465NMDNpqIiNyuJt8?=
 =?iso-8859-1?Q?/UnYT0vZoqnwTfb8aXcGgv10hT6Wlxhk+S3uYO8+4fht1I/FQt8VGCfgYK?=
 =?iso-8859-1?Q?TIYPb7YrBWaKHeF/I3pi+kShy6HLhSPgWsVAkDHy1RsEoPLAPuvgNxVQ5E?=
 =?iso-8859-1?Q?Bfm/WivEZYS8AOr4p+6n3FSlgvnUyejbIFqRjDy0k2EjdR1lCLZxVA5+y4?=
 =?iso-8859-1?Q?CIzKxlKmQKVEnkvz+XByJQWsUJSje3Hs9lPVFSOF8qolIZe/CnVvGRy/2q?=
 =?iso-8859-1?Q?iPlSXEldqElV2IB5WZupaGBQiZcqhNRoPf325dOvBKw4t8TxOgE6VYa1To?=
 =?iso-8859-1?Q?itdugW/YpYax/fXIXJwUOOU0RRvnkP08hgSqo+Gq/0Mn7cRCvDrnADEbyH?=
 =?iso-8859-1?Q?C6JKnMaGPq/4YhTnPYZl4So53xqfXYZxn85IYbGyjXxVWvnX3BlRAOcx2b?=
 =?iso-8859-1?Q?5jnTLOJjGA2h+ifzIVUaDSfVFb8a/cwqy08E10es+w6rvvKPBg/sBxmkqe?=
 =?iso-8859-1?Q?k5c8S4FQrFatqm7mIeHY32g0aKYCdlCCIK1I/NFk9kn9e0ZX6o/vFNw31d?=
 =?iso-8859-1?Q?YkZpbROLqpNOO8jt3tk35bOQnO08aVNqxzwCA5/oJceFKZIsaZxEt0SEvm?=
 =?iso-8859-1?Q?dVY70pundQRB8KHZw+dVu5KLfuFqtesyB5RKf+4o/3XQJvP1/4ctL5sRdP?=
 =?iso-8859-1?Q?lMIygqfdOi2ehQy14Htd1aM+rqnEzLhda8MwQkDV78HfrJ81fEkCOr4USX?=
 =?iso-8859-1?Q?F9NxdCsp9F80V6IOncsdlRmDGshMXrpEfaKLk8/RjLrePsQOnqbfB4wpjZ?=
 =?iso-8859-1?Q?xyTVJjmB6+L7PoAf0E6k/WM6yhMxPrXXEI/i6AloYpZ8tRd++kUZNGJCG2?=
 =?iso-8859-1?Q?IbpSQauiT/mw7B8qPATMbM0yiItka1IZClrmTV06nXH2p0Pjt9kmTvjvPB?=
 =?iso-8859-1?Q?YHwMVi1tVNB7ctXUZNFc7XGG6v4g2Fn6LJ8GqOoI+3MwKCjsiH8kkB7UFN?=
 =?iso-8859-1?Q?LoEhQUxitAazkGkPs7jTOXPV5+9oWP1Qk1XW2o6t7hRhMxbzWZjm++vQR3?=
 =?iso-8859-1?Q?Xf365qaz6nxSuWorQJ0fzbA+h8hbRYp3G2lJPAQmfSm/6KLndNCnx4AaEw?=
 =?iso-8859-1?Q?zObA9W+YazQLoVP0DQW+PjgfbiizwqGpq8GkMA58f9ZZvlHYgNEPQwi5Jd?=
 =?iso-8859-1?Q?Tce9dBuNFMW8doJQUhc4RubCjMXWk0uBIxiqMAFZEZSYhPLfRWqF4CAsSq?=
 =?iso-8859-1?Q?DyjIedqXok2FHvKOWHmnWxxJmvWIFfGa3BufO+TMqZC7iytkINBgNQdA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74955ea9-48da-4242-11da-08dd7d11cb87
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2025 18:09:13.8282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q0fHXE+ZKPbO2eLnPiP5b88E+umWyETRZe2ibcQvZbGG4yoKMXw8sbLRzok8lGNK/rYwMgZCv1hVxXKj+q0Dk4Ai1IGrStgQfaZuKSBGJhY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7485
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

Hello Andy,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20250414 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<4>[    0.203154] WARNING: CPU: 0 PID: 0 at arch/x86/mm/tlb.c:795 switch_mm=
_irqs_off+0x389/0x410
<5>[    0.203173] Modules linked in:
<5>[    0.203184] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Not tainted 6.15.0-r=
c2-next-20250414-next-20250414-gb425262c07a6+ #1 PREEMPT(voluntary)=20
<5>[    0.203207] Hardware name: Intel Corporation CoffeeLake Client Platfo=
rm/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X220.B00.2103302221 03/30/2021
<5>[    0.203229] RIP: 0010:switch_mm_irqs_off+0x389/0x410
<5>[    0.203241] Code: e9 4d fd ff ff be 00 01 00 00 31 ff e8 60 ba f9 ff =
e9 29 fe ff ff 48 c7 c7 60 25 a1 82 e8 bf 73 a2 00 84 c0 0f 85 d4 fc ff ff =
<0f> 0b e9 cd fc ff ff bf 0b 01 00 00 be 01 00 00 00 31 d2 e8 1f e9
<5>[    0.203271] RSP: 0000:ffffffff83403d90 EFLAGS: 00010246
<5>[    0.203283] RAX: 0000000000000000 RBX: ffffffff8389f080 RCX: 00000001=
00a8c000
<5>[    0.203296] RDX: ffffffff83414200 RSI: 0000000000000000 RDI: 00000000=
00000000
<5>[    0.203309] RBP: ffffffff83403dc8 R08: 000000008d3ea018 R09: 00000000=
00000000
<5>[    0.203322] R10: 0000000000000000 R11: 0000000003f55067 R12: 00000000=
00000000
<5>[    0.203335] R13: ffffffff836d0b40 R14: ffffffff83414200 R15: 00000000=
00000000
<5>[    0.203348] FS:  0000000000000000(0000) GS:ffff8884d94f6000(0000) knl=
GS:0000000000000000
<5>[    0.203363] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<5>[    0.203374] CR2: ffff88846dfff000 CR3: 000000000344a001 CR4: 00000000=
003706f0
<5>[    0.203387] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 00000000=
00000000
<5>[    0.203400] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 00000000=
00000400
<5>[    0.203412] Call Trace:
<5>[    0.203418]  <TASK>
<5>[    0.203428]  use_temporary_mm+0x5b/0x130
<5>[    0.203439]  efi_set_virtual_address_map+0x4c/0x250
<5>[    0.203452]  ? efi_sync_low_kernel_mappings+0x10a/0x220
<5>[    0.203467]  efi_enter_virtual_mode+0x205/0x5b0
<5>[    0.203482]  start_kernel+0xa38/0xc60
<5>[    0.203492]  ? sme_unmap_bootdata+0x14/0x80
<5>[    0.203504]  x86_64_start_reservations+0x18/0x30
<5>[    0.203516]  x86_64_start_kernel+0xbf/0x110
<5>[    0.203526]  ? soft_restart_cpu+0x14/0x14
<5>[    0.203536]  common_startup_64+0x13e/0x141
<5>[    0.203555]  </TASK>
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit e7021e2fe0b4335523d3f6e2221000bdfc633b62
Author: Andy Lutomirski mailto:luto@kernel.org
Date:=A0=A0 Wed Apr 2 11:45:39 2025 +0200

=A0=A0=A0 x86/efi: Make efi_enter/leave_mm() use the use_/unuse_temporary_m=
m() machinery

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250414
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250414/bat-dg2-8/boo=
t0.txt=20
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250414&id=3De7021e2fe0b4335523d3f6e2221000bdfc633b62

