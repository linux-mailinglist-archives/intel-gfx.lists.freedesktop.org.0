Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4916599A041
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 11:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DDD10EA91;
	Fri, 11 Oct 2024 09:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k0BM08Pp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C343310EA91;
 Fri, 11 Oct 2024 09:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728639496; x=1760175496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=M4UlpFONLN+FDo0oLnKY2m1mh8knUROnyDA2tKgEEP8=;
 b=k0BM08PpvFibrxqngewblVI+ZXEDgPR6ItjuZnr0P83fBjriz95PeVVl
 Jvc2NI9T3hRsxk14UpFRwhRmNEsAKuRpzXKJKnaSU2hbkSa9GH5a78u41
 gyRwnyB4n+SsUXnaJZZtbMqWef1mypUJ7dGnLW28oOcHAvy2owDx+p3R1
 12sfulIe2AeXqcEV7kd1x6npNaxQ3a8llleNJAQPQS49hxh07GPBJl++Y
 7f+mXplmLEvxcRW89Ec4yTv5QbrsgdWbi1+WwQDcFLVxpigLXQ4MVZYzS
 HcsaJzvTI811XTvQghNrG05bBoucmPeXufcW4NnygInYmF8jg+1rLihGY A==;
X-CSE-ConnectionGUID: HVVeZc2YRn2J/v/dPlhD3A==
X-CSE-MsgGUID: kNrPrkFvR4+NqM0o+xCCaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="27842699"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="27842699"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 02:38:15 -0700
X-CSE-ConnectionGUID: 22WLKGX+TKme2naNQsBEDQ==
X-CSE-MsgGUID: 2g3+4kiJRkK0gUEsw5Pljw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77681429"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 02:38:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 02:38:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 02:38:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 02:38:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TQm5KiAGa+WHSj7RrxGrfFNbP3vFKHh7mDSZ+OGqN6yQjdQT7UcR5SXCGc3hvMx6MTOO3/MmOcHGUng9rfikl2f4003gfFtN3yt9SV+RZOYaJoSGF7jQ06G9mLMZlR5wd4/SJQfH5Hw+g94oFsAzQvdpW9AdkjKAuC5Ou3GuMymd2mg6hn780sCT6V8r+gdwWRtF3QiFB5mwjLwHaHieuJXu6xqhyhLl6PK/+7saiAZ4cIjfXcKm/PkAXntSR4NwP7AfL+LKe/HiucOUqStrye+kpNDkScaIf0VoBXEIuTJWAHVNKC2vzotcd1kVt/NF24DMttSkGsDCgvCfnBxfKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M4UlpFONLN+FDo0oLnKY2m1mh8knUROnyDA2tKgEEP8=;
 b=HJLrFpGURr2d697nxjPBTpStuIwss3mJ4456QNFUlUQuO6/8b7jZD+1U38HGTFqqtqgY0RWuEh1K0X+f7M5NVXtMLEsf4MvRpjbaafTIRZmfLj1GzpdBz4ESHloBgAeKZQ4426YtIGOIBejP1Fow5DwCYY7EllIB+LMVAYOobWLqKJpKk3xOVYTePCpofR4cCI0ULVkHgcjgV94QuiHadTXoFxHyPGQzB+v4AJeqskNg/l70fYmKbSMnfrFZMZcomO3+7rnmGwY8M4LwY4imTj1fsvbhZ9BGt4vLY7NmPpARtj1gjJiKwiUIQ+zWsLX97O1CjGhzYvnHrlenaruvKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 09:38:11 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 09:38:11 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 02/12] drm/xe: Remove double pageflip
