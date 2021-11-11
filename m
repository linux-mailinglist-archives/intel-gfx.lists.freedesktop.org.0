Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEB844DBB6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 19:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 212686E22F;
	Thu, 11 Nov 2021 18:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1CD76E22F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 18:43:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="213717735"
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="213717735"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 10:43:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="501984003"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 11 Nov 2021 10:43:37 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 10:43:36 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 10:43:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 11 Nov 2021 10:43:36 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 11 Nov 2021 10:43:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XuHzDWOjZ0dR0XPx83N0K2Ywoka1gLhoo9FApl6OhN+p63L96KHblM1ylBsCdd5AN/i9dTMrJ8XX9HTPdS0DXOrfMCWSL/CeI2BmYup/cYudKwdWPyuCfne59l9DdZ+q/yTlBWoYVLLO2RIfaa44xCIqAB3Z6s9wnj+BoGVG4eaWdjmRBdoCQeZXGnWHIPRwZJTsXDMIaP8myytyLYHXtoLbhhx2+9nViA95AulYauoiGmHuyj1AERW1cP85+WzcWjAImjGFfJbUoyIKPz2oqAVqRcBpX1tJ/cAP/eIvT1d5ZzLy1kXlUcQHlSnuA2pzHk4U9Dks4qyAnle1nLPBGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AjPr0BW0byr6JTNgXWRLBBStR+6JaEbZuRJyBtOTOWA=;
 b=Hmu3etL0EsQsE2KicwdrhfToS+xqCJwB9nCTODRyigsAYaPuDD16ZczIg5E6qswaqOYOWEP7RH7s4Muca0MrZ0Xo+OdPV/tsTREo+AEGXGiHPTVuALYQot5iIphAmh1d8Dp7GovLK497V/3AkjbChsXffajI4tNuWZG/LSx22YzksDZ88hQFP45GNsagsQMyfBjbEsH1I17UP4U29u/2qHtP+NPa5evNJpok1fpWGe56cJ6b8MqLqNw2cV1bf25i5ManH7l9Y/wJoPxF2SrdA8Ds0DYtrrwj9BR9PLEpb7PgMXQilKcAE79tZrmI3kE8R49Y9APkZt4LtzX8H0RErQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AjPr0BW0byr6JTNgXWRLBBStR+6JaEbZuRJyBtOTOWA=;
 b=TwYIqIcku25NNPdBZ4mZvAFF0PKUCDTxGGUB1vmKr6wJz/nrR9vVfmbyEm62djhRw8kbKsUxgEXm1ViuoL/N4PewUFVlMYD/p7EyGbZ9tXpjkiiaFJrqCMMCd7RE3QRQEL6mDxIrRkNthNXlOAIH6JHmT1jDCu+w7cr4nAj9HHI=
