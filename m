Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 096A83E85DF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 00:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A4A89E41;
	Tue, 10 Aug 2021 22:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395E189E41
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 22:04:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="213149397"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="213149397"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 15:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="516002140"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Aug 2021 15:04:31 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 15:04:31 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 15:04:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 15:04:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 15:04:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XuXHGofsyvM4g6NbtwaqwecOHPyAsIBFvCxucB0DUk2XrNSY2RIO5GRHVvXJX4ojcws7fYzRuTot6VqdTJsbHLWzriuXt/SbpxnA1AddWmXDP/z2s11Wc92131El0Cf1qAG1r9WdSrR4vhuMLibyfaVRAGsqfmuWIgFfsFegWELxkMPYgryfYH9X227v37u+GslZzIRVg7C1QDu6XJXLTI+VQnn0gQPDIoVgV0+vn2MH4DqOC4tHqFnEHJ9qA8WRiP0IGSiuURZAmuY1fEPp5tnJri2DJiMoM+LblYDIs83BHEeuGvEkGeuoGNgqx6mtsOm8CpaCcmd8SNXJSbnG1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KEyQfMLPAXKOtggMTitFR8hVmXJvHQhoy+tX2YxYvPE=;
 b=kpz9gz0z9SacCzBN1XZ6Yuue8DD7hiskPH3stfDqa3a2tfSSfEUAD6Ez3IqegatP8y91f1PeY+OugvhBMS0n/Z1+E3NM4zAHTW3Hv1MD/HaAvpoJjmsG/2Rznh/OlI+HkZiD3YJ1K2kn+Z4vJGFcQ44P7bo2Q2jKhKxYv9YHOqlzi+f+eZ9z1qOyDqB7avQ9arDRBfCEbC6VLO0Ub0dApnhg1/IggFFixUBomsO1gcJ7HMTRQyP7BKpCAHueLIvWkDUJogJt3fKhx17P9IKA6vRaNH25YtBVcdldfFfSSjs7ZQJWg6QGgKuZ7CLIHRc7MZJg6tpJ26ADjx2/0+c52Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KEyQfMLPAXKOtggMTitFR8hVmXJvHQhoy+tX2YxYvPE=;
 b=RaePxe4OTD/jBaQLc6BNwoSPJo7WDcmDKltBUgAXOqtK/zGWA8KepWc75YrMmTC8n6MU4VI1uvqgL1uK2ZqOzYvd0HQ1IAJpLsPUCPMiOLzsQrfawPMBbnDYgRTiH5Ei8OXo2Ypp2hI2H6V7F3u5Pgk7J1H5Sbew6vXhMaUoRUk=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL0PR11MB3267.namprd11.prod.outlook.com (2603:10b6:208:6b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.18; Tue, 10 Aug
 2021 22:04:29 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::5e9:8fa4:e65a:30a9]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::5e9:8fa4:e65a:30a9%7]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 22:04:29 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915/gen12: Update shadowed register
 table
Thread-Index: AQHXhDx3stf4lk0hSU2y4wzdrRseoattXuaA
Date: Tue, 10 Aug 2021 22:04:28 +0000
Message-ID: <98ae3613e97866821023d8f5213b54d8f88873ca.camel@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
 <20210729054118.2458523-6-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-6-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 764c55ed-0ef1-49df-b809-08d95c4ad332