Thread-Topic: [PATCH v3 02/12] drm/xe: Remove double pageflip
Thread-Index: AQHbFatFVCyBgSIxxEyUgcUtp9Bbk7KBVzoA
Date: Fri, 11 Oct 2024 09:38:11 +0000
Message-ID: <dfc15e34b40982fa69b166e2bb2eee9fd3a2c2b7.camel@intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-3-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20241003154421.33805-3-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB6348:EE_
x-ms-office365-filtering-correlation-id: eeed8b33-eea0-441f-0b36-08dce9d86c45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?M1Y1SFY2TFJNV1dscG5GZHRHRHZrajNPK1poaUgvT3E2bDBpRU9RcWJxbGdv?=
 =?utf-8?B?ODRvUnQzVit5anRVNXR2RXBkVlpWRFJpengweGRIbXlKTmNDS0tvK1g3Y1NL?=
 =?utf-8?B?bDFiRzZINnFZcnA3eGZHMGUrU0ZjR1RITjhONHZTQk5XdDBYN0hzNUs3VFVh?=
 =?utf-8?B?WWFubWQ5dHZzR1c4N2R1bllMbUtRdEpuM29tRVZ3a2NxT1c4ZnJqeDVxR2RG?=
 =?utf-8?B?T25hVlNXR1R3YXpSZTc1N0NyZTBLQlhOYmc0M0QrQzBta1l5Qy9HbjU2elc5?=
 =?utf-8?B?VkFZZ2hZVGhsci8zNElzSkx1U1hpUFVHSnhvTld2S3F4NFVnVlE3OVQ3NnJO?=
 =?utf-8?B?U1E5cEpOUVBnWU10Tm5WT2FQbUJNK05MQk5FbjROM1B6bCs1Z1RZb2JnU2Z0?=
 =?utf-8?B?NTd5R0RiZlc5NUgyNzRLRGs5VjdiSFhEVTIvOFlyU2MyUGlEcEFXVWM4Nmxl?=
 =?utf-8?B?NjNyWDhkVnRTNnQ4Tm8reENOUk8rYzE3OTZEV0lmYytrWnBHK09EckNCUERL?=
 =?utf-8?B?S0pjMFRmRTNJZDA0bEx5eUw5SGFJaHRXbXAzMEN1ZjkvL3Y5RHNqZ1BWMFVt?=
 =?utf-8?B?dmxNeDRSTExqZmYwUU9QUlBRcDFjWnNEdFQ0QU1DazR3QWwvU1EwWFZUVWs3?=
 =?utf-8?B?MGxPdVVkN1RPZzJPNUNuenBhTHpYcFQzUW5qNkVSNmxyTVJTWHRVUGtLS1JI?=
 =?utf-8?B?NVRmZEVuWnpjbWhNbzdFUUMvTHRaSGdTanA4eDVvTzN1U0xCUC9KbWZDcUFq?=
 =?utf-8?B?Qlh1LzBQNSsxblNLS2FrdGFxMm1qTXpJZHFINXBleG4vRWFhZkkreWlxckRG?=
 =?utf-8?B?c2RJKzVmdlZ4RW9rTzJHU1VKV0xTUjFwNnpXeXFoM0ZjSXhrekhaWVhiMko1?=
 =?utf-8?B?WkJRRHVVUFp3elE2L0lHdSttc240RTVqcDlOR0ZCTmkyOGRML1NJNmoxVHBF?=
 =?utf-8?B?Zks5eWJRbmdDZThFekE2OFN0Z1E2V013QkM5blYySmhGcWpyMlV6ekV0Vi9Q?=
 =?utf-8?B?aUhIWmEyQnJxdDhETHZjSU8reGxLRHRsT0IxaWphUHcza0dSTVpjb1hFUkxa?=
 =?utf-8?B?Z1VRWDVmUHlTdFRmd2dKOCtKRU1qVS9rYnRveTlUNlJzazdBUzFaZmIraGhv?=
 =?utf-8?B?OHJhZG8vL0VaUktkdXlSQTEvY3JEMElDNFZ3b0dxaUNodG9VSlk0K25ucWY1?=
 =?utf-8?B?dzlQOGFjeXNsWEFHVUxNSElTL0cyYkljMTU3SHFrUDJtZzUzczNUSUpSMVdQ?=
 =?utf-8?B?NkVaZEhZY1ZTSEJTSXJYSlgrUHR3NGh4ZmpLOEtwM0h2VC9aZ2FJbDQwU3dJ?=
 =?utf-8?B?aHdOYmJyZERSdkhYNE1FTDFhTlU3aFJtNE9Lc1hwbXJteU5neElMRUQxb0x0?=
 =?utf-8?B?S0dQeEpkN2d3VE9EKzBSeExaS09tYjI0TVhid0N1RWtDbFhoUmNhbVd6TFZV?=
 =?utf-8?B?VEFVMERvZXhwb1FpQXB3OWlHSERPZTYrTDdTWnlYUklucWsxcHBFYlAvWG50?=
 =?utf-8?B?clVFQWg3MXJFWWluWnRvYXhsSlZWMmh6ZEw4d0h2ZVVzU0txSjAvTG9hNDdP?=
 =?utf-8?B?YXB3OC9BMCt4SHEzYk4zSzgvbXhXbWhHRVZjNHd1L2owMUlzNStzeFowZkMr?=
 =?utf-8?B?RmQyeDBkcHFHWmg2dGxaYWYwNzhpL3lwWGVBN1RZSDJtQjllMUsrMXJOQWZj?=
 =?utf-8?B?YllidWpUd2NWVXhPb2UxR1ZRMkdTR1p5dUpVTVd0cmdmWitNRmg0alNBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVlicnVRakdvRW14UHVEY0tmZ2NLdklLY1laUHRQc285MkVUYjhQR0R2QXVM?=
 =?utf-8?B?cGZaQmUxYnpydFVFMDRTL0dMMHRNc1hqUU92d0hteUZJY2Q0bHRYSDdTc1hv?=
 =?utf-8?B?NU5wcVR3M2ZBaXNhSzlac2lrR3R6UjlpaHh5eFI5QkhrNlk1K1Z2VXE2dy9m?=
 =?utf-8?B?S3pXcEtVdCtxejZZUTc3VnVPTUtlNGJoWnlXSzV0akRLVW4yWW1TMkVjaUNN?=
 =?utf-8?B?dTNZQ1YySkJiQkJtTWRXQldWY3BFbWVxZEZOS2FwSm1aN0lrd0dMRkxsYng0?=
 =?utf-8?B?U2NIWVp3aTRyWnlmdEkzNXFWSXRhYkpOTjRQMk03TVBrblltUm13WXhVa0hZ?=
 =?utf-8?B?VjR0UGFQajF3NTEyVld6eXhVOFVFbHZnUktSK2psckw3U0ZnMmo2OW1OQlFD?=
 =?utf-8?B?MmlvTVIvR2ZOajkzNGtqd1Qwc0xjOU44aEVuL0VUOFZLdmhGUys4bWNzUjFS?=
 =?utf-8?B?dHNDTnBOZ1F4RWxSMmVlUHY1bzNEVzJoY1kwbjNzejVSNUx2TTFXNWNHNGYx?=
 =?utf-8?B?d1lPTGhVNkhRL2hIL3pselEwNFIyWm9RYldmc2J3WDlOWThPamh0RGVKcm1p?=
 =?utf-8?B?VS9vQkVwVEthSm5lQnNROUViY0p3L05QYzZSTi9aNzlPZnhnY3pyUDd6dTRF?=
 =?utf-8?B?d2o1VnFjcFJZaEQyWjFaOGVSRzNCRnd5Mi9lVld2MThDTXFiQm5tczhmTTlu?=
 =?utf-8?B?TlhwSEs3ZzNtOExCRm0rSHczMzhZT3pOem5RSzIxbzg4UEhYSCtnL3pBanFw?=
 =?utf-8?B?WHZPSTZ1YVZEcXRBSVVBelo0akUvMThJNkNSaWVyVkxwblNBaWluZDhWL2V2?=
 =?utf-8?B?RzJtbzl2V3dITFlqVHVYdktoQWlzc0Fwc01pSVdZVEI3SElzZk1SLzNPcWNP?=
 =?utf-8?B?UzRrc1J0eXhLRkhJZDJ6VWdaK3NIZ1BDcjdhUWxRR2ZPRzJqcElZaUdHbll5?=
 =?utf-8?B?SklqRnh1czZyLytZWi9RU1JXK0EvYzNlZk0vQW5WQ2tNUERMZzlid1lsQ3pK?=
 =?utf-8?B?UVFiUjdKZEcxWkJkcjZFM3FzaERublg1UjA0c1ZtQXJqV2NWdVBaZVBxblJO?=
 =?utf-8?B?RWJuVzJXWkdDQzRIT2pZYlY0a3g0Q2dEVjJCQ0xGZmlPWFdvZHd5eFVlekps?=
 =?utf-8?B?Rk1vT2gwdjRJQlpRd2FtQnlOa29vbUthdFBnaVIyTUxlbzJwNWdTQ01ZTk1W?=
 =?utf-8?B?TVNqZDhLOVRUWnB3UkFxL1lTK2NFU2pPSTVvNWtweWtJTUtJQ0Y3SEFIRGZJ?=
 =?utf-8?B?bjkra0Y2V0VCVDBSa2RJSlo3WDE5WlAvVXVqelFCbEl3Y2JLMklCNG42eHdQ?=
 =?utf-8?B?ZWNlNk9vUE1MWEthSnlmZHYrcEtNajZXdlQzMlk5UCtaUFlmVXAvS2srVmNV?=
 =?utf-8?B?dTluV1pTdDFYY0U0VDJqTzlNcTNOcW1vSDVvY3JLcUdYYUd3SnNTekNkZmpN?=
 =?utf-8?B?UnVXVVROOW1SVWlpOFl5YVAxN2xGY1dzb1hpVGd4WDlIdE9GRm9QQkN4Zk1n?=
 =?utf-8?B?YlN3OHltbzN6LzVYRHBPYkFxTklURUE4U2tyU3kxM1daZGo0ZURPMFJ5OU4v?=
 =?utf-8?B?WkVCR1piYmRFZUlwTExtcllIS3NyVzFpRzlZaVVOM0RMSkd6WVZRRHIyeTNT?=
 =?utf-8?B?UnRFeWJLMTMvbGlDM1FRMW1yaDRveWNPMnhPT3BQSmt0U25HeVdnS3VHTXQ0?=
 =?utf-8?B?eVl1VUV2RCs5b3RDN2YxUklQT1A3TndSaHFmbVVXdnp1bExzRFhwTE9Zbmla?=
 =?utf-8?B?QWtudDlOazBMd3VuZ2FSSXovc0JObTV2a1Z3NXdJNS9zSU5EZjRPTWhJaStq?=
 =?utf-8?B?NTgxSWdMay9jS3lvNDNvTWJjSTIxRitSeGZkaEROTUZud3hSaE1rSGcycVds?=
 =?utf-8?B?Z25uRUxnb1QrM3ZBMHdDSGtmdXBEalBHZzBNVk4rT0xyZ0ZIMjhDTk1hRGZP?=
 =?utf-8?B?NFR2elMybmNqT3JLM1NyU2EwM2N5clo3NERZS3FNYlZGZVVFRnRFTVM1cHg4?=
 =?utf-8?B?aHdaUzdXTWIvamswZjFZbWNERkxGTDM1NUttNmtnYXBBSFBzZDVRbTlxTUc0?=
 =?utf-8?B?NUV5Y2RGeGxObVNyVjE1TURpS010Y1VKUG9NNUpybkR3UmFsUFZBMXFvNzhE?=
 =?utf-8?B?OExqYkxWVU5mMnFqQnlUWGVRaWRhdGxFMHNLTHNlaW54NGhxbE1MQnRnNDB3?=
 =?utf-8?Q?HW4ZvxduoU0TgD7DkSTCFc4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <513F33B22CDD054D899F258150B4F9A5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeed8b33-eea0-441f-0b36-08dce9d86c45
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 09:38:11.8049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R4dRzYl17FvUKLnuHRg0LuNhufhFfW/h0+2FCDajj9hxl5djzU97CNWlc9hWiutj05M6T7And/TylBlG4CxxkXcDAq7CITdy7BszTvDYvUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6348
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

