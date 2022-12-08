Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFCF64735A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC9510E0EF;
	Thu,  8 Dec 2022 15:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E8D310E4B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670514075; x=1702050075;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kr/olnHdJXQtoSG6MJmWkwFP2OTPZNZ6nER/XmQETNI=;
 b=RJB41QI2n0mo0NvUzZkt8JfdN2xczE8otHVvy7TvErjvORDjq92vQRZr
 b95LjgC87zv2vtODdj9ZFmWD5l/2vMXBMNSR2LO99FIYCHvoOD/eTfPxl
 NfCgWX1ezFybE9TxG5YiRLliD24pOEP1JPng4WV5yJ2YFrPJ8kTU46iko
 9RAn2C9GmP5U19ZIzWycLvPnr8yR+FOtJf9sVm9S2/vnfp+sx4dgl/djr
 xEkCDtYPCdiwyNirVN69cgfrVlJIQr6h5Bp//SYllBJFT+3SmavvinQQG
 gFdUNI/qTnFRKWKOdjbxTVTODn0pfalXzF3PYn47z6WKB0N2n2cDbGWWe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381513163"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="381513163"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="677789717"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="677789717"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 08 Dec 2022 07:30:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 07:30:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 07:30:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 07:30:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1hMhpgGrjCJWN7oJSq1GdXDpkfXN71U7ThwIkSx5XdLiKXnH0H+PXfHXn6wIkQQ+QiKIYLkP7j2iQBl61qLh8tEc52V8MB2gnjrpAIdyv08SLUv5ZMKRy7o76I6u1TLahkkCEzkjgdeHdBu3RI/WHLZJhRhdzyJNSbTdqKS30gBsNPPwampD/j0T0wUzk+cxDiTzVWzX9eKQAQfXN0nSRXx5Bw4togsX35YHrccsLjSnH7hs3SQNJKVB7tv5I6BS0RsUurv86JJz9K5v9C0GswemY0NjuWUaY+OJ+5jouPdvdMFdirImZnb7r7TBGLOFn2/PSEpSV3PWT1BuBfbng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kr/olnHdJXQtoSG6MJmWkwFP2OTPZNZ6nER/XmQETNI=;
 b=Tetnav583XeOBK/vAmXZg0s+k0HoQcMqeVM+6P0hqZm2f9m+Ih8P0Te+gsUQ274LwOuD4V0AoqaLa+RwmdrrHHOuIkveffLDBSavhtUMW2JNxTbqSlziskNoxJvzkzA4cf1oHyYDxiFOdDHSVIOXwG3R9i0SDzTsXa7GB8wbpm6POlwI1WJZVICn2C8951hdan009sY1Cc6HnreKLl8QYNa9TzOVwVaDCPr5h3JTSlcPxvvNQi1lZ412efKTq/wlmEsKlAUf+W29RfstbVTAU+d8YmpMyy1gvsUgr785pOYWAKqbko6MIIxWcmdEvKN/ieAgMgwSf6hmebl1y7fc9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 15:30:45 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:30:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 7/9] drm/i915: Print the PPS registers using
 consistent format
Thread-Index: AQHZAPPnMr25+QY+nUWe9QuRtFUPm65kMhUg
Date: Thu, 8 Dec 2022 15:30:44 +0000
Message-ID: <PH7PR11MB5981AC58A818EFEDBE6FA2B5F91D9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
 <20221125173156.31689-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20221125173156.31689-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB7540:EE_
