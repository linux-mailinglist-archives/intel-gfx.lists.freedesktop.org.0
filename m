Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eZluGjmuFGqWPQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:16:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07C45CE3EF
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE26510E226;
	Mon, 25 May 2026 20:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmbtYw+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5831410E15E;
 Mon, 25 May 2026 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779740213; x=1811276213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bo5gRs2wSCsIEuiSDZai0n3BXZtt5TSPTYXdZ0Uzenc=;
 b=GmbtYw+7tXqRRpKw9qaH+C7iAUhB37lBEBVTdFxqAtenGHTZItt3yWY5
 tOBccUwc3Rmj/Xu0vNHAvp86ymwxmWu/UuzCg0/G+Pf7X4aR+XLYN65+M
 tXIxpbtXbRqjNnNRlnGnbTR0zzEoxZdzNzMV/ETjj1VGAdC4UOl6rjus2
 RUbwExkYBNdw80CAgqiO1J3q3n1u/3a4Bg+OcEteIK2Iqmtz4rpgYhjbO
 oauhHEKoBNZB+jeLs/qHwBEsZ00dnTSDyhwfISB2jpJIBwJ06xRKxtPiJ
 RfZoTte2lMcK9hEN1rMpRIGXv3dW+nvl1dINebp4VaMZAIz4DLL7mch34 A==;
X-CSE-ConnectionGUID: ReXp/DbbS4OzgQAfESxeNw==
X-CSE-MsgGUID: Ji6sSstvS3yNG+KrC7DRdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="92029005"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="92029005"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:16:53 -0700
X-CSE-ConnectionGUID: lJOPRicQRlaixD8xnRcF2g==
X-CSE-MsgGUID: z5euq3YfTgu40g+W8RGqSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="245726839"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:16:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:16:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:16:52 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:16:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c7RKsfLJVq3PoNrvdbMInNZ3tilZRzNFOct92R5wtE4cbcY+c3WGWeRiUKLDmNyl86Z68yD4ONFFqSqtAZwvu8OOlB350ctVsCreoYqNwUVRrjaqIRqNaWkB9VFqI3Xi7A39AW0yps9NQU91wuy3LKfpTs73DIraOEFDQiktvVWEcjui0cWmomwjfN5RhwgDXdBWaNN7+Ju8ilJJ6PIGanI93lSd1PrGGwTsSwwKMi0czdobUbBpIE1x++MUrhIu9gpkA6g6rCs1F9vT2NZLYobaoU4vc5IS5d0BUJxiZmEc77VKTa4ryIbLOosyEkQ4Rts3qEiIiBVzpB5JADAyaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bo5gRs2wSCsIEuiSDZai0n3BXZtt5TSPTYXdZ0Uzenc=;
 b=WSuI168SnELtQ6Fc+RNU0CwLgcUIlPiz7aYwdOHCgllmsITStP+htfdCI1PNlzJ7a32L+aRJ43no/so0EWfqngMMLwWRd6ZM6qzmZJIASm8mWe9kcokX7CHLBzoKWFmRb+6Qq2G2CrIKFCuGWtGEg7yuIiQKizw1hDWBWOAZQnLB9siJdNaXEWaiDfV5F/VokmUjBMqLYwIhha0H14d0Vy63etF/PMKUuZlOhpAUOhBkQzDbavFEe4CRWdsyNpv/VbQ+ZiyUeJTjgPMtph4RiDysIWhTganOUEXj7FomKwNQ/OXMNKcAhBjHjNRTyRVgpnXsUu+cDQiLp5mVy6G3JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM3PPFED6629EA1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 20:16:50 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:16:50 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 01/10] drm/i915/bw: Fix num_planes handling on TGL+
