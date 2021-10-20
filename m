Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F1F434ECF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 17:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852B46E9C5;
	Wed, 20 Oct 2021 15:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A316E9DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 15:15:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="215725710"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="215725710"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 08:15:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="494667532"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 20 Oct 2021 08:15:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 08:15:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 20 Oct 2021 08:15:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 20 Oct 2021 08:15:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VieijfpnsHENCu3lyZzdptBGwfPJq+dR1EXclgpvGFcX8nu8dxPdKV42pr/ACcbZZotO9d7BA5dDovA/DnTOy8Pq1atHcNDljQgI/fNhFb3J69BTDpTqKnud9rU+YFfk6zpLQ/bPdU9Ue2m7MoKENx7hy8z+NA3MJeujIbzRUnpSURdaVC3+QMileydrdqaqTulRw1enQzcVEMnWb5mmnWvKMvGnxe4TI/5XYGrmn/u3gPuw8RIf2aLZEpOpPwyItAag9s5V3Tolp1b3F2CkZLQ9hyOg4X6DYNG3BumTh2v5Q4fO+UZ2PYVAcP/XLTTFF5T6+NFDsCGqPVe7IJFDqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gqjv75piZJrc+e2O0b+z3zQVZKN7JRgLUsZ2Hk4x8t8=;
 b=mYVQ2ZMgxhTRvparYqj0PwGAKTJP9s+LpyOjxl4LFSOaWHlvLTmvfe7pNA1I/DuAdCsFc2ztqDZdp74p+WzUTPT/ZCpRJOWEu+B4pia6Km+0GfvWAulFG1dyGk/V6VBehs9h1KEGMbluJNeYmQ5x2QOkKTIECTKNuyGy1H897dmmCeTIj2P6msujsZaVw9OqiTOpaGMhqS+o5+9GGBUAz/bXH005d0lpdyjM1cRBPCVzaqhdxADJUFQE4PbmOuD5Gr6gQcshlc8uo5bvnyBwEHEUsN+GRvrYFCvOloXqv60nQiId48H9lyC/3/6lMM7cijNdaYb5ajmyiCFR3vfAmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gqjv75piZJrc+e2O0b+z3zQVZKN7JRgLUsZ2Hk4x8t8=;
 b=U+P8ENKhu7e2KA6wIs+uF6Mskor0jVt2i3o49wZ7mBg2WADpX+pOGaZUqG6ysyVAXFyCMLfGwzkf/L+F+ZxVF7Iv3bz9hDYXV9ANUllRvLNr2iiHU5hU89AMCqEku3vH2Yh46Lw1KRiiCFK+v1oW+wapBBP1OU7cFhM2IwovOeU=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL0PR11MB3204.namprd11.prod.outlook.com (2603:10b6:208:60::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Wed, 20 Oct
 2021 15:15:39 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379%3]) with mapi id 15.20.4628.016; Wed, 20 Oct 2021
 15:15:38 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
CC: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add warn_on in
 intel_psr_pause()
Thread-Index: AQHXxUmh7Ej5EUkypkWbxgHpjzcqbqvcABcA
Date: Wed, 20 Oct 2021 15:15:37 +0000
Message-ID: <9f77796a97004401cb6c53cae8279a022bc57f3a.camel@intel.com>
References: <20211020003558.222198-1-jose.souza@intel.com>
 <20211020003558.222198-2-jose.souza@intel.com>
