Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 210B45E7B09
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 14:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A4310E51C;
	Fri, 23 Sep 2022 12:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BFC910E52E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663937130; x=1695473130;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QBqVNc/fCRAFp6bR3shMPqauHEFYUaBpl5gGQ9YU3SA=;
 b=TnIKUf98Ia5iiSgaoBQaFHUBpJBiJy7tBH8HlN3X3EzwSjV4x4dp1+4t
 tZ+niohPlIdvxD7MDsxH7QK9izcdkbfOL6qjV5MzxW0KTyiZE8we90NEh
 EuX2txM5ebZoh4adXKLx/MBkEavywXhg0P+OVRQdFVF52CcZWDnI7mLnO
 6VWH2ad9IWZf/Wol0mzhMIN+GUTEAM3FYa2b4ddx1H7tAzwc6Y9AOA8P0
 0yiYG+0lNgnWOX5l8iTIEmL5m1Cd1caWcuCSx7+aSna1ukvR7JmH3bJcZ
 TguW6lFGlLL7aO1nxqDRozEm7UbyFD3n8gt9snRx8PIDXA+y6IX4t690k A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="364599240"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="364599240"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 05:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="745784121"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 23 Sep 2022 05:45:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:45:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:45:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 05:45:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 05:45:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHxRmhj9UR65zBDkxK+JsPGexek9tIGMx1EVPVXJvT+A6/5NZUPveVPRIHNgmEjnuwcR244vsniVOHVRoW1Im5k+9FHwwjxI8XNJ/I3b1ubdVORspXrvVEQqJaHE3NlqYDy4+AWu4Mggg+V/q1s7nXoJBOC2rmvwMnpFaeQOBSlaXDo+P5hiAF+NOeEgoG+l+PemlyMkL9SzdtjeFXUpwfR8KoFL6zXPQhHCRoI0L/ms97eTxGXCpT3BnuTl5+iijuy3IFJshTDDgBqe7uyqA6U5C70rWRQu2Mf1wFaG8cvhNqplRjIjGYEfeI8nIUD+KIzZt6ITakwa1iiC+Fls2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QBqVNc/fCRAFp6bR3shMPqauHEFYUaBpl5gGQ9YU3SA=;
 b=lbAPfCwf+kfcCb9NPWN2oTSHgFd6b0BPtay+udCLHm6y/24CN9e5izaynRWzZi0fCSG6Voozvc85tGczAtoVwk39plmm3vx6diJ4qwVUpJInQBlfxDxoU8T0LPEJ6TjWJgMqAceU+FtaOqs91drpjbU8a06D47a8JyoyE83Af1EMa2r7XR9kS9B39sTHaRtksMX+AKJLWRU2ailsNJNnYxaxlKAwf92X2pPcw7u8V+9BmG7X/1Qw6UA38jSqUOztNPAijTx+190Nog9VTY7hdh+/nBC/4TTLSRuodXVa31nXxC8Toq+5z+D6lcOJAyeQQ7T7ntL+KhmF6MGEQLK4DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB6063.namprd11.prod.outlook.com (2603:10b6:8:76::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.20; Fri, 23 Sep 2022 12:45:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::cdb6:4df4:daf2:ce1f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::cdb6:4df4:daf2:ce1f%6]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 12:45:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field handling
Thread-Index: AQHYzllhxwHtzt0mjEaOQi9GC2uKZq3rbCgAgAEdtgCAAGv3gIAAAi0A
Date: Fri, 23 Sep 2022 12:45:26 +0000
Message-ID: <46dcdc5eab4fa7f0fab57020dc82eec8eb066dc7.camel@intel.com>
References: <20220922075948.111558-1-jouni.hogander@intel.com>
 <3dddd19c98061e1e8173c65d1a8dcc8f5b380b80.camel@intel.com>
 <af9c90fbd52633203095dc10fb62902b190f32cc.camel@intel.com>
 <86089a49cbb3123d0e8603c592a740587b3e6f2f.camel@intel.com>
