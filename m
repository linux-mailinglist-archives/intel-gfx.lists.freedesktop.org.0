Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E067F9DFCDE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9B610E677;
	Mon,  2 Dec 2024 09:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lnqmA57v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BBAE10E677;
 Mon,  2 Dec 2024 09:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733131057; x=1764667057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=db2g6XV8fL1bex0UeEGNM6tuNIqMellZCY8B9mkm39E=;
 b=lnqmA57vOcNBfjTJoxxkpSEq0giaalsi1gz3VEHOnRa/02i+A0CRBiQv
 fN1X7YFfUc2osuvv0MQKHnPvTIasCSe76nfrVfENKTyohPruifQrLW2Fs
 qZT3hd/akbM1Yot7khbnd96jFeWpkj2WjdxFkGcMol2K5Bc1ejLVyHXI0
 VfhUyJY2n9Q8Z5OWrYpIOxz9OufKInVn3FrWXXNlD550L/XDjlTYllBqp
 fudwwfG2EIweJ/361xLlsu8ZQCuQ/y0q0UwgZrE8BpeEJJ3dF5AjCXVVR
 Tw+JFrjSW/7D6IeLn7NgcnjUmB0wtkI3vLWhwMm3dnU5wzs5cjkIzOkOR g==;
X-CSE-ConnectionGUID: FORSF0Q+Q7esdxY+EN1e8Q==
X-CSE-MsgGUID: 4kXwWqAiR2iZRit71A603g==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33220583"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="33220583"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:17:36 -0800
X-CSE-ConnectionGUID: Zxcks0n7SaO6223hqZT+HA==
X-CSE-MsgGUID: klWHQIQ0Rdixn+K3KNSdhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="98084823"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:17:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:17:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:17:35 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:17:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rJz1ZBjxQxJ2KPv7YeBmlC3/hO527csmdZi0xmeiUORaNf0FAuQCho2D/340uE/LAYHJKG9feC96iGB03BJ1kXpKUd3Sllgkltp2CRt4RIEegKhMGm0m3P/NCNFkXNqXfz6kFfRsdeQge/lB+tFesXpWE8NpX0dL9Syqr5XNzds0NkKZYLrqFoHW5JkaHA6/d0Gcpu4jkxIDuLt3SRf1eDW/MD4qWo8/2iKeBqn1OoGp91ymykyg1Oj1/eMN2PQC4/gZjSYWSrRNgkYIvljktZ0ls2BkbVdTg6NYMp3jCLZyrlDWT8ETKO2PJDvX3yTuU/d65tG5D0O+UOXwKgJspw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oD3vA1JnUcsE75vaKrITEfZzuws7ZAYfB/eAjYPw5Ms=;
 b=IXtVelBydK3evlQbM+yiQYsg6m80rVG7WVy6ZdddRC7PMFQ+Vo8P/2VjJ0a1KdSPH5sAYeiFcuMzl11E+xtRdSYU2oSqNUprLUz6RDkNsLlVxnjIUdqOMHw0Iu9y4NRO+/oqTEWOFzTos1Nalnui6fRbxPpGso/3ZSuUDHCBm/8mJfvPwjqWrtQtL8M35vKVPVC4OIKsQ+h0xBP7jlzsYpMe0VdVVgrH3AeiwamB8OKIaHv23fS5kmcmGcrwoyYy47rzyxQjEZT0UjduT2RzXQIjh9CefsyENvwjB8smgnSCOAYuNMuCDeQZokZXuIDK3iISpC9kD9AAYR1u2PTnAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7740.namprd11.prod.outlook.com (2603:10b6:8:e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 09:17:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 09:17:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Thread-Topic: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Thread-Index: AQHbN3fcG1Ng4MHs/USANElFZfGW+rLSxowAgAAAW1A=
Date: Mon, 2 Dec 2024 09:17:27 +0000
Message-ID: <SN7PR11MB6750495952437019A1412229E3352@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <IA1PR11MB6348F1AEE0B17F2A150C52BFB2352@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6348F1AEE0B17F2A150C52BFB2352@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7740:EE_
x-ms-office365-filtering-correlation-id: 8442d397-4e28-4af2-ad56-08dd12b223ea
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+vzK9E3eMKzQscdP0b9ujWWdpaYSiGZsEA4oubWC2eC+a/FhQi9USTkgHB2d?=
 =?us-ascii?Q?H93pSS5gym3SFdSv102o1Idu1v1fVZtdZ3NxDXjeX1BdPpeoLNBVWdlkRRZZ?=
 =?us-ascii?Q?SECX0AA1qyGdYe10ZQD2z0bWA3Wt7uehj9C3ff3OPzxNMyPGSM+v0rwzNmfq?=
 =?us-ascii?Q?AGASWYdTXsxf1dCI0EMsKz3CmXYNobr2iiZWuL2c5SDxRx2vqWFQ36tUdmmd?=
 =?us-ascii?Q?+j+fuB0EfmxyMu5bEBXY9gELE9F6W86nJYTcgwK/l7Y8TrvE5/JqIbzQvlWP?=
 =?us-ascii?Q?YaEzGNUlCisoPj9lxHNPyvj/56S3mj4oNvX2XIqtlTr79vwmaLE+z0BHo6Zc?=
 =?us-ascii?Q?/4V5BwNNPVn3MOyqywwcjbq3AnEd3F4fCdXZWQMWaMfnh3kxDlNW+3vn1BZn?=
 =?us-ascii?Q?0AiFHfVfBW4jZYhtJb0YZ5wak1TDaSt21QL9QL+XDIZzgjkreMzNOJUSAIsk?=
 =?us-ascii?Q?A00z1g7gLz8cAW93Beb6GLI73TdBmq7665+6vc/tSbwT6btKuiuP00T0pT1z?=
 =?us-ascii?Q?AfHxyi9Syz6KslNmkpQJq+b29k2UzEgEq8VM6p6A3dONjbXgJTkJzSZNKlJa?=
 =?us-ascii?Q?s73Z4TEbavyaqojUqAwylL3Vq3iHsN06sMrR3BSmol9i7Ltg9HMdcDhBwo0i?=
 =?us-ascii?Q?1/QzcKJ8DPYcKNQ87GyQW9L8mMgH4fpK4dTAoNy/4gkw38AjrzlIS3YYuGw3?=
 =?us-ascii?Q?cV3XYod9C0fO9v5FOt/+3OKkrEYfbM1nthgYelpNJp+2ShkwYqeFwfRg3eJm?=
 =?us-ascii?Q?OvflITDz3fE/3Q6nSJRb9Bo+dtp6PwIo2UfB5H+ZqtgXg63CTaoZb8Xuz+/r?=
 =?us-ascii?Q?3b9Oyw9ebDRl4sGleAyUCK8V3x39aSpzyIGhqtg3CDTsPpu9fyenxajjMK3s?=
 =?us-ascii?Q?km4O4Hmu4/LLNf6iZT3HqMMSB47GfLFCkIbPXVN1HU8BHz88+Gy8IgmRwsX/?=
 =?us-ascii?Q?Bt0SrFKmqphf9yiSql0Ul01we0AKRjofmE/7mJgj3QprdoI0BOYpioC8HD8d?=
 =?us-ascii?Q?Tzr4LUjN6iGw2CUi3uUMS+FnRR5UHqBXmxMajH4D1EbZPokxYka/rMVQ0j44?=
 =?us-ascii?Q?NPvoaGviLO86s49ClUtBSh2l48SrAarZoXZS+xsDRlg5J+Hq3beruLKhmDVG?=
 =?us-ascii?Q?Bu/udVQHhXGN7wDp1EyS8Ah36g9cwVmHv3ZvyMsYq7lIjUAIJEI8D4JjID4v?=
 =?us-ascii?Q?LTxLjaETopZP2gHJopOCNswrcoMJIJWqCo/0Q1njWWMZDUQA1kd7NLrrjCzV?=
 =?us-ascii?Q?nFedJDIZIv+DZ1LxpDm7EtJZzQp2rkqBVbmGFWxl8u+y/AenkKYgokivoLoo?=
 =?us-ascii?Q?YZYyrmUWK/s/mwtOVrmfnF/T1bIAebCtek0XU4HtrxUKMNxhY9BKpPVE9QH0?=
 =?us-ascii?Q?xFcjMhSxVa6z1/EXp+VFT8mIm6UGWfi44t8LwddStMKDMoVSHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/3IkaNd/nyzxUoJ2n+tGhS06Die3xiOsCSusl0UYmGrrOnsCMifPPlikpnEB?=
 =?us-ascii?Q?uunGfvhVAs1pM87hNShNtqNzzKq7doIEn9zVIAY+T0Z+3HMhNsJ6l01o+0p/?=
 =?us-ascii?Q?oIzuiEoxz2ZDl0zUiTauxWzgmAp8TDAomZx6oaR8/xoa7o/kTsY+4bWXjnyX?=
 =?us-ascii?Q?KUlFR6+xFhHpwadEgvdtUsrhOKSiz01ijc/IyInSn1t9+aH85EzijJswL7mu?=
 =?us-ascii?Q?gPCh7B0aDP9fxascH1lcQSq8VNpSIjuLcfBfURVatgvcwDmhhC2vRu5EW3U3?=
 =?us-ascii?Q?FNBp/6+9XND4BICFas/EGhnecxRIjdWaY2E0hvMTrHPHpxSQPrfY6e1KpMTU?=
 =?us-ascii?Q?KT7CikgPqt24eiZDURfQetGHjidsE5+Kq2T8d6GMBuqLa67WhGYnftl+bDb/?=
 =?us-ascii?Q?hNmzpjSmBf/AoF7EZjnB4vBr7u7aB5lLw1UQ8oexvPu02dyrIW642bL3F3lg?=
 =?us-ascii?Q?XHkJ1TYF+cRnmODens0ObgMoMhg9u7iU8tx4uy+3mNAzSBpTItc91ei1uylE?=
 =?us-ascii?Q?Bswy0TA+gZCkoh/gcSpEjBSJgry3QeNf0pFMRkFfDdmEyoxLwCpi1Dg4ERCp?=
 =?us-ascii?Q?oSFjQ/EetRlQxa7YMnu8tjmr/4i/NoHdA6n6w0apgc2IzFGdr5EyIRcp9CV9?=
 =?us-ascii?Q?Svkx9O3sK67c8/ezCrZU5hF7LqtompPayUernkkOiqruI8Zl9K6r9etJSOcc?=
 =?us-ascii?Q?D7uTjvwkx09pO8zg0+9cb1p96lFtK7vvANS7VM6hbFpf5JvVuTiZxmaWKh/Y?=
 =?us-ascii?Q?nn4Lo54YcbaBRmnjHkMbhDBpvZOsIgYIF7A08qjHZQwjDvuGQi6pg1j8ryff?=
 =?us-ascii?Q?DncuH9MqEm2auDn6O0PjizqNXJX8OTx8z+Zs0HPR+7tg45dacbHPYyHds3Yp?=
 =?us-ascii?Q?xbCZMOCzaxCL9Rn57BQj679SgLLvOxZU3kptr3bJLPuEF2W0QAwmPEzZP/sF?=
 =?us-ascii?Q?/lKyccJYI6F+kJy6vugOFfl3Zt4vM9w0QiHDBCdqw3PTdBXS/QgLrbnWsLuI?=
 =?us-ascii?Q?1B2R14jHQV0MrL3F6r4oXzDFgTdrEf4AO1azj+w5hue3BNwXNdkcUlIk6sfT?=
 =?us-ascii?Q?79vzBfzuUqXriJ3KAe5hjOISbwNcooOi14M1vKBydhBFoJlC2mB+VHER5mEo?=
 =?us-ascii?Q?ipBNd+FXRMWbvNrlhNwkF0xeGWVjel72OU7EFSfLZd/HcoV4uUA8YJ0Hh19t?=
 =?us-ascii?Q?ysh06qDR+94jYmkUC03tdiV2/oqh9noQE0YZukWu8YhtLnClfdM+BkF5pZjL?=
 =?us-ascii?Q?rHi6kj0x4JRqpmRMtKHulhaHwOOA6Q02mS/zxfDkZcFLPYxJRcHTj/0a84Uf?=
 =?us-ascii?Q?4toncd+48rvzchAwjyg4svzxopPSmlCD+gKIAq7PXyv7zaSNREP9pHTXNkxa?=
 =?us-ascii?Q?HpNyf2srwUJ5nR3glsPsUzDl9wAEbbOzATrreESGt/GQVfeClEbUMBi5IGM3?=
 =?us-ascii?Q?K0njAiBr0QomxlJ5lcEkaKr+qca2cEDR8XGYTxupPCISX+JPCQ9Id1SoOJFZ?=
 =?us-ascii?Q?nhfveOmfIJ9pyUv5tpQ3r4lCzvLiS9+3i1q5+m7YdRjFpefd2//9xhlbAPuP?=
 =?us-ascii?Q?KJWt/M/f4Wjimx5iVEONfMHIyEr6ZkeDtdXo+NYg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8442d397-4e28-4af2-ad56-08dd12b223ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:17:27.2012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6f4jL2VkVKBOjiQurtYHqsclOZN+qSazEDLNrVGEBaN29SHREhSCc9I0KgmvgGStf1H2Z3Vt9mPlGUe7CjlgHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7740
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Monday, December 2, 2024 2:46 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
> appropriate value
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: 15 November 2024 21:31
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
> > appropriate value
> >
> > Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps
> > to eliminate the else block and make the whole code a lot cleaner.
> > While we are at it group the initialized variable together.
>=20
> I suggest not to combine your functional change with other refactoring. R=
est
> other suggested changes from previous revision looks good.
>=20

Sure will wait for your other reviews and rb's and then float latest revisi=
on

Regards,
Suraj Kandpal

> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 1a4c1fa24820..a49e8915346e 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2857,9 +2857,8 @@ static int skl_wm_add_affected_planes(struct
> > intel_atomic_state *state,  static void
> > skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> enable_dpkgc)  {
> > -	u32 max_latency =3D 0;
> > +	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> > 0;
> >  	u32 clear =3D 0, val =3D 0;
> > -	u32 added_wake_time =3D 0;
> >
> >  	if (DISPLAY_VER(i915) < 20)
> >  		return;
> > @@ -2870,9 +2869,6 @@ skl_program_dpkgc_latency(struct
> > drm_i915_private *i915, bool enable_dpkgc)
> >  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> >  		added_wake_time =3D DSB_EXE_TIME +
> >  			i915->display.sagv.block_time_us;
> > -	} else {
> > -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > -		added_wake_time =3D 0;
> >  	}
> >
> >  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK;
> > --
> > 2.34.1

