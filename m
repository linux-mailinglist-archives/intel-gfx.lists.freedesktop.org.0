Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2729C21556
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 17:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A0210E2A9;
	Thu, 30 Oct 2025 16:58:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T/XA+Y1m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA7110E2A8;
 Thu, 30 Oct 2025 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761843513; x=1793379513;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IoaBKTRlM+OT0F81b4n9w1TnIQ+vrsDAOpgZP2RZw6g=;
 b=T/XA+Y1mHVhu7SdMZeKy5OhFuM249BJAf5kpR5ZBKwj6Vl/sCuYv6ny3
 mfWxM9eTAkzM3dXdA+VqV1CXWo068JnzYdmOafJ2QpghYC/xj0jgZig9H
 ONIkNuoOMjy/hMB5McqCQg6OCvhVbCk3BMMtAiZpRlsDdyWT88n19pO4J
 COEVlGOPxoJMcjxcmK8sPLAPKLmu8ZJl2iLM2lixkPqocGlEEciEB+bKh
 rWoICwthbXCSnv6cMVYoUWF/wfnsp2u727MtleF3Yc9JEpVnf0y2ryA1G
 skJQK8qaWpNX01uXE2LxQhaG+pS9fU2TGJn6IDKFre4V2PaV9ar3yHP1u A==;
X-CSE-ConnectionGUID: rb7+J7mASpKsGGCP06UDFA==
X-CSE-MsgGUID: L7EGRuvXSwC7j/KLl1Tqwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="89460034"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="89460034"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 09:58:32 -0700
X-CSE-ConnectionGUID: 1yHP/ADcRXeVmLSNxu1HXg==
X-CSE-MsgGUID: nd+MGhVzSu+F17j5wdoJbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="191160279"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 09:58:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 09:58:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 09:58:32 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 09:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dL2pk5WddqL/qMiHj8tjlU/BAS+SdQsc7SBcsjvimHTmNPeeEYfre7dDe2smXGeWvj/OI2kIuC+fdvxENyDHNk3gXUwBOky3eDsDyYlohTp0lUKrnIht+XUuV433lID783jhhbRFpujKkC7lXeVt7R3Rmfj3/QDXogYZJYArxBGisntu7n+pegwFp6dua+hLJVr9811lBiT3PS24ubh+g/1Z0xRGeg7SyWa1NZJwFnqpAgB7UdCNSKGEbvFOAJex8LocxBj+c0jzoj4JQcIw/fXyTkp8+EET+FZ11zHpsRYi2fnmp5xXt+suPBsm/pzx49AUtBBHnESB1toCkLl/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1N6zxigo+RTElmDcJ/xPTsvMYeWWK+ULcMqDYoIrMw=;
 b=w3YL23C6iSNpeKVBG5E/rwPKWeQV88dpOPGiGUmvff+eUnHY5HRLSvXftZ2DKzZhyQAOAK4q1yoFBTzBJG1/8dLImmn3zlIM+CIas9NjYZTLcMTsTD+Rdtxhuh7hH5OMY7rhgsdW1AdJ4NQzASbY7mSAwKLTL/PMPGOc+H2tJNetwszsUOYaWBhvWaKTAIfI+KhrAiQpLBzRDq6KO3x4pGxPufSadbzoe7NkqGDKy+fBvrtTFulp0JEhGgcGSS4+LxmYVTDCN1pHFsKyXhASuKxFHcDl+hZ4YJI8zhClqJNyNrCpojPuvJS4iCUnr3E46G6DjhHdpaV6Dx6OyumrpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB8261.namprd11.prod.outlook.com (2603:10b6:806:26f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.13; Thu, 30 Oct 2025 16:58:28 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 16:58:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 2/4] drm/i915/xe3p_lpd: Add FBC support for FP16 formats
Thread-Topic: [PATCH v2 2/4] drm/i915/xe3p_lpd: Add FBC support for FP16
 formats
Thread-Index: AQHcR0dMyKkuJNtIjEK7NlkPVeEUfbTa7hUw
Date: Thu, 30 Oct 2025 16:58:27 +0000
Message-ID: <DM4PR11MB6360FE11AE35F6E992BC1C85F4FBA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
 <20251027134001.325064-3-vinod.govindapillai@intel.com>