In-Reply-To: <86089a49cbb3123d0e8603c592a740587b3e6f2f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB6063:EE_
x-ms-office365-filtering-correlation-id: 7d2aa75d-3632-4f55-6897-08da9d617d83
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: piNBPqWA1KEKMHgZjufaQWltzNtl2ZVKEqeK1MZW5L7X9KXW857DxWtaNuGZnbaqkcpunDDuNg5lXjLP+v0nTPynCdOiFtVuiwPi30J63Z9nD5JI/zgpj6UL2SQn6jeL/kRfjymmDQcmmNRLhFOj8s2jkjvx3/L8cMMvigfuDPvRwyWBswUnIpWhxTOtc4qkFwteK8Q2eZr7sp4VOBvELShkFCzEhG8xmKY25BNQ7Wl4dLSYIlwKDVpBA3X3IV829LQAit5EUc9y2AltvQ/4UvMSCRjuvWu8/7+qvbNrje6wLSmArf810WlC2XyEQL3o+ADEpUy9k3O69oh8BoOTkPDOz2x9MXp6A0v8apANIGJaQJm6QXwbZrA2wbLiM1RcYnOj2Xzsi2UDbUM3FcDZNb3jPdWDTzzsY9M0UMva3SIKjUwURb0R0FIBX0eGXNTpQGvFiLbuS6ByHrcA4j3rSB8CoqUAOG5NZAWaOuMqIcB+6NQWYKQFJYl3tG/sHga8cc/76RAWPw04HDHqkufcwIDd/NDrWV3Rna5/OsFcJTfnIc/SxOBP8OmL6Yw27hVtOhP4UwqdpcdhiekNkxtOotWa3zR/+gWr4/I5as3ggkR+dNW6R6+5wncHP4oXwTe75+bQkg6RbPh4bY7XeKYAl+Sw7g2qJgXD2xjvKWYbxdcnB5qGTPDfFMYQGleKojBWd+jMLAs0XrfDpZkrB0re+KyZF+3IUEZGItUv1qOK9pXtotM1Aqd6J4wyn6dVqFhtZ9HitL9Otb+B7FbEJk0/ZWgPy8o8OcBomI3CH0VSOsE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(136003)(39860400002)(346002)(396003)(451199015)(6512007)(26005)(76116006)(83380400001)(66946007)(6636002)(38070700005)(36756003)(4326008)(91956017)(66476007)(66556008)(64756008)(316002)(110136005)(186003)(8676002)(2616005)(86362001)(966005)(82960400001)(66446008)(5660300002)(41300700001)(107886003)(6506007)(8936002)(71200400001)(6486002)(66574015)(2906002)(478600001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlgxTVVDcnlYeXgzT3dHSURuWmJPK28rdWIyeTN6U1lhbFhYc3dpUEdVcENo?=
 =?utf-8?B?dU1RK1N6TXQ3K3Zmd05McCtMLzF3NjJSMTZSUGZoVzBHZjI1aDJRVjkxNlU1?=
 =?utf-8?B?TFR3UWlWV0dsWk1BM3RPY3I5ZThrNlRnYzFOWVA0NHZKYTNXcW5sb3hCNXh3?=
 =?utf-8?B?bVVRT2RvRVFWV0R6dlZicEZMUzRIb1hmOVNUbE0wOU94Zmlzb1pvc09LdUND?=
 =?utf-8?B?b0M1N2RFckJzQzVSM3RFaDZyUmpzK3RUVXd3SDIzVm9GbjZTYnk4NFJFZExL?=
 =?utf-8?B?WW5wMTVtcFVBdi9RZFVVYWJvbVp3MmJhaTE2SmdjRkx6ODQ5NFJNZEpLTnNh?=
 =?utf-8?B?WFN6V3NramxxeU5vMnRDTGhZS2VPSUV4dEU5VmF5bVV4UVdRNmZWdkNMSFVR?=
 =?utf-8?B?d0lDVndzYWJ4QTAyYVF6Yjlya2lwcTFxYnFRWlNoYTRGbzR6Wkxidk0rMXhQ?=
 =?utf-8?B?QjJjNGJKVEVuc0I1YWhFQkhteTl1S0lEbFBBdXdhOEFqeGlTNDZpWnZHWkdY?=
 =?utf-8?B?WGVoMi9QRnN6WXdVckVzMzRJdUVSd1FhTEMwa3NJN3E3TE0vVzk0N0ZSZ3g3?=
 =?utf-8?B?MzVmWGpIQjYyamoydGcrWFpuZTNudFdqNU1YbVk2L0JEdTFheGFMcU5BWTZB?=
 =?utf-8?B?anNWYmVleVY1UXNnY1dXS20yUm5TNkNrV2kxL1RBNXhRajlmUW1aME96TFd5?=
 =?utf-8?B?cS9WQ2xKYUtqaUhHZ21HL09zeHF6NlFpWG1RLzVpNFlzbDc2ZnBQMnVCQjNu?=
 =?utf-8?B?eFRPek9DUFF2NmVZYWN5TXJxbjJTVFpraDJCN0RwMUdJY3FOdUhvYU1GMHFk?=
 =?utf-8?B?ZnVxNVJqMmhESHRaK1R4a3ducWVHcW1sZHhYYnFkSVM4YnBZZjVzeHVXQWll?=
 =?utf-8?B?VE5KVHhxczF0RzRSejhpUnNCM0x2N1FKaGUweTRIUkoyWFhVR3RHWGZzdnRl?=
 =?utf-8?B?bkZrbzlyR2QvaUtLQnB1dktJcEMvVzB0RUZ3MEFKejlrZGJEeGp5OE1PaHMx?=
 =?utf-8?B?WmlleDVlRmg0TWVMUzZCamk3bEFOOXF1RFkrZzN0N3JyZ2Y2dTRaSFk2dEJN?=
 =?utf-8?B?cHh4TG5pWDRVNThkRVVlS3VMaFRTalVUVlh6ZnZJVGVSOWlUa2ZpZjRFRTlh?=
 =?utf-8?B?MEhSTG9tOWl3QTBwU2V0cGNuckFzdGtZeFRneXJ0WnowM2NLWk83U1dob21p?=
 =?utf-8?B?VU9nVWNTSTdZN0J2QWZKMmxtUEdvZWdTSUgySlZiQjBVNzBCNjBCNmlIL3JZ?=
 =?utf-8?B?QVY3ekdKcFB6MmZFV1FLVC9wS3dTUFZaTkxrUGw5cFZScWdndmUxVFJxVWR0?=
 =?utf-8?B?TVpDN3ZIT2Y1cVZmcHlPYWFJUVlRUlFLTVVQemlkWnlnenFQN2htbWc0cE8x?=
 =?utf-8?B?YVRKUmVqYlRHZTJSbVA3OG50ZDlHWFlXRGJRWnVtaVV1SFZaQnhFdElFaS81?=
 =?utf-8?B?OW1oVWZGajZ6YmMybDJMdUU0UGJlVnlhL2xsVHg0OXJnV0txcEJ1TmJ3ckpu?=
 =?utf-8?B?ZTZmb0VLcmoxdUdCeFVEQjl5SjlpM1dCTC8zdS9MejJURXAycm0yU2tqRUhT?=
 =?utf-8?B?UFFybW9qV1VIU2R6emtpK3VBb25JY2FQK3Zka0pMRGVmNE5xUTg4aitWalVC?=
 =?utf-8?B?MVRYQjNRbEpnU2tzNklSVnFJbmxJTnB3L29GYVhEYW92ZmlWbTZQOHlpdDM0?=
 =?utf-8?B?aXAvdWovbWc3MWxrSTZYVWJFbFh1enhRVm9CdUhqWElyS1BHRjYvbUpVaHZ4?=
 =?utf-8?B?SmxxV0JGZ2VmQVd1aksreUZQbnlOWnM5aGc1eXZKMWFwck5LdHVJNk5YRjBm?=
 =?utf-8?B?anFlVzlPczhTUkdLV29kQlBGRkdHVENGa0pEUTI5YTQxeHYzVDJlZmJXclVT?=
 =?utf-8?B?bVB2cDJHajFFbnRJOHRRNS9ST2Uxb3YwQ2R5WXRtQjVielN5NFJyTk1mWndn?=
 =?utf-8?B?alZSZFFsL3lBL1ppY2k3eDBReU5XQy9qTGZ3cnhrN1Jtcm9qQXZsOHJoa2Q1?=
 =?utf-8?B?MW8xaHJoazhubVgvQmFYWndiRkF6MXBySWNEK1VxRnkxS2RDOXNObFFZMXZB?=
 =?utf-8?B?clZld2hRcGNDTUNVUllBa3d6YWV3cjRJWXBxcFhrOXY3UUFvck9aUVNWbjM2?=
 =?utf-8?B?cGJHd29QMzFieVprUk9Gb1ZacnBVLzczd0p4OUhGWTFhdWc5RTRNQnlqVTNu?=
 =?utf-8?B?UlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A16C71E5C1B2DD4DB611BAE2C12DC5F7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d2aa75d-3632-4f55-6897-08da9d617d83
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 12:45:26.8874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: szRQJF05cdKZv1Kxg2fak7CZwcGhZ15L8BKOJ3G75wHFOXe3AxJwwVJyUnAIGoSmq2j8iiivykI+fsQT2zbuaGo++QmJDjCSFSu69oveMJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field
 handling
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

T24gRnJpLCAyMDIyLTA5LTIzIGF0IDEyOjM3ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTA5LTIzIGF0IDA2OjExICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gT24gVGh1LCAyMDIyLTA5LTIyIGF0IDEzOjA4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+IE9uIFRodSwgMjAyMi0wOS0yMiBhdCAxMDo1OSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOg0KPiA+ID4gPiBDdXJyZW50IFBTUiBjb2RlIGlzIHN1cHBvc2VkIHRvIHVzZSBU
UkFOU0NPREVSX0VEUCB0byBmb3JjZSAwDQo+ID4gPiA+IHNoaWZ0DQo+ID4gPiA+IGZvcg0KPiA+
ID4gPiBiaXRzIGluIFBTUl9JTVIvSUlSIHJlZ2lzdGVyczoNCj4gPiA+ID4gDQo+ID4gPiA+IC8q
DQo+ID4gPiA+IMKgKiBnZW4xMisgaGFzIHJlZ2lzdGVycyByZWxhdGl2ZSB0byB0cmFuc2NvZGVy
IGFuZCBvbmUgcGVyDQo+ID4gPiA+IHRyYW5zY29kZXINCj4gPiA+ID4gwqAqIHVzaW5nIHRoZSBz
YW1lIGJpdCBkZWZpbml0aW9uOiBoYW5kbGUgaXQgYXMgVFJBTlNDT0RFUl9FRFANCj4gPiA+ID4g
dG8NCj4gPiA+ID4gZm9yY2UNCj4gPiA+ID4gwqAqIDAgc2hpZnQgaW4gYml0IGRlZmluaXRpb24N
Cj4gPiA+ID4gwqAqLw0KPiA+ID4gPiANCj4gPiA+ID4gQXQgdGhlIHRpbWUgb2Ygd3JpdGluZyB0
aGUgY29kZSBhc3N1bXB0aW9uICJUUkFOU0NPREVSX0VEUCA9PQ0KPiA+ID4gPiAwIg0KPiA+ID4g
PiB3YXMgbWFkZS4NCj4gPiA+ID4gVGhpcyBpcyBub3QgdGhlIGNhc2UgYW5kIGFsbCBmaWVsZHMg
aW4gUFNSX0lNUiBhbmQgUFNSX0lJUiBhcmUNCj4gPiA+ID4gc2hpZnRlZA0KPiA+ID4gPiBpbmNv
cnJlY3RseSBpZiBESVNQTEFZX1ZFUiA+PSAxMi4NCj4gPiA+IA0KPiA+ID4gRnJvbSB3aGVyZSBh
cmUgeW91IGdldHRpbmcgdGhhdCBUUkFOU0NPREVSX0VEUCA9PSAwPw0KPiA+IA0KPiA+IEl0J3Mg
bm90LiBUaGF0IGlzIG15IHBvaW50LiBJZiB5b3UgbG9vayBhdCB0aGlzIGNvbW1pdDoNCj4gPiAN
Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vZnJlZWRlc2t0b3AvZHJtLXRpcC9jb21taXQvODI0MWNm
YmU2N2Y0MDgyZWVlNWZjNzJlNWE4MDI1YzViNThjMmRkZg0KPiA+IA0KPiA+IGFkZGluZyB0aGlz
IGNvbW1lbnQ6DQo+ID4gDQo+ID4gK8KgwqDCoMKgwqDCoCAvKg0KPiA+ICvCoMKgwqDCoMKgwqDC
oCAqIGdlbjEyKyBoYXMgcmVnaXN0ZXJzIHJlbGF0aXZlIHRvIHRyYW5zY29kZXIgYW5kIG9uZSBw
ZXINCj4gPiB0cmFuc2NvZGVyDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogdXNpbmcgdGhlIHNhbWUg
Yml0IGRlZmluaXRpb246IGhhbmRsZSBpdCBhcw0KPiA+IFRSQU5TQ09ERVJfRURQDQo+ID4gdG8g
Zm9yY2UNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiAwIHNoaWZ0IGluIGJpdCBkZWZpbml0aW9uDQo+
ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gDQo+ID4gYW5kIHRoZSBjb2RlIGFkZGVkIGJ5IHRo
aXMgY29tbWl0IGlzIGRvaW5nDQo+ID4gDQo+ID4gLi4uDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdHJhbnNfc2hpZnQgPSAwOw0KPiA+IG1hc2sgPSBFRFBfUFNSX0VSUk9SKHRy
YW5zX3NoaWZ0KTsNCj4gPiAuLi4NCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgIG1hc2sgPSBFRFBf
UFNSX0VSUk9SKHRyYW5zX3NoaWZ0KTsNCj4gPiAuLi4NCj4gPiANCj4gPiBhbmQgaWYgd2UgbG9v
ayBhdCBFRFBfUFNSX0VSUk9SIGRlZmluaXRpb246DQo+ID4gDQo+ID4gLi4uDQo+ID4gI2RlZmlu
ZcKgwqAgX0VEUF9QU1JfVFJBTlNfU0hJRlQodHJhbnMpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCgo
dHJhbnMpID09DQo+ID4gVFJBTlNDT0RFUl9FRFAgPyBcDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAgOiAoKHRyYW5zKSAtDQo+ID4gVFJBTlNDT0RFUl9BICsg
MSkgKiA4KQ0KPiA+IC4uLg0KPiA+ICNkZWZpbmXCoMKgIEVEUF9QU1JfRVJST1IodHJhbnMpwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKDB4NCA8PA0KPiA+IF9FRFBfUFNSX1RS
QU5TX1NISUZUKHRyYW5zKSkNCj4gPiAuLi4NCj4gPiANCj4gPiBFRFBfUFNSX0VSUk9SKDApIGlz
IDB4NDAwIHdoaWNoIGlzIHdyb25nIGZvciBlLmcuIFRHTC4gVXNpbmcNCj4gPiBUUkFOU0NPREVS
X0VEUCBhcyBtZW50aW9uZWQgaW4gdGhlIGFkZGVkIGNvbW1lbnQ6DQo+ID4gRURQX1BTUl9FUlJP
UihUUkFOU0NPREVSX0VEUCkgaXMgMHg0IHdoaWNoIGlzIGNvcnJlY3QuDQo+ID4gDQo+ID4gTXkg
cGF0Y2ggaXMgZG9pbmcgd2hhdCBpcyBpbiB0aGUgY29tbWVudC4gVGhlcmUgYXJlIG90aGVyIHdh
eSB0bw0KPiA+IGZpeA0KPiA+IHRoaXMsIGJ1dCB0byBteSBvcGluaW9uIG9yaWdpbmFsIGlkZWEg
dXNpbmcgVFJBTlNDT0RFUl9FRFAgaW4NCj4gPiBjb21taXQgDQo+ID4gODI0MWNmYmU2N2Y0MDgy
ZWVlNWZjNzJlNWE4MDI1YzViNThjMmRkZiB0byBmb3JjZSAwIHNoaWZ0IGtlZXBzIHRoZQ0KPiA+
IGNvZGUgcHJldHR5IGNsZWFuLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBlbnVtIHBpcGUgew0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoElOVkFMSURfUElQRSA9IC0xLA0KPiA+ID4gDQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgUElQRV9BID0gMCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBQSVBFX0IsDQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgUElQRV9DLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoFBJUEVf
RCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBfUElQRV9FRFAsDQo+ID4gPiANCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBJOTE1X01BWF9QSVBFUyA9IF9QSVBFX0VEUA0KPiA+ID4gfTsNCj4gPiA+IA0K
PiA+ID4gI2RlZmluZSBwaXBlX25hbWUocCkgKChwKSArICdBJykNCj4gPiA+IA0KPiA+ID4gZW51
bSB0cmFuc2NvZGVyIHsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBJTlZBTElEX1RSQU5TQ09ERVIg
PSAtMSwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAq
IFRoZSBmb2xsb3dpbmcgdHJhbnNjb2RlcnMgaGF2ZSBhIDE6MSB0cmFuc2NvZGVyIC0+DQo+ID4g
PiBwaXBlDQo+ID4gPiBtYXBwaW5nLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGtlZXAgdGhl
aXIgdmFsdWVzIGZpeGVkOiB0aGUgY29kZSBhc3N1bWVzIHRoYXQNCj4gPiA+IFRSQU5TQ09ERVJf
QT0wLCB0aGUNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiByZXN0IGhhdmUgY29uc2VjdXRpdmUg
dmFsdWVzIGFuZCBtYXRjaCB0aGUgZW51bSB2YWx1ZXMNCj4gPiA+IG9mDQo+ID4gPiB0aGUgcGlw
ZXMNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGV5IG1hcCB0by5FRFBfUFNSX1RSQU5TXw0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09E
RVJfQSA9IFBJUEVfQSwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBUUkFOU0NPREVSX0IgPSBQSVBF
X0IsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgVFJBTlNDT0RFUl9DID0gUElQRV9DLA0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJfRCA9IFBJUEVfRCwNCj4gPiA+IA0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoC8qDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogVGhlIGZvbGxvd2luZyB0
cmFuc2NvZGVycyBjYW4gbWFwIHRvIGFueSBwaXBlLCB0aGVpcg0KPiA+ID4gZW51bQ0KPiA+ID4g
dmFsdWUNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBkb2Vzbid0IG5lZWQgdG8gc3RheSBmaXhl
ZC4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBUUkFO
U0NPREVSX0VEUCwNCj4gPiA+IA0KPiA+ID4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9k
cm0tdGlwL3RyZWUvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmgj
bjg3DQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IEZpeCB0aGlzIGJ5IHVzaW5nIFRSQU5TQ09E
RVJfRURQIGRlZmluaXRpb24gaW5zdGVhZCBvZiAwLiBFdmVuDQo+ID4gPiA+IHRob3VnaHQNCj4g
PiA+ID4gVFJBTlNDT0RFUl9FRFAgZG9lc24ndCBleGlzdCBpbiBkaXNwbGF5X3ZlciA+PSAxMiBk
b2luZyBpdCB0aGlzDQo+ID4gPiA+IHdheQ0KPiA+ID4gPiBrZWVwcw0KPiA+ID4gPiBjb2RlIGNs
ZWFuIGFuZCByZWFkYWJsZS4NCj4gPiA+IA0KPiA+ID4gdHJhbnNfc2hpZnQgPSAwIGlzIGZpbmUs
IHdlIG5lZWRlZCB0aGlzIGJlY2F1c2UgZGlzcGxheTEyKw0KPiA+ID4gc3BsaXRlZA0KPiA+ID4g
ZnJvbSBhIHNpbmdsZSByZWdpc3RlciB3aXRoIGFsbCB0cmFuc2NvZGVyIHRvIG9uZSByZWdpc3Rl
ciBwZXINCj4gPiA+IHRyYW5zY29kZXIuDQo+ID4gPiANCj4gPiANCj4gPiBObywgaXQncyBub3Qu
IFNlZSB0aGUgZGVmaW5pdGlvbiBvZsKgIF9FRFBfUFNSX1RSQU5TX1NISUZUIGFuZA0KPiA+IEVE
UF9QU1JfVFJBTlNfKi4gTWF5YmUgcmVuYW1pbmcgdHJhbnNfc2hpZnQgdG8gdHJhbnNjb2RlciB3
b3VsZA0KPiA+IHByZXZlbnQNCj4gPiBtaXN1bmRlcnN0YW5kaW5nIGhlcmUuDQo+IA0KPiBPa2F5
IG5vdyBJIHVuZGVyc3Rvb2QuDQo+IEluIG15IG9waW5pb24gdGhlIHByb3BlciBmaXggd291bGQg
YmUgYWRkIFRHTF9YIG1hY3JvcyB0byBiZSB1c2VkIGluDQo+IGRpcGxheTEyKyBwYXRocyBhbmQg
ZHJvcCB0aGUgRURQIHRyYW5zY29kZXIgY29uY2VwdCB0aGF0IGRvIG5vdCBleGlzdA0KPiBpbiBU
R0wrLg0KDQpPaywgSSBzdGFydGVkIHRvIGxvb2sgYXQgdGhpcyBvcmlnaW5hbGx5IGFuZCBpdCBn
ZXRzIGEgYml0IG1lc3N5IGFzDQplYWNoIGJpdCBpbiBQU1JfSU1SL1BTUl9JU1IgbmVlZHMgc2Vw
YXJhdGUgaGFuZGxpbmcuIElmIHdlIGNob29zZSB0aGlzDQp0aGVuIEkgd2FzIHRoaW5raW5nIGFk
ZGluZyBzaW1pbGFyIF9iaXRfZ2V0IGZ1bmN0aW9ucyBhcyB3ZSBoYXZlIGZvcg0KbWFuX3Rya19j
dGwgYml0cy4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCkkgd291bGQgc3RpbGwgY29uc2lkZXIgY3Vy
cmVudCBhcHByb2FjaCBhcyBmb3JjaW5nIDAgc2hpZnRpbmcgdXNpbmcNCkVEUF9QU1JfVFJBTlNf
KiBrZWVwcyBpdCBwcmV0dHkgc2ltcGxlLg0KDQo+IA0KPiBBbHNvIHBsZWFzZSBpbmNsdWRlIGEg
Zml4ZXMgdGFnIHBvaW50aW5nIHRvDQo+IDgyNDFjZmJlNjdmNDA4MmVlZTVmYzcyZTVhODAyNWM1
YjU4YzJkZGYgc28gdGhpcyBnZXRzIGJhY2twb3J0ZWQuDQo+IA0KPiA+IA0KPiA+ID4gPiANCj4g
PiA+ID4gdjI6IEltcHJvdmUgY29tbWl0IG1lc3NhZ2UgKEpvc8OpKQ0KPiA+ID4gPiANCj4gPiA+
ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+IENjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gDQo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgNiArKystLS0NCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGluZGV4IDlk
ZWY4ZDlmYWRlNi4uOWVjZjFhOWExMTIwIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gQEAgLTEyOSw3ICsxMjksNyBA
QCBzdGF0aWMgdm9pZCBwc3JfaXJxX2NvbnRyb2woc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ICpp
bnRlbF9kcCkNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIDAgc2hpZnQgaW4gYml0IGRlZmlu
aXRpb24NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikgew0KPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJhbnNfc2hpZnQgPSAwOw0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJhbnNfc2hpZnQgPSBUUkFOU0NPREVSX0VEUDsNCj4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbXJfcmVnID0gVFJBTlNfUFNSX0lN
UihpbnRlbF9kcC0NCj4gPiA+ID4gPnBzci50cmFuc2NvZGVyKTsNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoH0gZWxzZSB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dHJhbnNfc2hpZnQgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ID4gPiA+IEBAIC0xOTUs
NyArMTk1LDcgQEAgdm9pZCBpbnRlbF9wc3JfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2RwDQo+
ID4gPiA+ICppbnRlbF9kcCwgdTMyIHBzcl9paXIpDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBp
OTE1X3JlZ190IGltcl9yZWc7DQo+ID4gPiA+IMKgDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlmdCA9IDA7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlmdCA9IFRSQU5TQ09ERVJfRURQOw0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGltcl9yZWcgPSBUUkFOU19QU1JfSU1SKGlu
dGVsX2RwLQ0KPiA+ID4gPiA+cHNyLnRyYW5zY29kZXIpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgfSBlbHNlIHsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cmFu
c19zaGlmdCA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gPiA+ID4gQEAgLTExOTcsNyAr
MTE5Nyw3IEBAIHN0YXRpYyBib29sDQo+ID4gPiA+IHBzcl9pbnRlcnJ1cHRfZXJyb3JfY2hlY2so
c3RydWN0DQo+ID4gPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LA0KPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFRSQU5TX1BTUl9JSVIoaW50ZWxfZHAtDQo+ID4gPiA+ID4gcHNy
LnRyYW5zY29kZXIpKTsNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZh
bCAmPSBFRFBfUFNSX0VSUk9SKDApOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgdmFsICY9IEVEUF9QU1JfRVJST1IoVFJBTlNDT0RFUl9FRFApOw0KPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBFRFBfUFNSX0lJUik7DQo+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsICY9IEVEUF9QU1JfRVJST1IoaW50
ZWxfZHAtPnBzci50cmFuc2NvZGVyKTsNCj4gPiA+IA0KPiA+IA0KPiANCg0K
