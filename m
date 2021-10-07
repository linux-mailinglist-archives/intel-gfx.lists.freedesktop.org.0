Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E09424CF5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 07:59:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7EF6E832;
	Thu,  7 Oct 2021 05:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 111516E832
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 05:59:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="289673750"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="289673750"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 22:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="657259380"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2021 22:59:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 22:59:09 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 22:59:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 6 Oct 2021 22:59:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 6 Oct 2021 22:59:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PnAnV2Ru1tQpJKezFLe/L6MEFr9NnktRsfuG9qwmdfu7kaTaNZulbmcxukDD/2O18ZJKFs7asrVASAPjMCzwlBYCD9IzX5O9vVklo+wskmLWCiQdDHRUqXeLAu61q8Nu95PftOhZYchh5yfu9AXtvo6WJbHi89EdJIH3J23ksfuQSCPYaS+KbDSBSk/0cn9bksdLGBe3X7q9mqUViOWXYCeFpp+7EE62lEFYUbSnmpLnCI/p5VYP6CVOEcPyxCjegeyQynZ3nnXebgvkBjYQv3LHXiVARTe6H6A+uqlIyv/iiP7yOWWRXzoyTmyYK49ejKvdNd3AeWg0BfIMadg/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RsAFhfAGSzvLzTcEpSBnqy86qUS+b6YJOffll+vW0+c=;
 b=fNrSC6gohO5LeNiU4dMEiCDo4otYMa2XnCZCcLKbjQ8rf58FXi8Y+tcET87+v96T6mLGYqclDT5m+RnMLABxY5+IrBPV5IcYaSmAkMgE8HatmfwVU/wkktZj0aoKDEHCWaF7pSb7JvBgaoJ/SNX+Zw7bQfhPAQOUR82Kpo0IKaambAlEN0HOYzHO/2WgimeBGdxKlyAI0UQdxtjYtr/urGlcy8K+SYESW4jKX1nFf+oMVJkF/4GcXQRDz85+vhSeH+P8QecNLpznIndc+NXKjkNGWM+L5L8w1TnAvSeYe9FcC19SV7LoMlnHOXfh+Ondf5RB8HIOlcfSeLUpiRm6hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RsAFhfAGSzvLzTcEpSBnqy86qUS+b6YJOffll+vW0+c=;
 b=paeM6nTK4360Z5JvfXbBKfnco+ciVobuHTlGlJDQ1Motba/bdtNlshXC4r4uUpjU+ZBb6CIPwerbIpQClYicay9NkCYkm4xJrHMtqd4u7zoSnqGW1ncfCNGDZP4xlS669WygAtmOvuhuz2tYfpgJh3rYWZx6QJDE7vnyRFfLVLQ=
Received: from CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 by MWHPR1101MB2270.namprd11.prod.outlook.com (2603:10b6:301:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17; Thu, 7 Oct
 2021 05:59:07 +0000
Received: from CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd]) by CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd%9]) with mapi id 15.20.4587.020; Thu, 7 Oct 2021
 05:59:07 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Thread-Topic: [PATCH 0/4] drm/i915: Clean up the pxp stuff