x-ms-office365-filtering-correlation-id: 2f6e494d-aa9f-4ef7-887d-08dad9312c87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 90i/l8/UF6hMUKzVDE1hKUzDTnmvPf41JUI+jsHzoWVmwthQewl6LG8Z2MBF4sMbHF2wONZkcZAx7xpaweBDdW85OtTiTvc5zMXRk8yRTv7IenoLz/otMBS6Oj8ELNIG0lMLwBsIeWBWcnNlG4gkFjc5mX9IJAJBLigLk1aTcoH6U2Cca60qQwCBAMvqUQFCFYPk9/MgXBt11cEzjjUqeE1PqskzMnH35dZZoLDy/S85qhbZ8lY8Vb60y41bLC40I6kyf92JQ68Ry9xX1ipb/vSarX1ap3S/dKR/IIM9vKhd01znpoaHCsFeiO+FGa7tzsStWS8JX9KBhlL7gTehvBjFqMKyxBMCpcdbF7Si8FDxs3hAxlQSkczv9r5g6LClhEJ2aLEynYpVMOG3QmJFF0CZ3EkRWqSBd0fw0f2EX4V0+d98SqHXRmCRAEC0S0N3C7B3jOdoodbfh9+bBv01KrVZbE2Fu0PB0lc4zg7CzaOPGiFGNVPGl8m3LeQPayff6nQ0tMv4emhDexCPU6SP3IVsvzPnhdwfcKzXR1H2ap7kUKixh6JEdiiT+PDnNSEW3MWxrZnvedOGgjKWI12TsfqORy1QV2TBILa/bZNPcl/9hCouaOZ3gx0PJCIbT1JlH1ouspESCu+jo1uq57uVUQolNTudcuqWmQAwqaIkVhM2qgKyHRaI7sLyaiW9PSnxJ7Rkv5gozJ8ug2bZcc6/0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(136003)(346002)(396003)(451199015)(55016003)(66946007)(64756008)(122000001)(66476007)(66446008)(33656002)(66556008)(8676002)(38100700002)(478600001)(82960400001)(86362001)(2906002)(186003)(110136005)(71200400001)(26005)(66574015)(6506007)(38070700005)(76116006)(83380400001)(7696005)(53546011)(8936002)(9686003)(52536014)(41300700001)(5660300002)(55236004)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmpRNkNncG0xeWYwUkVWTVR1bDI1eGhvWDQzOW1BZXlMYTNyRW8wUGZraUcy?=
 =?utf-8?B?MUJ1bjZQQkJ6RUxWRHVIZS84VXNJWmd5OFY5R3Y1ak5VWmZJTjNBMEx1RmZX?=
 =?utf-8?B?S1Q4SzJ1RjUwaDV5M3JrT21JU0czUEpPeDA4R1ZacDJSWWxDQnN4Q2RZK0U5?=
 =?utf-8?B?Q3ByRTBTV1M1bE4ybmFETGxnd1VseHZJZTFNV1hxSmExdUczYmJhSmd4bTVF?=
 =?utf-8?B?VGEwUUl1K2liS1JGTFE4OE9jZUNwYkdWcGFsZmlkY1ZzcEo0c3VpQVd2dm9a?=
 =?utf-8?B?TC94S2xINkRlNFc1SXN1eldFZGhqUktmU1drVUZXK1orTGZiL2txMDlJbXBu?=
 =?utf-8?B?VVQ1S1ZSMEpiZGpya0xYQ0hoMEVrUSt6OHR1UnNXSDFKeXE1SGlGVEdpdXFy?=
 =?utf-8?B?dWlnYjFkRHRqZTVYNFB5NThNSngvOEV5Q2xrNDlML1pIOTZhU0RKbEZyRmlW?=
 =?utf-8?B?SnQ1b3RQcDdVT2Y2Uldkd1RmbmRNenU0bHB1dnFjVkhnR2tBaytCaXNja2Np?=
 =?utf-8?B?Mko3eGpoRGZQcFBoYnpsTHdlMDNQY3F0SmNLcEo3Y1ZOa2FMOTdtLzB5L0Qz?=
 =?utf-8?B?Q1pxS3MrZ0huK2pvbHFCUjV3Mnk5OS9yZ01VZDB0S3lRQ2p4UElJVXJDMXBy?=
 =?utf-8?B?M2grRnNBcHE2WVUvOEpUcEZlVnF1UjFYdFRReS8zN2JleGtnWmY5L1lzc1Nm?=
 =?utf-8?B?Z0NadGVXdWkwbG9JVjRQczBuTUQya1lUVHliQTVaeml5ZHpGdG5tcE9DVW5O?=
 =?utf-8?B?OGkwc2h4SG1ldjd2NEJ6NHkzWHBXQWg1bVFxM2xhUEowRk9XamlKR2VoeEp3?=
 =?utf-8?B?NjBhMzVrbHcvNkM1US8wZXh6WkdEVFVqT1V0Q21iVDgzM2tnL3g4SHhWUnFk?=
 =?utf-8?B?NnJCOEpDNk9ydEpzMk4yc1g2djZNNHBGeEZLaXFJbjNKU3VUd3M0c1l0T21n?=
 =?utf-8?B?aEVpR3VZZDlQK2RNZzBhTjBjVHZ5RXk3SWJMcitnWXdEL2szRUNsY0VyNGVB?=
 =?utf-8?B?TGJOcW9jN2tnZDZ4RU50d25uMjA3ekwyWWxpSlpvUXJWaitGOU5rclJrbUdD?=
 =?utf-8?B?K1RtWWlyYTZwYXNha2VqZWhYR250OUxCYysvS04vaE5WOGdyU1hYSkorc3cz?=
 =?utf-8?B?NkpzY1FuWWtUT0VucHNwa0RMdUppdWlHLzdBVUFqN1IzTXRYKzA5Q0I2ZEJJ?=
 =?utf-8?B?eUNMNDFMMDlsdFFaMDczS3RqcFk2cVRBTmxsTWt5M2NBQUlGNWFNcFlGWDNq?=
 =?utf-8?B?Q0hYYUVnUzhabHNSRnhHeE1NRlhwZ1d3bE81aVFuK0l6QmVkMTN3YUdVdndV?=
 =?utf-8?B?bXV3dmdYUzhnb3ErOXhKMEE4VUFvOW9OVkc3ejdXNUk3amI5TVdlNSt0SllZ?=
 =?utf-8?B?VFkraWcrNXFWUUpNK1o5bm5CeUIycVI5L3lOVloxLzNHbGNUNC9TWFp5bVlG?=
 =?utf-8?B?eUZXMGljNzVtRmR2ZjdJU1FwVXRodTY3UnFJbEFrL0JRNU5tRDBqU1duSFpN?=
 =?utf-8?B?QXg2eFRzMmErNndFMWkxNUYxaEI4MHkwSkVpTXh6OENzd2RRems2MUlGMWhE?=
 =?utf-8?B?U1dtbTRaK2w4d2hYK1IzUkZscVJUUmFwYldJU2RuUEdLbmgxZVlWbHVDTllV?=
 =?utf-8?B?SEJGenVIVno4NjJvbkRQcFFtODJ2ZjNEMFVlSVZoR005UUhLM3cybVZPQzY3?=
 =?utf-8?B?MVFvRGdzU3l1WEQxREJyeGUrVTA2R2FJcGJFNjVZcFBzdDlwdVdyRlhIcDJF?=
 =?utf-8?B?Unh4TmY2N2ZkaENRVVpscjZtTE1TZWs4Nk9pZXVIMEYwdnFJcEV2SVJ0QTZt?=
 =?utf-8?B?dS9YQ0dTcVVJbVUxcGtZeGJ6VkhYcFlPdzVlV2k5VUdNRGo1Rldmeml5b1R1?=
 =?utf-8?B?MXFNYTN4Z2VEZ2RrSGJnMlBtci9HZndDUkhoT2hIVnZwd1VNZi9zbU9Rallw?=
 =?utf-8?B?bkdDaWhjN0cvRlJKS0JxbGdjQzk4Q0JMZ2MrakNQQnJjSDk5bE9BbW5VblRH?=
 =?utf-8?B?RTZ0cWw5bW01a0ZCMHpQNUNRNENoWTBLVWhJdFE5ejhzZFBWaVlTZnJYQ2N5?=
 =?utf-8?B?MVhQMEZpNlo1QXgzcmxUbzkvOGJBRWlKbkdsY0FkSUY4RS83VVcxNkw4UWtt?=
 =?utf-8?Q?Iy5Rt+HVwaugBmgXxg3OVZ2la?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f6e494d-aa9f-4ef7-887d-08dad9312c87
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 15:30:44.9738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CWZRArJPQQfGJTKk/Moik7gsX1oupsvUz7VaIb1HkVW0F2w0wDZmkBLlr0RXLox5m7ldfWpp/7uDUvVdJNslOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7540
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915: Print the PPS registers
 using consistent format
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIg
MjUsIDIwMjIgMTE6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHYyIDcvOV0gZHJtL2k5MTU6IFByaW50IHRoZSBQUFMgcmVnaXN0ZXJzIHVzaW5n
IGNvbnNpc3RlbnQNCj4gZm9ybWF0DQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVXNlIHRoZSBjb25zaXN0ZW50IGZvcm1h
dCB3aGVuIGR1bXBpbmcgb3V0IHRoZSBQUFMgY29udHJvbC9zdGF0dXMNCj4gcmVnaXN0ZXJzLiBI
ZWxwcyB3aXRoIHBhdHRlcm4gbWF0Y2hpbmcuDQo+IA0KPiBDYzogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMgfCA3ICsrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4gaW5kZXggZDE4YzFjNThkZmNmLi5mNmJjODk2
MzM4ZGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0K
PiBAQCAtNTI3LDcgKzUyNyw4IEBAIHZvaWQgaW50ZWxfcHBzX2NoZWNrX3Bvd2VyX3VubG9ja2Vk
KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJaWYgKCFlZHBfaGF2ZV9wYW5lbF9w
b3dlcihpbnRlbF9kcCkgJiYNCj4gIWVkcF9oYXZlX3BhbmVsX3ZkZChpbnRlbF9kcCkpIHsNCj4g
IAkJZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sIDEsDQo+ICAJCQkgImVEUCBwb3dlcmVkIG9mZiB3
aGlsZSBhdHRlbXB0aW5nIGF1eCBjaGFubmVsDQo+IGNvbW11bmljYXRpb24uXG4iKTsNCj4gLQkJ
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJTdGF0dXMgMHglMDh4IENvbnRyb2wNCj4gMHgl
MDh4XG4iLA0KPiArCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gKwkJCSAgICAiUFBf
U1RBVFVTOiAweCUwOHggUFBfQ09OVFJPTDogMHglMDh4XG4iLA0KPiAgCQkJICAgIGludGVsX2Rl
X3JlYWQoZGV2X3ByaXYsIF9wcF9zdGF0X3JlZyhpbnRlbF9kcCkpLA0KPiAgCQkJICAgIGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIF9wcF9jdHJsX3JlZyhpbnRlbF9kcCkpKTsNCj4gIAl9DQo+IEBA
IC01NTksNyArNTYwLDcgQEAgc3RhdGljIHZvaWQgd2FpdF9wYW5lbF9zdGF0dXMoc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlwcF9jdHJsX3JlZyA9IF9wcF9jdHJsX3JlZyhpbnRl
bF9kcCk7DQo+IA0KPiAgCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkgICAgIm1h
c2sgJTA4eCB2YWx1ZSAlMDh4IHN0YXR1cyAlMDh4IGNvbnRyb2wgJTA4eFxuIiwNCj4gKwkJICAg
ICJtYXNrOiAweCUwOHggdmFsdWU6IDB4JTA4eCBQUF9TVEFUVVM6IDB4JTA4eA0KPiBQUF9DT05U
Uk9MOg0KPiArMHglMDh4XG4iLA0KPiAgCQkgICAgbWFzaywgdmFsdWUsDQo+ICAJCSAgICBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBwcF9zdGF0X3JlZyksDQo+ICAJCSAgICBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBwcF9jdHJsX3JlZykpOyBAQCAtNTY3LDcgKzU2OCw3DQo+IEBAIHN0YXRpYyB2
b2lkIHdhaXRfcGFuZWxfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJaWYg
KGludGVsX2RlX3dhaXRfZm9yX3JlZ2lzdGVyKGRldl9wcml2LCBwcF9zdGF0X3JlZywNCj4gIAkJ
CQkgICAgICAgbWFzaywgdmFsdWUsIDUwMDApKQ0KPiAgCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJt
LA0KPiAtCQkJIlBhbmVsIHN0YXR1cyB0aW1lb3V0OiBzdGF0dXMgJTA4eCBjb250cm9sICUwOHhc
biIsDQo+ICsJCQkiUGFuZWwgc3RhdHVzIHRpbWVvdXQ6IFBQX1NUQVRVUzogMHglMDh4DQo+IFBQ
X0NPTlRST0w6IDB4JTA4eFxuIiwNCj4gIAkJCWludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHBwX3N0
YXRfcmVnKSwNCj4gIAkJCWludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHBwX2N0cmxfcmVnKSk7DQo+
IA0KPiAtLQ0KPiAyLjM3LjQNCg0K