Received: from SN6PR11MB2736.namprd11.prod.outlook.com (2603:10b6:805:5a::15)
 by SN6PR11MB3488.namprd11.prod.outlook.com (2603:10b6:805:b8::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.16; Thu, 11 Nov
 2021 18:43:32 +0000
Received: from SN6PR11MB2736.namprd11.prod.outlook.com
 ([fe80::9553:30de:3836:3e54]) by SN6PR11MB2736.namprd11.prod.outlook.com
 ([fe80::9553:30de:3836:3e54%5]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 18:43:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Fix PSR2 handling of multiplanar format
Thread-Index: AQHX1OgYKd7+iXyWsUGR4BrCiM0c2Kv7ACCAgACCIICAAW1rAIAAJK6AgAGZ4IA=
Date: Thu, 11 Nov 2021 18:43:32 +0000
Message-ID: <d4f0091f5ae1965eafc5e3f7ef4a5d120f3e1df8.camel@intel.com>
References: <20211108213807.39865-1-jose.souza@intel.com>
 <41137e8964637d45ba52b47ccba7d83db584dc0f.camel@intel.com>
 <d161d435144766ec057dfd388bcc34c93d164a0e.camel@intel.com>
 <db4c7afa7516888f89591ecf5544c0c6de57d90e.camel@intel.com>
 <15a9667df6f1be6a84688911c22aee101f8482d7.camel@intel.com>
In-Reply-To: <15a9667df6f1be6a84688911c22aee101f8482d7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84946435-907a-4f86-9f16-08d9a5432934
x-ms-traffictypediagnostic: SN6PR11MB3488:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB34885EFF686A343F30F18EB68A949@SN6PR11MB3488.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LLAtCpclgIdLKhx2Ggz8Bj+vdA2IpnIsn8riNvgA3TKcKAw36x/XPyn0WezP25p0hCYQySkaHWJU8qu5OLjmBOTdJ5/5OpZJpmt5Yzm4H8CtOtNCQlo0u9YVz6niRJWeFc1hSfmnRXUM+319nKhHeYGhfKNjnU+Em14yPws4VBYbMPzQw3RRU9wDyJgixr3reeZk/YsQg42eN07ombCr2cBw23gIl7Lwo0rinjl7fUQpO1Z1FW93vek/V9IKKyjghevsMJ2ljl3WImS0C3JKhG0GbkzcyEHIwRhu2I5U9DYfQYr0nSCFJ6uhOi7XPHPOuCAtQkEwPOnaRpukKm97SqKlq4sUWhTNj0cQBC+HInphViw7nMNIfuFQPut0CwIN+zi2i8HY1+FLMTGYUS/mbfBY9O+xyacUmofmiMYKDtG2y4SJMJhWG0DPNGVcgPRG5iSxeJGKghc0vSMAhQcFMPPH14FAuej4dVOqvE0r0H3Vduc94cPnKc28Cnlvb2vJTQoaHM/m77esiDNbu5hOT3ysxov6J8mXKjmPBBv6GBZ+4pSGvdONVtw3d+bmH0SN48sDaZ3bnPrVQOrH0/4sEmOqmneNbRno4RP6sNFT76lW0NqUqaOuIUL2IWqDE8CG6wMx2ZkWz1K2G+gaRnV9VVyFl8QLUONM6CVXdYBW1nN8NvgK6cvpswut+UzFICcJwQdJP5N//mYiZbXlpIHRbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2736.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(83380400001)(82960400001)(66574015)(316002)(66476007)(66556008)(2616005)(38100700002)(36756003)(6506007)(91956017)(66946007)(508600001)(110136005)(6486002)(4001150100001)(66446008)(64756008)(107886003)(6636002)(71200400001)(4326008)(5660300002)(6512007)(8936002)(8676002)(76116006)(86362001)(2906002)(186003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nm4rY2V1QUsxN2pwVzlWWDNPZDUzV2ZUM0gzVm9pOHQ1NHo2WUJzZVFaZjlq?=
 =?utf-8?B?MHdXSVYzcllPcWpHOUdWUTJ0WmlzZUZBcEJ1alp3ZG1rVnJya200ZndTU3d0?=
 =?utf-8?B?SkMveUhGdVVwL0ExTTdiNitvbDlLQ09tQjlLR3Avejc1QjNSQ25PVGpTL3Y5?=
 =?utf-8?B?aDEySGlxSVZrcmFCVGFYdzA2YjB0MHQyc3VnQURtVS81S1A2R0hIR0xIWnZu?=
 =?utf-8?B?VlRjdFhsejZvZklTaHRPOGpIa0h5SVNxVU5UeGU4dG1kYjNyUkI0Z1lZUUQw?=
 =?utf-8?B?VVJzMEoxR2U4Ujl6K3ZJV0RGUnJCRnh5NHdCOUU5VVJyQzBEOVNFVU8xeVFk?=
 =?utf-8?B?RXk0cVNxSG5yK01kZEgyd0Frem03cllSYlBzQVYvQVNRblovVVNMN2t2VzJJ?=
 =?utf-8?B?aDY1T0VwbHRqZWFIQmdSbEFpSDNKTnZiSTR4RDl1ZGZjNXhZWU1LVWVySmIv?=
 =?utf-8?B?T0o3NU90Q0k2OTNtZ2ttcEtJNC81SUxYUFdHa0VuZVRuT1BaRTMxSE0ybS82?=
 =?utf-8?B?cHBzMFJlak04Mmg3N1o5REpmTE5ZdlJsbVBoU2ZYdm1zQXhzcmtHd0xPcnFz?=
 =?utf-8?B?cUVTdzR0ZXB0S0wrZ0wybHQvNUd0NHBOK1p0U3F0VW82bTNPRHpYMHBLVXBS?=
 =?utf-8?B?ZWgwWGxOZml3WjJjNk01UzBZdzg2YzA5bFBFc3JOL0R1UXJoSkFJWXF1aVdy?=
 =?utf-8?B?bHQ5MGo4bStUWlZSazg5Szh3MVBkaXRiRkdjaW5TL1llVnBtSW5yQXdPVkR4?=
 =?utf-8?B?dk45R0p2SUp3cEhRWmVoVThXdUtLZVQxZ2N4dnhMd1Fqb2dUQnpjblllVm9t?=
 =?utf-8?B?ckl0K3R1NXJsb3pBWXVQRmZ3c3ZlakVVSGxjSW16dVlSbGl6aVJSek9iTUhN?=
 =?utf-8?B?Mk1ZelZZQ2NSYnU2UjlRNjZoN2h1YUFaejA3KzM3ZFpYYXd5TmlSZjVneFpN?=
 =?utf-8?B?MktxMFQxRjlJRFBvUnlkQkkxMkxqV2xhTnRzRzI1YVlpQnZUK2NEK2k4RnNF?=
 =?utf-8?B?T1l5R1ZrWC94M0FUSkJLRGd1aGZuaXRHWG5iSThOb1I3MkdVV3hTb2tieEtn?=
 =?utf-8?B?VTl6ZkJqYXQrQXpxamRrTjFPdklkK3hMYlR2a0FiNGNKcHAzWFg2Y0dMSmRZ?=
 =?utf-8?B?SWxQd0ZhSlZ0UkpKRU5ZZG1nNzNpNFduTlR0MFFBSTJGL3BaYTMzVTl3SThy?=
 =?utf-8?B?aFNDVk5BTHYwOUMwZmh4MTlPV0NobjE2S1cyK01SV1hIb1V6ZlY0bEtLbks5?=
 =?utf-8?B?QmFRc2k1WEVjVlVheCtOZUlodmtOSFNjVUN1ZDViSkhuZ1NiOUNWSlF2Q01R?=
 =?utf-8?B?b1VoaFdiSWNNQXpxa0FZUUNyd2JFMVZmN09xVkExQVFObXg2UEJSMWc4aDA3?=
 =?utf-8?B?Q3l2THpsYmFTTVIzaHdvTFYvem01ZXF3YkxlTEVxTXNDbEhZUGZVeXpHNkJV?=
 =?utf-8?B?eU9qR2w4TzJuSjRta2ZhOFhzK1JLL3RWTTU1cTFHbXAzZUZydS9JeEwyMnl2?=
 =?utf-8?B?VWxMdW9TaVVMNk9JOWY3SCtYTXNCTXFxa3J0VGp5cGkxSDYrUXQ4cFNtVGgy?=
 =?utf-8?B?MTR2S2dFWEx0UE5MYm5SNlVqL1ZxY3pHZ3p1eGpJZUFPeEZWZndCc3BnZjRT?=
 =?utf-8?B?bHVDekhNcEJ1SVZOZzRpU21SZGdhaWtrYU1VRlZVTzFlN0xvR0E1enlCYzZU?=
 =?utf-8?B?L1hIejFmSEI2M2dubW05RU9GTml1Wi9YM1FFeklqSFd5R3NhWTJrbHAwT0E0?=
 =?utf-8?B?QWw3eWNkZDBhWVU0SUgzOVcrSWlWczYwckVUZHV5ZzY3UHZTZE9Uc0pCbHo5?=
 =?utf-8?B?RUwwYWxHSm02bDdvSVFhTnp5QVVpK1ZIeC9EZUJVYytOTXpON284QU1LSmk5?=
 =?utf-8?B?OU85MzFxNzFmWjN3WHRaTEFJWnc2bVEzZDdZVTF1Y3pjOHpURG9NVmRjOWZm?=
 =?utf-8?B?Q1V1Nzg0WGJ0UE82dDRXNm85eTlJVjVVZG9PZVNLczJ0Nmk4SHJiamlrelNa?=
 =?utf-8?B?eiszOVV2UThFSDd5ZVZ4b0YvV3Q3V1EzbTVZaTlnS0xLQ3JkYWlRVWdYSE00?=
 =?utf-8?B?clMzbHFUbHFtblJ4Vkw2bVhNRUdqUkdUVG5EeUdiT0tSK3JPbFcxaHdjbldH?=
 =?utf-8?B?ejFpajJSYlp0OTBiMFFiYVlucStaNHkwWXd0KzJtS05wWDVXa2lrWWV4bmV5?=
 =?utf-8?B?clRYa1JCWnJvcCtEZm9WbUJIUUhuR0h0VmRscElkQlhRdmMvN2I4Vk93Y3Er?=
 =?utf-8?B?c2E5Q0V0S2tCcHJoalZmNFJEV3R1YThkK2ZiWk9Mei8rNXY1RDI3emFCV092?=
 =?utf-8?B?a0tTMFEzZFBXZW5JYTdnNkhQZjVlZGJoQVhKWWNFYnUvZjcwcStiUFJRWHdj?=
 =?utf-8?Q?C6qfsz8q/wiVqebY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7AD73D2E1CA39F42A0439E6BE703451A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2736.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84946435-907a-4f86-9f16-08d9a5432934
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2021 18:43:32.0523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ny0t0s9Buz8lE/2k1LbU5CHzYv7nYa37bhiWwrEQLZp9NbkIreBZc09IRDChHwzw7jwkQ3cSez0XhOLsYpKneuPf6pmh7kAl/3mz4rFo/VE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3488
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR2 handling of
 multiplanar format
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

VGhhbmsgeW91IGZvciB0aGUgY2xhcmlmaWNhdGlvbi4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpPbiBXZWQsIDIwMjEtMTEtMTAg
YXQgMTg6MTYgKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiBPbiBXZWQsIDIwMjEtMTEtMTAg
YXQgMTY6MDUgKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjEt
MTEtMDkgYXQgMTg6MTcgKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4gT24gVHVlLCAy
MDIxLTExLTA5IGF0IDEwOjMxICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6DQo+ID4gPiA+
IE9uIE1vbiwgMjAyMS0xMS0wOCBhdCAxMzozOCAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSB3cm90ZToNCj4gPiA+ID4gPiBXaGVuIGEgcGxhbmUgd2l0aCBhIG11bHRpcGxhbmFyIGZvcm1h
dCBpcyBhZGRlZCB0byB0aGUgc3RhdGUNCj4gPiA+ID4gPiBieQ0KPiA+ID4gPiA+IGRybV9hdG9t
aWNfYWRkX2FmZmVjdGVkX3BsYW5lcygpLCBvbmx5IHRoZSBVViBwbGFuZSBpcw0KPiA+ID4gPiA+
IGFkZGVkLCBzbyBhIGludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKCkgY2FsbCB0byBn
ZXQNCj4gPiA+ID4gPiB0aGUgWQ0KPiA+ID4gPiA+IHBsYW5lIHN0YXRlIGNhbiByZXR1cm4gYSBu
dWxsIHBvaW50ZXIuDQo+ID4gPiA+IA0KPiA+ID4gPiBJIGRvbid0IHVuZGVyc3RhbmQgaG93IHRo
aXMgY291bGQgaGFwcGVuIG9ubHkgc29tZXRpbWVzPyBXZXJlDQo+ID4gPiA+IHlvdQ0KPiA+ID4g
PiBhYmxlDQo+ID4gPiA+IHRvIHJlcHJvZHVjZSB0aGlzIHNvbWVob3c/DQo+ID4gPiANCj4gPiA+
IGhlcmUgYSBleGFtcGxlOg0KPiA+ID4gcGxhbmUgMCAtIHByaW1hcnkgcGxhbmUgd2l0aCBudjEy
IGZvcm1hdA0KPiA+ID4gcGxhbmUgMSAtIG92ZXJsYXkgd2l0aCBhbnkgZm9ybWF0DQo+ID4gPiBw
bGFuZSAyIC0gcHJpbWFyeSBzbGF2ZQ0KPiA+ID4gDQo+ID4gPiB1c2Vyc3BhY2UgZG9lcyBhIGZs
aXAgdG8gb3ZlcmxheSwgc28gc3RhdGUgZG8gbm90IGhhdmUgdGhlDQo+ID4gPiBwcmltYXJ5DQo+
ID4gPiBwbGFuZQ0KPiA+ID4gYnV0IHRoZSBwcmltYXJ5IGFuZCBvdmVybGF5IHBsYW5lcyBvdmVy
bGFwLCBzbyB0aGUgcHJpbWFyeSBpcw0KPiA+ID4gYWRkZWQNCj4gPiA+IGJ5IGRybV9hdG9taWNf
YWRkX2FmZmVjdGVkX3BsYW5lcygpLi4uDQo+ID4gDQo+ID4gT2ssIHRoYW5rIHlvdSBmb3IgdGhl
IGV4cGxhbmF0aW9uLg0KPiA+IA0KPiA+ID4gPiBHZW5lcmFsbHk6IGNoZWNraW5nIGxpbmtlZF9u
ZXdfcGxhbmVfc3RhdGUgYmVpbmcgdmFsaWQgcG9pbnRlcg0KPiA+ID4gPiBtYWtlcw0KPiA+ID4g
PiBzZW5zZS4gSSdtIGp1c3Qgd29uZGVyaW5nIGhvdyBhbmQgd2hlbiB0aGlzIGNvdWxkIGhhcHBl
biBhbmQNCj4gPiA+ID4gaG93DQo+ID4gPiA+IHRoYXQNCj4gPiA+ID4gc2hvdWxkIGJlIGhhbmRs
ZWQuDQo+ID4gPiA+IA0KPiA+ID4gPiA+IFRvIGZpeCB0aGlzLCBpbnRlbF9hdG9taWNfZ2V0X3Bs
YW5lX3N0YXRlKCkgc2hvdWxkIGJlIGNhbGxlZA0KPiA+ID4gPiA+IGFuZA0KPiA+ID4gPiA+IHRo
ZSByZXR1cm4gbmVlZHMgdG8gYmUgY2hlY2tlZCBmb3IgZXJyb3JzLCBhcyBpdCBjb3VsZCByZXR1
cm4NCj4gPiA+ID4gPiBhDQo+ID4gPiA+ID4gRUFHQUlODQo+ID4gPiA+ID4gYXMgb3RoZXIgYXRv
bWljIHN0YXRlIGNvdWxkIGJlIGhvbGRpbmcgdGhlIGxvY2sgZm9yIHRoZSBZDQo+ID4gPiA+ID4g
cGxhbmUuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gT3RoZXIgaXNzdWUgd2l0aCB0aGUgcGF0Y2gg
YmVpbmcgZml4ZWQgaXMgdGhhdCB0aGUgWSBwbGFuZSBpcw0KPiA+ID4gPiA+IG5vdA0KPiA+ID4g
PiA+IGJlaW5nIGNvbW1pdHRlZCB0byBoYXJkd2FyZSBiZWNhdXNlIHRoZSBjb3JyZXNwb25kZWQg
cGxhbmUNCj4gPiA+ID4gPiBiaXQgaXMNCj4gPiA+ID4gPiBub3QNCj4gPiA+ID4gPiBzZXQgaW4g
dXBkYXRlX3BsYW5lcyB3aGVuIFVWIGFuZCBZIHBsYW5lcyBhcmUgYWRkZWQgdG8gdGhlDQo+ID4g
PiA+ID4gc3RhdGUNCj4gPiA+ID4gPiBieQ0KPiA+ID4gPiA+IGRybV9hdG9taWNfYWRkX2FmZmVj
dGVkX3BsYW5lcygpLg0KPiA+ID4gPiANCj4gPiA+ID4gVG8gbXkgdW5kZXJzdGFuZGluZyB0aGlz
IG9uZSBpcyBhbHJlYWR5IHNldCBpbg0KPiA+ID4gPiBpbnRlbF9kaXNwbGF5LmM6aWNsX2NoZWNr
X252MTJfcGxhbmVzLg0KPiA+ID4gDQo+ID4gPiBwcmltYXJ5IHBsYW5lIHdpbGwgYmUgYWRkZWQg
YWZ0ZXIgdGhpcyB3YXMgZXhlY3V0ZWQuDQo+ID4gDQo+ID4gT2ssIGJ1dCB0aGVuIGlzbid0IGl0
IGEgcHJvYmxlbSBhbHNvIHdoZW4gc2VsZWN0aXZlIGZldGNoIGlzIG5vdCBpbg0KPiA+IHVzZT8N
Cj4gDQo+IFllcyBidXQgaXQgaXMgbm90IGNvbW1vbiB0byBjYWxsIGRybV9hdG9taWNfYWRkX2Fm
ZmVjdGVkX3BsYW5lcygpIG9yDQo+IGludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGUoKSB0aGF0
IGxhdGUuDQo+IA0KPiA+ID4gPiA+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gPiA+ID4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCj4gPiA+ID4gPiBGaXhlczogMzgwOTk5MWZmNWY0ICgiZHJtL2k5MTUvZGlzcGxheTog
QWRkIGluaXRpYWwgc2VsZWN0aXZlDQo+ID4gPiA+ID4gZmV0Y2gNCj4gPiA+ID4gPiBzdXBwb3J0
IGZvciBiaXBsYW5hciBmb3JtYXRzIikNCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gPiAtLS0NCj4g
PiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEyICsr
KysrKysrLS0tLQ0KPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gaW5kZXggOWQ1ODlkNDcx
ZTMzNS4uYTFhNjYzZjM2MmU3ZCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+IEBAIC0xNzMyLDEzICsxNzMy
LDE3IEBAIGludA0KPiA+ID4gPiA+IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QN
Cj4gPiA+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgICogc2FtZSBhcmVhIGZvciBZIHBsYW5lIGFzIHdlbGwuDQo+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgKi8NCj4gPiA+ID4gPiAgICAgICAgICAgICAgIGlmIChsaW5rZWQpIHsNCj4gPiA+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4g
PiA+ID4gKmxpbmtlZF9uZXdfcGxhbmVfc3RhdGUgPQ0KPiA+ID4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXQNCj4gPiA+ID4g
PiBlLA0KPiA+ID4gPiA+IGxpbmtlZCk7DQo+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBkcm1fcmVjdCAqbGlua2VkX3NlbF9mZXRjaF9hcmVhDQo+ID4gPiA+ID4gPQ0KPiA+
ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICZsaW5rZWRfbmV3X3BsYW5lX3N0YXRlLQ0K
PiA+ID4gPiA+ID4gcHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gPiA+ID4gKmxpbmtlZF9uZXdf
cGxhbmVfc3RhdGU7DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1f
cmVjdCAqbGlua2VkX3NlbF9mZXRjaF9hcmVhOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBsaW5rZWRfbmV3X3BsYW5lX3N0YXRlID0NCj4gPiA+ID4gPiBpbnRl
bF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKHN0YXRlLCBsaW5rZWQpOw0KPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBpZiAoSVNfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpKQ0KPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybg0KPiA+ID4gPiA+IFBU
Ul9FUlIobGlua2VkX25ld19wbGFuZV9zdGF0ZSk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBsaW5rZWRfc2VsX2ZldGNoX2FyZWEgPQ0KPiA+ID4gPiA+ICZs
aW5rZWRfbmV3X3BsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOw0KPiA+ID4gPiA+ICAg
ICAgICAgICAgICAgICAgICAgICBsaW5rZWRfc2VsX2ZldGNoX2FyZWEtPnkxID0NCj4gPiA+ID4g
PiBzZWxfZmV0Y2hfYXJlYS0NCj4gPiA+ID4gPiA+IHkxOw0KPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICAgICAgICBsaW5rZWRfc2VsX2ZldGNoX2FyZWEtPnkyID0NCj4gPiA+ID4gPiBzZWxfZmV0
Y2hfYXJlYS0NCj4gPiA+ID4gPiA+IHkyOw0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBjcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9DQo+ID4gPiA+ID4gQklUKGxpbmtlZC0NCj4g
PiA+ID4gPiA+IGlkKTsNCj4gPiA+ID4gPiAgICAgICAgICAgICAgIH0NCj4gPiA+ID4gPiAgICAg
ICB9DQo+ID4gPiA+ID4gDQoNCg==