In-Reply-To: <20251027134001.325064-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB8261:EE_
x-ms-office365-filtering-correlation-id: 1976744c-c58d-4488-8c71-08de17d58be4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?J6wivs30ndE1d+Ed1vdSdzRAqSYJDZ0vhJdV9hii6Fa2mZYRGoGl2+gEDngR?=
 =?us-ascii?Q?R27aAg35ZnnX0GsHXRevGNyZw/rLuUMrALZMLsymbEa9CyGxct1H1lvge8H4?=
 =?us-ascii?Q?xJK0Wbin8cV47jyKex+QNopZNgvTarssZF0whA61OJ2FRzyBFJWYf+RQref7?=
 =?us-ascii?Q?vB3hklDLl1B0NvHNZ4OcM0ze0qd2ejt197fMiT7jEnlo+cPp0mZ6yDCxP1Zg?=
 =?us-ascii?Q?CjT7O7tUM05HHyl+4jfvYEBN4lConvCunq+JYYMVFUpyLn+xNKlWOh87kcHz?=
 =?us-ascii?Q?0UWMrqxz2MuuRGZhJVIUBIzpOJEApYHm4tKxQ5Z+tb2G0RS2g9zuKTo3TSFM?=
 =?us-ascii?Q?er7OiuwfIQgFQWx0xWheiVJSnlC/X/IhQx5tCCAIqevRiuBcMO3r3m2I50In?=
 =?us-ascii?Q?MvcZhZOM5lMelLBOpRostX9gy+zKgpEptptAl+cB+DeqNFoCCr2P3hBaaHvL?=
 =?us-ascii?Q?JITHu66XUq3ZEnl/LXD+Vnk/AjOXDvln4hxQIg5PrB+C3eIMA+Pc1YTANO5Y?=
 =?us-ascii?Q?+uCQ3h1NYBJgxjrluyLVX9nswbBUS2ZtaV7Avmp4N1P10rNbd9kRjOYi+yEP?=
 =?us-ascii?Q?vrIlxhzJYkPLjMFNUWHZVdsBlW+2sKRYnC0ovpQQ13CycqaRE86nCFkof1UF?=
 =?us-ascii?Q?m01/O9DuBDNd2EejtfRfkna3d2YmcONjr9IYHBbjgKo54iWCEAyE5mDudMuU?=
 =?us-ascii?Q?SW6BSwiT8sltye1QwmDJR+d+Cd7phc/hx7WVYUaaAtVwFOpkXX55qiSVX5ft?=
 =?us-ascii?Q?9Vo6/b7vQTXtmFmR6S9CkmlCztBtP5fnKCYcO9DTj6A9lSLdti2mhqML5HNA?=
 =?us-ascii?Q?Vva70oVM5ej0s4JAv1YavMvbRwHreh3wpinnXQLCQiw0kEAKY1Z59XAEQrw9?=
 =?us-ascii?Q?WQR0hsLPzc/fj5BZ4ejg+hec4F7rgMimKd7l2I50wBampO9nGZf5z+MnkLLJ?=
 =?us-ascii?Q?JzAD82RpDPrjLaPBgYF3ChYjI3SeT6Vw68bkiHb0VYcfXspUOHVc/DMm3wZq?=
 =?us-ascii?Q?2Fy8uxAyjCTufunT/+5CqDq5YUHDE5ZNEiRzMIFOj3W+4O4qzV3Pj0IGUpU4?=
 =?us-ascii?Q?18Xsjra+wyI3bODzDSgr1t9wQzxPjYK5OwA+QOy0Q1mdTE6W3NLPYkAOqyVZ?=
 =?us-ascii?Q?iK2mTfJekP46yZFFTkjmmXWdTi3Mu3MgsUttOFkqt8bZciS3QlPJCOeSfM4G?=
 =?us-ascii?Q?gCpjeHlco1kATnyaITyoKWXJbmQKvDSJQDgmdAP+gM/XNXPYniCKkJQuoMtS?=
 =?us-ascii?Q?SEdVrlMHASpNsXepy4CLdSjkpJBgmKbSJITJUPBxXVIjZHKKP8DCHIr6w9cY?=
 =?us-ascii?Q?R26+uslSp7huwmMdLoQZRfXBmuzcDIF5kZ4ilRcfSp6HP8CXHSZCkwLkTzqC?=
 =?us-ascii?Q?zY13hfBp6qp54wsE7Y+t3BS9FNDZZWvzB2dwLmgOB1ExwY1mxPhhN8GMjF5d?=
 =?us-ascii?Q?3AasQDLzePHKK5+Oi3h/oNZ2CARPUdTB4pdQrmL56qobLB+nzJ1pSuHsxfjK?=
 =?us-ascii?Q?jwOZpiaSM1gbqbkEdXI/rgMa4s+eYYkudO6M?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?78ICSalKGsZjrnC53+DZLsDhskoYRRDm9Is3EmnODiZwsn5lT8loy0gsdNsM?=
 =?us-ascii?Q?LOA/fZclug6Ig+pKEqKUbYsJK83h26IWy8xA8TTUvPDWkCZEtCGGJJQo2Mpa?=
 =?us-ascii?Q?0w+TgVkImhxo0rdtsjOKRfnukAA8FPfcBas0ZnMDtdtjUieexz/BL1euxxPL?=
 =?us-ascii?Q?gxxWgdvfuKi0MPmKiCVGixi2KYSYUsUwzwmZdceM7WMdYLGNd7iQJ6JLLZcf?=
 =?us-ascii?Q?wJDaaOULrDPbL78DIsCY/QTFIc/F4vKAyDcZGBQQThc9sQLT8oRAwkOB7JHs?=
 =?us-ascii?Q?RE5OYeIijNZ18yWoKtAwWD3VqpOXHapZBM0Kl3E6uIlKk0xqmhGB7wSYGPPF?=
 =?us-ascii?Q?KGv5O9XwUk7XXtfsXGH8R07mSB5MQQkCD3+fjaUhUDUmYYcwyc4sT+rCXbFE?=
 =?us-ascii?Q?g2FUhcqMM4Ssld1rNTVRb7rGQ80xsfXbOhCrkutjRcT+lB8unY+yatNbW3hb?=
 =?us-ascii?Q?YcbhmE07BIiJT7tHoPLb1KgB/9OjpfrkrXaGdl7BAF6wm5pajuasjJIAP/JR?=
 =?us-ascii?Q?3O9aLNAtbtdU6EoDICBK0pgZsF5+fGwIYx2KELWECyjvDXRQE1Vz6FPDPgEL?=
 =?us-ascii?Q?Eye6vh2I7h/llCDfNCyyZRM8CmG612C2ZMydD9mpCvg9Cuw9C4fTqo3T17Xe?=
 =?us-ascii?Q?4pZGp0obkP5qdBEBWm9LL3jfiStWe6pa4DWu/uTpZj0Fu7QNbvZdIx4YN3JB?=
 =?us-ascii?Q?++mlMpfg843TQJhhJxYZNgsJzw53f+1VtE+HOEarMkcjCtxm/jvYtVeh+/QS?=
 =?us-ascii?Q?A5TFGILzktZjRY3plPp2Qm1rFTU/I/VBDdLxfBq3mRp6T9rMObvsPE5HMcrc?=
 =?us-ascii?Q?Nlx/db6Rpa4YUGMnilPqgljGUHRFvay4Xf7NHUbcrFZcOOaERPY53pdAo4PM?=
 =?us-ascii?Q?bWS/BKGK777gSNBYYOs60G9mA8wjh5o0BfXJ141ZQUAwAW6+Zjtk5f+a4Opp?=
 =?us-ascii?Q?QGvbhUyDs8Z9NzbPO6FuFlOhPEiW5utYxo8FdQdVp0UVitsr3fjZVTucW27V?=
 =?us-ascii?Q?uA5zpAzheysaEndaua+7E7nnZGYSz88x3Jxql7iqELulJbwlP0/KY7IpH7nO?=
 =?us-ascii?Q?LUR+33sOSeaIr/KSkGOvRlYOs9xtUmb6+Q604QbxjndOIpKdSirvdslEtycU?=
 =?us-ascii?Q?O7moPEKA2fxYtswkO+t3O3WZzG2+0RS9lx2MBI32T4PrJxV2m8oTm8v1B/B+?=
 =?us-ascii?Q?1uTMJdUIiok7MhL7CUf0vj7mLBEFkKnnYAAcKvZuVwVZVDA2rzqNZ0yVrJvq?=
 =?us-ascii?Q?RmkxCb0oJyfdMTlqT3a10O2mGgZvt0r9WYK5U5PB0AU31UvJMzlPH3tQMjNf?=
 =?us-ascii?Q?13QvlCWr0XdtyLcTrh7BR3Hf2b4766Jh14r4vdMWHZh8JMSUG5SKs7i2G7rD?=
 =?us-ascii?Q?mdb/GgQ8UmmlLN8whr87916s92xxze5XIJQBJtnEWW2ya/YpSY6r3gprBcbo?=
 =?us-ascii?Q?O6Dt8jeV0Am0AuJapH0C32AXJCv6yP7mIzxV7IcW//SqZ9GadV0tRVt8eSSn?=
 =?us-ascii?Q?aB6/KtmgEaH1q97phUXzU5nwgkealNYYGnG0zx+Qndf0Hxa0ZR5USlZ4tfcT?=
 =?us-ascii?Q?AyP+L9Pf0mnAGNfEskjAyTm1LUWQgsXocm1k1HoA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1976744c-c58d-4488-8c71-08de17d58be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 16:58:27.5249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: btsgH1uCD2kOjseNVN+VtT0Cj2jkcnLEoJVWm7KahhoRoUSqgdLXCYEJIBD7Yd1J7tx9iNF53Du78DcdIo6QLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8261
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Monday, October 27, 2025 7:10 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Syrjala,=
 Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2 2/4] drm/i915/xe3p_lpd: Add FBC support for FP16 forma=
ts
>=20
> Add supported FP16 formats for FBC. FBC can be enabled with
> FP16 formats only when plane pixel normalizer block is enabled.
> The follow up patches will handle the pixel normalizer block configuratio=
n.
>=20
> v2: changes related to comments to use better tracking of pixel
>     normalizer

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 6881, 69863, 68904
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 83dcf62e4ebe..c831bd883395 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1096,6 +1096,8 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(cons=
t
> struct intel_plane_state *p
>  	case DRM_FORMAT_XBGR16161616:
>  	case DRM_FORMAT_ARGB16161616:
>  	case DRM_FORMAT_ABGR16161616:
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
>  		return true;
>  	default:
>  		return false;
> --
> 2.43.0

