Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB979EE2F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 18:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258BF10E471;
	Wed, 13 Sep 2023 16:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C3C10E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 16:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694622254; x=1726158254;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uTALAIDCIqY9nNkxUa6gaZcQpzWJcwsgIgA8ja7fZtw=;
 b=AydNfa96RUQe1YgdTU883ti6jQ485uZcKSxCAXJ5atZCn4zommf+sOEP
 wSvg6NZz66IiFes6sC9TSdYXeMXUA3ghi+x6mO0d8kh2k/Zm74UmgvN4O
 OMYr73E5pZJCwIg2RFEFb1213OqnT5C2jHatf0mqE/ykXyDpIYQBr7Fa1
 Ts+7/oz3yAk+ijaN8nKKfdkbuhjY9ivupQ6yByMYzaK/0cgUERWWKUXDO
 /LwPNyCw694ZJpd39w1T4TR4zNEcX2cEIvtcjcM1n1TslVcOq/ENhHsIe
 gPqu5tE3gA4gOc43LI4bZzzpUSNCU7kWHluYs+t4ZAv5eUKlBZ8c7HKCq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="378620991"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="378620991"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 09:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="737565815"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="737565815"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 09:24:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 09:24:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 09:24:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 09:24:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H29FDY3TfyE6hZt7Gt7bC7UfYG+bqdTuiDxwEtBx8vjoHo6sc7tQPdFCVlEIdlpLD6Q9iMzuXMgGMo+sqFabwGfysCXNUThe8tVMlON7XDTwXI5I2pQwl7SdXUjGj+uIMLz7glHtPMUBt7z1pRkRuHre+7OmMwIgXc9YK5TjfsndYCyO2z2JAP3o9ku7W3J5Yj6FH7VeZl3ddobpTw4h9pLuCQBz+fAkHGI6i6JymTdz/03VJVKc/2OKaDD2NS9AwvfYfLxKgunIK1ZtjrgiiP/toK7rc9HQ2vt05pO2TKr/OMpAm1utvzJIBJS7gwuSW9PSiRe3T5BBnqUgu20MAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uTALAIDCIqY9nNkxUa6gaZcQpzWJcwsgIgA8ja7fZtw=;
 b=cCgFB56NIxA84zeT0T3JQU3Qfkk0YtPvHFnA0g1gmaVKKG0CJy5RXmVh/NZpp6qc7nHTsa/NLuMKNZKcj1AkgQB2cozFP50h6J3mhrbShlTOL8D/Ie0S0Zyt2TT3/9PvwQ5noxk9pkCnBkfUtgbsQ16k4deR/fyc0VyPv5h3cN0CkqU407xHZtaGXz5eGtr/cX0d4C1OY1F/JDp6Gdukg+LoQaY/9SVrCZQiMVC5bKQKVzeZZDvZPpdAMPsyEVcLgzoABaKzD382cQwtONfa8GrUBS2Nh+e475h/YzbZbPbpMka7+slVNknTdSsdzktiPAf50RVkDtyZ0yvbBNvS4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY5PR11MB6463.namprd11.prod.outlook.com (2603:10b6:930:31::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.19; Wed, 13 Sep 2023 16:24:03 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 16:24:03 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 12/19] drm/i915/dsb: Load LUTs using the
 DSB during vblank
