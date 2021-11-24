Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390445CB31
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 18:37:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312FC6E93B;
	Wed, 24 Nov 2021 17:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30CD6E917
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 17:37:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="235152677"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="235152677"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 09:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="607282615"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 24 Nov 2021 09:37:49 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:37:48 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:37:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 09:37:48 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 09:37:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4vd12kUgxNHBrY4BjcQn4g4YopZPxU+QdfImeVis0l4xFo+0zTEltKpZatkTcnygX1Zs4yARbMJqwIfP6QeWyatxNlwuPQxrKZuzkCtFEPAJGngznGc5xI3vI8uBNV4gCELYjQCloT8lxv77DbQ3jf8DPgY5ogaE79QpfO570lUCWlsJS+fcah0o89AlpefPiA4os7HA3z8xeuMJUWlJvY3z3oy8FcWXDSsiJP6EYLeCPNuT8QAR1ERSknszTx9iEffJOF+EdzowNjxgGbNgs7DK9B2qRZONkH2u2CHxWdhcG+CszEUhPEfw3ZkcFdu+GjHZiQH69d2qpzrbOH4hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U/syjco8wPHzz8SHMHN/qzgBiwn2p93QwTvD1TjUeRg=;
 b=NutQVj7NwEfKD6r145rvyqzFQANd0W0DA3YOAQ5iof5gX62Bqw4KIC4sZqwrv0ZqPlNmAejTsiGIReHV9SZf6lV422m01AN80qMc/scGREyyraqpQrkIyRhqrRKLO255gtANMGJt96MeJ14Urd5k/QTDiqvGKk/1s2mM22b84nWFbrI5uSeyjm+ILFWRRQfw48ujtf2JA3ciQshup+idTY2qPmLD8MR7l9BUjD7UA4jJ9s5GHmCXCAbkdQUSvtnlPyhDjHErhEawOjGZnj2eQCWqD+02tkj3u2YvLYEIsux/KtYaxVaxWs6SCF0KFpCYyZKyvQio92v6NH0wx/sYeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/syjco8wPHzz8SHMHN/qzgBiwn2p93QwTvD1TjUeRg=;
 b=H6ElWgGQrwRc1QzTDxFZm3x7FUKDMFzKS+Ec152SHo4qI5UxZ/+3+1od4Z5uzCbjfLX9ykOzy2p1euIyR4wEugOhlfgDpYRNQxb0DA8bah5nHm4ZCbF11yG10iOq6MpJFJPDkUe0N6/1LjvB9u4+8grRfAZ8GU1FWcGkupYoPxc=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Wed, 24 Nov
 2021 17:37:42 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 17:37:42 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 4/7] drm/i915/guc: Add GuC's error state
 capture output structures.
Thread-Index: AQHX3/UdVgsr+BVLXkKZLcQdIhbLMKwSdn0AgAB95oA=
Date: Wed, 24 Nov 2021 17:37:42 +0000
Message-ID: <40a172db52d15260649d02a5197efafbf07b7a17.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
 <87a6htn9wt.fsf@intel.com>