In-Reply-To: <20211020003558.222198-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b5f2235-adbe-48eb-5c66-08d993dc7903
x-ms-traffictypediagnostic: BL0PR11MB3204:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3204353AAE98E5F09472FE4F9FBE9@BL0PR11MB3204.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AlDvJs15X81U9o6WemNOIK3vgvVwI3/gv2Uc9NlLw/HR5x0fhQeXFo4SsNWqIHj14U7JJOIV37s+tWl6tmFO1beayBSaUd7eJs5brLXQ/nrbckG+l7sc7X3LEF8aD77+7hlaDU6qsmcLq/KnGvYQrTfxl0YXMsWtPXRZwMC1QwHWx8qOmcKR1IjUCPbAd4Q7jYNSizoeWy1T72K5yNfWoFo9PmWMSo6ShNbQaHu1r7eJw3L3W4XYk2fuOIQV+g3rG9/OzDqUfhx/4xAqxsibJsx69X0taVNMpHn/t/j6EBVRAvfGGdaOec7FamrTZSo9MceK+ZCll3hNT7gV46E9p3CK+rmTm+EGan1Q+dPSrEga1rWEQXf4UZISM6gTbLGwei8Y4UxS5YDEwmgNR1C+sFsU0lPeJJy5QRTFU0HmrR6y38NtxUIJYERAOTmLtUtE+ac0pcCEYmPyfuUmBYgCz7n50QJgfTQTxAZTQBuvrXLxSX1mOUQV/tN7R4GrfONqYmlSMT1rvE9pSXm4/0iecGpPcCEfSWzu4MPkNUzoD2O/Cxy2N5airhhGOlGfcKdT9ooZU4ZlhrbXQ+e+7ERt1m23OkCCcs3OXKgh0uksGHig8RfUjbqyysEoGO179o7rmyAMypBgQgP6btKcQCsR7/fWY6vXlpAXVbjxrY8WaibGU/IkbfhHM1Gp2knmh9mdQlitpnHzFi5aM1EzAVgjyA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(66946007)(2616005)(82960400001)(91956017)(8676002)(122000001)(186003)(6636002)(26005)(4001150100001)(4326008)(36756003)(2906002)(83380400001)(8936002)(6486002)(6506007)(316002)(5660300002)(110136005)(54906003)(86362001)(71200400001)(38100700002)(38070700005)(66556008)(64756008)(66446008)(107886003)(66476007)(6512007)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVVpRVJ1RnFKU28zbUhCUVdHNGp3SmlKQndYUmZOaC9TZ2x0RDBaOWlJSkFR?=
 =?utf-8?B?MHdyaU9NbGtIT3lBeVd3ZmJONmc4YnBqbWZMcTZzRHR4ZVZYSjhhUkprMU55?=
 =?utf-8?B?eEZJeklPYUszK2lLdVg1RUIvR21QbnRGYzd4aW1SNFpFSjBqWkp2eisvVUlB?=
 =?utf-8?B?dzg5R0RWcmhtSVB1ZEFQbGh2WHJpemtMc1puWEJ6WGdRNHczcC9tWEhhaG93?=
 =?utf-8?B?b0U4dG1ha0Ntand0S3ZKSllGYkNXMDVTdkp0clNKdHNpZSswVlBKZnhONzlh?=
 =?utf-8?B?UVVWV0ZnRkNXSURON05Db1dxbk8yZ0hoc1BycWRhT1Y3MEZKVEhUeHdmd1BW?=
 =?utf-8?B?R040L1dITUlYTFNneDdhZnVtQVBwM2h4dHFEU0Y1QWRHSE91VFhCd21KOU8x?=
 =?utf-8?B?VkViTkI2YVNwYXQyWnlHQ3BjZFkyZVIyK0t2ZkszcDFRTlR0YytWVkdzS21h?=
 =?utf-8?B?bW1ZRmZ2TE1xQkIzVmRxcjlYZGM1dnUyd1hUSEt3VFpBVUpuRkFmQm1KZUdl?=
 =?utf-8?B?Q3pOTis1Rk9ITVdnVEwyN2xoRWx3bXJYemQrMHJqakhwWlk0UnB4OUpaMDVx?=
 =?utf-8?B?MWQvdlZqVW1RRndSaXBqbjhVa1hXYnplRk05bHlTdUpodUxSbDFQS0ljblUy?=
 =?utf-8?B?blF3WmxDYzhsRi9XdFlFMWtYUnpzNmN0OVJNQk5jKzVDb29XRE9WTWVFWTgv?=
 =?utf-8?B?NEcxRllmWmY3eUlZQStBMTR0WWhRR0wrbTdSU3BtaDBkS3AwOEFWdzJBQmxJ?=
 =?utf-8?B?ODA5d1UvU2NzZWVXUWxudThOdncxNEF6WTlmdkljWEhqU21Kak1UaURrVEQx?=
 =?utf-8?B?ekdRVG5ibXExWlNXWm1qY1NKamZ2bUk3WXNqL2ZBMytaZjE3VGdveXQ3UHN0?=
 =?utf-8?B?VHpIVE84SGpaU3AxalczL3ZMaWJEZEFabEZ2aUJCZUtLZDNlWVhjU3ZBaXYz?=
 =?utf-8?B?UGJEMGpDV3c1ajBHUGdBS0lVb2t3NUd4TDBSUHZZbmgwcGJWZVQwSTRyQlJV?=
 =?utf-8?B?a09VU001cDc3b2lpaGxwVXhyZGlYV3VseWJoY3loWTdqYk9jTTlrVmtrY3Z3?=
 =?utf-8?B?YW9Ia1h4SUdLTHhLMEZoVWo5TkhoVzNOTituSjBYY0NkUm4rU2pwUytXdjZR?=
 =?utf-8?B?S1U0emYrNFFkTG9BeWJjaGlrejUzeEVwWnhUTmhpR0JxMldNaTF0c0I0SDg1?=
 =?utf-8?B?LytwazNEdWZzK2JoaUdjRDZXdkp6WVpxRTdYMWc3ZS9TKzNaNlhtNjlESFVY?=
 =?utf-8?B?NjhYb1QxU043K3ZBZmlqMDYzTExmNTEvdGNWYjU1SFBGT0hmd3p4clRXSVht?=
 =?utf-8?B?SmhiWmhNdGlQSS9rVHpuQjFMcnBvd3NyTnVjQmRPaitkZmJ3SWVETytaK282?=
 =?utf-8?B?Yjg0dW1tQlVMYjAvM1NlT3cwam1zN2RTS0lJVjlCcjBzL0lDZ0IzU2NyZ2dD?=
 =?utf-8?B?SURkZWw5c21hQmFyTlVwVDI4MWc4a0JGVnMzWnZaeTByQW9JKzJ4QW5GZWlM?=
 =?utf-8?B?ZlRGQWd6ZmNGSWNuZ3FGaUdRd2Y5QjhFQkVkRHhDc1ZadlhoMUVJNzgzKzJv?=
 =?utf-8?B?NERJY3pwVFA3QmwzczNNN3Vya2t1TktLQi9VbjQ1SGVaTC9jbmN2bTVOdHZT?=
 =?utf-8?B?cG9uVGY4ODRXbCt2RDVtcFVWS0NBSEdaZ2pZSFMyM3pFdDg1MnZ4dVdEL3NI?=
 =?utf-8?B?OTlHVG5TRXJraTVuVy9ZUGhPNjIzVHpzdmNhL2hxck1ZQ2dhRW02TjlQb254?=
 =?utf-8?B?T2NBcHMwVFF5MFJXWGpCd2twb3JjMkZVbXh5dHp5LzM5YXdFTEZHcHA2MmQz?=
 =?utf-8?B?R1lnZ3RLdEZXLzQ4cjI4Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A36EA3A211E242439861FE853E4FDF1F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b5f2235-adbe-48eb-5c66-08d993dc7903
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2021 15:15:37.9687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: caz.yokoyama@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3204
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add warn_on in
 intel_psr_pause()
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

