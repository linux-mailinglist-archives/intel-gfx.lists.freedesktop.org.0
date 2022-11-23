Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ADB636E9D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 00:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A88C10E662;
	Wed, 23 Nov 2022 23:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B5A10E662
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 23:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669247658; x=1700783658;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=b6AgfAxU/gupq3Zf5B5lDto8zUghq63+8FY1VTvprAw=;
 b=nIi6cSS12m2LMUKkFpYF0qZJX16Zr+NC0H98UvCFj3Nn4yM9MQuWPM4J
 6H4NBol9fRW0PkAUXiuIIcEr5NJhE8nI4CKpT6ucdwlpIFVdO9HZtA0Ah
 ShsruKhxqcYgiWEQK00vlKvYkWjozIUuxjgpo5potjzsrE9OG3g2Sj3qE
 OB2zeEM7VRs6ms/5iA4IENcbUohOuyh2f4JPg0fuJUY+51rk+77YRf1QP
 8Cc4oR27FpuQjFiF9IobTS0ue2yDWerGjXvQHSilhM65GxGoMxx/uIVu5
 kiCJ0sy+SQrwKJ+Ui4oaQ+GEuZdl/C7jAbgBegF7uTn9L7yUqEwPYlzz1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378439354"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="378439354"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 15:54:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="766896414"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="766896414"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 23 Nov 2022 15:54:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 15:54:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 15:54:17 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 15:54:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OR5872xZNrwWQDs39PPWgmeYTOs4d5jdkQjZJbNPsIBihqlVx8HAO9CbSI14mihGuNoYSYT5feDAwQsUlE/tLo3+2yiG+5OrzK7DtgIBHgyzFSS15sUREaNC49Q8GDc8yW+9GFEXYcS96soGY0p1rPa0NllYZ5ZPLFvz8HY4Xy9BEryDpqeNtY2fg2JkUF9Pcdiot8mvdafQTdzDbrnSRNg8QOgr4nQroPancGJESjj8A7jbfjsiTn6LdB8C1EMbdnidKfw/SKp7Q8uu/E3tupN7L1XwIS9Rg/29S5LadlNgIHy+FFqOAJ+kzTZTBogL1+GbwrIEgebVqrHQj/mp6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b6AgfAxU/gupq3Zf5B5lDto8zUghq63+8FY1VTvprAw=;
 b=H4ptEELb0YcH6UZi6Jv7CLzqP3ZKqNKe4edX+Ext0oA6Uqn8BaSDWRRNw6vshwYwRxwCZz80RSxLdIdIzpH7AyuPPgnkq8xQ6FywiamPnUMGKlAZkpeKNgRrCpUviD34m/O/sM3MNQX/gf1chuxvhNn8XXUKPOovfFS5baZRwMZpmfNyoAexI4WekyDLmSmGMPga7iiPtQBu8Tm6ZUEiepx3cugqtpRTnLRkERIBuq3opGyCJfRWFr9+A4A6s9vsKKfIWMX1in4XSy1bvCOdw28xX6gu7A0AoRm8/HrLhpvI1NNTOB1qGaZrrL2Zn5v1o1UJu5H6y5j90E8IOy8JIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 23:54:15 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 23:54:15 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "justonli@chromium.org" <justonli@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
Thread-Index: AQHY+uWN8SqFG03TA0eOKkcHNoHIi65Ju1GAgAAMXoCAAC/VgIADQSsA
Date: Wed, 23 Nov 2022 23:54:15 +0000
Message-ID: <066329e7e2b98323696a1fda8618f0a377b94813.camel@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
 <20221118003631.1523764-3-alan.previn.teres.alexis@intel.com>
 <ad22ed76ec1b7f9bc397df05977dfd655558aa8b.camel@chromium.org>
 <2f78d181d379f585b6977ec91222082092184097.camel@intel.com>
 <429051a1e862961c3dd155c112163e29c8a5886e.camel@chromium.org>