In-Reply-To: <87a6htn9wt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 263ea4bc-a4b3-477d-527a-08d9af711e83
x-ms-traffictypediagnostic: SJ0PR11MB5894:
x-microsoft-antispam-prvs: <SJ0PR11MB5894E211F15C551693F9BFD48A619@SJ0PR11MB5894.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ypUPEQQVSNWBllc+zWo8bmDibpvTJEhUFgxOIrZxrXVz7dyUL8nO/3KQf6JK2jLTa/PIwnO4D+3JvtdN94SPo02ibAnsxvLFdmpal2ijzZfw2IUhXhK82Vgoln2v4PQr2IpaDNvadh66C4IeDT2ycpYzX8rxOIjCAiJijSWraIwON5Bz5RGWUHZKdrYMkeB3HSjESTQFFNyvW/h7+uKgAhKZ2Dm8IcJAsR6l3jxmU5lbWjLW0iWsJ1OkCbElVsHqLsCsILvGhe0zFEnrEsx/jYfSVmVB9hGYkGAiCOIHhILFgIF2GloPi/KwOJGp+Lrw2qzb05GSBLPICCIMbqqAQR/GN3uezptK/9nEpgFJkH5qiFNpVQ86naBnBinJI7GdDhZ7pMzsdKfjDoLRhViSgxIlfzYZ8za/Zj07pIAkEo9zs053mRYH8wYu2Ize99CXq9i48RE+tEDD92A9CBLaqGXUN3Xhx3yVh8wXZH3OO6tGQHKlkMdvZOguDBNx1tPVfLIDs2D9yIdawnvp4o7d/cEmmUQjT/NZmK4OlhrMFs+/nRI7kSZ1x9oiGyZQVcRDPIlx8Tji8mZ6iHhCoLa31q/XWYrXeAdmpyopFZT7HCAoPZ6lZju3geTZv72nLCxehowcIgZQYqfY5JlFbyhefWEB2bKBiv0L1v9bCqilveS+HhFZbeNiKszw4QVrkigJtzWPjuOY+eMxFA7n+yoYNw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(71200400001)(38100700002)(508600001)(122000001)(2906002)(83380400001)(38070700005)(5660300002)(6506007)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(316002)(26005)(4001150100001)(6512007)(2616005)(6486002)(36756003)(110136005)(8936002)(82960400001)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzJFWUplMHBwcHJYZnBFOWIybTExVVFnRk0yTERWaE9abzI1V09IbEhDL3h2?=
 =?utf-8?B?Z3R1LzhwY0RxYzlFcXQxOWlaZ0haVGdyL3g3T0NUMkxnb1AzYWE0b2g2ci9L?=
 =?utf-8?B?b0dKenlTSnJrQTB2NzhVSWJWMldTeHFITWIwSmZqaDAxbnVnTnNiQWlyYU1a?=
 =?utf-8?B?R3N4TGFJQ2hVNmE1Z0huT1JmRG82cFhWRDY3RVlmSndXbXdrMVB5Y25GcDkv?=
 =?utf-8?B?Q3VNaXJDelVSTnZNKzJETkJkOUNKNTlkMWZsa3p4ZUFySzExOGxiQ2ZlWDkr?=
 =?utf-8?B?OTBNRnRocFBqa0ZPVDZ4eFNhMEMrOEEwcTBqazJVWjdHUm1pb1JYc3hwaFNJ?=
 =?utf-8?B?RG1GUkJkSGg4eGY4NDZhT0FRbStuWmFGRVZkclVET294bUhCazU2R01FVGdD?=
 =?utf-8?B?RldWTS9NMS9EMzFDNE1CVm10bXcxYXQ5VWlqeVY5SGp3VHo5NzE1L1NDUmtk?=
 =?utf-8?B?RDFkUmtVRERBdEJqTEVZTjV6OG1GRG5RL3RRc2xYeGU3aVExQ2g0bFZFRVhQ?=
 =?utf-8?B?ME93Vml0Ti9BMnlTOHJSVkRBM3o4NmFlejhpWFVvbFZYZmZZM0Rqb2Z0NDJY?=
 =?utf-8?B?RjZZb0cvZ3NZN0o2bThRaWNqbWtEWmtHTmVjT002YWo1d0FvQUZJN3VoVFdq?=
 =?utf-8?B?ZXh3c2s4Vyt3S25TbFBOMUpwbnhiMFliNWoyTVRJWE9vRzl0VVVDNmR6QkRT?=
 =?utf-8?B?ZEpzYUhKbDJLTkJFYjhnK0lMREp4cDdmaW5KWTVmV3V3UXRxZFlVNEVuVHBz?=
 =?utf-8?B?WjVtMllqSkxvTmcwM1pVUEVYM3M3aytTbTNxaWhKQy9OdVgzTXhuaTkzL2V4?=
 =?utf-8?B?cFVsaGdSNVpsVzFsaWl3VDNlVENTNW1QMXRsVjN0emZwc1dSQTZIUk9Bbyt4?=
 =?utf-8?B?bW5GMUYvTFhqUSt5bUszbmxiRmQvWlcrVnlZd2RqSFhuN0VUb1ZyWDVWZk9O?=
 =?utf-8?B?ME0wSlp3VTVLS0lNLytISVNVc2N4c2pCVCtXUmE3SGpHQTJacXF4dW9ES21R?=
 =?utf-8?B?RDZEMFZqZ2FUSERobFlKaHdhNy9LSURaNnQ5aVRSeGo1eTl1Tk5wT1QxWjFQ?=
 =?utf-8?B?QzFNdmF6ZFJHYnIvQ3hyVXNYcGMvZVVKeFF5TXVraEdGR2t0N0JoTEpjYXA3?=
 =?utf-8?B?Y3JDR2orWlhkcWlKNmNrdThVRElsb1A4Z3pNc0ltT1VVVlZxb05heWx1ZDlM?=
 =?utf-8?B?ZEF1Q3dmeW90QlJxek5OYVkzd0NUSDdmNW9URWNCckVTWEVhWnNrd2VtU0NM?=
 =?utf-8?B?MzZpd3ByVmdNS2x0UDg4SHpCODFQSHFCL1V2emNxbDZwalhaNHhaL0txSG9N?=
 =?utf-8?B?ZE9wVUgrM3ZhRmM0YUgzYjU4YVVHay9QNWE0cDVGNEo3ZnBIVFRHSGZZdGEx?=
 =?utf-8?B?UEVOMnh1VzVtVFVrU2tRQ3lRY1l6Y3l3MyswWU12ZkV5alJmUGF1V3k1Rng3?=
 =?utf-8?B?blhxaDcwUlBtTE5QZEduMmhMaHBsR1RKdEwxNFRlc3FrVkZoVFFMSUE5Mnpt?=
 =?utf-8?B?WFdDNGFpL3lrbnF3Vkd1aWx4cjlHUndWckl4eTZpWnNjYUx1Qi96U0MrbWJT?=
 =?utf-8?B?UUI2R3NFb2xFRTU3a1doZTNWajMvZzZpZW5vcmlkU2F3QmpyaXNBM095MWEy?=
 =?utf-8?B?a0JicjBMZE1WQVRqRWhZdDRCQm0vYWg2dXEwMDdQT1pGSHdoU0xva2hEQndS?=
 =?utf-8?B?OXZCa3Z2MTRvK1hoSGZBYlQvakRaNFQwM3UxWFFHcWp2MXFLblE0SjlEanNG?=
 =?utf-8?B?anY4RDhhajVubnpuUjA0bTBQQTlRV2hwRDF2a2M2dW0vbEE2bDdpWW1uWCs5?=
 =?utf-8?B?RDhQR25oK05tVmpMNTVWRzdYdWhENUdkcVpDZDdKWnVaZDNTU0NzemI1VlF1?=
 =?utf-8?B?elhTcE5pN1JMVXVMQ0NhMlhOMjYzZlk5V1RPazQxMVE0ZHFIK0hNMWJaSzBJ?=
 =?utf-8?B?djAzM3Jjd1hWeml1WnB5TE1nNmd6ZHhsYUxHN0lVUHRHc0h5TGdScGc5Qjhi?=
 =?utf-8?B?WVFVczY1bm9SU2NxQnY3cnlrc0JNZm53cnVpZmttZ1d2K25qKzQvK0pYUlAr?=
 =?utf-8?B?bGg5VUliVXppdWRIV2RFZGZoVGxFcU9MVWRXdHRKdzc2ckFKM00yTlB1ejh6?=
 =?utf-8?B?a2RYTmZpSFpwRGV0OUkyOGZ1ODhZK3Rpbk1JRHEvV21kYTVaYkFVWWtFNEE1?=
 =?utf-8?B?MmxvaVh1OUhRT0NHNndsVUwrWVdGUGowWXpoZW9iYUpEQVJvaTBFTkQ2bmd3?=
 =?utf-8?B?STR3b25JV0NmdXRvT0poRDVLTlN1U3luTUpoUHp4ckZTWmtFekxMQWlrd3J0?=
 =?utf-8?B?RGFzMnp4YXRTaG5FMzN1ZWtXWU1Sb1h1K0FvK1hqeDFmMStSdzF1QT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1D29A1AFD2A59C4A9F5E0F341B215C5A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 263ea4bc-a4b3-477d-527a-08d9af711e83
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 17:37:42.6564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +1GInytesf6+zD7g6RwkSQqUjoECT66eevYKUpfCC6sMF0pgT1bhP8HsX/qyJt/nA2iK20rg8Y54b8jIZlJ1rsZuCJERglSjJAO+B4fWFYZW0reXCIj/W5S4zAYWUdl3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5894
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/guc: Add GuC's error state
 capture output structures.
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

