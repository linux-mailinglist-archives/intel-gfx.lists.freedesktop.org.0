Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0B83F6C6B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 02:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A521189010;
	Wed, 25 Aug 2021 00:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EFBC89010
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 00:03:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="303001316"
X-IronPort-AV: E=Sophos;i="5.84,348,1620716400"; d="scan'208";a="303001316"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,348,1620716400"; d="scan'208";a="425630666"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2021 17:03:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 17:03:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 24 Aug 2021 17:03:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 24 Aug 2021 17:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdi4u4cPzogUDK6vMBOzc8LIII0WmRtp/wKkxgFKS6onJTT/jM8qQWSrUpHRNqnH1oU6kp83sIigrU7ySpiosKydXa0DWykYvhp/VGieaczKFHGNaZhNKdoIEFxNGyYprA6iVT2xgoa4d44yXaztzFzmc+9epmNYsulMEF13Pxquf6b8hNgOsu9IIvEzn5Ep8SC/T7AHZRvNwWqllZvc5wWgwIGJLtEZRmOJ1s4D2yTdnuk59Kre04RMSjIKUzEOMGWKKqkGKNH+Ir1z7e4zgxQhQcC7XsNJY1Ur0IMdKCJW2u71VoZQdv2Udcc3d1+OPiC+iSn+wIioSYX2+KOpXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+OYzx58KEEKw+k4dOPZukpQhV4DTG3enGSDy8CBqmI=;
 b=NBnCUYt3RcbCHeNhR3iZAGLqif4yeYfcEKnlXqqHztcTMyV39iDc0kKozPmCHqDV3T3uuH2iVN9diTeEVRcVNWFPcLM5dhDY8BEs9JV6APRFHn1YxZqQA4TfJGAAcb3cu6ZvwvskKP8Go+bZL64lELEOWABXLbV8VDGNuOsUjVzPpFsV/5UulWa/PvhaPd244lb9ikbJxWOZE6/BteHWXw2mWaU2bBE8ORenBNbEpi79gELXQw82HRCkxzGw6DE/YgJKYR9PrvtKQw2IeJzT8Ky3pvO/NYcQcyEw+Hsl5TEcYddfBq31KYOwHEjKf5hlAMrjli6T9Jv17nYJ4+Ym7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+OYzx58KEEKw+k4dOPZukpQhV4DTG3enGSDy8CBqmI=;
 b=yfRH33JPDEEQYx4wf/oXnNHLq5ka/GHW63Hn5y6Ip22v9yfjcRPzM+s4Pr6PxDiaYvyIQoby2//joaUbvakZCDqhJMekgGzX7iQu7v2GsUt7K5okxIkPcRJ57OtId/rzJ5ugJOw9KucW7jLbv13+D1+caXkmu9qe6kYfWUXtUvI=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4445.namprd11.prod.outlook.com (2603:10b6:208:18a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Wed, 25 Aug
 2021 00:03:29 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::5e9:8fa4:e65a:30a9]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::5e9:8fa4:e65a:30a9%7]) with mapi id 15.20.4436.024; Wed, 25 Aug 2021
 00:03:29 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Kumar Valsan, Prathap"
 <prathap.kumar.valsan@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 7/9] drm/i915/dg2: Add new LRI reg offsets