In-Reply-To: <429051a1e862961c3dd155c112163e29c8a5886e.camel@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ2PR11MB7548:EE_
x-ms-office365-filtering-correlation-id: 6587fd24-70ea-449e-1d20-08dacdae0744
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2xwwQP4NpBmWft5iiWqw4pSURJY6ntOzNirxLau8P4yZzMknTGfjCKZtRd3kRzucJHu9aV6yCwdsiFlrLvotkfgRUfXfFMT5H+lg78RdL/I8P6wsSP8fqoy2vyDIKuTrMDkXjojeB2e1xQ5i6nnXGqP9ExG3vEfpF2aXqqad5V43Jv8eiF5OS5Fwa4a3oDcyOrpEYctL5heocxtJfq/6AuMff4MRlTM93UECyVG6JXg4RpZKBr6/6zoaofDZx3t6HkDKrUyBeL9jdi1cIDSkJWNdReLGXOwlKqJ+IhWThaHmA1QknaeW2w3o84/jW/+3dM/bO6/EUSPgMBqp164ulEOd9wynWDZNmkS6IxTh5GEDUsnV3VdPG9KcVYIyw/tUysdHJ0k9m2zRDWDJNj0YOJRTlnitkQJmksCV0rQ8Jpk1ENouyhfWVZ7Zkx2Nq8vMry96j4yRFd6hkQ3+vaABTfYgSAYHbUmLsttK2KnSie5AICHuUrky1BUA9OOevHr3y2dAIsDyYsLQx+eFjEEydJ9C8zziH3tGCR68GZraWoa4UIrEflO/kHW4wh+ElMEDc3LWPyivyZ2ClK/ibNFz/nY+dQ4RqXruO0km+vi/0WWVjy26rZVWIhrjB6Z4wzw8CjYE6Ov1un/MwqGJLgJ573VhF4cPtflYeCQyClUhO0MHixHzswq5UyLzQ+n0ARYqBksJueW6lHXMe1+J8PaLOZirXX2bMzs6R/RujBE3Sos=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(39860400002)(366004)(136003)(376002)(451199015)(38070700005)(26005)(6512007)(2616005)(83380400001)(82960400001)(76116006)(64756008)(2906002)(4001150100001)(186003)(122000001)(5660300002)(6506007)(66556008)(966005)(71200400001)(8676002)(66946007)(8936002)(478600001)(316002)(41300700001)(66476007)(66446008)(110136005)(6486002)(38100700002)(91956017)(36756003)(15650500001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elpqb2xkTTdCZ0J5clBqZkVHT0ZwTktRV24xV3NwWWNYSmNQVE5HVDBvRnQw?=
 =?utf-8?B?eFU2SzkxelBVNXBrMDMvMS8yU0Z6N29BVnpHS3RGS1BmRzRQOWd4UzI4UkFW?=
 =?utf-8?B?RGo0WHJFalFKVU9SM2FuUGc5ZTE0QVBnVGNVUCt0aXpYZllmYlBlMENodGRL?=
 =?utf-8?B?d016bFhoM2dHT3M4aUZvNW96RG5zYTQxT2FrcXZCcnV5cFdlTzdaRW0xKzJI?=
 =?utf-8?B?eGpXUG5ndHFUM2s0RGh6RjhzNUNCbnVHekxHQWovaHhTZ3g2SnByNXpaQlRx?=
 =?utf-8?B?RkRJL0pJZWwvNTRsWmc2MzlnQjIxS1lkbVhIN3lFZjFSRk14WUt4N1ZSaFhk?=
 =?utf-8?B?UmUvdTFZeHN6Q2R2MEtpTXdKOTFnNllkZ2taVElPTk5DVS83TGZ0VG9KNUc3?=
 =?utf-8?B?L1BBRzlRZjZ1WVI3M0QwV1ZGRHIySDJUQmZLQ3NwM3UyUjZLMThGRDBTaVRl?=
 =?utf-8?B?QkdGUCthaThvNStmVmRDWFQ3cW1wRjlXcTlGbHBKL1U4NTgvcllBTlczaUp3?=
 =?utf-8?B?NDhHQUhtRmFWMm80RjFETUhlZkVrcVZzanVYeTU0TE9SRXoxSlZqajB0Mmdp?=
 =?utf-8?B?TTdMODRuSFJWTXBicUJDUitJTWRzdkNXMGpSUjZQeE1sdHgyUGV1QUpDUEVF?=
 =?utf-8?B?eXZWbFhCNHRIV1YwT0IyZjlMeVEzVVpUTkxRQ1JEQlpzdVdpUU9VYU9EaDNV?=
 =?utf-8?B?VmlvWVRQTTJWK2pwSlNvRFBwejNCRFgwY0svQ0E0ZjB1TlE5bmg5SExzNHRU?=
 =?utf-8?B?Z1o5dHpzckdtbGJJT0Y0dmxRRGFrQXAxR0R1Uy8yV3owRGVsdlBFMnNaVnFI?=
 =?utf-8?B?aisyME1pVVpqZjh3elBsVEs1V2FhUXdSaktiL2doV09KM295eEpzKzBoK2sx?=
 =?utf-8?B?cDdSUENZY3B1MHFpOEU2QTNvenZxcnhiQll3RWR4SWNoM1laakRRaVY2QzBH?=
 =?utf-8?B?cTBQR3JRN1ZZSkFKVUZWUjR4Mjc3ZU82VGFUY1RUUU1SYjRQcGYvZ0VGS3FD?=
 =?utf-8?B?Zmp5Z1VPY2hRcnlvL3o2bUV4a1dPK2dEanZWNFRiMnRNdVpaWi82cU43ZVB1?=
 =?utf-8?B?R3dWVDl5UlpyYmFhMjNJNHUwTDNNL092OFF2NlRKZ2d0aHltSTBZYXc3MDQ3?=
 =?utf-8?B?NytsZng5b3gvOGVEajFJSWZVT0FqSWgxZUhUSDhBcHF6bEdrVEQ4WWtITG1M?=
 =?utf-8?B?b0I1M1JBVFdFNjlVNUhNYnpCdFdxbHY3dVAzOFZqQVJzZk9zTUVHMk16WjRE?=
 =?utf-8?B?eTA0YWRyODQ5eXo2R0owSXhZYngxRUJHTFlSZ3hOWDZOZ0U4RGpiRnVpQUxq?=
 =?utf-8?B?MzZsRWlEdFBHc1RpQmZnaDh3NE5IVWY1dVp6elhFQUF1TzA1N0VOSFhiUXJM?=
 =?utf-8?B?SkZ6RksySkUrdU16MlZEYTVpUWhWM2dCWnZJSlpCNTVXVE1pbjhrdTlhN2RI?=
 =?utf-8?B?S0JISDdWb3FrNzI2OVdzK2hDNlphNCtwSUxWa25YdWkwRlN5SnR1QkkzNDN6?=
 =?utf-8?B?SzlUeUJtNmpUMXFxVUZNSTdnTk4vdEJDRGdrZHNCQys0NzNOLytXcVFySW00?=
 =?utf-8?B?MTN1R2VHbm5PSk9QeEhjRWJUTmU2UzdjK2dSOW5EbkVMREpsQXFXRGYrcy9l?=
 =?utf-8?B?WFZYV015TkVuKzZpcjhXcTVxWW9Ga1NwMHdkU1FycWhNRzhaay9QclZjZElL?=
 =?utf-8?B?dkVCZVZiY1Nac0k3UFVvRmZaYWlScmF0UW5QbFMzTHNjQTRTNlU0Q25lQVA1?=
 =?utf-8?B?UW9VVlNKaW1YbDZ0c2xLUzRsb3p5Ui9lbGxJSFRrS3RiZ2h6Yy9QSW00d1VY?=
 =?utf-8?B?MEhzME9GR1J0TE9xWFBlWDk2b2FhcXk4OVJyelhhRUFHazdWb0JCWDE3SEY2?=
 =?utf-8?B?R25rczV1UGhvekRhdUg5WXJ4ejJncWUxTEJpZFhsbWsrNkdUT1JjQ2UzU1Fv?=
 =?utf-8?B?UllvUXEvU256bnlXVUt4amVnWC9sdmVYakx0NlFlNXFrZzdWdFRma2tFVkVC?=
 =?utf-8?B?VUU5RFBNby9MMjNaVzFNbmYxeWJRQWRzTURIdHVoZjRQNWJ6VWdodXhtVEV1?=
 =?utf-8?B?c2JEVzV5d2JlY05EenZiS0Z3RGREMTB5MGVLNTNCT3pkbzJxckV1NjVEUURS?=
 =?utf-8?B?dFJ6dERYODloUlNXY28yZUN4VjdSc2FoSmFqMzdWRm54MUcxd3d6S1dFdXRy?=
 =?utf-8?Q?5xD2QvvavHiG/hTsTGeSoiY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A1C5CEFA7D3DF449A1F0C11F8357687A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6587fd24-70ea-449e-1d20-08dacdae0744
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 23:54:15.6098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gQgrSDnzj6DFvqtBVj8D4GVWq6cfntb8qjf6D4okq13Ok/Kpvz6O7g+i9tKIH9+vC9aeMJDGmVTMO7oBvapNRplRAFPSaw6QUnAc429PFBrhM93KpVgTKePkT9TbQjAg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0yMSBhdCAxNDoxNCAtMDgwMCwgSnVzdG9uIExpIHdyb3RlOg0K
PiA+IEFsYW46W3NuaXBdDQo+ID4gDQo+ID4gPiA+ICt2b2lkIGludGVsX3B4cF9lbmQoc3RydWN0
IGludGVsX3B4cCAqcHhwKQ0KPiA+ID4gPiArew0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHB4cF90b19ndChweHApLT5pOTE1Ow0KPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gPiA+ID4gKw0KPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX3B4cF9pc19lbmFibGVkKHB4cCkpDQo+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ID4gPiA+ICsNCj4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1
LT5ydW50aW1lX3BtKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF9s
b2NrKCZweHAtPmFyYl9tdXRleCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKF9fcHhwX2dsb2JhbF90ZWFyZG93bl9sb2NrZWQocHhwLCB0cnVlKSkNCj4gPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmcoJihweHBfdG9fZ3QocHhwKSktPmk5
MTUtPmRybSwgIlBYUCBlbmQNCj4gPiA+ID4gdGltZWQNCj4gPiA+ID4gb3V0XG4iKTsNCj4gPiA+
ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJnB4cC0+YXJiX211dGV4
KTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9weHBfZmluaV9odyhw
eHApOw0KPiA+ID4gDQo+ID4gPiBJcyBpbnRlbF9weHBfc3VzcGVuZCgpIHN0aWxsIG5lZWRlZCB0
aGVuIGlmIHdlIGFscmVhZHkgZmluaV9odygpDQo+ID4gPiBoZXJlDQo+ID4gPiBhbmQgbWFyayBp
bnZhbGlkYXRpb24gaW4gaW50ZWxfcHhwX3Rlcm1pbmF0ZSgpPw0KPiA+ID4gDQo+ID4gDQo+ID4g
R29vZCBjYXRjaCAtIGxvb2tzIGxpa2Ugd2UgbWlnaHQgbm90IG5lZWQgaW50ZWxfcHhwX3N1c3Bl
bmQuIEJ1dCBJJ2xsDQo+ID4gdmVyaWZ5IHRoYXQgZm9yIHlvdS4NCj4gDQo+IEFjdHVhbGx5LCBt
aWdodCBuZWVkIHRvIGJlIGNhcmVmdWwgaGVyZS4gSWYgc3lzdGVtIGFib3J0cyBzdXNwZW5kIG9y
DQo+IGZhaWxzIHRvIHN1c3BlbmQgZm9yIGFueSByZWFzb24sIHN1c3BlbmRfcHJlcGFyZSgpLT5p
bnRlbF9weHBfZmluaV9odygpDQo+IG1pZ2h0IGhhdmUgYmVlbiBjYWxsZWQgYnV0IG5vdCBzdXNw
ZW5kKCkuDQo+IA0KPiBDb3JyZWN0IG1lIGlmIEknbSB3cm9uZywgYnV0IGluIHRoYXQgY2FzZSBJ
IGRvbid0IHRoaW5rIHJlc3VtZSgpIHdpbGwNCj4gYmUgY2FsbGVkIGFuZCB0aHVzIGludGVsX3B4
cF9pbml0X2h3KCkuDQo+IA0KPiBGb3Igc29tZSBiYWNrZ3JvdW5kLCB0aGVyZSB3ZXJlIHNvbWUg
aXNzdWVzIHdpdGggUFhQIGVuZGluZyB1cCBpbiBhIGJhZA0KPiBzdGF0ZSB3aGVuIHNvbWUgb3Ro
ZXIgZHJpdmVyIGNhdXNlZCBzdXNwZW5kIHRvIGZhaWwgb3IgdXNlcg0KPiBjbG9zZWQvb3BlbmVk
IGxpZCBxdWlja2x5IGFuZCBhYm9ydGVkIHN1c3BlbmQuDQo+IA0KPiANClllYWgsIGkgb25seSBu
b3cgbm90aWNlIHRoYXQgd2UgYWx0aG91Z2ggd2UgZGVmaW5lIGFuIGk5MTUgY2FsbGJhY2sgZm9y
ICdzdHJ1Y3QgZGV2X3BtX29wcy5wcmVwYXJlJyB3ZSBkb24ndCBwcm92aWRlIG9uZQ0KZm9yICdz
dHJ1Y3QgZGV2X3BtX29wcy5jb21wbGV0ZScgd2hpY2ggYXJlIHRoZSB0d28gb3Bwb3Npbmcgc2lk
ZXMgb2Ygc3VzcGVuZC12cy1yZXN1bWUgcGhhc2VzIC0gbWVhbmluZyB3ZSByZWFsbHkgc2hvdWxk
DQpiZSBkb2luZyB0aGUgaW50ZWxfcHhwX2luaXRfaHcoKSBpbiB0aGUgImNvbXBsZXRlIiBjYWxs
YmFjay4gSSB3aWxsIGdvIGFoZWFkIGFuZCBwcm9wb3NlIHRoaXMgY2hhbmdlIChjb25zaWRlcmlu
ZyB0aGlzDQppcyB0aGUgbGFzdCBwYXJ0IG9mIHJlc3VtZSwgSSdtIGhvcGluZyBpdCB3aWxsIG5v
dCBjYXVzZSBhbnkgcmVncmVzc2lvbikgYW5kIHNob3VsZCBhZGRyZXNzIHRoaXMgY29uY2VybiBh
bmQgZml4IGEgImxhY2sNCm9mIHN5bW1ldHJ5Ig0KDQo+ID4gQWxzbywgbG9va3MgbGlrZSBpIGZv
cmdvdCB0byBpbmNsdWRlIGEgbm9uLUNPTkZJR19EUk1fSTkxNV9QWFANCj4gPiB2ZXJzaW9uIG9m
IGludGVsX3B4cF9lbmQgd2hpY2ggd2FzIGNhdXNpbmcgdGhlIGJ1aWxkDQo+ID4gZmFpbHVyZS4g
V2lsbCByZXNlbmQuDQo+ID4gDQo+ID4gQnR3LCB0aGFua3MgZm9yIHJldmlld2luZyB0aGlzIEp1
c3RvbiwgaSBoYWQgY2MnZCB5b3UgYmVjYXVzZSBvZiB0aGUNCj4gPiBpbXBhY3QgdG8gc3VzcGVu
ZC1yZXN1bWUgZmxvd3MgYW5kIEkgYmVsaWV2ZSB5b3UNCj4gPiBoYXZlIGhhZCBwcmlvciBleHBl
cmllbmNlIGRlYnVnZ2luZyBpc3N1ZXMgd2l0aCB0aGF0IGFuZCBydW50aW1lLQ0KPiA+IHN1c3Bl
bmQvcmVzdW1lLiBEbyB5b3UgYW55IG90aGVyIGlzc3VlcyB3aXRoIHRoaXMNCj4gPiBjaGFuZ2U/
DQo+IA0KPiBOcCwgdGhhbmtzIGZvciB0aGUgcGF0Y2hlcyENCj4gDQo+IFRoZSBvbmx5IG90aGVy
IGNvbmNlcm4gSSBoYWQgdGhhdCdzIG1vcmUgb2YgYSBkb3duc3RyZWFtIGlzc3VlIGlzIHdlDQo+
IGVuZGVkIHVwIHVzaW5nIGh3X3N0YXRlX2ludmFsaWRhdGVkIHRvIGJsb2NrIFBYUCBpb2N0bCBv
cHMgZHVyaW5nDQo+IHRlYXJkb3duIHRvIHByZXZlbnQgZnVydGhlciBQWFAgaW9jdGxzIHRyaWdn
ZXJpbmcgcHhwX3N0YXJ0IGFuZCBhbm90aGVyDQo+IHRlcm1pbmF0aW9uIHF1ZXVlZC4NCj4gSSBk
b24ndCByZWNhbGwgaWYgSSBzZW50IHlvdSB0aGlzIHBhdGNoIG9uIG91ciB0cmVlOg0KPiBodHRw
czovL2Nocm9taXVtLXJldmlldy5nb29nbGVzb3VyY2UuY29tL2MvY2hyb21pdW1vcy90aGlyZF9w
YXJ0eS9rZXJuZWwvKy8zMjA3MTA1DQo+IEkgdGhpbmsgdGhpcyBjb3VsZCBoYXBwZW4gaW4gc3Vz
cGVuZCBub3cgdG9vLCBpZiBhcHAgc2VuZHMgUFhQIG9wcw0KPiB3aGlsZSBzdXNwZW5kIHRlcm1p
bmF0aW9uIGlzIGluIHByb2dyZXNzLg0KPiANCj4gSnVzdG9uDQpZZXMgd2UgZGlkIHJlY2VpdmUg
dGhpcyBwYXRjaC4NCg0K
