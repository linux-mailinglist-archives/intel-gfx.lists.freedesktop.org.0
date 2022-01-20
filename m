Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 900F349547C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 19:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B9510E9D6;
	Thu, 20 Jan 2022 18:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C654510E9E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 18:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642705031; x=1674241031;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=rDSiiwDpUee5H9bZcaeSE12x6JLWOOStcPMj/53ryzs=;
 b=CRb4RZZa55f/O8us7zYP9q+CsdW0S5rq+V/a3VHTMAeK/3ExM9f2RUgc
 zTiTWjHEjvKyOrLmwDb4D/GowEsf+/Ne/FDUYwRR+i6/EUFQfWD6hFiqJ
 OuITDAVw+Q5d+AqbS39yKvmy7YztpiX3sYd430S+rz+frySDIVkXWzUhw
 PymSn+Bhiwht4u/5tP0/k/QYK35/8ALRPDJxlgv/pXrCakhgXd36oSxML
 qhQ80CSy0gVZvYWgoqUujb8iMJy5lWHPU39DxroyQU22JzruHcNAcuW5C
 y9oT/5GiyoDmYGwPB1MD0EJpdhr5y55IR6fRwUfNJVCHJmXjWCa74x5Oa A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="242998927"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="242998927"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 10:56:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="694332693"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2022 10:56:41 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:56:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 20 Jan 2022 10:56:41 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 20 Jan 2022 10:56:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FT/UZ+A+Vvki+gdURb65w4+5k9iExAUHtjj6fhhj//lY2A0WayQfFWhGmyBDiUeaNSprdsMD0yIYDjCCSgjP4OlT+Sj0D3oWfHC6A22aBoj1TzGDPd6bx2t8phc+ImKiFrHy7dtNPJlkL8hVZczqTabjiddN7UqixGtu22yYnPd/69egP2V1N05w5D0/4X8MCF1ATAxIzC0gtgsbZWHUFSPV3wfv6FUlz5mULuWxXR6fjxEKsoiXzGV/NkYeNKK4VgVh0uB1SJP3U/vvG4/jcJFOhwuvCk99GAv3ucrs44LNwwuQTwvhpDa5aCtbfhR45ImP/iRyHxRewG0SGoQFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDSiiwDpUee5H9bZcaeSE12x6JLWOOStcPMj/53ryzs=;
 b=dVnWmHTJpwI1fkETam51+d6vAhktWYRvyRlD9Qfx8qP3ExaOKcA0rRY4Q+aSRQImNV/IeV/nHPvy1dXbJ0mlWYXt0xYYtzb6gRKe8uNqQPxTC9wd6nwjduevyT4rM+EFfZAYy+FA5ZI+hjo1hZ8rpI6Pi3taz8NtRE8EZBl7Zv6MOv+nrWqAtgFFikyj6pVnbmv7UPmgi5GzTpk9p3qWTFHw3FXcQSjnU3ok4kAVeWe0OiE3qhIi//U6VCiruC+H0tdcDub4TzFoz+iZpOqoYaT1Axxzxggi/uCG8KdAV5Pt2plmsW41iQ0MewuTe0EfwYOUa0IFkjhM9wDtQfL+aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3786.namprd11.prod.outlook.com (2603:10b6:5:142::33)
 by PH0PR11MB5609.namprd11.prod.outlook.com (2603:10b6:510:e0::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Thu, 20 Jan
 2022 18:56:38 +0000
Received: from DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::1456:4aad:3dcc:79fe]) by DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::1456:4aad:3dcc:79fe%4]) with mapi id 15.20.4909.012; Thu, 20 Jan 2022
 18:56:38 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>, "Nerlige Ramappa, Umesh"
 <umesh.nerlige.ramappa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Harrison, John C"
 <john.c.harrison@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/pmu: Use PM timestamp instead of
 RING TIMESTAMP for reference