Thread-Index: AQHZmKtlnnpNj3WyF0mIAYZQ1tEzgLAZiWYw
Date: Wed, 13 Sep 2023 16:24:03 +0000
Message-ID: <DM4PR11MB6360F1FC6B01506FD487B8EDF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY5PR11MB6463:EE_
x-ms-office365-filtering-correlation-id: b0b8dd25-27ae-4327-b01a-08dbb475d851
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fhLk9NVkMlwXjRTS1Q6ArTFQmv5UECUDJX/yf8cs4szmGUwtAKqqRbR5RX5oBpGleczpBVslHZVJtVRdJxQNwLtdGjVQSCNISOWt8m3IfLumel0hQRQmTzBVUbQbcxDjInJ1yToSUSeM/+y2/gGJSQ9eL9VBoBgtC96PuBqasT4bFot0LfIQlxY/K3EYyEn1IaF09JsnRMn+UKMGZxOZKOKdrz732+fa+xFpQzCfDLOUIZIZobX/buO1+t8HedHCWKJ0SBDoYiEpWf2H79HHPKeIU/HQ6kAgNQ4m10Gh6ha8MTI4BtJXWMV9ZaN5U+j247A5kZPUSdZ5v9Q0RT15+4RXb/2L3agLPJZ8M8fFqNeFh3dI5uGPjiM6UDd8IXSRv0qokLKH3q+Hqyr7dLH4/NE4b3hXISQyBSvo+d1/NyK3v8dlDus9o0ob6O87TGUXhIHP6YWgc5kZCKmKNE0f+Qvcmt/hw33ZVGUNTAvmL02TRWQciRBq6MfGcAivo/FIXiQGgGObdQiLTugryebs07nShtnDAV8ywjOdsblYy582cLzV9xeBKRY0WqrSXn/vZFYJv7NWk689VnUgT5mWd2DcHCcHniwzLY1891wKzZ0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(346002)(366004)(376002)(186009)(451199024)(1800799009)(53546011)(71200400001)(82960400001)(26005)(122000001)(38070700005)(110136005)(38100700002)(76116006)(9686003)(478600001)(6506007)(66574015)(83380400001)(86362001)(7696005)(52536014)(66946007)(5660300002)(8936002)(8676002)(66446008)(66476007)(64756008)(316002)(41300700001)(33656002)(66556008)(2906002)(55016003)(66899024);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3ZqemdoNjUwRkx3R2ZKZzhBY0RoMytkNlNTSlFYMzlrVWNBUFd3UzFUMFVR?=
 =?utf-8?B?UlhsblY1ZTYyRDJOZmhBbnZGS0hhbE5FYkhKZFVLdzJPZ1lvRWNTRmRqNExP?=
 =?utf-8?B?bm44blRJemJjVWZST3ZxSkV4eTNjR0tNSXJZSVk2MjFYS0NoYkhUMXZNVG5E?=
 =?utf-8?B?ZHp4N2R5Vk5YYi96QnptZUM2aHFBMEc5dXBZU0pNZkVlL3ZPTmZ1aXd6NlE5?=
 =?utf-8?B?WkF3a1ROVUNwNGhSK0EvdFlFZTNPdGNMTXlid0U5dURSZUF3QlNDRGNtamZB?=
 =?utf-8?B?cHovS3JJTHFhTzJxb0Y0OS80d3pkV01Xbnh0TU81OW5Ocy9tZG1kV3RPZUls?=
 =?utf-8?B?blpHQVdJclU0VTNLN21lczRSV3pPdlZmVkVEZk5mekhrSGt3WDhOc0hFcHNu?=
 =?utf-8?B?TU9OcTZwNDhhNEdZYXR0UFUzTUszSnA3bUtGajVqVlcwcmNteG16eGpBanNq?=
 =?utf-8?B?QklFNFRIZFpqWksyK1JEQ2FNM3RMT05kZXpDY0dsYnFJK1A2Wnczek41YUto?=
 =?utf-8?B?Vmd0RmtOWXFZOHN1eHNiVHhobkxVTmxxUWJlYjJ6ZUZWaVFobHd4cUxRbHlj?=
 =?utf-8?B?SGZwZUVqMlRtaHdmMTVWdTBMWE9Eekx4SDB4dTBJWG5XaGI2d3l1aG03Q3Fl?=
 =?utf-8?B?WEhLYlh3VFdZcDRlUEZjTzQxUmRoRkZZbi9JaEduZFhPMDBBYmRxMTNBc1ht?=
 =?utf-8?B?bXhoZGFGOWVCYk1GQlBMcE5NbVhkTEE0d2Y5cXJubWhQbkdiNGpsQnUvV3M4?=
 =?utf-8?B?VGdrRlJUd2R5a0JmTTdrazNZZit1QTJsY0NBeGF0K1ZDejNVOHdESDNuTHd2?=
 =?utf-8?B?ckVXR3FlVTZBeTB1c01CZVoxS2RScWJrcms1SzlEK1dvWld2b0xEZ2toMncw?=
 =?utf-8?B?WHQyS09HUDNOZ0RjT1hsZ1BhV0VzVXFEcC9aYmtQZSt4S1FkWmpSWll3bWFi?=
 =?utf-8?B?MFJjTXRQdXJ1WFRLQ1FVN1BRWjZVUUFMRUxiU1liNlgzdlRJYmF3dzhVSzlJ?=
 =?utf-8?B?NWxjQ1ZaTGFsc3ZRd2dMWmtCZENITGx6Zks1YjI5a0JjNDJuNGViaFhsREpw?=
 =?utf-8?B?NlhGNXBpdk8yT3FBbnFicm84OENFMmpxajJqTjZmM3FGaWZqSEQvN2ExVEFZ?=
 =?utf-8?B?YWhJeWNVZ3dGa1RKanpuZzl3YW9MNU1zOXpWSjhDOG0zaHBaZEJPSnUvc2NT?=
 =?utf-8?B?NHhZQlJNL1RXeEtHUS9uQk5BZWN1ODhHaWFpZ1ZCQzV4WVJxMVRZNnRtelF3?=
 =?utf-8?B?b3M3NjUxeUlieHFjQlRwL2ZjdUYvMnhkak85eW5kanYwOVF5TjJqbjFkWm9M?=
 =?utf-8?B?R29xQWdGRjEyWk9JVWpwUTk4eG5KYUZJUmpqUzFHczJIVlFWZU1OSmpOWVow?=
 =?utf-8?B?U25KdExQTjBhY1Y1ZmRNR1FjS1VTalduSFBUL2pORHRUU2J4TklEdUsyYnVm?=
 =?utf-8?B?cnFENGJ4TXpJVjY0b3pGNHlKcmRVYzBPcFdDV2xMYzZmNlVPQzhWSU5BbDNS?=
 =?utf-8?B?ZWxnVHZlUjVpejJjcm40Vys0RkFQUFRXb3l0U3NIbWhiRzBhVDV2ZUpXamNY?=
 =?utf-8?B?TkFYemVwcmtSWWVlczEwSHJLbUoxUC9SRjFHaUJjeU4rOUFOZks5VzdISmVO?=
 =?utf-8?B?NXRucUlNVURLNkFOTkRIWVp6bFlEemJVRWQ4dmRsaGEzeGRrMVNQb3d5ajN5?=
 =?utf-8?B?djlGc2hYQzIyamlRcUNqUy9HMzBRNkRXOWJjdWhmcWNZMHp0KysvMUZaUU9l?=
 =?utf-8?B?YnRQQzhudFVKeWdOVHJJUndrSWI3aXc3SmExNkZsb0NnMklvYTloZTdFZy9a?=
 =?utf-8?B?Um9EcmtYNnBieVNCOXJnbmNhS2ZKTjJtYmNmVFkwcjJUUXFDeVdFUThsenN3?=
 =?utf-8?B?VzlyejZpYjJVa0pPd2NqeVZ6VmJnNkxSVlZoUjJNSjdYREtOWnlyT3RMcnpo?=
 =?utf-8?B?NTlXS3pnTFdWak9VSkJGU3pET1dKMnJJY3RKbndYeitxWFBWd0dQTXNKNmI0?=
 =?utf-8?B?ci9NS2VXaE4wK3c0Z29yMUxIYmR1NzQ1NDR6N3d6VEJSK0FOeE9ZWllBbGFT?=
 =?utf-8?B?UTluN2Y5aGMrd1F2SHNXZnFKNFZ6Nlltdml1bnVnV2lFVHJtcEY2WklLZU9G?=
 =?utf-8?Q?hhWqlB/suguVjIWmqv+rZcxFt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b8dd25-27ae-4327-b01a-08dbb475d851
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 16:24:03.6292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FvsY1vTDhEcAEWLqNxlZobG2C/BiX9v26G3r6xHIpOUJj+8zs0528kQx5j40lUsYu9i33rEB6azJh48QfTN0Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6463
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 12/19] drm/i915/dsb: Load LUTs using the
 DSB during vblank
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxMi8xOV0gZHJtL2k5MTUvZHNiOiBMb2FkIExVVHMgdXNpbmcgdGhlIERTQg0K
PiBkdXJpbmcgdmJsYW5rDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTG9hZGluZyBMVVRzIHdpdGggdGhlIERTQiBvdXRz
aWRlIG9mIHZibGFuayBkb2Vzbid0IHJlYWxseSB3b3JrIGR1ZSB0byB0aGUNCj4gcGFsZXR0ZSBh
bnRpLWNvbGxpc2lvbiBsb2dpYy4gQXBwYXJlbnRseSB0aGUgRFNCIHJlZ2lzdGVyIHdyaXRlcyBk
b24ndCBnZXQgc3RhbGxlZA0KPiBsaWtlIENQVSBtbWlvIHdyaXRlcyBkbyBhbmQgaW5zdGVhZCB3
ZSBlbmQgdXAgY29ycnVwdGluZyB0aGUgTFVUIGVudHJpZXMuDQo+IERpc2FibGluZyB0aGUgYW50
aS1jb2xsaXNpb24gbG9naWMgd291bGQgYWxsb3cgdXMgdG8gc3VjY2Vzc2Z1bGx5IGxvYWQgdGhl
IExVVA0KPiBvdXRzaWRlIG9mIHZibGFuaywgYnV0IHByZXN1bWFibHkgdGhhdCByaXNrcyB0aGUg
TFVUIHJlYWRzIGZyb20gdGhlIHNjYW5vdXQNCj4gKHRlbXBvcnRhcmlseSkgZ2V0dGluZyBjb3Jy
dXB0ZWQgZGF0YSBmcm9tIHRoZSBMVVQgaW5zdGVhZC4NCg0KTml0OiBUeXBvIGluIHRlbXBvcmFy
aWx5Lg0KPiANCj4gVGhlIGFudGktY29sbGlzaW9uIGxvZ2ljIGlzbid0IGFjdGl2ZSBkdXJpbmcg
dmJsYW5rIHNvIHRoYXQgaXMgd2hlbiB3ZSBjYW4NCj4gc3VjY2Vzc2Z1bGx5IGxvYWQgdGhlIExV
VCB3aXRoIHRoZSBEU0IuIFRoYXQgaXMgd2hhdCB3ZSB3YW50IHRvIGRvIGFueXdheSB0bw0KPiBh
dm9pZCB0ZWFyaW5nLg0KDQpEb2luZyBpbiB2Ymxhbmsgc2hvdWxkIGJlIGdvb2QsIG9ubHkgY2Fz
ZSBJIHNlZSB3aGVyZSB3ZSBoYXZlIHRvIGJlIHdhdGNoZnVsIGlzIHRoZQ0KSFJSIChoaWdoIHJl
ZnJlc2ggcmF0ZSkgY2FzZXMuIFdlIG5lZWQgdG8gYmUgc3VyZSwgdGhyb3VnaCBEU0Igd2Ugd2ls
bCBiZSBhYmxlIHRvIGdldA0KdGhpcyBpbiB0aW1lLCBpdCBuZWVkcyB0byBiZSBmYXN0IGVub3Vn
aCB0byBmaXQgdGhlIHByb2dyYW1taW5nIHdpbmRvdywgZWxzZSB3ZSBtYXkNCmhhdmUgdG8gaGF2
ZSBzb21lIGZhbGxiYWNrIHRvIE1NSU8gYW5kIGRvIGluIGFjdGl2ZS4gSWRlYWxseSBpdCBzaG91
bGQgd29yayBvdXQgd2l0aA0KRFNCIGV4ZWN1dGlvbiwganVzdCBzb21ldGhpbmcgdG8gYmUgbWlu
ZGZ1bCBvZi4NCg0KQ2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICB8IDMwICsrKysrKysr
KysrKysrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmggICB8ICAyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
YyAgICB8ICA0ICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAgMyArKw0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYw0KPiBpbmRleCAyZGI5ZDFkNmRhZGQuLjA3N2U0NTM3MmRhYiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTY2MCwxMiAr
MTY2MCw2IEBAIHN0YXRpYyB2b2lkIGljbF9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5n
YW1tYV9tb2RlKTsNCj4gIAkJYnJlYWs7DQo+ICAJfQ0KPiAtDQo+IC0JaWYgKGNydGNfc3RhdGUt
PmRzYikgew0KPiAtCQlpbnRlbF9kc2JfZmluaXNoKGNydGNfc3RhdGUtPmRzYik7DQo+IC0JCWlu
dGVsX2RzYl9jb21taXQoY3J0Y19zdGF0ZS0+ZHNiLCBmYWxzZSk7DQo+IC0JCWludGVsX2RzYl93
YWl0KGNydGNfc3RhdGUtPmRzYik7DQo+IC0JfQ0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIHZs
dl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIEBA
IC0xNzcyLDYNCj4gKzE3NjYsOSBAQCB2b2lkIGludGVsX2NvbG9yX2xvYWRfbHV0cyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gew0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7
DQo+IA0KPiArCWlmIChjcnRjX3N0YXRlLT5kc2IpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCWk5
MTUtPmRpc3BsYXkuZnVuY3MuY29sb3ItPmxvYWRfbHV0cyhjcnRjX3N0YXRlKTsNCj4gIH0NCj4g
DQo+IEBAIC0xNzg4LDYgKzE3ODUsOSBAQCB2b2lkIGludGVsX2NvbG9yX2NvbW1pdF9hcm0oY29u
c3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2
KTsNCj4gDQo+ICAJaTkxNS0+ZGlzcGxheS5mdW5jcy5jb2xvci0+Y29sb3JfY29tbWl0X2FybShj
cnRjX3N0YXRlKTsNCj4gKw0KPiArCWlmIChjcnRjX3N0YXRlLT5kc2IpDQo+ICsJCWludGVsX2Rz
Yl9jb21taXQoY3J0Y19zdGF0ZS0+ZHNiLCB0cnVlKTsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVs
X2NvbG9yX3Bvc3RfdXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKSBAQCAtDQo+IDE4MDEsNiArMTgwMSw3IEBAIHZvaWQgaW50ZWxfY29sb3JfcG9zdF91cGRh
dGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpICB2b2lkIGlu
dGVsX2NvbG9yX3ByZXBhcmVfY29tbWl0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRj
X3N0YXRlKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhj
cnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+IA0KPiAgCS8qIEZJWE1FIERTQiBoYXMgaXNz
dWVzIGxvYWRpbmcgTFVUcywgZGlzYWJsZSBpdCBmb3Igbm93ICovDQo+ICAJcmV0dXJuOw0KPiBA
QCAtMTgxMyw2ICsxODE0LDEyIEBAIHZvaWQgaW50ZWxfY29sb3JfcHJlcGFyZV9jb21taXQoc3Ry
dWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJCXJldHVybjsNCj4gDQo+
ICAJY3J0Y19zdGF0ZS0+ZHNiID0gaW50ZWxfZHNiX3ByZXBhcmUoY3J0YywgMTAyNCk7DQo+ICsJ
aWYgKCFjcnRjX3N0YXRlLT5kc2IpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWk5MTUtPmRpc3Bs
YXkuZnVuY3MuY29sb3ItPmxvYWRfbHV0cyhjcnRjX3N0YXRlKTsNCj4gKw0KPiArCWludGVsX2Rz
Yl9maW5pc2goY3J0Y19zdGF0ZS0+ZHNiKTsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX2NvbG9y
X2NsZWFudXBfY29tbWl0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSBAQCAt
DQo+IDE4MjQsNiArMTgzMSwxNyBAQCB2b2lkIGludGVsX2NvbG9yX2NsZWFudXBfY29tbWl0KHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCWNydGNfc3RhdGUtPmRz
YiA9IE5VTEw7DQo+ICB9DQo+IA0KPiArdm9pZCBpbnRlbF9jb2xvcl93YWl0X2NvbW1pdChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3sNCj4gKwlpZiAoY3J0
Y19zdGF0ZS0+ZHNiKQ0KPiArCQlpbnRlbF9kc2Jfd2FpdChjcnRjX3N0YXRlLT5kc2IpOw0KPiAr
fQ0KPiArDQo+ICtib29sIGludGVsX2NvbG9yX3VzZXNfZHNiKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJcmV0dXJuIGNydGNfc3RhdGUtPmRzYjsNCj4g
K30NCj4gKw0KPiAgc3RhdGljIGJvb2wgaW50ZWxfY2FuX3ByZWxvYWRfbHV0cyhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpDQo+IHsNCj4gIAlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgNCj4gaW5k
ZXggODAwMjQ5MmJlNzA5Li44ZWNkMzYxNDlkZWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgNCj4gQEAgLTE5LDYgKzE5LDggQEAgdm9pZCBpbnRl
bF9jb2xvcl9jcnRjX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpOyAgaW50DQo+IGludGVs
X2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgIHZvaWQN
Cj4gaW50ZWxfY29sb3JfcHJlcGFyZV9jb21taXQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpOyAgdm9pZA0KPiBpbnRlbF9jb2xvcl9jbGVhbnVwX2NvbW1pdChzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICtib29sIGludGVsX2NvbG9yX3VzZXNfZHNi
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gK3ZvaWQgaW50
ZWxfY29sb3Jfd2FpdF9jb21taXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypj
cnRjX3N0YXRlKTsNCj4gIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0X25vYXJtKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgIHZvaWQNCj4gaW50ZWxfY29sb3JfY29t
bWl0X2FybShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2b2lk
DQo+IGludGVsX2NvbG9yX3Bvc3RfdXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
cnRjLmMNCj4gaW5kZXggMTgyYzZkZDY0ZjQ3Li4zNmM5YjU5MGEwNTggMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IEBAIC0yNCw2ICsyNCw3IEBA
DQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90cmFjZS5oIg0KPiAgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXlfdHlwZXMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcnJzLmgiDQo+ICsjaW5jbHVk
ZSAiaW50ZWxfZHNiLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHNpLmgiDQo+ICAjaW5jbHVkZSAi
aW50ZWxfZmlmb191bmRlcnJ1bi5oIg0KPiAgI2luY2x1ZGUgImludGVsX3BpcGVfY3JjLmgiDQo+
IEBAIC0zOTQsNyArMzk1LDggQEAgc3RhdGljIGJvb2wgaW50ZWxfY3J0Y19uZWVkc192Ymxhbmtf
d29yayhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGENCj4gIAlyZXR1
cm4gY3J0Y19zdGF0ZS0+aHcuYWN0aXZlICYmDQo+ICAJCSFpbnRlbF9jcnRjX25lZWRzX21vZGVz
ZXQoY3J0Y19zdGF0ZSkgJiYNCj4gIAkJIWNydGNfc3RhdGUtPnByZWxvYWRfbHV0cyAmJg0KPiAt
CQlpbnRlbF9jcnRjX25lZWRzX2NvbG9yX3VwZGF0ZShjcnRjX3N0YXRlKTsNCj4gKwkJaW50ZWxf
Y3J0Y19uZWVkc19jb2xvcl91cGRhdGUoY3J0Y19zdGF0ZSkgJiYNCj4gKwkJIWludGVsX2NvbG9y
X3VzZXNfZHNiKGNydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGludGVsX2Ny
dGNfdmJsYW5rX3dvcmsoc3RydWN0IGt0aHJlYWRfd29yayAqYmFzZSkgZGlmZiAtLWdpdA0KPiBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZjIzZGQ5Mzdj
MjdjLi4yNWQ2YjE5ZTY5NDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03OCw2ICs3OCw3IEBADQo+ICAjaW5jbHVkZSAiaW50
ZWxfZHBsbF9tZ3IuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcHQuaCINCj4gICNpbmNsdWRlICJp
bnRlbF9kcnJzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZHNiLmgiDQo+ICAjaW5jbHVkZSAiaW50
ZWxfZHNpLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHZvLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxf
ZmIuaCINCj4gQEAgLTcwNTYsNiArNzA1Nyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19j
b21taXRfdGFpbChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlmb3Jf
ZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUs
IGkpIHsNCj4gIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5kb19hc3luY19mbGlwKQ0KPiAgCQkJaW50
ZWxfY3J0Y19kaXNhYmxlX2ZsaXBfZG9uZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gKwkJaW50ZWxf
Y29sb3Jfd2FpdF9jb21taXQobmV3X2NydGNfc3RhdGUpOw0KPiAgCX0NCj4gDQo+ICAJLyoNCj4g
LS0NCj4gMi4zOS4zDQoNCg==