R29vZCBjYXRjaCAtIGkgbWlzc2VkIHRoYXQuIFdpbGwgZml4IGl0LiBUaGFua3MgYWdhaW4uDQoN
Ci4uLmFsYW4NCg0KT24gV2VkLCAyMDIxLTExLTI0IGF0IDEyOjA4ICswMjAwLCBKYW5pIE5pa3Vs
YSB3cm90ZToNCj4gT24gTW9uLCAyMiBOb3YgMjAyMSwgQWxhbiBQcmV2aW4gPGFsYW4ucHJldmlu
LnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEFkZCBHdUMncyBlcnJvciBjYXB0
dXJlIG91dHB1dCBzdHJ1Y3R1cmVzIGFuZCBkZWZpbml0aW9ucyBhcyBob3cNCj4gPiB0aGV5IHdv
dWxkIGFwcGVhciBpbiBHdUMgbG9nIGJ1ZmZlcidzIGVycm9yIGNhcHR1cmUgc3VicmVnaW9uIGFm
dGVyDQo+ID4gYW4gZXJyb3Igc3RhdGUgY2FwdHVyZSBHMkggZXZlbnQgbm90aWZpY2F0aW9uLg0K
PiANCj4gSWYgaXQncyBmb3IgZGVjb2RpbmcgZGF0YSwgc2hvdWxkIHRoZXkgYWxsIGhhdmUgX19w
YWNrZWQ/DQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50
ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19jYXB0dXJlLmggICAgfCAzNSArKysrKysrKysrKysrKysrKysrDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5oDQo+ID4gaW5kZXggZGY0MjBm
MGY0OWIzLi5iMjQ1NGI2Y2Q3NzggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmgNCj4gPiBAQCAtMjksNiArMjksNDEgQEAgc3Ry
dWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyX2dyb3VwIHsNCj4gPiAgCXN0cnVjdCBfX2d1Y19tbWlv
X3JlZ19kZXNjciAqIGV4dDsNCj4gPiAgfTsNCj4gPiAgDQo+ID4gK3N0cnVjdCBpbnRlbF9ndWNf
Y2FwdHVyZV9vdXRfZGF0YV9oZWFkZXIgew0KPiA+ICsJdTMyIHJlc2VydmVkMTsNCj4gPiArCXUz
MiBpbmZvOw0KPiA+ICsJCSNkZWZpbmUgR1VDX0NBUFRVUkVfREFUQUhEUl9TUkNfVFlQRSBHRU5N
QVNLKDMsIDApIC8qIGFzIHBlciBlbnVtIGd1Y19jYXB0dXJlX3R5cGUgKi8NCj4gPiArCQkjZGVm
aW5lIEdVQ19DQVBUVVJFX0RBVEFIRFJfU1JDX0NMQVNTIEdFTk1BU0soNywgNCkgLyogYXMgcGVy
IEdVQ19NQVhfRU5HSU5FX0NMQVNTRVMgKi8NCj4gPiArCQkjZGVmaW5lIEdVQ19DQVBUVVJFX0RB
VEFIRFJfU1JDX0lOU1RBTkNFIEdFTk1BU0soMTEsIDgpDQo+ID4gKwl1MzIgbHJjYTsgLyogaWYg
dHlwZS1pbnN0YW5jZSwgTFJDQSAoYWRkcmVzcykgdGhhdCBodW5nLCBlbHNlIHNldCB0byB+MCAq
Lw0KPiA+ICsJdTMyIGd1Y19jdHhfaWQ7IC8qIGlmIHR5cGUtaW5zdGFuY2UsIGNvbnRleHQgaW5k
ZXggb2YgaHVuZyBjb250ZXh0LCBlbHNlIHNldCB0byB+MCAqLw0KPiA+ICsJdTMyIG51bV9tbWlv
czsNCj4gPiArCQkjZGVmaW5lIEdVQ19DQVBUVVJFX0RBVEFIRFJfTlVNX01NSU9TIEdFTk1BU0so
OSwgMCkNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0cnVjdCBpbnRlbF9ndWNfY2FwdHVyZV9vdXRf
ZGF0YSB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3VjX2NhcHR1cmVfb3V0X2RhdGFfaGVhZGVyIGNh
cHR1cmVfaGVhZGVyOw0KPiA+ICsJc3RydWN0IGd1Y19tbWlvX3JlZyBjYXB0dXJlX2xpc3RbMF07
DQo+ID4gK307DQo+ID4gKw0KPiA+ICtlbnVtIGd1Y19jYXB0dXJlX2dyb3VwX3R5cGVzIHsNCj4g
PiArCUdVQ19TVEFURV9DQVBUVVJFX0dST1VQX1RZUEVfRlVMTCwNCj4gPiArCUdVQ19TVEFURV9D
QVBUVVJFX0dST1VQX1RZUEVfUEFSVElBTCwNCj4gPiArCUdVQ19TVEFURV9DQVBUVVJFX0dST1VQ
X1RZUEVfTUFYLA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArc3RydWN0IGludGVsX2d1Y19jYXB0dXJl
X291dF9ncm91cF9oZWFkZXIgew0KPiA+ICsJdTMyIHJlc2VydmVkMTsNCj4gPiArCXUzMiBpbmZv
Ow0KPiA+ICsJCSNkZWZpbmUgR1VDX0NBUFRVUkVfR1JQSERSX1NSQ19OVU1DQVBUVVJFUyBHRU5N
QVNLKDcsIDApDQo+ID4gKwkJI2RlZmluZSBHVUNfQ0FQVFVSRV9HUlBIRFJfU1JDX0NBUFRVUkVf
VFlQRSBHRU5NQVNLKDE1LCA4KQ0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArc3RydWN0IGludGVsX2d1
Y19jYXB0dXJlX291dF9ncm91cCB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3VjX2NhcHR1cmVfb3V0
X2dyb3VwX2hlYWRlciBncm91cF9oZWFkZXI7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3VjX2NhcHR1
cmVfb3V0X2RhdGEgZ3JvdXBfbGlzdHNbMF07DQo+ID4gK307DQo+ID4gKw0KPiA+ICBzdHJ1Y3Qg
aW50ZWxfZ3VjX3N0YXRlX2NhcHR1cmUgew0KPiA+ICAJc3RydWN0IF9fZ3VjX21taW9fcmVnX2Rl
c2NyX2dyb3VwICpyZWdsaXN0czsNCj4gPiAgCXUxNiBudW1faW5zdGFuY2VfcmVnc1tHVUNfQ0FQ
VFVSRV9MSVNUX0lOREVYX01BWF1bR1VDX01BWF9FTkdJTkVfQ0xBU1NFU107DQo+IA0KPiAtLSAN
Cj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0KDQo=