x-ms-traffictypediagnostic: BL0PR11MB3267:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB326773F26BDF2897EE1FF85F9FF79@BL0PR11MB3267.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Idk/n2K3Tx7M+DyGS4XJWStW82t/1f4IoA6NDaWOIbeCinq4Uh2Qe6t2jLlniZqfEXvufg7jcb2aiO4Ky6B10v2YAjgrXBPCqJ8oY3aiqq3X2RGB2xQlCZs3GvG84YXB5MzenL78NRWoJmaiYxek3KCY9O9nlLHR82+RrdpflzSL6MGPk3JDbc6xz7CAVOBcNLY0hcWHEzgrxrNb2HTxIBzOZslFVeAKO9QU1SD4pkbE5csILnb1k2d+1/S3u945nmeFOf6oB1yNnXy1pyflKZei1aiLQ3o89TmfxFdkZWYX42fac4XKekysfTFG2ZJrLQXBhwvkzpraL3JdLf8muITvQpHsqiW2HCS1TtFbyZ9ot94i5L/BMAI0FQOd8sqki4doQkLVew3cO3HuOlwfcJLbxvds1V7Gq0rL1mQzNsV3OH+W6f3aMqYdFBMC182HGOAYnptK/EYkM549PxGotmhnKTcYZot3Difif828I08Ob2KcerkBI3msFN8fGAK6KL1svUNIsTPk3Aio7fEdkPQKpv6dWMo/W6IIPynBmah2eh3R83bATBiNtV3dBoQQNFOGqFkh+NaqGobQQbZ2YFMvYnevH4XEA2nrc20YTKcT5M/QVjfQXewcnlBYruUcypbPe/WRxzI4Mhy5z3FghnhAJNalV5poK37Bh1aUWkjq/BnC1urW0Piz2YZjY2pAMwyjH+kHpV/73eD/bYDcbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(376002)(39860400002)(396003)(6486002)(5660300002)(2616005)(316002)(478600001)(36756003)(110136005)(186003)(66556008)(66476007)(38070700005)(76116006)(91956017)(83380400001)(26005)(66946007)(66446008)(86362001)(6506007)(64756008)(38100700002)(122000001)(8936002)(2906002)(8676002)(6512007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MC9RTlpsZ0VrY1J3ckdBRUtCQ0VEdHltbFM4TWJYWUZ5SGxmckcwcU1PQmM1?=
 =?utf-8?B?ejJybzhza21HM2hSeHVoVWVzQjV5Y0FYTlExNytSVkpwSVgvRGxqa0Q1TmZt?=
 =?utf-8?B?MHpkYkVPbFNaWGlOekNyK1FhRWJva0dONlp5VndPWXlyZUU0Q2ZNMXFRaW81?=
 =?utf-8?B?TnFiSEhrdWtkRWhYZDNNUTZyUXhVSUZMa3BSaXc2cFNCdzFvR0ZNN0pGb2Qy?=
 =?utf-8?B?dmwxRVlsWmNiTFdJRmZvY05jcTZDOEtXWVczcXlYamVVVmRPTHZlTDI0U2dL?=
 =?utf-8?B?amk5NCtsaWhnbHRFanM5bEJYdEFNMjZjZ1dFanV3WEhrbDBtdTdpYTArSWNJ?=
 =?utf-8?B?WnlIK01pZGV1UnFlbGtYd0NCT3pBT3BkYmFWSi9LZm12aGJVc3lOL0hDS0hX?=
 =?utf-8?B?c2lWbkw3OUF0UHR4dzlBalM1ZUIzSmdSMkNlc05GaFlXQXR5RnhoL3hWbDhq?=
 =?utf-8?B?TVRYTlI4eko3YzAweGFCUm8wYmE1aithZUxQcE1vNk5ZT1JpSlZPYmxPYStD?=
 =?utf-8?B?UzVHeHNKa2xVdlJZM0J1elVmczl3MU9ncDVTMmdCSUduUVNMcVhpMUpxZkpY?=
 =?utf-8?B?eWV1RTFtMk9QUGpLQ05VVCtVdW5zUDBieklFT1c5aGJiQURDU2UyY2RSeWlR?=
 =?utf-8?B?ZjNzUXBTekx4WStxc3ZDdW0vWHRVWkhsSU9tWWYxSFh3Q3RNUVFFWHRnNTl5?=
 =?utf-8?B?Zkt3Tzc2cTJESVZ5NjE5Mkp3akJWWWlabjVQeFRCMFNLbTNFN2xjOG9zMUQw?=
 =?utf-8?B?eGM3emxzY01jcHNGN2cweDZTUi9oMXpWV1ZmRXNoWTlzb241NER5WmNhMEdZ?=
 =?utf-8?B?eVFXNGQwRTlsejlESFJBZE92TE1WdnNZTFlFUkNURXZtcjZVdzM1TUtZb2pE?=
 =?utf-8?B?NEtGbnpPem00dmxXb05aMUNFZGh6S0xCTjI3ZXd2SEZZZEZsRmplaXBhSkpy?=
 =?utf-8?B?Nmw0RnRORHdLVU9icExBd2s2VmIxMUJPY2JvUEJVaHFsemt1bjFLdjhrdGkz?=
 =?utf-8?B?OU9PVXdJeFNHNXJlMGpyVy9sY0lmenErWUhqSXZOVWdhQmlSRTZhYi9JcVV4?=
 =?utf-8?B?MlJkNDgzS3NPNzdvTjk2b1NzamZyc2tzRW1vb1ZjTTdoalJZVkI1c0srRlFl?=
 =?utf-8?B?V0tZWlY5WlQ4NUpFRWRvZG5vdFIwakFEU2ZlQjZhazRJcUJKNGVBU2UwTU5n?=
 =?utf-8?B?WTFCRkZDUWljWks4Vm5WOFVmd2N5akpaamovVlJneEZYQWpxdlVkQjV4MS9N?=
 =?utf-8?B?YTh4ZGZjVk8xbjIvMnNrTEtPSVdCcm1Ic2w1TUNqV2xselJxQThWYjRUcDVT?=
 =?utf-8?B?U0dlc0lkZEJodXlqOWp0UGFxQlhKc0tHVndoVG9sLzJOYlVDYTZlM1ZETGRR?=
 =?utf-8?B?azlsMW1lZUtJeS9RQXdDby96T2ljL0tQOTdIMmlDQks2UitQb1N3RnliOVgv?=
 =?utf-8?B?cG94aHZrSlRVdGxtVG80QmdvM1FnQ05uVHF3akpIdEM4WVdaeUxiU2l0aEJ4?=
 =?utf-8?B?NG5RclpISDExU0lJNGhiakhmYjJ3dzJ6VXN3UGl6ZHJremNFYUdwNmZOV2Nt?=
 =?utf-8?B?WFJsRlBKM0srRlhWYnp0am1HYTFUWFJEQnl1SmtlR0VVNXQ1VHhSeHA1dmt5?=
 =?utf-8?B?YkhNRnBCT01hWnRCY3p5eDArTk16VndUUlhFbmpOaCsvTE5tZURKbWVVWUFi?=
 =?utf-8?B?b0JIOXF6dU9ibjBRS0NxaWVxYW4zZWZhclZVTFRvTW9mRmE5ejQ3V0pkV21F?=
 =?utf-8?Q?2sSlIPG5/xvy3VWM+lHis+9NZtMrWMIB02EoeNb?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5056A0517660F9458D6B0381FF6C18BE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 764c55ed-0ef1-49df-b809-08d95c4ad332
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 22:04:28.9232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiZrJhV6coTJ6U43LdVscSquRfKaqOO14ZWX+KemenOiIK7/TCgqRRBRw1iTV5spiM8UWPdNiOCUjiNEncWmlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gen12: Update shadowed
 register table
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

UmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCi1jYXoN
Cg0KT24gV2VkLCAyMDIxLTA3LTI4IGF0IDIyOjQxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0K
PiBUaGUgYnNwZWMgbGlzdHMgbWFueSBzaGFkb3dlZCByZWdpc3RlcnMgKGkuZS4sIHJlZ2lzdGVy
cyBmb3Igd2hpY2ggd2UNCj4gZG9uJ3QgbmVlZCB0byBncmFiIGZvcmNld2FrZSB3aGVuIHdyaXRp
bmcpIHRoYXQgd2Ugd2VyZW4ndCB0cmFja2luZw0KPiBpbg0KPiB0aGUgZHJpdmVyLiAgQWx0aG91
Z2ggd2UgbWF5IG5vdCBhY3R1YWxseSB1c2UgYWxsIG9mIHRoZXNlIHJlZ2lzdGVycw0KPiByaWdo
dCBub3csIGl0J3MgYmVzdCB0byBqdXN0IG1hdGNoIHRoZSBic3BlYyBsaXN0IGV4YWN0bHkuDQo+
IA0KPiBOb3RlIHRoYXQgdGhlIGJzcGVjIGFsc28gbGlzdHMgcmVnaXN0ZXJzIHRoYXQgYXJlIHNo
YWRvd2VkIGZvcg0KPiB2YXJpb3VzDQo+IEhXLWludGVybmFsIGFjY2Vzc2VzOyB3ZSBjYW4gaWdu
b3JlIHRob3NlIGFuZCBqdXN0IGxpc3QgdGhlIG9uZXMgdGhhdA0KPiBhcmUgc2hhZG93ZWQgZm9y
IGFjY2Vzc2VzIGZyb20gdGhlIElBL0NQVS4NCj4gDQo+IEJzcGVjOiA1MjA3Nw0KPiBTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMjMgKysrKysrKysrKysrKyst
LS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29y
ZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMNCj4gaW5kZXggMzFl
MDQ1NmRjZTVhLi40MmFjZjEwNmE2ZGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3VuY29yZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Vu
Y29yZS5jDQo+IEBAIC05ODQsMjMgKzk4NCwyOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVf
cmFuZ2UNCj4gZ2VuMTFfc2hhZG93ZWRfcmVnc1tdID0gew0KPiAgDQo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IGk5MTVfcmFuZ2UgZ2VuMTJfc2hhZG93ZWRfcmVnc1tdID0gew0KPiAgCXsgLnN0YXJ0
ID0gICAweDIwMzAsIC5lbmQgPSAgIDB4MjAzMCB9LA0KPiAtCXsgLnN0YXJ0ID0gICAweDI1NTAs
IC5lbmQgPSAgIDB4MjU1MCB9LA0KPiArCXsgLnN0YXJ0ID0gICAweDI1MTAsIC5lbmQgPSAgIDB4
MjU1MCB9LA0KPiAgCXsgLnN0YXJ0ID0gICAweEEwMDgsIC5lbmQgPSAgIDB4QTAwQyB9LA0KPiAr
CXsgLnN0YXJ0ID0gICAweEExODgsIC5lbmQgPSAgIDB4QTE4OCB9LA0KPiArCXsgLnN0YXJ0ID0g
ICAweEEyNzgsIC5lbmQgPSAgIDB4QTI3OCB9LA0KPiArCXsgLnN0YXJ0ID0gICAweEE1NDAsIC5l
bmQgPSAgIDB4QTU2QyB9LA0KPiArCXsgLnN0YXJ0ID0gICAweEM0QzgsIC5lbmQgPSAgIDB4QzRD
OCB9LA0KPiArCXsgLnN0YXJ0ID0gICAweEM0RDQsIC5lbmQgPSAgIDB4QzRENCB9LA0KPiArCXsg
LnN0YXJ0ID0gICAweEM2MDAsIC5lbmQgPSAgIDB4QzYwMCB9LA0KPiAgCXsgLnN0YXJ0ID0gIDB4
MjIwMzAsIC5lbmQgPSAgMHgyMjAzMCB9LA0KPiAtCXsgLnN0YXJ0ID0gIDB4MjI1NTAsIC5lbmQg
PSAgMHgyMjU1MCB9LA0KPiArCXsgLnN0YXJ0ID0gIDB4MjI1MTAsIC5lbmQgPSAgMHgyMjU1MCB9
LA0KPiAgCXsgLnN0YXJ0ID0gMHgxQzAwMzAsIC5lbmQgPSAweDFDMDAzMCB9LA0KPiAtCXsgLnN0
YXJ0ID0gMHgxQzA1NTAsIC5lbmQgPSAweDFDMDU1MCB9LA0KPiArCXsgLnN0YXJ0ID0gMHgxQzA1
MTAsIC5lbmQgPSAweDFDMDU1MCB9LA0KPiAgCXsgLnN0YXJ0ID0gMHgxQzQwMzAsIC5lbmQgPSAw
eDFDNDAzMCB9LA0KPiAtCXsgLnN0YXJ0ID0gMHgxQzQ1NTAsIC5lbmQgPSAweDFDNDU1MCB9LA0K
PiArCXsgLnN0YXJ0ID0gMHgxQzQ1MTAsIC5lbmQgPSAweDFDNDU1MCB9LA0KPiAgCXsgLnN0YXJ0
ID0gMHgxQzgwMzAsIC5lbmQgPSAweDFDODAzMCB9LA0KPiAtCXsgLnN0YXJ0ID0gMHgxQzg1NTAs
IC5lbmQgPSAweDFDODU1MCB9LA0KPiArCXsgLnN0YXJ0ID0gMHgxQzg1MTAsIC5lbmQgPSAweDFD
ODU1MCB9LA0KPiAgCXsgLnN0YXJ0ID0gMHgxRDAwMzAsIC5lbmQgPSAweDFEMDAzMCB9LA0KPiAt
CXsgLnN0YXJ0ID0gMHgxRDA1NTAsIC5lbmQgPSAweDFEMDU1MCB9LA0KPiArCXsgLnN0YXJ0ID0g
MHgxRDA1MTAsIC5lbmQgPSAweDFEMDU1MCB9LA0KPiAgCXsgLnN0YXJ0ID0gMHgxRDQwMzAsIC5l
bmQgPSAweDFENDAzMCB9LA0KPiAtCXsgLnN0YXJ0ID0gMHgxRDQ1NTAsIC5lbmQgPSAweDFENDU1
MCB9LA0KPiArCXsgLnN0YXJ0ID0gMHgxRDQ1MTAsIC5lbmQgPSAweDFENDU1MCB9LA0KPiAgCXsg
LnN0YXJ0ID0gMHgxRDgwMzAsIC5lbmQgPSAweDFEODAzMCB9LA0KPiAtCXsgLnN0YXJ0ID0gMHgx
RDg1NTAsIC5lbmQgPSAweDFEODU1MCB9LA0KPiAtCS8qIFRPRE86IE90aGVyIHJlZ2lzdGVycyBh
cmUgbm90IHlldCB1c2VkICovDQo+ICsJeyAuc3RhcnQgPSAweDFEODUxMCwgLmVuZCA9IDB4MUQ4
NTUwIH0sDQo+ICB9Ow0KPiAgDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcmFuZ2UgeGVo
cF9zaGFkb3dlZF9yZWdzW10gPSB7DQo=
