Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D3787650A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 14:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9134E10EEA2;
	Fri,  8 Mar 2024 13:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N/cKm+P4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF44410EEA2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709904085; x=1741440085;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9JNTk4fKUtwP+LDWDRjz4I0lgn/sk7dBGhkKsadB2a8=;
 b=N/cKm+P4+Fcs8qOlaxC7UJCR6MSnnkoIh34v6XmaOuO1D+635iLdvVUh
 8/HxbOnJI1tANWqzKmk6Pi743nFDTqToWlYM+QTbs9Ntm7ykEZ0fe4KzB
 TFz/6G+/yRZPuz5a/gaqdZ3QWrTgEYQufVY7TUAAQ8nZxW4WpNTcHcquu
 IgEqrxpgEj/nSfcrMmScajzC8eQzg+klTY7KBp7tAgX+hc9Gc2xBdE4JV
 ETcv67czY8hqQBu6gt9vYKXEe8MIulE/BjU3AgYgsA0HDOu4LhjOi6bcy
 FMtltbRdadW1rMMta2z8Qv5RmA6AhqA9Ei/KZlFHEU2z19Os5lkOs++17 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15269265"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15269265"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:21:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10862924"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 05:21:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 05:21:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 05:21:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 05:21:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 05:21:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BbZRnSn9a2ilmJAVBO1KF0RtEPpRL9nBhON8ky2PkcOV4PCCj+jyCaWeVk9BhuoWQRjM4LFpOAlHNiKz87lrNEpul7KYbVsEHjFztO4yFSGKXSJ9lU8u8dTfQUd3hKStBo3Vmx4Q/brpYySFOZWFWSoS9Bt8zbQSS8WftlTZolc2LvVx/fro6kBXVP9p42ncUoLnc5+jTNqhW+KRI5AFE5Qe1gRaZkyKU3e4mQqP4Ryk+qK4+lJU7ZifuSrQCQxIr+z2m1PadOOlclF6ixrtZJPtuwCH0KvJtGgeDZoooWMbfIDyybkaq0jmD3ACi6avVUFdrRGgXBcDwVv/Ux5MyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9JNTk4fKUtwP+LDWDRjz4I0lgn/sk7dBGhkKsadB2a8=;
 b=aMGMv4cDrRCf6dQ/Lh75f/siYmttQoUstYKbdonm8vd2f7yD9w5QTpiq0629MMZxNBszCkLzi6iE0XOZuFn/rYYKvPiLbSJXG7QWCI5spEORKaIKPN1NP2jE2ucWX2dtGoEVVtPJJ/L7GrhcqgaWq7lBHJ4uAHbA1EopjBd0OLeyashdy7z1ZeKl5Q2sY0nU0IzzrmulJjhvDA7Whon/m2RxYv8IVZRyIHZqfWs3lxHbQzI5WQa/GX+tDSWnm45+khrsqUVtX1UIAD+xcsE38nqckdsO6sJEq+noP1ozc61ohpvMXz+XySyQ1BdeHoORiSlcSTv4afdAnOEgIM/30w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6670.namprd11.prod.outlook.com (2603:10b6:a03:44a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.23; Fri, 8 Mar 2024 13:21:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.006; Fri, 8 Mar 2024
 13:21:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: Re: [RFC 2/3] drm/i915/alpm: Add compute config for lobf
Thread-Topic: [RFC 2/3] drm/i915/alpm: Add compute config for lobf
Thread-Index: AQHabgmp3dBDzpT4+k27pdJkU93d4bEt2uiA
Date: Fri, 8 Mar 2024 13:21:16 +0000
Message-ID: <698fe38c6afe1a7f29a2a1420496af5c137477d4.camel@intel.com>
References: <20240304074303.202882-1-animesh.manna@intel.com>
 <20240304074303.202882-3-animesh.manna@intel.com>
In-Reply-To: <20240304074303.202882-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6670:EE_
x-ms-office365-filtering-correlation-id: 9472387a-054f-4e0b-eef3-08dc3f72a28f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ROVTpquUSpwynYZo8slWXFb1QwEtYM8c3g3f4hCLDJv2wYFs3aiE88WErc0fM9ddk7/9GR+kSZubhBNHlQPh7pQfK91bd62TEc3dPZrpGGWEwTGAeJoQEbB1wHjBeZMyrOUGPJ+XQAm5RfKpugyLFfa3FPeZv6axtEth0X1SMYfekwCkPKHTyZKEebHgJ8uE2XsPzObMdOUNH2MaD8sEb58jax+257EjpCrQ4Q+s6/SlFYrTmCXGc4y8NnPs24RlGpFkWMcRuc5ChQ0x7AZlwOToFJgI2hS/aHCroBK4t/nTmxjjWY1F1fHV8fMk5AecEXmRbtN4Lm6kIwLmdKehuVQHED37V6iNf0x2uEAD4qsLVOTHPi5HXZSYEUbOlHtEcrs5v4URpEzO8xXYlr8ap+0NzeGkfrGaribFF4acpc/rwGl9KE0WoBfAO+Fu10QRrLO969J+ZCLeHneS0dUBn1gEHUC/xdyzWO4EQniFm/JJm3QeLcB4LL5CcjLRlcyY89Zl1L0cfyXv4sWa/yCDMoSYtdAoHSF8uezM5T3CiZnwb4thZuQUKKy4pj8NdixGFjHKHKjkCCJiOYs2aG/isMswy0niy37uM6f7PDLDVa8pZFpp3aDNgXsCIIsC9wsThLFpbvy228ZFVfRDueu7g/hBlhBYzyWCnSXnsViwvXlpiqjp8jlrwFpkcUoS1UwGcIDG5qCdw7TZRFrqa2PsDrsBPL6sBRXGctQWDSX5Prc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjJjUWd3L1Rlb054STlJK09CVFJQNzVIaC9BVW9kaUo0OHRaSGpYbDFSYnd4?=
 =?utf-8?B?QjllaUJYcGJlQnF3K3FsL2pVc2YwakVzQ1F5bFRQZktQMnpHSE9NcWcwd2RB?=
 =?utf-8?B?Y213OTN1YnZkcFBaMlJtTTJEVnVoelZJWTNOSXMzclhtYWoxZVNkZ3ZEMEFx?=
 =?utf-8?B?SVk5SExKN0xlQnVjczJlaDltRmRsQTZVTkdVMSs0RitCTkRxbkNrVWRkUXcw?=
 =?utf-8?B?TXNhdmZLeVJESmhqaFo1ZzdHcjErczBKWklidXl0ZngyQVN0Qi82MzVWTmtn?=
 =?utf-8?B?N001YUJDMlI3OTFrbytHMW5jeWZJOStORW1YSFprMTVCNzlIbGhtTFNhMWFw?=
 =?utf-8?B?ZnJFcUtuZy90aVl2ZFAzRVRleEtLSkdRSElyMnl0Q3lXM05zZXRGRWkrd09Z?=
 =?utf-8?B?dk12UjRiQWxIbnRRdWdUQ2FuTmpwZDlTM0xlTkI3WDNEYTNQTHVhN21WRTc3?=
 =?utf-8?B?SXh2UjJPbllLbG95Ui9CYW91TFZMSnBtMXd2VVVaaHBubDVQM3FRY2Z5QzBn?=
 =?utf-8?B?S20vQ2plcWNtcGJqYlhpVlFnWHpRUmNBQWsvd3hyZ0tVSTNFUUVZQW1Ka0Nx?=
 =?utf-8?B?QjdKOGNLVE1mek52R08vWGVneHRGRXFJeUkrKzNiU3gvSjBTaU1jRWFmUzVJ?=
 =?utf-8?B?SnZTSTdONUtEZHA2eFh2WllHREcxSlBSdEZpczZIUWhHanhKQTNiaER2anhZ?=
 =?utf-8?B?ZXkwbzUrdXhjUklqUXNmVUU3dkJOWGFwSWpRTWN3elFhdUdvempTR3hjQ2s2?=
 =?utf-8?B?b3FMTk5iQS8ycDBlcGJ4eTFpNjlxTWwwZTFLVjhpWWg3ZGtMZDRhSmJvcUlx?=
 =?utf-8?B?cGFEOGRTZDdVa3RqRVRuSDJUWmNtazFmTzltbXZkNlBWcnhxQ1lXTEVsN1kx?=
 =?utf-8?B?azROcUhRSEdwSTduRmRkZzBpR0JPYzhjREpCZEhaZi9lNnhvU1Y5YXVvVmVG?=
 =?utf-8?B?WWZtZ082RWxyZ3NDQXpxTkQxaGx0ZytLRW1McDVRWjFZOTZqNjVkSXc5RlQx?=
 =?utf-8?B?Q1B6aHRsemlKRHdzOUxMdk9qS2MxVDlhYWxHd3BLYVcxU01WYmVzRDdQUkpF?=
 =?utf-8?B?VnFJTktlQWlMN09XQ1VHVkNJNG5YK1JCWkVBRlRKQVZtSkphT1loUjdtQ3Br?=
 =?utf-8?B?NjBSM1hUVUlXRElkKzl0RjkvV1NFcHBNSHU0Uzd0L0dlUTBEVVVEMThEcGhY?=
 =?utf-8?B?YlZqdERYN3doZDEyUXQwUVVldUdXMkhVaEJZbytNOXBiNTUwMnUzbE1lbTM4?=
 =?utf-8?B?d3N5MnU0dDJyQWpoNmJWWjgwWTRrYWk4U1V3N3NZRDhxbTIwczFoRGhEOWFn?=
 =?utf-8?B?anJtMnBKU0Z3MzA4c2Vha1BVYVZvR0k1VUZ2MXBzZkZabU56VWNDSEdjNENo?=
 =?utf-8?B?ckhPWGRCM1N5MXRMamZ1Rm9rbExncGNDR0M0MkpxTkRtYVhDcXhjMytTVEp6?=
 =?utf-8?B?dVVXcloyTWZ6YmFzUVh4Rk1za0JWdEhIdENNL0xjZ0tDelpDbmJJWnYvWXZz?=
 =?utf-8?B?UzRaZ0FxOWdUcmNXZlE4QlNJd295clBPUk9VQ0lPNWJ6WEYydW5uOUc0dDcz?=
 =?utf-8?B?Mmthb3d0UHV4ZEJCK1IzUzZhTnp1dzhKZ2ltT0pMODIzRUJQaFFmemZwa1A2?=
 =?utf-8?B?NExPUlloVWk0NGhPNWFTVDF2M3kwUVQ3V3Fhc1R3c1FkUFRkZ2hnUFU5TlZN?=
 =?utf-8?B?dStna2tJMTZpTUhjMG0vRWoxS0tWTTJubjNGWXN6NENJM3RUL2RDd2ZBQTJa?=
 =?utf-8?B?bkZQWlJUTzVzVDF5MFk3VUlwQzhUL3hSamV2eHFxNkRteHQyZU9TWUtsenJt?=
 =?utf-8?B?ZXhtdXZCQ2g5TEtuWDJrYWZJaE1zQ3VyZXpkLzNLM0wyNVdReUMzZGxyMWVh?=
 =?utf-8?B?MjhlSm5NdEVuNnp6bEVsUk1VdmQ1VjVxaGpaYUcrb0xrQVFBdDdNYWJEeXFV?=
 =?utf-8?B?aFFwR2JYQlJCYzBMUTRqZDZVTEtxRlh2WUE5SE1BS2phWlAwTWRVM3psTktT?=
 =?utf-8?B?cGQ4Tmw0QmlFb1FmRlFoNkZKOGQrbisrZ1Zkd2E2YmlhK2lMVVg0N0hZVlpp?=
 =?utf-8?B?UFlqRURnNzIvbHlyK1FxVDd3cndMcXZ1dksrS2VxUTVqa2ZKeEFoZlN0ZmZy?=
 =?utf-8?B?UHVqd1gvWUlOVFdDQXd3c2FySnZ0cHh1MGI1VGQ5ZXM4b3A5N0U4YktuU3NL?=
 =?utf-8?B?c1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A757D1D5DA464841BEB6B013A81CB34A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9472387a-054f-4e0b-eef3-08dc3f72a28f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 13:21:16.5388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tLR1ksFv26QZoUvSMBR+HVlS9h1HFsSVmIVn9nsGxsgcLXj9XVFMi+8uXVpoYc/H8OlMkU52nznA8DyaS3ShfKBZiPhYbI+5pM8QHhKDzGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6670
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

T24gTW9uLCAyMDI0LTAzLTA0IGF0IDEzOjEzICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IExpbmsgT2ZmIEJldHdlZW4gQWN0aXZlIEZyYW1lcywgaXMgYSBuZXcgZmVhdHVyZSBmb3IgZURQ
Cj4gdGhhdCBhbGxvd3MgdGhlIHBhbmVsIHRvIGdvIHRvIGxvd2VyIHBvd2VyIHN0YXRlIGFmdGVy
Cj4gdHJhbnNtaXNzaW9uIG9mIGRhdGEuIFRoaXMgaXMgYSBmZWF0dXJlIG9uIHRvcCBvZiBBTFBN
LCBBUyBTRFAuCj4gQWRkIGNvbXB1dGUgY29uZmlnIGR1cmluZyBhdG9taWMtY2hlY2sgcGhhc2Uu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+Cj4gLS0tCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjC
oMKgwqAgfMKgIDMgKysKPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Y8KgwqDCoMKgwqDCoCB8wqAgMSArCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jwqDCoMKgwqDCoCB8IDQ1Cj4gKysrKysrKysrKysrKysrKysrKwo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaMKgwqDCoMKgwqAgfMKgIDMgKysKPiDC
oDQgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBpbmRleCBkNDcz
ZDhkY2E5MGEuLjRkMjE2MWVlYjY4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gQEAgLTE4NTEsNiArMTg1MSw5IEBA
IHN0cnVjdCBpbnRlbF9kcCB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1OCBz
aWxlbmNlX3BlcmlvZF9zeW1fY2xvY2tzOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgdTggbGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zOwo+IMKgwqDCoMKgwqDCoMKgwqB9IGFs
cG1fcGFyYW1ldGVyczsKPiArCj4gK8KgwqDCoMKgwqDCoMKgLyogTE9CRiBmbGFncyovCj4gK8Kg
wqDCoMKgwqDCoMKgYm9vbCBsb2JmX3N1cHBvcnRlZDsKPiDCoH07Cj4gwqAKPiDCoGVudW0gbHNw
Y29uX3ZlbmRvciB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4g
aW5kZXggODMwNGVmOTEyNzY3Li5lMzRiNzBkODhiOWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTI5NzksNiArMjk3OSw3IEBAIGludGVsX2RwX2Nv
bXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyCj4gKmVuY29kZXIsCj4gwqDCoMKgwqDC
oMKgwqDCoGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7
Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwX2NvbXB1dGVfYXNfc2RwKGludGVsX2RwLCBwaXBl
X2NvbmZpZywgY29ubl9zdGF0ZSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZyhpbnRlbF9kcCwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwo+ICvCoMKgwqDCoMKg
wqDCoGludGVsX3Bzcl9sb2JmX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBwaXBlX2NvbmZpZywK
PiBjb25uX3N0YXRlKTsKPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfZHJyc19jb21wdXRlX2Nv
bmZpZyhjb25uZWN0b3IsIHBpcGVfY29uZmlnLAo+IGxpbmtfYnBwX3gxNik7Cj4gwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RwX2NvbXB1dGVfdnNjX3NkcChpbnRlbF9kcCwgcGlwZV9jb25maWcsIGNv
bm5fc3RhdGUpOwo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF9jb21wdXRlX2hkcl9tZXRhZGF0
YV9pbmZvZnJhbWVfc2RwKGludGVsX2RwLAo+IHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDRhZGNkZGJh
NjljMS4uYzA4YmZmYzI5MjFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCj4gQEAgLTQzNiw2ICs0MzYsMTYgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfZ2V0
X2FscG1fc3RhdHVzKHN0cnVjdAo+IGludGVsX2RwICppbnRlbF9kcCkKPiDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGFscG1fY2FwcyAmIERQX0FMUE1fQ0FQOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyBi
b29sIGludGVsX2RwX2dldF9hdXhfbGVzc19hbHBtX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAKPiAq
aW50ZWxfZHApCj4gK3sKPiArwqDCoMKgwqDCoMKgwqB1OCBhbHBtX2NhcHMgPSAwOwo+ICsKPiAr
wqDCoMKgwqDCoMKgwqBpZiAoZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1JF
Q0VJVkVSX0FMUE1fQ0FQLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAmYWxwbV9jYXBzKSAhPSAxKQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGFscG1f
Y2FwcyAmIERQX0FMUE1fQVVYX0xFU1NfQ0FQOwo+ICt9Cj4gKwo+IMKgc3RhdGljIHU4IGludGVs
X2RwX2dldF9zaW5rX3N5bmNfbGF0ZW5jeShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IMKg
ewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3Rv
X2k5MTUoaW50ZWxfZHApOwo+IEBAIC0xNTY5LDYgKzE1NzksNDEgQEAgdm9pZCBpbnRlbF9wc3Jf
Y29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwCj4gKmludGVsX2RwLAo+IMKgwqDCoMKgwqDC
oMKgwqBjcnRjX3N0YXRlLT5oYXNfcHNyMiA9IGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKGludGVs
X2RwLAo+IGNydGNfc3RhdGUpOwo+IMKgfQo+IMKgCj4gK3ZvaWQgaW50ZWxfcHNyX2xvYmZfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQoK
SSB0aGluayB0aGlzIGNvdWxkIHJhdGhlciBiZSBpbnRlbF9hbHBtX2NvbXB1dGVfY29uZmlnIHdo
aWNoIHdvdWxkCmNvbXB1dGUgYWxwbSBwYXJhbWV0ZXJzIGluY2x1ZGluZyBlbmFibGUgZm9yIGFs
cG0sIGF1eCBsZXNzIGFuZCBsb2JmLgoKPiAqY29ubl9zdGF0ZSkKPiArewo+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJmNydGNfc3RhdGUt
Cj4gPmh3LmFkanVzdGVkX21vZGU7Cj4gK8KgwqDCoMKgwqDCoMKgaW50IHdha2V0aW1lX2luX2xp
bmVzLCBmaXJzdF9zZHBfcG9zaXRpb247Cj4gK8KgwqDCoMKgwqDCoMKgaW50IGNvbnRleHRfbGF0
ZW5jeSwgZ3VhcmRiYW5kOwo+ICvCoMKgwqDCoMKgwqDCoGJvb2wgYXV4bGVzc19hbHBtOwo+ICsK
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+bG9iZl9zdXBwb3J0ZWQgPSBmYWxzZTsKPiArCj4g
K8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmICgh
aW50ZWxfZHBfYXNfc2RwX3N1cHBvcnRlZChpbnRlbF9kcCkpCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybjsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKENBTl9QU1IoaW50
ZWxfZHApIHx8IENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm47CgpNYXliZSB0aGlzIHNob3VsZCBjaGVjayBjcnRjX3N0YXRl
LT5oYXNfcHNyMiBhbmQgY3J0Y19zdGF0ZS0KPmhhc19wYW5lbF9yZXBsYXkgPwoKQlIsCgpKb3Vu
aSBIw7ZnYW5kZXIKCj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChfY29tcHV0ZV9hbHBtX3BhcmFt
cyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgY29udGV4dF9sYXRlbmN5ID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQgLQo+
IGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGd1YXJkYmFuZCA9IGFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFsIC0KPiBhZGp1c3Rl
ZF9tb2RlLT5jcnRjX3ZkaXNwbGF5IC0gY29udGV4dF9sYXRlbmN5Owo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBmaXJzdF9zZHBfcG9zaXRpb24gPSBhZGp1c3RlZF9tb2RlLT5jcnRj
X3Z0b3RhbCAtCj4gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192c3luY19zdGFydDsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYXV4bGVzc19hbHBtID0KPiBpbnRlbF9kcF9nZXRfYXV4X2xl
c3NfYWxwbV9zdGF0dXMoaW50ZWxfZHApOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAoYXV4bGVzc19hbHBtKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgd2FrZXRpbWVfaW5fbGluZXMgPSBpbnRlbF9kcC0KPiA+YWxwbV9wYXJhbWV0
ZXJzLmlvX3dha2VfbGluZXM7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVsc2UK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdha2V0aW1l
X2luX2xpbmVzID0gaW50ZWxfZHAtCj4gPmFscG1fcGFyYW1ldGVycy5hdXhfbGVzc193YWtlX2xp
bmVzOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKChjb250ZXh0X2xh
dGVuY3kgKyBndWFyZGJhbmQpID4KPiAoZmlyc3Rfc2RwX3Bvc2l0aW9uICsgd2FrZXRpbWVfaW5f
bGluZXMpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aW50ZWxfZHAtPmxvYmZfc3VwcG9ydGVkID0gdHJ1ZTsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gK30K
PiArCj4gwqB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKPiDCoHsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaAo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaAo+IGluZGV4IGNkZTc4MWRmODRkNS4u
NGJiNzcyOTUyODhmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5oCj4gQEAgLTQwLDYgKzQwLDkgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTsKPiDCoHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlCj4gKmNvbm5fc3RhdGUpOwo+ICt2b2lk
IGludGVsX3Bzcl9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ICpjcnRjX3N0YXRlLAo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUKPiAqY29ubl9zdGF0ZSk7Cj4gwqB2
b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZyk7Cj4gwqB2b2lkIGludGVsX3Bzcl9pcnFf
aGFuZGxlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1MzIgcHNyX2lpcik7Cgo=