T24gVGh1LCAyMDI0LTEwLTAzIGF0IDE3OjQ0ICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToNCj4gVGhpcyBpcyBhbHJlYWR5IGhhbmRsZWQgYmVsb3cgYnkgZml4dXBfaW5pdGlhbF9wbGFu
ZV9jb25maWcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBGaXhlczogYTgxNTM2Mjc1MjBhICgiZHJt
L2k5MTU6IFRyeSB0byByZWxvY2F0ZSB0aGUgQklPUyBmYiB0byB0aGUgc3RhcnQgb2YgZ2d0dCIp
DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMg
fCA5IC0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGRlbGV0aW9ucygtKQ0KDQpJIGhh
ZCB0aGUgc2FtZSBjaGFuZ2UgYXMgcGFydCBvZiBzb21lIG90aGVyIEJNRyBidWcgYW5hbHlzaXMu
IEJ1dCB3YXMgbmV2ZXIgbWVyZ2VkIHVwc3RyZWFtIQ0KKGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC81OTAzODcvP3Nlcmllcz0xMzI2NDkmcmV2PTIpDQoNCkFueXdheSwg
SSB0aGluayB0aGlzIGNoYW5nZSBhcyBwYXJ0IG9mIHRoaXMgc2VyaWVzIGNvdWxkIGdvIGluc3Rl
YWQuDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4NCg0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9k
aXNwbGF5L3hlX3BsYW5lX2luaXRpYWwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5
L3hlX3BsYW5lX2luaXRpYWwuYw0KPiBpbmRleCBjZjEzOTkyMWU3ODE3Li4xZjUxMjg5MjdjMDdj
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9wbGFuZV9pbml0
aWFsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlh
bC5jDQo+IEBAIC0xOTcsOCArMTk3LDYgQEAgaW50ZWxfZmluZF9pbml0aWFsX3BsYW5lX29iaihz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB0b19pbnRlbF9wbGFuZShjcnRjLT5iYXNlLnByaW1hcnkpOw0KPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSA9DQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmUtPmJhc2Uuc3RhdGUp
Ow0KPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9
DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0b19pbnRlbF9jcnRjX3N0YXRlKGNy
dGMtPmJhc2Uuc3RhdGUpOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9mcmFtZWJ1ZmZl
ciAqZmI7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsNCj4gwqANCj4g
QEAgLTI0NSwxMyArMjQzLDYgQEAgaW50ZWxfZmluZF9pbml0aWFsX3BsYW5lX29iaihzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoHBsYW5lX2NvbmZpZy0+
dm1hID0gdm1hOw0KPiDCoA0KPiAtwqDCoMKgwqDCoMKgwqAvKg0KPiAtwqDCoMKgwqDCoMKgwqAg
KiBGbGlwIHRvIHRoZSBuZXdseSBjcmVhdGVkIG1hcHBpbmcgQVNBUCwgc28gd2UgY2FuIHJlLXVz
ZSB0aGUNCj4gLcKgwqDCoMKgwqDCoMKgICogZmlyc3QgcGFydCBvZiBHR1RUIGZvciBXT1BDTSwg
cHJldmVudCBmbGlja2VyaW5nLCBhbmQgcHJldmVudA0KPiAtwqDCoMKgwqDCoMKgwqAgKiB0aGUg
bG9va3VwIG9mIHN5c21lbSBzY3JhdGNoIHBhZ2VzLg0KPiAtwqDCoMKgwqDCoMKgwqAgKi8NCj4g
LcKgwqDCoMKgwqDCoMKgcGxhbmUtPmNoZWNrX3BsYW5lKGNydGNfc3RhdGUsIHBsYW5lX3N0YXRl
KTsNCj4gLcKgwqDCoMKgwqDCoMKgcGxhbmUtPmFzeW5jX2ZsaXAocGxhbmUsIGNydGNfc3RhdGUs
IHBsYW5lX3N0YXRlLCB0cnVlKTsNCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gwqANCj4g
wqBub2ZiOg0KDQo=