Thread-Topic: [PATCH 01/10] drm/i915/bw: Fix num_planes handling on TGL+
Thread-Index: AQHc6iZgmh5v+nCzeEGgJ/+toYV5+rYfMocA
Date: Mon, 25 May 2026 20:16:50 +0000
Message-ID: <eec8485ac0359e59f67d79eb1ed37cb9777ce774.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM3PPFED6629EA1:EE_
x-ms-office365-filtering-correlation-id: 98962578-dfe8-4478-1ca7-08deba9a8de6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|4143699003|11063799006|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: nYU7ocWG9UtOnOwZbFr1gFPRUjYLd2EhoS9X2fkMTI/eSDFDhCP8FzNsVDkING0IbpQoVuFqRmOWpfr3hA3Xi1/je8Cb7Qlnus6llJd1sV7g6TqXBzuaO9i5o7BwfklqnhKn46oq0ph6lt10xyV7Icd9oaYiFZmZgseQTTL7kHN8t5BGixpMFBh4i4cH7G+BKUc48l6OGWdYd3uPCHjgDSWWU+MV9XK5+wnkp6iQ9cv/bp2ru5TGrUIZD6of1W9cukmAvLA9pFwvyKNlq+vLNFL3Q88RKBb5N0LvGkmsCYFhuNIg2XeQAarUyIuNhrP44gxB9d/7rmVieYIIqyv5xJLECdlLGV11w+AvaHSC+DGjRL7q1hycufvCwKY7j6PubqowX4c9CHgoXPvtu7+nLJRHPzuCqIYtcEjjkmTa3J7Qza5XutRyiK9Lr85BUR1Mwfgn9KUTl7DMc5i0RRfxwc9Ij43jdy/BeFY68ugogvOvvz4Vkf1PRcJ8DfkhYmfYG6VODYm3ZvT5aMrxOCIlD38WY8jg4gfs/f6VW0HSQymzCmqnc4yRn2Y3TZbyKS5ltplBoWKa9S4n8kiO80JnTyO6QBhYLTPYSY5r4/wgj0gRLh4lyi0BSukTcpBriZNHI5uEluxYCLqbjjNX/NzOm7c0BSZ5bbDLpsvDnGWSpg1PfwY1e9k5FnOd564pWO1RNeHpWZ6IBxz3uoaSVvnEQMYh8dWWoXa1nsKNvpXT9UIuS+FsI8QgRZb1JcdT9SHb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(4143699003)(11063799006)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGNjOFVicWRsTldITXA2VXAyQjYyQWE1RGRFVVZVTEpkN1MvZEtCL21vdjNO?=
 =?utf-8?B?TXg1YWxxNnpoL3FaYjg2UkdWZjBveFdGcGJZdGFtRlVNVHpEaXFuYWhwQ1pl?=
 =?utf-8?B?YzFTRWtkUjRUekdrWFpGenE1dGdyTUVEcG5DN0dUbURqamhSRnlvZjdQdXoy?=
 =?utf-8?B?MEFaaU83SnFtcHZpRkpCdTJWaU9SNXNiUkwxYml0N3VhUDZwUXpGWDl1dW9U?=
 =?utf-8?B?R20xc2k1VzRTUFgyS0pOMzhXS3VZT2pVTXRmTit3UlNVR2FiK2JWWlBtVHNq?=
 =?utf-8?B?dlRQRWlwS3ZlZlhacVBjb0FrUUhzaFJXL3YzNVp2MEcyRkhrZmw1a3RCd2o4?=
 =?utf-8?B?TlMzbGp3a2JMVVpLaHhMczFsdWV2NmloQkhYeUtmRUo3YVlVQ1Vwb1owUXB4?=
 =?utf-8?B?eFZoek1TL015ekFJWHJaUndpVnU0NWFVQnREOTZMYzJBODNocnl4ZkQ5MWFR?=
 =?utf-8?B?VGFyanlwMXh6NTF6SVRzSHZlZld1aXIyV0JESk40LzlNZ2VJb01oK1hSblBG?=
 =?utf-8?B?WFdTQ1owL0tHdUJnYVNYbmlxOUpBNkE3Mk5oVlNNWWFBQkk3ZUM4dkg5T2Zu?=
 =?utf-8?B?OU8wQzFCRGdMOHN3aEU0akNzZHgzVmozaG5OeDJLL1JmRVlQQ3BMQTQ4eGdq?=
 =?utf-8?B?dUY0ZVpYRUpvcERPWFNrVXRObUVFSkc1TlhaRHdYbS91dlhCRi9OMXNjR1Ra?=
 =?utf-8?B?a1hIbGFJRjhpM1REWGo2UERVNlRUU3JYSys0VVJreDdiN3JyWmErK2M2VkNm?=
 =?utf-8?B?S3pXakwvaFY2eWx4WkxSZ3EzNDV5bk9aQU5WNFQ4NlE1RGlEZ2I5Y04yOVYz?=
 =?utf-8?B?Yit1VDZVcFdUaHhLU016NjJNTnFHWHNSME43MHdPQnVINVlSVm9lcE9EdE5q?=
 =?utf-8?B?c1dUNUIvQUNHeUFRcnlwRnF5UkZ1MTRmR1JWVXdpVlZwak16YWFTMmt4dE1B?=
 =?utf-8?B?bDcvc1d2R0hKY3liUUJ4T0w4aXRkcUx2UTFlbzlSNGFJbVFmb0tSd2R2TEZu?=
 =?utf-8?B?S2FZdEZLRm5FRGRibnFCa0czRGVRVnk5Z0FtYS9nOXdmUWxabGU4cmtOT1g4?=
 =?utf-8?B?RzVEdWhMUExpSDVmNFlPejNMcndsTzJHbDF3RGlvSVlnektFMEhRcmEvdDFk?=
 =?utf-8?B?aDhTRVliUkJidEpuRGpBbEVXZ2lFYkh1Z1dPK01HbFNDT0lRVW9KRFRHRjVy?=
 =?utf-8?B?bm5JUEo1MUMvb29vVDI4TGJkd29IcExSWlJtbU1pMG01ekREZmV4Z1kxNnVJ?=
 =?utf-8?B?Z1YzbklOUS9JNGtNaVgzWHdabktibGVTOE5QRWxybTZSVzRjVUVRYjhqa21T?=
 =?utf-8?B?SHZlRWg4Y1lZN0R5VmtIY1ByRHNyTVpTcHNwRzhESFc2a1ZSUjBPMERVU0dG?=
 =?utf-8?B?Q3RycUg5K0ZZRzhGWjJCTlpkR3JCdWphWmVBRWNRZW9nL2xLY0FKOFgzdEdT?=
 =?utf-8?B?MTNmOEd6c0UwcUpKT0VEODZIQzR2Z1gvcEYwQ1podGdUOGNNeVZ2TThBZllC?=
 =?utf-8?B?amtwdXRqTk04ektEMmpSQXV6aFpvVm1OOWNGbEVIRFBFRG00RkM5M2JySjF6?=
 =?utf-8?B?d0tURm1FNDVTNnVtUUNkZktHY2thNnkrR0JjT3F2c3FJYktUWFFYZGJxZUMy?=
 =?utf-8?B?VGI3c05yOVVXcUJ3Zkt4ZFJpQzVJSENLMGZkOFJjeU45OERHMHpuNmF4S0dJ?=
 =?utf-8?B?UVhGUUhBOEVDWVFrZHhvSEUvZmRsZldJWHYwNExYZS9iR21BY0xBTkcwSkpZ?=
 =?utf-8?B?U2dlTml2Skp3eE1UUHdidkM2d1pjdE9uN0RUSE02RXlLakR3ZVdpOWUrY1lP?=
 =?utf-8?B?SWVEZllydlFuYjBEY3pVL0pyNWtjVE9sMGFzbU5NNldCeGZaejVTbG9uWGgw?=
 =?utf-8?B?bnE3cGhxWTBYMzErcURrVTVKUHRiTm1DRHJpTk5nNTJpcW5JaHJXUEsyRXM0?=
 =?utf-8?B?Vm1rbFdlMStGcW1UNmFLaGVhVEhtRjYvSCt1cGtXcTJMemJ5RmRFcEo0b1Ew?=
 =?utf-8?B?WC9COFhrcUs5YThub1dnTUFhVFU0cEhBUHI4cW94UW5hb2V6NlNOVzk2YlV6?=
 =?utf-8?B?R3krUXVkRWZJTHdYTC9OYWRLYzZyWkd6QWJ2MmZTMG5PZ0JIS1VNWlZSa1Rr?=
 =?utf-8?B?bFFDanRGQXduK3V2d2daeGJrM0htOGRoVk4rUXFXM3R4OHhBN2I0RXpvMFNa?=
 =?utf-8?B?TUdaODladmtjdkdSNk1pUkUwcThiWThkUHZhWUIyRzVuaVFjdldQZEl3a2Y0?=
 =?utf-8?B?OTBZdkx2UmlLYkM1S2IyeXFhdUJUYnZ0QkNxT3NRbHFrb3g1SjVhSW03SnRo?=
 =?utf-8?B?Skd5Q1V5N3Q2ZXdGbUhzeWh3ZTcxTWFXanZFVkhJdldDa1ppSjJMTmZ0Y0NI?=
 =?utf-8?Q?BFyH664HxCaGY2FsB8AssDRw8B8SaubgM4DeskF67P+fq?=