T24gVHVlLCAyMDIxLTEwLTE5IGF0IDE3OjM1IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBSaWdodCBub3cgdGhlIG9ubHkgdXNlciBvZiBwc3JfcGF1c2UvcmVzdW1lIGlz
IGludGVsX2NkY2xrIGJ1dA0KPiBhZGRpdGlvbmFsIHVzZXJzIHdpbGwgYmUgYWRkZWQgaW4gdGhl
IGZ1dHVyZSBhbmQgd2UgbWF5IG5lZWQNCj4gZG8gcmVmZXJlbmNlIGNvdW50aW5nIGZvciBQU1Ig
cGF1c2UgYW5kIHJlc3VtZSwgZm9yIG5vdyBvbmx5IGFkZGluZyBhDQpkbyAtPiB0byBkbz8NCg0K
PiB3YXJuX29uIHNvIHRoaXMgY2FzZXMgZG8gbm90IGdvIHVubm90aWNlZC4NCj4gDQo+IENjOiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogSm91bmkgSG9nYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gQ2M6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxy
YWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsrKysNCj4gIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCA3YTIwNWZkNTAyM2JiLi40OWMyZGZiZDQwNTU0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEzNDYs
NiArMTM0Niw3IEBAIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGUoc3RydWN0IGludGVsX2RwDQo+ICpp
bnRlbF9kcCwNCj4gICAqLw0KPiAgdm9pZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBkcF90b19pOTE1KGludGVsX2RwKTsNCkRvIHlvdSBuZWVkIHRvIGRlZmluZT8gSXQgaXMgdXNl
ZCBvbmNlLg0KLWNheg0KDQo+ICAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5w
c3I7DQo+ICANCj4gIAlpZiAoIUNBTl9QU1IoaW50ZWxfZHApKQ0KPiBAQCAtMTM1OCw2ICsxMzU5
LDkgQEAgdm9pZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4g
IAkJcmV0dXJuOw0KPiAgCX0NCj4gIA0KPiArCS8qIElmIHdlIGV2ZXIgaGl0IHRoaXMsIHdlIHdp
bGwgbmVlZCB0byBhZGQgcmVmY291bnQgdG8NCj4gcGF1c2UvcmVzdW1lICovDQo+ICsJZHJtX1dB
Uk5fT04oJmRldl9wcml2LT5kcm0sIHBzci0+cGF1c2VkKTsNCj4gKw0KPiAgCWludGVsX3Bzcl9l
eGl0KGludGVsX2RwKTsNCj4gIAlpbnRlbF9wc3Jfd2FpdF9leGl0X2xvY2tlZChpbnRlbF9kcCk7
DQo+ICAJcHNyLT5wYXVzZWQgPSB0cnVlOw0K