Thread-Index: AQHXihgxv813MaD1U0CiMY2XeusLGquDdRGA
Date: Wed, 25 Aug 2021 00:03:28 +0000
Message-ID: <a803574069b89a44e726540481ab10bd89b01739.camel@intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-8-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-8-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ce374eb-a91f-4ce8-da6a-08d9675bc4c7
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4445B3B7E5F7D8971AD743529FC69@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nE0Od0Y5Cd9rp9Cxdccr238bhmBADDDIqFqE9/Rii9BA7xlfdnHAw6fGldTCRYxQnechDVsuKSlUdWU/0xRx2+/QNautG+ut5PlUyuN1nLzib9kQbjVB3sawaeRUbPfPunxTG9jiNi6nfD4j/HmyTEvzV2t+DanPbBG4ypkILr96giPYcKVmu4/ChSeT30s7J1SOURDilTAvDctASsH4Nm+7AVl3wTzkMjO+OMWHDeAke7MKEKWC3Azj8LCZfrNnjm951wJ8KQ9Ak4q1s4P2KsedYegHpbdsk54K+FX9wocKwV+xD2G+18a1GbwJUHdo0j/gZDPkx8skcV4Nk9KzBZ9b7C6yO9wH6xbK8Syo2YSguSeC9g+VeDziEnhmra1B8YNSuokzAoz3Jj5qyzAWojp5s1T9EX1cwZ6f2/yualWBrlTQtMmudCHFbaYZZ4srl1R62aVOs2zCYp+wfu/+npqUnu5C5x/q+UXUWlk215A5AvnrpV/XLDsyyH2rpQZhKc5l62BIA46G4DGpFXM24QR52oFkQPGfqUnAviQxojOa7N98NO10B4W2lbe3ZZN+GtRSHplNPxubDv+Ot4QyzVhD0AFeHkFT5WxnvbPqjZP+rouHt0JjR3LmM6qEnaCPe5Wj1Io3yI/gvcpLmF8rVJtdhc458wa+sKWFQf/P6XyBzqon0uYFcJ736JE6Yilf2ziTnRutlGRLc5lgGQXrTw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(376002)(39860400002)(136003)(346002)(2906002)(36756003)(2616005)(107886003)(4326008)(478600001)(38070700005)(186003)(66446008)(316002)(91956017)(66556008)(6512007)(76116006)(54906003)(6506007)(6486002)(66946007)(83380400001)(122000001)(110136005)(71200400001)(38100700002)(26005)(5660300002)(8676002)(66476007)(8936002)(86362001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0IzY3N2bk9Kd0VKVE1Hc0k4LzFNdXVxYStpb3ZFWHpHT21vZ05OM2FneU9m?=
 =?utf-8?B?ZW1qSldyZVFDUFJqYitpWXd3N0RnZmpJUUlZaGZnM0syTXQ5UDNjNGFiK3RS?=
 =?utf-8?B?clR6UVllempsZitKVmlKTk5PUmgrZzg2Y21rSFVlTWQzS0phU1psQWU5a09E?=
 =?utf-8?B?YTc3RFFjaFBSelZDNjVwa0RjSTlHdUFyWVFaOWRKR3hpSEZhSjJ4MVQvTXg0?=
 =?utf-8?B?ek5YTSt3Q3RQTWQwWDdCS25zalVXY0RraVg4SXM5OTY5cGF0Rmw3eWRhRlZs?=
 =?utf-8?B?WXJucFZhQUhHT1BnaHlRUDB3T2tQaEFNL2xCTzJXd0VWT2Z2ZEdRYng0WXFZ?=
 =?utf-8?B?YncxQXl1K05GaFpGYnpKS2dUejVDUE5zTnUxV1pmY2lCUk1DZms2QzQ1eFVF?=
 =?utf-8?B?cDlYQkNGc1A0OUhLYXhsaGR4RHhwenFuK0h1UkZzaGJvUndvMTBUYlFGOWo2?=
 =?utf-8?B?cmFOTXYzaXhqR1NnWE53VktLekhiaHdzLzlFUTMvWTZ4a29QeFA3aDJTNEdY?=
 =?utf-8?B?Zktoa0ZGRWEyS0xpbXBGSnAveFZYV0VMKy9ZVy9TZDdvbVJYT2kyVTFSL2I1?=
 =?utf-8?B?bE5hbVZFbzVFNFBSZm9GNHR0T2xmWWhSd1luY3ZZTzZyR0xiNzBOOEZtT3JX?=
 =?utf-8?B?T1pNYjZ3TUI4TzJpemcxUFZUOEN2SGFjSDNlL2JkTDgrQWdSOEJuSjYwQUZM?=
 =?utf-8?B?dldkYXI3OGFhTS8wVFNKcVkwMXUyVnZ1aUlNTFE1cVhvOUFWZ2xqUXR0QWRx?=
 =?utf-8?B?enByaVVEOGdRdlNIaDk2UkhhZDlkMXlaYmhPOHZ0aDRKRTFrMXdZcEx3Szlh?=
 =?utf-8?B?cEp3MU5lVmZVMnp5bUxuSkxYdnZjV1BTamt2Q2JqcFNyWkFsaURPcEI1SnE0?=
 =?utf-8?B?eEdCclhVTmFZeXRJd1VJM05CZTh3VlZVdUxjOUM3ZHpjTy9uTEFJeVdzRzNH?=
 =?utf-8?B?aUNTQnZ4YzF2bnd5OG5oaE1Tbnlna3NVRnlWR0RsQVRnbG9PT3NCM2t4K2VK?=
 =?utf-8?B?WlQ4WUg5QVJ5OFJDelZVWlhSYVBwUktNZm1SMzlGdEtWdHVzVHZyUG9aYmFH?=
 =?utf-8?B?U25qZi9PRjd5Rms3SUhzeVJuYm5mZlg5eFRZN2dhSzgxQ3RSSklxeFB5dDBS?=
 =?utf-8?B?c3JJWEVmL2txa09iOFhkQUdLNDBDRHR3RXhTc0xCK0ZGLzdQOFJsUUNJSjhs?=
 =?utf-8?B?bjBSU21URkZhTXVGUy9KdGQwSFF6eVhLT1F2WUcrd25JR2hHTml3MkhUMGJa?=
 =?utf-8?B?UEwzSmU5SUdNUWRKTXd2MUlFWjFTWkl3K3RHb3EzRWxIYUhDTlNyUTZ3Nkdq?=
 =?utf-8?B?cUVZRXYvMzlRS2ZrR1ZreElXSmtCRDFFblRtdVV5U0c4eHh6NTg0ajJkTHAx?=
 =?utf-8?B?clc0QmtBbUtvblNlWDBxRDcvcXZMVEN1QnB2YlVObEVTajB0MWlvSW1DNGlo?=
 =?utf-8?B?WVdUdTVxbGU0VjJCVnpOTEFKbkluM0tKQ01WTHpmRG4xQ3AzVHVvcFNlOUR1?=
 =?utf-8?B?WXZpeS9jV1pSd1NBNnFENnVLanh5UEcwZHVxRWRiN1ZGSkM3TlFJYlo5ZU9R?=
 =?utf-8?B?QzM0N2pUb3Qxb282UWk4VFJhMFkyZVZRTVEyTjVvUDBKdjJvakM3Q0lQTmRt?=
 =?utf-8?B?R0RVeFJFQ1RqNXQ1c2VIc1VpTUR1Q3dNQ212QVM2QVJ1YVZ3Nnltamt5ck1R?=
 =?utf-8?B?MVlBVmVrcnoyaVpGa05vY3hlbWthN0JSemZ5c2xpdHRGUWlha0lhbERBODN2?=
 =?utf-8?B?d25SbDBIVjJxcjlnQnZQR052cVBzcWFwVU55ekk2VVZ6dWc3YUEzalBMMDdx?=
 =?utf-8?B?YXlkUFhEZHIwZ2xCM2ZYZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <74AF529CD4B840439C5FD017DF87CB16@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce374eb-a91f-4ce8-da6a-08d9675bc4c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2021 00:03:28.9298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hbobc6L+2QPYkmtSZKuVQ6uKHO+jSJOxDBfrXjx50qnYdkrEUrmDXGqWJINXH8rpA+h6F3CpFlz+KmbEdbtrqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4445
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 7/9] drm/i915/dg2: Add new LRI reg offsets
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
Cg0KT24gVGh1LCAyMDIxLTA4LTA1IGF0IDA5OjM2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0K
PiBGcm9tOiBBa2VlbSBHIEFib2R1bnJpbiA8YWtlZW0uZy5hYm9kdW5yaW5AaW50ZWwuY29tPg0K
PiANCj4gTmV3IExSSSByZWdpc3RlciBvZmZzZXRzIHdlcmUgaW50cm9kdWNlZCBmb3IgREcyLCB0
aGlzIHBhdGNoIGFkZHMNCj4gdGhvc2UgZXh0cmEgcmVnaXN0ZXJzLCBhbmQgY3JlYXRlIG5ldyBy
ZWdpc3RlciB0YWJsZSBmb3Igc2V0dGluZw0KPiBvZmZzZXRzDQo+IHRvIGNvbXBhcmUgd2l0aCBI
VyBnZW5lcmF0ZWQgY29udGV4dCBpbWFnZSAtIGVzcGVjaWFsbHkgZm9yIGd0X2xyYw0KPiB0ZXN0
Lg0KPiBBbHNvIHVwZGF0ZXMgZ2VuZXJhbCBwdXJwb3NlIHJlZ2lzdGVyIHdpdGggc2NyYXRjaCBv
ZmZzZXQgZm9yIERHMiwgaW4NCj4gb3JkZXIgdG8gdXNlIGl0IGZvciBsaXZlX2xyY19maXhlZCBz
ZWxmdGVzdC4NCj4gDQo+IENjOiBDaHJpcyBQIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AaW50ZWwu
Y29tPg0KPiBDYzogUHJhdGhhcCBLdW1hciBWYWxzYW4gPHByYXRoYXAua3VtYXIudmFsc2FuQGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQWtlZW0gRyBBYm9kdW5yaW4gPGFrZWVtLmcuYWJv
ZHVucmluQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyB8IDg1DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKystDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jDQo+IGluZGV4IGJiNGFmNDk3NzkyMC4uNmJhOGRhZWEy
ZjU2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYw0KPiBAQCAtMjI2LDYg
KzIyNiw0MCBAQCBzdGF0aWMgY29uc3QgdTggZ2VuMTJfeGNzX29mZnNldHNbXSA9IHsNCj4gIAlF
TkQNCj4gIH07DQo+ICANCj4gK3N0YXRpYyBjb25zdCB1OCBkZzJfeGNzX29mZnNldHNbXSA9IHsN
Cj4gKwlOT1AoMSksDQo+ICsJTFJJKDE1LCBQT1NURUQpLA0KPiArCVJFRzE2KDB4MjQ0KSwNCj4g
KwlSRUcoMHgwMzQpLA0KPiArCVJFRygweDAzMCksDQo+ICsJUkVHKDB4MDM4KSwNCj4gKwlSRUco
MHgwM2MpLA0KPiArCVJFRygweDE2OCksDQo+ICsJUkVHKDB4MTQwKSwNCj4gKwlSRUcoMHgxMTAp
LA0KPiArCVJFRygweDFjMCksDQo+ICsJUkVHKDB4MWM0KSwNCj4gKwlSRUcoMHgxYzgpLA0KPiAr
CVJFRygweDE4MCksDQo+ICsJUkVHMTYoMHgyYjQpLA0KPiArCVJFRygweDEyMCksDQo+ICsJUkVH
KDB4MTI0KSwNCj4gKw0KPiArCU5PUCgxKSwNCj4gKwlMUkkoOSwgUE9TVEVEKSwNCj4gKwlSRUcx
NigweDNhOCksDQo+ICsJUkVHMTYoMHgyOGMpLA0KPiArCVJFRzE2KDB4Mjg4KSwNCj4gKwlSRUcx
NigweDI4NCksDQo+ICsJUkVHMTYoMHgyODApLA0KPiArCVJFRzE2KDB4MjdjKSwNCj4gKwlSRUcx
NigweDI3OCksDQo+ICsJUkVHMTYoMHgyNzQpLA0KPiArCVJFRzE2KDB4MjcwKSwNCj4gKw0KPiAr
CUVORA0KPiArfTsNCj4gKw0KPiAgc3RhdGljIGNvbnN0IHU4IGdlbjhfcmNzX29mZnNldHNbXSA9
IHsNCj4gIAlOT1AoMSksDQo+ICAJTFJJKDE0LCBQT1NURUQpLA0KPiBAQCAtNTI1LDYgKzU1OSw0
OSBAQCBzdGF0aWMgY29uc3QgdTggeGVocF9yY3Nfb2Zmc2V0c1tdID0gew0KPiAgCUVORA0KPiAg
fTsNCj4gIA0KPiArc3RhdGljIGNvbnN0IHU4IGRnMl9yY3Nfb2Zmc2V0c1tdID0gew0KPiArCU5P
UCgxKSwNCj4gKwlMUkkoMTUsIFBPU1RFRCksDQo+ICsJUkVHMTYoMHgyNDQpLA0KPiArCVJFRygw
eDAzNCksDQo+ICsJUkVHKDB4MDMwKSwNCj4gKwlSRUcoMHgwMzgpLA0KPiArCVJFRygweDAzYyks
DQo+ICsJUkVHKDB4MTY4KSwNCj4gKwlSRUcoMHgxNDApLA0KPiArCVJFRygweDExMCksDQo+ICsJ
UkVHKDB4MWMwKSwNCj4gKwlSRUcoMHgxYzQpLA0KPiArCVJFRygweDFjOCksDQo+ICsJUkVHKDB4
MTgwKSwNCj4gKwlSRUcxNigweDJiNCksDQo+ICsJUkVHKDB4MTIwKSwNCj4gKwlSRUcoMHgxMjQp
LA0KPiArDQo+ICsJTk9QKDEpLA0KPiArCUxSSSg5LCBQT1NURUQpLA0KPiArCVJFRzE2KDB4M2E4
KSwNCj4gKwlSRUcxNigweDI4YyksDQo+ICsJUkVHMTYoMHgyODgpLA0KPiArCVJFRzE2KDB4Mjg0
KSwNCj4gKwlSRUcxNigweDI4MCksDQo+ICsJUkVHMTYoMHgyN2MpLA0KPiArCVJFRzE2KDB4Mjc4
KSwNCj4gKwlSRUcxNigweDI3NCksDQo+ICsJUkVHMTYoMHgyNzApLA0KPiArDQo+ICsJTFJJKDMs
IFBPU1RFRCksDQo+ICsJUkVHKDB4MWIwKSwNCj4gKwlSRUcxNigweDVhOCksDQo+ICsJUkVHMTYo
MHg1YWMpLA0KPiArDQo+ICsJTk9QKDYpLA0KPiArCUxSSSgxLCAwKSwNCj4gKwlSRUcoMHgwYzgp
LA0KPiArDQo+ICsJRU5EDQo+ICt9Ow0KPiArDQo+ICAjdW5kZWYgRU5EDQo+ICAjdW5kZWYgUkVH
MTYNCj4gICN1bmRlZiBSRUcNCj4gQEAgLTU0Myw3ICs2MjAsOSBAQCBzdGF0aWMgY29uc3QgdTgg
KnJlZ19vZmZzZXRzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4g
IAkJICAgIWludGVsX2VuZ2luZV9oYXNfcmVsYXRpdmVfbW1pbyhlbmdpbmUpKTsNCj4gIA0KPiAg
CWlmIChlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUykgew0KPiAtCQlpZiAoR1JBUEhJQ1Nf
VkVSX0ZVTEwoZW5naW5lLT5pOTE1KSA+PSBJUF9WRVIoMTIsIDUwKSkNCj4gKwkJaWYgKEdSQVBI
SUNTX1ZFUl9GVUxMKGVuZ2luZS0+aTkxNSkgPj0gSVBfVkVSKDEyLCA1NSkpDQo+ICsJCQlyZXR1
cm4gZGcyX3Jjc19vZmZzZXRzOw0KPiArCQllbHNlIGlmIChHUkFQSElDU19WRVJfRlVMTChlbmdp
bmUtPmk5MTUpID49IElQX1ZFUigxMiwNCj4gNTApKQ0KPiAgCQkJcmV0dXJuIHhlaHBfcmNzX29m
ZnNldHM7DQo+ICAJCWVsc2UgaWYgKEdSQVBISUNTX1ZFUihlbmdpbmUtPmk5MTUpID49IDEyKQ0K
PiAgCQkJcmV0dXJuIGdlbjEyX3Jjc19vZmZzZXRzOw0KPiBAQCAtNTU0LDcgKzYzMyw5IEBAIHN0
YXRpYyBjb25zdCB1OCAqcmVnX29mZnNldHMoY29uc3Qgc3RydWN0DQo+IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQ0KPiAgCQllbHNlDQo+ICAJCQlyZXR1cm4gZ2VuOF9yY3Nfb2Zmc2V0czsNCj4g
IAl9IGVsc2Ugew0KPiAtCQlpZiAoR1JBUEhJQ1NfVkVSKGVuZ2luZS0+aTkxNSkgPj0gMTIpDQo+
ICsJCWlmIChHUkFQSElDU19WRVJfRlVMTChlbmdpbmUtPmk5MTUpID49IElQX1ZFUigxMiwgNTUp
KQ0KPiArCQkJcmV0dXJuIGRnMl94Y3Nfb2Zmc2V0czsNCj4gKwkJZWxzZSBpZiAoR1JBUEhJQ1Nf
VkVSKGVuZ2luZS0+aTkxNSkgPj0gMTIpDQo+ICAJCQlyZXR1cm4gZ2VuMTJfeGNzX29mZnNldHM7
DQo+ICAJCWVsc2UgaWYgKEdSQVBISUNTX1ZFUihlbmdpbmUtPmk5MTUpID49IDkpDQo+ICAJCQly
ZXR1cm4gZ2VuOV94Y3Nfb2Zmc2V0czsNCg==