Thread-Index: AQHYBo5aEToJ83WOlkWBeIIhBXfAQKxsUlUA
Date: Thu, 20 Jan 2022 18:56:38 +0000
Message-ID: <f3132998e70d271b7f74d02b3f35a7ad2992c03e.camel@intel.com>
References: <20220111015523.225562-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220111015523.225562-1-umesh.nerlige.ramappa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc7fbea4-d730-444c-10c8-08d9dc46969e
x-ms-traffictypediagnostic: PH0PR11MB5609:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <PH0PR11MB5609F384737808E425342C508A5A9@PH0PR11MB5609.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5iNaXN1Hz27It1F8pa2vUm0uCTBvp1br596iLrbFPK+4LXyTW5e+p76peemtJHtjCGVdEPdpvyiIhxALrmhNt1yxGBm9VW274g3Bd1K7Cy4bOj49egXwktypwlXizhTjnXzJ86qUU6Z1pIMMc6jt25gDG2XYlG6K8FX5X/mwfnDg3ubH1UWQzZECjoQsVXEdARbuIMl9iyF+CRw4JahujdhgLFg7sW4ngkYOaX0k/ZLKhQCMlVPR46QV9ZfQ3Q17tLO6t2yoNofuoW3idcMBY4TVBekqqSVGm/4wuvQ9yUicmuhi5ccGEsu2eDnCQCwWJddm6eRJtcw7EbcevKDmx1E/X+JqKZFW6cmjMVBQABQM/iYJABDJ/oXySoj7lEbGBlwXWpFqsdQjWOH8mVMdpizl5l5qPZ0v0rPvO8NN98yzDrVvUM4WvEVZu13RLdnfKT9aqzuhMtcPnHG46MKFR1b3tenPi1MRnsXLc7XuZ9ztJINLRwmUenWzqDMr8hzzCiyhHhjSKHJeUG2nAwVcBmks/w8LcRy7DB5vvpsHzAc23wqHo+FvkMiovyfdzoihywNtDQNGmHomw2QSeu1PB8zfQp478Sm0tbfdVOjoNql8yrwLkgYEMuvlw0IOEZD7DbT2MvZ1su/Vy8rtLwWYZsp8+mgbQCH9M1BTtVyQOw/S9R0NctL/R5ZEcN0FTi94kg/9kGUMA8jzUnSf8RgVTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3786.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(2616005)(6486002)(26005)(66476007)(8676002)(66556008)(71200400001)(316002)(6506007)(38100700002)(110136005)(122000001)(5660300002)(2906002)(82960400001)(36756003)(6512007)(508600001)(66446008)(86362001)(64756008)(91956017)(6636002)(38070700005)(83380400001)(76116006)(66946007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzRINUlFVmFyU2x6SEZmMHoxYSt2NVhBOUZWTm5meVNWb1U1YWxDb0tnaGFK?=
 =?utf-8?B?S2VlZHB1Y2I3czFocksxMXdsMXRhL3o0ejF1VGcxazNVVVExYTllVks5K1lN?=
 =?utf-8?B?ZXVQZWxueUlpZEVRWTQ1Y1phVzkxWkc5T0hXSm10TDBJYnB2cSt4bHg3aGxO?=
 =?utf-8?B?eUQrRGdNZVRpMjZ4ZUJEYk1mNFNWallrNjFtMWczeVZzS1hqb0VLdy9GYkZj?=
 =?utf-8?B?aG5nZi80ZmtTVVRIN3R3MVNzNTgzdlFOZXR3OVdWNGludG42V2NFNkF1cllM?=
 =?utf-8?B?bUFQZWNVUnVwUWRJSTU4MWdCWkVxZTNJSzd4VU5IbzJvWXhGZTkzdklOenAw?=
 =?utf-8?B?UlJwVlZxRkZ3aDM2ek0yb29SK3d1YlJRVnlOd2ppNGJsLzE1czI5djFORTRo?=
 =?utf-8?B?bVZNK2pZaHlwWTZZRFlNQmxobElGS25pZE8ycXpoTCtkUXNTY21CNW9FbHBB?=
 =?utf-8?B?MjI4ZnN6aEtydHR2TEExU2JrczJUcmcyejl0R1VIZm5XNmkvR1pMWkErRjdq?=
 =?utf-8?B?UHQ1L1FpbGd6N0ttVlhmYVRhSzRSbDB5TWxvYkE3MkhnWUQwM1lDU3ZjMUVH?=
 =?utf-8?B?ZGVFWHNUL1Z4NTVUZm9XdVFhSzVEM1d5YzlKR1B2dk91ZDVKQStPVHJ4VmtK?=
 =?utf-8?B?bW00bjA3L0hKV2xEWXAvUkV2UzhkaHNUeHF4aUF0cU0yRXNOSFpCV0liUXho?=
 =?utf-8?B?cnd0SVRJdkIyWTNCSjcyajR5dGZXUXlLcmJDVTFHOEVZRzFwQTFjeG5Ua3VP?=
 =?utf-8?B?YmsycUxOT3ZtS3lKR0NtRDZaVDQ4M25odWMrVmR1RWF3ZTREbXpTbGlINTE1?=
 =?utf-8?B?QThjWUMxbWFJU0FNQnFmSktOdmxtY0RGZnpTM3I3TmtQL0JtUy9SdHhNVzVQ?=
 =?utf-8?B?YnBma1ZLcFQ3T1NZQXF1a3dLQVQzNDJEdHpDN0kxY1NNYTd3K1VhNFR1TkpK?=
 =?utf-8?B?aUdzRjI4eDFUSVFiZUFsZ0gxbU9lMTJIZWtPbndFNldvWi8raVFiRTZQNm5o?=
 =?utf-8?B?RnMzOHBROWl0T0JiQnRjd3hPR0FOTlpRYUkzWU8xZjhxQ2dncVJaZzhYTVpM?=
 =?utf-8?B?Vzhqb0xTM2cwb1RXbFRLY1hxaEJoaElXWnMxWUNyWmp3cFpzSzhySWJhZFJY?=
 =?utf-8?B?VFErUVl6QlZtaForYng5SEJlU1ZWb0MzeUo0U253YVl0bXBBanFhV3FuZkxt?=
 =?utf-8?B?ZE5UQmpLV1JKZ2J2WWlxQWU5d2l1SmVBSGhCdHBqZ0I5ODZKVnRPNGVMT2dL?=
 =?utf-8?B?ZTAyUDJnMVRRZDdyZkdSRzdMaFY5d0w5VCsxTnNYRWQ0bUoyaFgwZGRrK3Yz?=
 =?utf-8?B?azZMNlUrSGZMQWU2ZGF4eTVkdWZva0hiSCs2RlhaVE96enJzY1hWRUVuK2NM?=
 =?utf-8?B?LzJjSE4rL1l0MmhrZU03WThrZGV0TWtrdzRKWDEwVjlHZURHWHVTdWJPZGRz?=
 =?utf-8?B?a0E5Kzh0d0tGN2hHVG9EVllQL1krWVdiUmlyaG4xNzc4em9MTVR3UG5wVG9k?=
 =?utf-8?B?UG1MTTRaU2kxWEV4MWhSbjZVakpZR2ZWOWVYdUlCRTZBRnhHb2gra1g5MWcr?=
 =?utf-8?B?RVpmRWxyTlJacGhrNVIwNlQxZzArZmdlU01lUmkvQW5ZRE5HdTVJK0ZpblRU?=
 =?utf-8?B?a1o4bHUvdzNJSDd4K3lTalBJUmlNakd5b2hJSktNSmxOMGNPc0dLaElMMTNS?=
 =?utf-8?B?b0pyc05PUHRuaDRIelZESTgyQnBkalk2dGpBS3o5MzUrNWFRN3pvdGdlUUpV?=
 =?utf-8?B?eFh4R3BSZGtvYXZYRUpvRUJPdEdzM2lLb29jOVlHd3IvZnVnMHVUcWJpZ09x?=
 =?utf-8?B?bWN5MjV0R2dCWW1OZUltbFd6MGxlN3hKa1RQYys1WG5XK28xZSs3ek5KVExZ?=
 =?utf-8?B?YnAxcVc2Ky9SUTVYN1M3cWtzNncwaGwvSVZ0ckpNZWRKUGR5aDVocDFmZnkx?=
 =?utf-8?B?Z1lON3NJVTdaNTB0cmNhaU5QNmdyNFIrU1ZiSnZ2ckl2Y0hRV3lhMnFsU29j?=
 =?utf-8?B?UjR5Tkdtam5zWTZLc0tmUDdJc1VFV1l4RjRTTHdnTEVYUmpUM0JvZ3JkbmVt?=
 =?utf-8?B?MGdyLzViQno1Rk10b3NKZ3BFeFlGM09ZTU5hVEJHOWJGbjVKWEdXUUpYTFA2?=
 =?utf-8?B?OHRYN0ljUE80RmhFUFI5ME5KeGVIM0RGNlZhRHJ6bEdRM0JkUkI0cGp4WkZR?=
 =?utf-8?B?aUVPbEtoUGJaZFZBYTFTMUV1L2lGbXpMTGNLODR3dXowamhoZEdkOFdsQ1B0?=
 =?utf-8?B?VnVROGZiMzdzY2MrR3Q1QXJjemdYZ011WlJKbis1ajFGY1lBYzVSOVpFVjFw?=
 =?utf-8?B?QUFPQks0ODJia083bkQ5YU1IbmpWajNUYk1oWTE3UVBsTUdOV2kwdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A9299F071584B44FB351FD38FEB1D76F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3786.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc7fbea4-d730-444c-10c8-08d9dc46969e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2022 18:56:38.1461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l7lnjbd/txPfRfs+miNQIi3nE9TxDhxPfIagwJHanAJotjLrODiPhQYPyslUOiGxIASXCdQ6uVOFY89BPE9NLHbc+Qs1Xa/fGl52g2/S4QeZnqBavFVadT9h5PA83m92
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5609
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Use PM timestamp instead of
 RING TIMESTAMP for reference
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

UmV2aWV3ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwu
Y29tPg0KDQpPbiBNb24sIDIwMjItMDEtMTAgYXQgMTc6NTUgLTA4MDAsIFVtZXNoIE5lcmxpZ2Ug
UmFtYXBwYSB3cm90ZToNCj4gQWxsIHRpbWVzdGFtcHMgcmV0dXJuZWQgYnkgR3VDIGZvciBHdUMg
UE1VIGJ1c3luZXNzIGFyZSBjYXB0dXJlZCBmcm9tDQo+IEdVQyBQTSBUSU1FU1RBTVAuIFNpbmNl
IHRoaXMgdGltZXN0YW1wIGRvZXMgbm90IHRpY2sgd2hlbiBHdUMgZ29lcyBpZGxlLA0KPiBrbWQg
dXNlcyBSSU5HX1RJTUVTVEFNUCB0byBtZWFzdXJlIGJ1c3luZXNzIG9mIGFuIGVuZ2luZSB3aXRo
IGFuIGFjdGl2ZQ0KPiBjb250ZXh0LiBJbiBmdXJ0aGVyIHN0cmVzcyB0ZXN0aW5nLCB0aGUgTU1J
TyByZWFkIG9mIHRoZSBSSU5HX1RJTUVTVEFNUA0KPiBpcyBzZWVuIHRvIGNhdXNlIGEgcmFyZSBo
YW5nLiBSZXNvbHZlIHRoZSBpc3N1ZSBieSB1c2luZyBndCBzcGVjaWZpYw0KPiB0aW1lc3RhbXAg
ZnJvbSBQTSB3aGljaCBpcyBpbiBzeW5jIHdpdGggdGhlIEd1QyBQTSB0aW1lc3RhbXAuDQo+IA0K
PiBGaXhlczogNzdjZGQwNTRkZDJjICgiZHJtL2k5MTUvcG11OiBDb25uZWN0IGVuZ2luZSBidXN5
bmVzcyBzdGF0cyBmcm9tIEd1QyB0byBwbXUiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBVbWVzaCBOZXJs
aWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggICAgICAgIHwgIDUgKysNCj4g
IC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDU2ICsrKysr
KysrKysrKysrLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgICB8ICAzICstDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKyksIDE0
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgN
Cj4gaW5kZXggZjkyNDBkNGJhYTY5Li4zYWFiZTE2NGMzMjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oDQo+IEBAIC0yMDYsNiArMjA2LDExIEBAIHN0cnVjdCBp
bnRlbF9ndWMgew0KPiAgCQkgKiBjb250ZXh0IHVzYWdlIGZvciBvdmVyZmxvd3MuDQo+ICAJCSAq
Lw0KPiAgCQlzdHJ1Y3QgZGVsYXllZF93b3JrIHdvcms7DQo+ICsNCj4gKwkJLyoqDQo+ICsJCSAq
IEBzaGlmdDogUmlnaHQgc2hpZnQgdmFsdWUgZm9yIHRoZSBncG0gdGltZXN0YW1wDQo+ICsJCSAq
Lw0KPiArCQl1MzIgc2hpZnQ7DQo+ICAJfSB0aW1lc3RhbXA7DQo+ICANCj4gICNpZmRlZiBDT05G
SUdfRFJNX0k5MTVfU0VMRlRFU1QNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+IGluZGV4IDk5ODlkMTIxMTI3ZC4uZDkzZTk1NDdm
NWU0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
c3VibWlzc2lvbi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Y19zdWJtaXNzaW9uLmMNCj4gQEAgLTExNDksMjMgKzExNDksNTEgQEAgc3RhdGljIHZvaWQgZ3Vj
X3VwZGF0ZV9lbmdpbmVfZ3RfY2xrcyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpDQo+
ICAJfQ0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdm9pZCBndWNfdXBkYXRlX3BtX3RpbWVzdGFtcChz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMsDQo+IC0JCQkJICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSwNCj4gLQkJCQkgICAga3RpbWVfdCAqbm93KQ0KPiArc3RhdGljIHUzMiBncG1fdGlt
ZXN0YW1wX3NoaWZ0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+ICB7DQo+IC0JdTMyIGd0X3N0YW1w
X25vdywgZ3Rfc3RhbXBfaGk7DQo+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ICsJdTMy
IHJlZywgc2hpZnQ7DQo+ICsNCj4gKwl3aXRoX2ludGVsX3J1bnRpbWVfcG0oZ3QtPnVuY29yZS0+
cnBtLCB3YWtlcmVmKQ0KPiArCQlyZWcgPSBpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBS
UE1fQ09ORklHMCk7DQo+ICsNCj4gKwlzaGlmdCA9IChyZWcgJiBHRU4xMF9SUE1fQ09ORklHMF9D
VENfU0hJRlRfUEFSQU1FVEVSX01BU0spID4+DQo+ICsJCUdFTjEwX1JQTV9DT05GSUcwX0NUQ19T
SElGVF9QQVJBTUVURVJfU0hJRlQ7DQo+ICsNCj4gKwlyZXR1cm4gMyAtIHNoaWZ0Ow0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgdTY0IGdwbV90aW1lc3RhbXAoc3RydWN0IGludGVsX2d0ICpndCkNCj4g
K3sNCj4gKwl1MzIgbG8sIGhpLCBvbGRfaGksIGxvb3AgPSAwOw0KPiArDQo+ICsJaGkgPSBpbnRl
bF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBNSVNDX1NUQVRVUzEpOw0KPiArCWRvIHsNCj4gKwkJ
bG8gPSBpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBNSVNDX1NUQVRVUzApOw0KPiArCQlv
bGRfaGkgPSBoaTsNCj4gKwkJaGkgPSBpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBNSVND
X1NUQVRVUzEpOw0KPiArCX0gd2hpbGUgKG9sZF9oaSAhPSBoaSAmJiBsb29wKysgPCAyKTsNCj4g
Kw0KPiArCXJldHVybiAoKHU2NCloaSA8PCAzMikgfCBsbzsNCj4gK30NCj4gKw0KPiArc3RhdGlj
IHZvaWQgZ3VjX3VwZGF0ZV9wbV90aW1lc3RhbXAoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBrdGlt
ZV90ICpub3cpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMp
Ow0KPiArCXUzMiBndF9zdGFtcF9sbywgZ3Rfc3RhbXBfaGk7DQo+ICsJdTY0IGdwbV90czsNCj4g
IA0KPiAgCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmd1Yy0+dGltZXN0YW1wLmxvY2spOw0KPiAgDQo+
ICAJZ3Rfc3RhbXBfaGkgPSB1cHBlcl8zMl9iaXRzKGd1Yy0+dGltZXN0YW1wLmd0X3N0YW1wKTsN
Cj4gLQlndF9zdGFtcF9ub3cgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwNCj4g
LQkJCQkJIFJJTkdfVElNRVNUQU1QKGVuZ2luZS0+bW1pb19iYXNlKSk7DQo+ICsJZ3BtX3RzID0g
Z3BtX3RpbWVzdGFtcChndCkgPj4gZ3VjLT50aW1lc3RhbXAuc2hpZnQ7DQo+ICsJZ3Rfc3RhbXBf
bG8gPSBsb3dlcl8zMl9iaXRzKGdwbV90cyk7DQo+ICAJKm5vdyA9IGt0aW1lX2dldCgpOw0KPiAg
DQo+IC0JaWYgKGd0X3N0YW1wX25vdyA8IGxvd2VyXzMyX2JpdHMoZ3VjLT50aW1lc3RhbXAuZ3Rf
c3RhbXApKQ0KPiArCWlmIChndF9zdGFtcF9sbyA8IGxvd2VyXzMyX2JpdHMoZ3VjLT50aW1lc3Rh
bXAuZ3Rfc3RhbXApKQ0KPiAgCQlndF9zdGFtcF9oaSsrOw0KPiAgDQo+IC0JZ3VjLT50aW1lc3Rh
bXAuZ3Rfc3RhbXAgPSAoKHU2NClndF9zdGFtcF9oaSA8PCAzMikgfCBndF9zdGFtcF9ub3c7DQo+
ICsJZ3VjLT50aW1lc3RhbXAuZ3Rfc3RhbXAgPSAoKHU2NClndF9zdGFtcF9oaSA8PCAzMikgfCBn
dF9zdGFtcF9sbzsNCj4gIH0NCj4gIA0KPiAgLyoNCj4gQEAgLTEyMDksNyArMTIzNyw3IEBAIHN0
YXRpYyBrdGltZV90IGd1Y19lbmdpbmVfYnVzeW5lc3Moc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLCBrdGltZV90ICpub3cpDQo+ICAJCXN0YXRzX3NhdmVkID0gKnN0YXRzOw0KPiAgCQln
dF9zdGFtcF9zYXZlZCA9IGd1Yy0+dGltZXN0YW1wLmd0X3N0YW1wOw0KPiAgCQlndWNfdXBkYXRl
X2VuZ2luZV9ndF9jbGtzKGVuZ2luZSk7DQo+IC0JCWd1Y191cGRhdGVfcG1fdGltZXN0YW1wKGd1
YywgZW5naW5lLCBub3cpOw0KPiArCQlndWNfdXBkYXRlX3BtX3RpbWVzdGFtcChndWMsIG5vdyk7
DQo+ICAJCWludGVsX2d0X3BtX3B1dF9hc3luYyhndCk7DQo+ICAJCWlmIChpOTE1X3Jlc2V0X2Nv
dW50KGdwdV9lcnJvcikgIT0gcmVzZXRfY291bnQpIHsNCj4gIAkJCSpzdGF0cyA9IHN0YXRzX3Nh
dmVkOw0KPiBAQCAtMTI0MSw4ICsxMjY5LDggQEAgc3RhdGljIHZvaWQgX19yZXNldF9ndWNfYnVz
eW5lc3Nfc3RhdHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiAgDQo+ICAJc3Bpbl9sb2NrX2ly
cXNhdmUoJmd1Yy0+dGltZXN0YW1wLmxvY2ssIGZsYWdzKTsNCj4gIA0KPiArCWd1Y191cGRhdGVf
cG1fdGltZXN0YW1wKGd1YywgJnVudXNlZCk7DQo+ICAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
Z3QsIGlkKSB7DQo+IC0JCWd1Y191cGRhdGVfcG1fdGltZXN0YW1wKGd1YywgZW5naW5lLCAmdW51
c2VkKTsNCj4gIAkJZ3VjX3VwZGF0ZV9lbmdpbmVfZ3RfY2xrcyhlbmdpbmUpOw0KPiAgCQllbmdp
bmUtPnN0YXRzLmd1Yy5wcmV2X3RvdGFsID0gMDsNCj4gIAl9DQo+IEBAIC0xMjU5LDEwICsxMjg3
LDExIEBAIHN0YXRpYyB2b2lkIF9fdXBkYXRlX2d1Y19idXN5bmVzc19zdGF0cyhzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpDQo+ICAJa3RpbWVfdCB1bnVzZWQ7DQo+ICANCj4gIAlzcGluX2xvY2tfaXJx
c2F2ZSgmZ3VjLT50aW1lc3RhbXAubG9jaywgZmxhZ3MpOw0KPiAtCWZvcl9lYWNoX2VuZ2luZShl
bmdpbmUsIGd0LCBpZCkgew0KPiAtCQlndWNfdXBkYXRlX3BtX3RpbWVzdGFtcChndWMsIGVuZ2lu
ZSwgJnVudXNlZCk7DQo+ICsNCj4gKwlndWNfdXBkYXRlX3BtX3RpbWVzdGFtcChndWMsICZ1bnVz
ZWQpOw0KPiArCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkNCj4gIAkJZ3VjX3VwZGF0
ZV9lbmdpbmVfZ3RfY2xrcyhlbmdpbmUpOw0KPiAtCX0NCj4gKw0KPiAgCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmd1Yy0+dGltZXN0YW1wLmxvY2ssIGZsYWdzKTsNCj4gIH0NCj4gIA0KPiBAQCAt
MTc4NCw2ICsxODEzLDcgQEAgaW50IGludGVsX2d1Y19zdWJtaXNzaW9uX2luaXQoc3RydWN0IGlu
dGVsX2d1YyAqZ3VjKQ0KPiAgCXNwaW5fbG9ja19pbml0KCZndWMtPnRpbWVzdGFtcC5sb2NrKTsN
Cj4gIAlJTklUX0RFTEFZRURfV09SSygmZ3VjLT50aW1lc3RhbXAud29yaywgZ3VjX3RpbWVzdGFt
cF9waW5nKTsNCj4gIAlndWMtPnRpbWVzdGFtcC5waW5nX2RlbGF5ID0gKFBPTExfVElNRV9DTEtT
IC8gZ3QtPmNsb2NrX2ZyZXF1ZW5jeSArIDEpICogSFo7DQo+ICsJZ3VjLT50aW1lc3RhbXAuc2hp
ZnQgPSBncG1fdGltZXN0YW1wX3NoaWZ0KGd0KTsNCj4gIA0KPiAgCXJldHVybiAwOw0KPiAgfQ0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggNjFhZGUwNzA2OGM4Li43MGM1ZTdjMjM3
ZWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtMjQzNSw3ICsyNDM1LDgg
QEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcp
DQo+ICAjZGVmaW5lICAgUklOR19XQUlUCQkoMSA8PCAxMSkgLyogZ2VuMyssIFBSQnhfQ1RMICov
DQo+ICAjZGVmaW5lICAgUklOR19XQUlUX1NFTUFQSE9SRQkoMSA8PCAxMCkgLyogZ2VuNisgKi8N
Cj4gIA0KPiAtI2RlZmluZSBHVUNQTVRJTUVTVEFNUCAgICAgICAgICBfTU1JTygweEMzRTgpDQo+
ICsjZGVmaW5lIE1JU0NfU1RBVFVTMAkJX01NSU8oMHhBNTAwKQ0KPiArI2RlZmluZSBNSVNDX1NU
QVRVUzEJCV9NTUlPKDB4QTUwNCkNCj4gIA0KPiAgLyogVGhlcmUgYXJlIDE2IDY0LWJpdCBDUyBH
ZW5lcmFsIFB1cnBvc2UgUmVnaXN0ZXJzIHBlci1lbmdpbmUgb24gR2VuOCsgKi8NCj4gICNkZWZp
bmUgR0VOOF9SSU5HX0NTX0dQUihiYXNlLCBuKQlfTU1JTygoYmFzZSkgKyAweDYwMCArIChuKSAq
IDgpDQo+IC0tIA0KPiAyLjMzLjENCj4gDQoNCg==