Thread-Index: AQHXuw3iypwbml0ha0Weo3s1HNQikKvHCsMA
Date: Thu, 7 Oct 2021 05:59:07 +0000
Message-ID: <310eed29c60fbbcd0d8551547450971fa5d6ebaa.camel@intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 830d5bc2-380b-47dd-a6a4-08d98957933c
x-ms-traffictypediagnostic: MWHPR1101MB2270:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2270CC10841F1E2424AF4D02FDB19@MWHPR1101MB2270.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jnHxPvM1gPjDUdNuauEg3ZkyRRYJStVUq6zlAN/O3EVeJ1U2euwAPqARJN34ZuUzGqzHaT4b7njUiWUu9f222zVKSG6DaXz01H1pASFRUMGttWg6YabosTdWNgIp5VstvLBPpbk7nmPN7HqAv+SbPlb378qfFPVYErFn6dDikh8v+BCzomNjqp2FNTJDnUpdcHQVQDhDuEpkS20919f8Xyk+VFq1IUBhB1H9RkFHGzg7niZIUCbgln6mc99VxZSQeRbiT1FIXptrZ+NX8klzWM0DPrZqmwC1YmwsPF+Fuh443CDlKeGv42ER/WQ3QYwQVexfbz+i2lozDASc01wR8c6l24gonVNyhSmJFcLfAgq+X6MK6udUpVqahLExDo1gjvwnQhGDrLMj3Dgk1DaQcDsNHTB1w9ZCYZ6J+Cyv6RTtqbPkPdwX69oBtAGurZP/cC2mT9zcgqtXOn4GK3yLbp74KsCY9Wj5JNaloVxuje1Hpv90uDwYxHCIv0ZKDH+NBn/ObKUHouua3esoWuUzN7lOjCWfeTNKsYBq0f+DJ+1q6ZdesN/coPI/dsQfQRq/DboDKcNMT3gx4WnVdMNKMBbLacfAWkne+0TpgEn2dEvKZPFF4ICr0Y1zbecBNMpLzSG6dUAsQGp64TMEHyLfK3fWd2PqI0as8PQ4oXhwa9EnGnSUAJj/rWdqEJsWYPAGQuXnNse7zOFF4/MF76HbNA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4833.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(66446008)(38100700002)(26005)(66946007)(8936002)(4326008)(2616005)(110136005)(83380400001)(4744005)(6506007)(186003)(5660300002)(316002)(54906003)(64756008)(71200400001)(36756003)(508600001)(66556008)(8676002)(76116006)(66476007)(6512007)(6486002)(2906002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnhxMThkOUlMK2w2MUl4WUtoNnFkRzVYOTR1NVI0RzI2aEV0eGdkMzllUEpl?=
 =?utf-8?B?cXFHandtbkdjZkZ6cmVtcjR6MWIxY0NkSEV4U1RXVmJKdWVHSmVrSnRiYUdo?=
 =?utf-8?B?L0pGTnNQMzhlVlg1QkhFWXR2QmxwSFg4K2pweVBHNlVLMFltcmU3ZnlGSlJv?=
 =?utf-8?B?NWYrbEhWWWpxdlVPanJsWnlQblM1SmU0dWljM1NhZUUzeHRjTm5hbTRxaEpq?=
 =?utf-8?B?OS8xRXRMaVV4SVZoOUdsUU5GaTVyeGRSL3I5Z2FoL0RQcklITS9uNFdtWDVx?=
 =?utf-8?B?ZUUzM21ycDBoaWVOTjFTb1Z1Tm0wUFlCcmVsdnJmdzlJb1hYUFNXMHI2YzRF?=
 =?utf-8?B?REdOeFpHS3Z4Zzg0UWhGcUZaK2F1UEpyS0dFSWttZVdSd09DbmpyWjVNVnVz?=
 =?utf-8?B?NkwwUmYvdi92WWY2cnQxOWtmWHE0MGU1U0U5c0dRdHRnL3lDWjhjZlpNVk5j?=
 =?utf-8?B?N1dmRlNEZ3dNbW9FR0ZvVEhtcGx3RUQxem9MWEs0Z1hwRnNIRDNFVGVsNENq?=
 =?utf-8?B?WENsMkU5MnpCcWgxQ1hLTkNybUZXcmRJeWVKQmtHSEZkL1Jqbm5CYWIybER6?=
 =?utf-8?B?ZlpMTkZETExZLzRnZnpmcmV6THlCOFUyekNJSFJUWFdvaExpZzg3NlRRWWJk?=
 =?utf-8?B?c01HTnZFWDFEc3NLRldjRUZLMG9rVW45aitOUXNUY3hLZERkNkNuK2d2dUhE?=
 =?utf-8?B?UkRLN0l5Rk9WOWRIWWd5TC9XNVRQbGlwWEtVU2l5dWk0RUYwaHB2VjkrRzg5?=
 =?utf-8?B?Q09xa1c2Ny9nOUJNaXNpQytWUzdqdDZHZjZQUGZFQ2h1dGozdUkvSC80YVY2?=
 =?utf-8?B?NXZ2NUtpblRLSmRGbE1TbWxiRzN4eG0yMGxXSURjb0NSelZEMm1XemQ5c0ow?=
 =?utf-8?B?aUxjclFjaVZHY3dKdHNvVks2R214T2dMTlpibGlhRzZwUFBmQ0UyMmNrUGhy?=
 =?utf-8?B?S2RMMkZEWjJjaU9jK2s0NjRDOVU2Ung2R2wvSUFCSzVqenp5UG1WeFY0bzdo?=
 =?utf-8?B?bmllTXhEZlZ1Snp6UzlBOWV3L0hFTkR2NjZ4anhzam9OVmtIaHErSWR1NGJ5?=
 =?utf-8?B?UkJXMENLVHgxTUlVY0ovSTZKMXI2TUFpamhLdW9pU0hjTmNVU0x5aFlDaE9l?=
 =?utf-8?B?ZitDanYraENPb2hXSER1aHhZbkl0NFROK3JnVVV4QUY5a2JyZUEvcXlRRnM4?=
 =?utf-8?B?R1NMMzYxZlF4ZDVBUXVOQ1dBaTJrYlMrR21kRlJFa2IvRldrd2RjK1NxbUlQ?=
 =?utf-8?B?VlFObW9UK0J5L05SemhncDB5akZVN0pzZHRTc3Q5QWxDVzFJNlFxTWN4T1FC?=
 =?utf-8?B?TzlDckxzekJQQlhDd1ZyMmVHR0x1K3luODV5eUg5YS9kN1ZCNEkyR2tTZG5x?=
 =?utf-8?B?bDN6SmdhTjk2QVpzb254UUNTR2lxU1pTMWVndVU4b0x5VG9QcEYxOHpKUDRp?=
 =?utf-8?B?dmJEOENNaGJBcC83bTlsNXkvdE82eHd5MXRuTmlOdmwrZStyU1g0Sm9PUk9q?=
 =?utf-8?B?K2VoWkQ0WmgvZ3JIbG0xS2FPS2Y0dXZML3hraU5md1p2WTJqWmhyUmoyTWhM?=
 =?utf-8?B?YXMwR3JCeGlZenhSenNJVWJoc2tEdlZxenNYd0lOQ1cxTFRkQnFTdERiVGlH?=
 =?utf-8?B?VjFPZysvU2diVGIrNDB4N2pidDFrejV6RGpybGUvTTk3OHhqbS90d3NuNmVW?=
 =?utf-8?B?amRiYzBjNGxQbmdFUmdpZ0N4M05kZ0QxNEhYUWZHOVAvNXgzbVowQWlHS2Mw?=
 =?utf-8?B?MXZoTGxPekxLbHBES25zamxtcitnTXh2Z2JWcnFvZ3NkRkxNaGdwNGE0cWZW?=
 =?utf-8?B?VmRuRjlzbDU0OGJuS3VWZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <14B94CC019336945AE04D46DDA9A5DDC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4833.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830d5bc2-380b-47dd-a6a4-08d98957933c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 05:59:07.4095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eVRUfCgrIeGkrYfxBM9j7OKfhMvJI7yQYcdRUyETtEcF++OoNQRFH/04zPNSCtSgCGyLJxVXYDcuBiOqWwaP6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2270
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Clean up the pxp stuff
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

T24gVGh1LCAyMDIxLTEwLTA3IGF0IDAyOjU3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSSB3YXMganVzdCBwZXJ1c2luZyBza2xfcHJvZ3JhbV9wbGFuZSgpIHdoZW4gSSBzdHVt
YmxlZCBvbg0KPiB0aGlzIHNsaWdodGx5IGlmZnkgcHhwIHN0dWZmLiBMZXQncyB0cnkgdG8gY2xl
YW4gaXQgdXAuDQo+IA0KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4NCj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+DQo+IENjOiBKdXN0b24gTGkgPGp1c3Rvbi5saUBpbnRlbC5jb20+DQo+IENj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQpJJ3ZlIHZlcmlmZWQgdGhpcyBwYXRjaHNldCBv
biBDck9TIHdpdGggVEdMLg0KQXBwcmVjaWF0ZSB0aGUgY2xlYW4gdXAgOikNCg0KPiBWaWxsZSBT
eXJqw6Rsw6QgKDQpOg0KPiDCoCBkcm0vaTkxNTogTW92ZSB0aGUgcHhwIHBsYW5lIHN0YXRlIGNv
bXB1dGF0aW9uDQo+IMKgIGRybS9pOTE1OiBGaXggdXAgc2tsX3Byb2dyYW1fcGxhbmUoKSBweHAg
c3R1ZmYNCj4gwqAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgZHJtX2RiZygpIGZyb20gdGhlIHZibGFu
ayBldmFkZSBjcml0aWNhbA0KPiBzZWN0aW9uDQo+IMKgIGRybS9pOTE1OiBSZW5hbWUgaW50ZWxf
bG9hZF9wbGFuZV9jc2NfYmxhY2soKQ0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuY8KgIHwgMzEgKy0tLS0tLQ0KPiDCoC4uLi9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuY8KgwqDCoCB8IDgwICsrKysrKysrKysrLS0tLS0tDQo+
IC0tDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCA2NSBkZWxldGlvbnMo
LSkNCj4gDQoNCg==