x-ms-exchange-antispam-messagedata-1: xc4v0P02Jow45jU+w8AoTyhnprqJfCqt6NY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2740E5F2E1D0784EA3F1341DD5439E3C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: S3Bgfbzs0Y8baAsZoCuTrVmQNMH/84mxLwbuvg581H3yuJ8BzyO0kDUlCffZPnZv3+u9T/vsi4XH6uYAQ2QpqbIlnPXoYoriD2P70VbaeG3GYCqWNAtHD+LPWhb8jDTIOphmPTOoTsP4ROaGoGr1az+IymkVBdZFM6mrQQO/6+a/Tjbd90Olk5Vyz+Um2zt301IAwRq90BG2noYBKE0krxUdng4juoJeYET4bMwrDHgfkeOljhGiiaN13LAiXVzHw7c3aIZ8AMjLzEGqf+2ycE099dACsJ8dyYf/5ByTBLkK3R3zDtomzQPdGRadYnOO+KZZSHgAR8dgV4E9EwJ1AA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98962578-dfe8-4478-1ca7-08deba9a8de6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:16:50.1387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KojrrlLyCanA3bSNmgzLx26+73rstZsR3k0kKQ+Dq3qMyOw0aUmjSgwS0PKklNUdCH/bNNlPHTDTRHGSO5V5CYRdqG5cDJ3qeHrRk0RX0zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFED6629EA1
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C07C45CE3EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIFRHTCsgYncgY29kZSBoYXMgYW4gb2ZmIGJ5IG9uZSBlcnJvciBvbiB0aGUgbnVt
X3BsYW5lcw0KPiBjYWxjdWxhdGlvbiwgYW5kIHRnbF9tYXhfYndfaW5kZXgoKSBpbmNvcnJlY3Rs
eSBidW1wcw0KPiB0aGUgbnVtX3BsYW5lcyB0byAxIGZyb20gMC4NCj4gDQo+IFRoYXQgYXBwcm9h
Y2ggbWFkZSBzZW5zZSBvbiBJQ0wgd2hlcmUgbnVtX3BsYW5lcyBpcyBtb3JlIG9yDQo+IGEgbGVz
cyBtaW5pbXVtIG51bWJlciBvZiBwbGFuZXMgdG8gY29uc2lkZXIgZm9yIHRoZSBncm91cCwNCj4g
YnV0IG9uIFRHTCsgbnVtX3BsYW5lcyByZWFsbHkgaXMgYSBtYXhpbXVtIG51bWJlciBvZiBwbGFu
ZXMsDQo+IHNvIHRoZXNlIGFkanVzdG1lbnRzIG5vIGxvbmdlciBtYWtlIGFueSBzZW5zZSB0aGVy
ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYyB8IDggKy0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jDQo+IGluZGV4IGQ3YjJiYzgwZjhlMy4uZDEwZWViZWMxOTZlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC02MzYsOCArNjM2LDcg
QEAgc3RhdGljIGludCB0Z2xfZ2V0X2J3X2luZm8oc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRp
c3BsYXksDQo+IMKgCQkJYmlfbmV4dCA9ICZkaXNwbGF5LT5idy5tYXhbaSArIDFdOw0KPiDCoA0K
PiDCoAkJCWlmIChjbHBjaGdyb3VwIDwgY2xwZXJjaGdyb3VwKQ0KPiAtCQkJCWJpX25leHQtPm51
bV9wbGFuZXMgPSAoaXBxZGVwdGggLQ0KPiBjbHBjaGdyb3VwKSAvDQo+IC0JCQkJCQnCoMKgwqDC
oMKgwqAgY2xwY2hncm91cCArDQo+IDE7DQo+ICsJCQkJYmlfbmV4dC0+bnVtX3BsYW5lcyA9IChp
cHFkZXB0aCAtDQo+IGNscGNoZ3JvdXApIC8gY2xwY2hncm91cDsNCj4gwqAJCQllbHNlDQo+IMKg
CQkJCWJpX25leHQtPm51bV9wbGFuZXMgPSAwOw0KPiDCoAkJfQ0KPiBAQCAtODAyLDExICs4MDEs
NiBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHRnbF9tYXhfYndfaW5kZXgoc3RydWN0DQo+IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgew0KPiDCoAlpbnQgaTsNCj4gwqANCj4gLQkvKg0KPiAt
CSAqIExldCdzIHJldHVybiBtYXggYncgZm9yIDAgcGxhbmVzDQo+IC0JICovDQo+IC0JbnVtX3Bs
YW5lcyA9IG1heCgxLCBudW1fcGxhbmVzKTsNCj4gLQ0KDQpOb3QgcmVsYXRlZCB0byB0aGlzIHBh
dGNoIC0gaW4gY29udGludWF0aW9uIHRvIGRpc3Vjc3Npb24gd2UgaGFkDQplYXJsaWVyLsKgDQoN
Ck5vdCBTdXJlIHdoYXQgaXMgdGhlIHJlYWwgcHVycG9zZSBvZiB0aGlzIGxvb3AuIElzbid0IHRo
aXMgbG9naWMgZXhwZWN0DQp0aGUgUUdWIHBvaW50cyBpbiBzb3J0ZWQgb3JkZXIuIEJ1dCBpbiBy
ZWFsaXR5IHRob3NlIG5vdCBpbiBhbnkgc29ydGVkDQpvcmRlciAobm90IHN1cmUgaWYgdGhlcmUg
YXJlIGFueSBzdWNoIHJlcXVpcmVtZW50cykgLSBoYXZlIHNlZW4gZmV3DQpzdWNoIHVuc29ydGVk
IHFndiBwb2ludHMgaW4gTVRMLCBMTkwgZXRjLiBCdXQgbW9zdCBvZiB0aGUgcmVjZW50IHNlZW4N
Cm9uZXMgYXJlIHNvcnRlZCB0aG91Z2guDQoNClNvIGlmIHRob3NlIGFyZSBub3QgZ3VhcmFudGVl
ZCB0byBzb3J0ZWQsIHdoYXQgaXMgdGhlIHBvaW50DQppbsKgc2VhcmNoaW5nIGluIGFueSBwYXJ0
aWN1bGFyIG9yZGVyPyBBcmVuJ3Qgd2Ugc3VwcG9zZWQgdG8gc2VsZWN0IHRoZQ0KYmVzdCBwZXJm
b3JtYW5jZSBhbmQgcG93ZXIgZWZmaWNpZW50IFFHViBwb2ludD8gSW4gdGhpcyBsb29wIHdlIHdp
bGwNCmVuZCB1cCBpbiBzZWxlY3RpbmcgdGhlIGZpcnN0IG1hdGNoaW5nIHBvaW50IHdoaWNoIG1p
Z2h0IG5vdCB0aGUNCiJiZXN0Ii4gQnV0IHdvcnN0IGlzLCBhcyB3ZSBhcmUgc2VlaW5nIG51bV9w
bGFuZXMgYXMgMCBpbiByZWNlbnQNCnBsYXRmb3JtcyBmb3IgYWxtb3N0IGFsbCB0aGUgYndfaW5m
byBwb2ludHMsIG1vc3Qgb2YgdGhlIHRpbWUgd2Ugd2lsbA0KZW5kIHVwIHNlbGVjdGluZyB0aGUg
aW5kZXggMCAtIHdoaWNoIGNvdWxkIGJlIGVpdGhlciB0aGUgYmVzdCBvbmUgb3INCnRoZSB3b3Jz
dCBvbmUuDQoNClRoYXRzIHRoZSByZWFzb24gSSB3YXMgdGhpbmtpbmcgb2Ygc29ydGluZyB0aGUg
UUdWIHBvaW50cyBmb3IgcG1kZW1hbmQNCmNhc2VzLiBNYXkgYmUgZG8gd2UgbmVlZCB0byBjb25z
aWRlciBzb3J0aW5nIHRoZSBRR1YgcG9pbnRzIGluIGFsbCB0aGUNCmNhc2VzIGFuZCBpbmNsdWRl
ICJvcmlnaW5hbCIgcWd2X2luZGV4IGFzIGEgbWVtYmVyIG9mIGJ3IGluZm8gdG8gc3RvcmUNCnRo
ZSAicGNvZGUiIGluZGV4IG9mIHRoZSBxZ3YgcG9pbnRzIGZvciBub24gcG1kZW1hbmQgY2FzZXM/
DQoNCkJSDQpWaW5vZCAgDQoNCj4gwqAJZm9yIChpID0gQVJSQVlfU0laRShkaXNwbGF5LT5idy5t
YXgpIC0gMTsgaSA+PSAwOyBpLS0pIHsNCj4gwqAJCWNvbnN0IHN0cnVjdCBpbnRlbF9id19pbmZv
ICpiaSA9DQo+IMKgCQkJJmRpc3BsYXktPmJ3Lm1heFtpXTsNCg0K
