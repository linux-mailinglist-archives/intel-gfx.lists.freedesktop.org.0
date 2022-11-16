Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E8062CCE2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 22:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 430B389153;
	Wed, 16 Nov 2022 21:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424CD89153
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 21:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668634921; x=1700170921;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=W7M2sOxF8WVUSGpZuM9XCKpmk+bu5+aD6Hm2GG5USmk=;
 b=jV9O/IjGEoBHwWMvQdYjiBsD+bwvPCHtV8KqSpQ9BmFyDOSoSvNp117f
 tQLPtJ8yaHuGCAWlnMpuRrejqodzWydt7vKfbIx8Otdf+1fnuCYVhx68o
 e/Kf9fiSxaNXoWrpBB8rYDy+lgcWnbxpxylZPMTlY4HOaOzlg5xRn0Ict
 xQ3RKibw3YpxieGUzriL1aqWKpFVy+ka9M2LyCrtYCZ/T9btftu1E17ot
 odTpJOnfTs4rm5BFlPh9czrlnqqso0jijpj3GuHTqxp3vnmTWZmoh5Anj
 GUR3amt/CUmab3pXwztSZTD/MyvY9fvzb6rKUv7O9RFo4jxPu5GwFO/ei Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="300207640"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="300207640"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 13:42:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="708339166"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="708339166"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 16 Nov 2022 13:41:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 13:41:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 13:41:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 13:41:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCKlq6tK65NK8XTq0/pAb01DUM+7xEPguFECbQrZlZ5pZcih1ZOMP3vn5G8p/0ezHk8tzGjK46Q87l7qWu9POo+TuGl+vuaF3LMzsngDftHKUs2L1ynDY/39jN7tFcfphn8wMaVo2KragZyADNafbKu8JUavd5x2gRIOfYtFwx6kyCZv9TuHPRUyQE4c1UNsEZm+apCen4co3iEuxLa6VDAL5a2oldjYiN6rrUv/RiGnKH4WVjtd/XgzsVsP758//Hiemz4RN2a3eJ7P6cnvK5rhoB3O5p5LQO39YsUDlGZyPKcVu7nA4iH085ggv64zzWFTgjq7d+qgJS2mOqrnIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W7M2sOxF8WVUSGpZuM9XCKpmk+bu5+aD6Hm2GG5USmk=;
 b=AsmwAKa3nWNUXujx2V7yj91MkpUKRWyqeymAiBPnORjO7+IVx0cYwtrMqn0sgkpZbmrZzBdkdu1u8MzOZdWCpzYrNEFaDSxl34A7iq/Ybl/E9nA2OEnf4Llm9H0RQSSe29H9Ax2txHsIJdkKIQZsX756szAJtaKuIowkKZ37HgpzLZdvfDOOvs52m7yNzgfEeQPG+i3Uj5xAeyvfZ65hz1rXE9UXWvM4AtUtJ558IbEmTbpO/zzZHOYaQP5aJnMbCUY7GFQIQaC2VCUU+a8FCBth9PFpQT0117GbYwgNFuRZea59nLf8+gsgjL4rj81KSsKOhZmLajsOcpJ+4OXA1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SN7PR11MB6993.namprd11.prod.outlook.com (2603:10b6:806:2ac::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Wed, 16 Nov
 2022 21:41:35 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%9]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 21:41:35 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY5XPnZDsyIziiH0OhmcMOh7ZQfa4/gpoAgAAUboCAAqcmgA==
Date: Wed, 16 Nov 2022 21:41:35 +0000
Message-ID: <2834a849d28312388b446beaf82865f179fcb39f.camel@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-2-alan.previn.teres.alexis@intel.com>
 <4961bed7-80af-df2d-2a48-33696b0f7a8d@intel.com>
 <72873a3e0bdbebe0cc3648034403a63e9e288214.camel@intel.com>
In-Reply-To: <72873a3e0bdbebe0cc3648034403a63e9e288214.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SN7PR11MB6993:EE_
x-ms-office365-filtering-correlation-id: ffd9cd32-95ba-4f14-08a1-08dac81b55c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BXzQHFTjoPbpqyybUMscT5V1Gp85qtpaVHfPfXL6TqUOg0UnztffioOtB6W5pLKJIYSDqICYO85nlg02GfV9sNIs+5Iag8kDYsZdqcH3rc6Yp/DXU8RCemhLg8cFlZncsXsFaZuFWaqEJmkgO55e9eDdxd2CfPa2dCdq8+tqCIyYWFQvC30WcjECLQz2CJe096ygAc6dMp7oFBTL3e7y9g0M71X0AAgIYWHrwmmq54GR/JaaIOhpcxdG1vtUHfTRrLa6YfCo7hU8KcSMBCewGOWTfHHx/w5iumgq9bBFNNO52bsrqe4HZXv5S1rCO2D/0CrXgBQjqN8ZMJ1rhsIE4FT3880YeCUrm7Dze6nU/UkKoRAvhbIxc5JOSPVe4ezNBa9wqHvGRKa+yyMLFTOf/BGNHGJQlMpFf1Q2q3Tyl9LYyTF6SagFOcUOl0LZHczx63/rC9HBUCXHFVhhdu8ObU2B5lcvJnk+3beFxM6005LMaKRH3crx3mq2EUxoJHQDDgQIzDl7AfbG+tbyg34Vqyw/Z4z8sYMvA1pc9bDd+slTn4hQbVvNCmjFhiOiGRsu4DBGRA8ehUWFTKChdi4m/rtq7wcuRWCYu8ZXZIdrwlVs4rEo4GyPTW6JeVI64eQ7rVeYJaqwCKiJO+NjEOACcWouzggo247EDuNU/x6XNkLD8sKiqSf5ebyTD/0CjRVfUrevgjiMieZ2ylpWkxLHDDe5zTd6BMjYqw5Mbkb0SSitbQYDI5w8iloB++eBkHud4B/9Jwm1rTp9E0KSXKjxSg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(346002)(396003)(136003)(451199015)(478600001)(36756003)(6486002)(71200400001)(83380400001)(66556008)(82960400001)(8676002)(5660300002)(8936002)(64756008)(122000001)(6512007)(38070700005)(76116006)(91956017)(66476007)(66946007)(66446008)(41300700001)(316002)(4001150100001)(38100700002)(110136005)(53546011)(86362001)(2906002)(6506007)(186003)(26005)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yis4Z080TlNicXp0Qk9xODNWL29vajduL3ZlelFHQzNhdGx5MWRmV0hwVmgw?=
 =?utf-8?B?RmFrc0ZDY01IUzZVNjR6YjlFQ3RlOFdpT1NaV1NrV3VadjVGRDRlV29jVERE?=
 =?utf-8?B?dXJvVTV1RDlES0JIcnJ6VGZ1M2o0VDduL0RpUkpGNFBaZjJYbm9WMTNPRWkz?=
 =?utf-8?B?SGpHRGdzaHFCTURvTitaa0EyL2p6WVN3ck04Z0s2N0tCYnNVdzZ4dEw2MW5y?=
 =?utf-8?B?dVhkYzh0MzlhZ1NNN3B1Q2RUTllHclBGRERNb1ZCRGxtdmI2ZHg4amZqTEhX?=
 =?utf-8?B?TWgyM3plU05IREJlUHFkYTZIdTZ5NmtGTTFOYUNhbnJDY1EyRDFsbUhaaE9o?=
 =?utf-8?B?a25aSGpIZnB2SmhNcGp4T3VkemxiN0d0cXl6Q1dPVmpoT3pqM1NQT0dmUWNa?=
 =?utf-8?B?dDJCdjEzMGdsVFhXYkI4Y3NJYkFUdStSVU1MOTVuOVNkTXNlQW1zQW9seUJQ?=
 =?utf-8?B?V3NFbW9CRjlXMHc3TFRXMklUZ1lLZzdxTGdhMUZvT1ZORFd0ZHNiMWhmUkFC?=
 =?utf-8?B?d2MzVnREMjF3dFFFNlBqeGRxMkZHQUZWTWVlVUYzNmxjTEFGMUdzNGQxK3Fx?=
 =?utf-8?B?YUo4b1FwMjNrbWt3VndBem9Lcjd4M01vZkV5MjQyaXgvK3VtVWhBY0FrNmg0?=
 =?utf-8?B?NFlZcGhyL3F6dzJsMVVqaytSMUNCSjVBMUZORUxhWnoyeHpwY1pqYVl1eDNK?=
 =?utf-8?B?cGUxK3BaNitFQk1LRXlZMjFiM3NMTWdzWitENlFhWTZDNkdSRWdKQ1ZpQ1J1?=
 =?utf-8?B?TmdhYTNQSW94UWF0ZjAwWVE4Mmtad0VLWnR0RkVQWE5oZVFhNmFBSE1UdnJS?=
 =?utf-8?B?Z0hGdi8vdmwrS2JqMEJBTHNMRW1GRlJVWkFnMVFEZDYxckgxM0RqN21ndVNr?=
 =?utf-8?B?OW0vUUFDYnFLMnJBWE9TTlJLc3RkM05vMjA0WmhHb2VwQk9TNmFTd2VXVUpl?=
 =?utf-8?B?TXd4THFuT2lDNnQ4V1pSSVFrKzY0OUg4NEtuMGxXaU5GTjY4WTl3dWRFSExB?=
 =?utf-8?B?UTFOaEVjaWNMeE5NaytsaHZsZG9iYWtCRW1xcVlrNWNxMXFBaE5JYXFCYmFG?=
 =?utf-8?B?NEtHcytKSCtyczhLK2xnMDhUeHZoNDdVVzJ1Z0RVdjZrOEhwTDlXdEpKWjZl?=
 =?utf-8?B?NDg5VkNaYjBjd204Zk9lVW9NTTl1V3dxejVtbE0wa1J2T3NGZFJXaTAzL2FO?=
 =?utf-8?B?Y0w1QmZjS2laNkhxTXhUZEhmK1dJeFpiUmVSL3BIZ01SN1BzNHorcWZ2Q0FQ?=
 =?utf-8?B?NE9kZUZiME1TRWZJV1NhYy81dUYyb1VWUVJ0Uy9yQjNDRlRXdmxWQUw1RGtH?=
 =?utf-8?B?UGI4YmlobzM2Q3psYitTZUNqdUhoOHpQZ05FdkVFL0Z2R0lDVEpYUkVBbnBT?=
 =?utf-8?B?NDFDQm0rbXlDd3duaTVVa21TWk9KNzhlM0ovaVdCUFRxdERuQjZ0ME1oMVhK?=
 =?utf-8?B?YXdMWStZSjgyUHNPV05tY3d5eHUxUDR4MzY4cHB1RnpOYksxM3N4RGRaSklO?=
 =?utf-8?B?c01TUzlWT0JlbTRQZGd4UzdEZThmNVhGSHpHNjIrUFZrS0ZuWmhvUEZ2dllr?=
 =?utf-8?B?NEZSYUo0cDl2QTEyWEdnQ2ZNNC9lS0ZsZS9PaW5zSklQMVhnMnNkUDkvejlz?=
 =?utf-8?B?bHF4VXpLcVI3UGJvWHNzeUxIVGFaZlpVMThMcWE2RUdBblk1aVVTZitCdDl1?=
 =?utf-8?B?VTlIeDVacDZJSEQzODZqbWxFRzF1YUk0eGF3RURYaWhzd2x1L2RLUVEvVjVm?=
 =?utf-8?B?RTFvUmtWYXdiWWxNLzRNaHE2bXJocnZ2cTlCdzNxbnU4THlNVmU1ck41Z2wz?=
 =?utf-8?B?eGpwTjhudFl3WDF5UEd5TFBDM0lsd3pRRE0zWVJSZW53UGVPck93MjlUTzBO?=
 =?utf-8?B?NTAwWVNoN2pOZ3c2ODJQczMvNDlsZ256QW16a2Vaai8vaFZjclJaYUE0UnNY?=
 =?utf-8?B?aGszSUJubUpQcXExNHdOOWM4U2ZwczdXb2tyN1JsOWxraVkyVUFoRERZUVJO?=
 =?utf-8?B?MlRYRnAvMXl2bFRNN3NuS0dPR3prRTc2WmNhT1pPaWlRNnJvVnZCVHAzTXVa?=
 =?utf-8?B?cGUzc2c1WW9aS3BwMVN1YlJEdTB1UTRraEhtMXk2OENQckpFZitSWXdCamhN?=
 =?utf-8?B?dVkzNUpDOVdnYWJyU1FCQ09RQlJieFFiK0lieGZ6V2ZyNFVUWUc4UXl2V2JT?=
 =?utf-8?Q?NbZnfKpedbcXLNSiCWuovKM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A46272682738744D9732F83FC349AB6A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffd9cd32-95ba-4f14-08a1-08dac81b55c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 21:41:35.4485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /JdQexw7JiSbgJm9IeKhkbq5WBnq8AvDlvTc9BIMGM/mm+gmyZxn4nUAXcW8VsCHuubcE7u82HbDUoq+bFJkTP80X+Dax3RRK8PStZ5AznJNY/RcZwE2il9Q+QSMJj0H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6993
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

anVzdCByZWNhcHBpbmcgb2ZmbGluZSBjb252ZXJzYXRpb24gc3VtbWFyeSAtIHdlIGFncmVlZCBv
bjoNCg0KaW50ZWxfcHhwX2VuYWJsZWQoaTkxNSkNCmludGVsX3B4cF9lbmFibGVkX29uX2d0KHB4
cCkNCg0KCSh3aGVyZSBvbmUgaXMgd3JhcHBlciBvdmVyIHRoZSBvdGhlciwgdGhlIGFjdGlvbiBw
YXJ0IG9mIHRoZSBmdW5jdGlvbiBuYW1lIHN0YXlzIHRoZSBzYW1lKS4NCg0KLi4uYWxhbg0KDQpP
biBNb24sIDIwMjItMTEtMTQgYXQgMjE6MTMgLTA4MDAsIEFsYW4gUHJldmluIFRlcmVzIEFsZXhp
cyB3cm90ZToNCj4gDQo+IE9uIE1vbiwgMjAyMi0xMS0xNCBhdCAyMDowMCAtMDgwMCwgQ2VyYW9s
byBTcHVyaW8sIERhbmllbGUgd3JvdGU6DQo+ID4gDQo+ID4gT24gMTAvMjEvMjAyMiAxMDozOSBB
TSwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiBJbiBwcmVwYXJhdGlvbiBmb3IgZnV0dXJlIE1U
TC1QWFAgZmVhdHVyZSBzdXBwb3J0LCBQWFAgY29udHJvbA0KPiA+ID4gQEAgLTE0MiwyMiArMTY2
LDIxIEBAIHZvaWQgaW50ZWxfcHhwX2luaXQoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ID4g
ICB7DQo+ID4gPiAgIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gcHhwX3RvX2d0KHB4cCk7DQo+ID4g
PiAgIA0KPiA+ID4gLQkvKiB3ZSByZWx5IG9uIHRoZSBtZWkgUFhQIG1vZHVsZSAqLw0KPiA+ID4g
LQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0lOVEVMX01FSV9QWFApKQ0KPiA+ID4gLQkJcmV0dXJu
Ow0KPiA+ID4gLQ0KPiA+ID4gICAJLyoNCj4gPiA+ICAgCSAqIElmIEh1QyBpcyBsb2FkZWQgYnkg
R1NDIGJ1dCBQWFAgaXMgZGlzYWJsZWQsIHdlIGNhbiBza2lwIHRoZSBpbml0IG9mDQo+ID4gPiAg
IAkgKiB0aGUgZnVsbCBQWFAgc2Vzc2lvbi9vYmplY3QgbWFuYWdlbWVudCBhbmQganVzdCBpbml0
IHRoZSB0ZWUgY2hhbm5lbC4NCj4gPiA+ICAgCSAqLw0KPiA+ID4gLQlpZiAoSEFTX1BYUChndC0+
aTkxNSkpDQo+ID4gPiArCWlmIChfZ3Rfc3VwcG9ydHNfcHhwKGd0KSkNCj4gPiA+ICAgCQlweHBf
aW5pdF9mdWxsKHB4cCk7DQo+ID4gPiAtCWVsc2UgaWYgKGludGVsX2h1Y19pc19sb2FkZWRfYnlf
Z3NjKCZndC0+dWMuaHVjKSAmJiBpbnRlbF91Y191c2VzX2h1YygmZ3QtPnVjKSkNCj4gPiA+ICsJ
ZWxzZSBpZiAoX2d0X25lZWRzX3RlZWxpbmsoZ3QpKQ0KPiA+ID4gICAJCWludGVsX3B4cF90ZWVf
Y29tcG9uZW50X2luaXQocHhwKTsNCj4gPiA+ICAgfQ0KPiA+ID4gICANCj4gPiA+ICAgdm9pZCBp
bnRlbF9weHBfZmluaShzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gPiAgIHsNCj4gPiA+ICsJ
aWYgKCFpbnRlbF9ndHB4cF9pc19zdXBwb3J0ZWQocHhwKSkNCj4gPiA+ICsJCXJldHVybjsNCj4g
PiANCj4gPiBXaHkgZG8geW91IG5lZWQgdGhpcz8gdGhlIGZpbmkgYmVsb3cgc2hvdWxkIGFscmVh
ZHkgYmUgc21hcnQgZW5vdWdoIHRvIA0KPiA+IG9ubHkgY2xlYW51cCB3aGVuIG5lZWRlZC4NCj4g
RXZlbnR1YWxseSBpIHBsYW4gdG8gY3JlYXRlIGEgYmFja2VuZCBhYnN0cmFjdGlvbiBmb3IgdGVl
IGJhc2VkIHZzIG10bCdzIGdzY2NjcyBiYXNlZCBhbmQgcmF0aGVyIGtlZXAgYXMgbXVjaCBvZiB0
aGUNCj4gY2hlY2tpbmcgb24gdGhlIGZyb250IGVuZCB0byBrZWVwIGl0IGNsZWFuZXIuDQo+ID4g
DQo+ID4gPiArDQo+ID4gPiAgIAlweHAtPmFyYl9pc192YWxpZCA9IGZhbHNlOw0KPiA+ID4gICAN
Cj4gPiA+ICAgCWludGVsX3B4cF90ZWVfY29tcG9uZW50X2ZpbmkocHhwKTsNCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmgNCj4gPiA+IGluZGV4IDJkYTMwOTA4OGM2ZC4uYzEy
ZTRkNDE5Yzc4IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2lu
dGVsX3B4cC5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
LmgNCj4gPiA+IEBAIC0xMyw2ICsxMyw4IEBAIHN0cnVjdCBpbnRlbF9weHA7DQo+ID4gPiAgIHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0Ow0KPiA+ID4gICANCj4gPiA+ICAgc3RydWN0IGludGVs
X2d0ICpweHBfdG9fZ3QoY29uc3Qgc3RydWN0IGludGVsX3B4cCAqcHhwKTsNCj4gPiA+ICtib29s
IGludGVsX2d0cHhwX2lzX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfcHhwICpweHApOw0KPiA+ID4g
Kw0KPiA+ID4gICBib29sIGludGVsX3B4cF9pc19lbmFibGVkKGNvbnN0IHN0cnVjdCBpbnRlbF9w
eHAgKnB4cCk7DQo+ID4gPiAgIGJvb2wgaW50ZWxfcHhwX2lzX2FjdGl2ZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfcHhwICpweHApOw0KPiA+ID4gICANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3B4cC9pbnRlbF9weHBfZGVidWdmcy5jDQo+ID4gPiBpbmRleCA0MzU5ZThiZTQxMDEuLjEyNDY2
M2NmMDA0NyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHBfZGVidWdmcy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50
ZWxfcHhwX2RlYnVnZnMuYw0KPiA+ID4gQEAgLTcwLDcgKzcwLDcgQEAgdm9pZCBpbnRlbF9weHBf
ZGVidWdmc19yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfcHhwICpweHAsIHN0cnVjdCBkZW50cnkgKmd0
X3Jvb3QpDQo+ID4gPiAgIAlpZiAoIWd0X3Jvb3QpDQo+ID4gPiAgIAkJcmV0dXJuOw0KPiA+ID4g
ICANCj4gPiA+IC0JaWYgKCFIQVNfUFhQKChweHBfdG9fZ3QocHhwKS0+aTkxNSkpKQ0KPiA+ID4g
KwlpZiAoIWludGVsX2d0cHhwX2lzX3N1cHBvcnRlZChweHApKQ0KPiA+ID4gICAJCXJldHVybjsN
Cj4gPiA+ICAgDQo+ID4gDQo+ID4gVGhpcyBub3cgcmV0dXJucyB0cnVlIGZvciBERzIsIGJ1dMKg
IHdlIGRvbid0IHdhbnQgdG8gcmVnaXN0ZXIgdGhlIFBYUCANCj4gPiBkZWJ1Z2ZzIHRoZXJlIGFz
IHdlIGRvbid0IHN1cHBvcnQgUFhQIGFzaWRlIGZyb20gSHVDIGxvYWRpbmcuDQo+ID4gDQo+IA0K
PiB5ZWFoIC0gb2suDQo+IA0KPiA+ICBJTU8gYSANCj4gPiBiZXR0ZXIgYXBwcm9hY2ggd291bGQg
YmUgdG8gaGF2ZSBpbnRlbF9ndHB4cF9pc19zdXBwb3J0ZWQgYmUgd2hhdCB5b3UgDQo+ID4gY3Vy
cmVudGx5IGhhdmUgYXMgX2d0X3N1cHBvcnRzX3B4cCgpLg0KPiA+IA0KPiBPa2F5LCBsZXQgbWUg
dGFrZSBhIGxvb2sgYXQgdGhhdCBzaW5jZSBpIHJlY2FsbCB0aGF0IGZ1dHVyZSBwYXRjaGVzIHdv
dWxkIHJlbHkgb24gaW50ZWxfZ3RweHBfaXNfc3VwcG9ydGVkIGZvciB0aGUgY2FzZQ0KPiB3aGVy
ZSBQWFAgaXMgbm90IHN1cHBvcnRlZCBidXQgd2UganVzdCB3YW50IHRvIGtub3cgaWYgR1QgaGFz
IGJhY2tlbmQgdGVlIGZvciBjb21wb25lbnQgYmluZGluZyBvciBzb21ldGhpbmcgLSBidXQgaQ0K
PiBndWVzcyB0aGF0IGNvdWxkIGdldCBhIHNlcGFyYXRlIGZ1bmN0aW9uIGFzIG9wcG9zZWQgdG8g
cmV1c2luZyBpbnRlbF9ndHB4cF9pc19zdXBwb3J0ZWQuDQo+IA0KPiANCj4gPiBBbHNvLCBpbnRl
bF9ndHB4cF9pc19zdXBwb3J0ZWQgaXMgYSBiaXQgY29uZnVzaW5nIGJlY2F1c2Ugb2YgdGhlIG5l
dyANCj4gPiAiZ3RweHAiIHByZWZpeC4gV2h5IG5vdCB1c2UganVzdCBpbnRlbF9weHBfaXNfc3Vw
cG9ydGVkPyBXZSBhbHJlYWR5IGhhdmUgDQo+ID4gcGVyLWd0IGNoZWNrZXJzIHRoYXQgcmVmZXIg
b25seSB0byB0aGUgc3ViY29tcG9uZW50LCBsaWtlIA0KPiA+IGludGVsX2h1Y19pc19zdXBwb3J0
ZWQoKSwgd2hpY2ggZm9yIE1UTCBpcyBmYWxzZSBvbiB0aGUgcHJpbWFyeSBHVCBhbmQgDQo+ID4g
dHJ1ZSBvbiB0aGUgbWVkaWEgb25lLiBJIGRvbid0IHNlZSB3aHkgd2UgY2FuJ3QgZG8gdGhlIHNh
bWUgZm9yIFBYUC4NCj4gDQo+IEkgdGhpbmsgdGhhdCBleGlzdGluZyBtZXRob2QgaXNuJ3QgYSBn
b29kIHdheSAtIGkgcmF0aGVyIHVzZSB0aGlzIG9wcG9ydHVuaXR5IHRvIHNldCBhIHByZWNlbmRl
bmNlIGZvciBweHAgd2UgY2FuIGhhdmUgYQ0KPiBtb3JlIHN0YW5kYXJkaXplZCBuYW1pbmcgY29u
dmVudGlvbiBiYXNlZCBvbiB0aGUgZ2xvYmFsLXZzLXBlci1ndCBsZXZlbCBjaGVja2luZyAoaSBh
bHNvIHdpc2ggaSBoYWQgdGltZSB0byBsb29rIGF0DQo+ICJpbnRyYS12cy1pbnRlciBmdW5jdGlv
biBuYW1pbmcpLiBTbyB3aGVuIHNvbWV0aGluZyBpcyBjYWxsZWQgd2l0aCBfcHhwXyBpdHMgbWVh
bnQgdG8gYmUgY2FsbGVkIGFzIGEgZ2xvYmFsIGNoZWNrDQo+IChwYXNzaW5nIGluIGk5MTUgYXMg
aXRzIHBhcmFtKSBhbmQgaWYgaXRzIHVzaW5nIF9ndHB4cF8sIHRoZW4gaXRzIG1lYW50IHRvIGJl
IGNhbGxlZCBhcyBndC1sZXZlbCBjaGVja2VyLiBBbmQgdGhlDQo+IHNpbWlsYXIgZnVuY3Rpb24g
bmFtZSBzaG91bGQgYmUgb2theSBpZiB0aGUgY2hlY2sgaXMgc2ltaWxhciAoanVzdCBhdCBkaWZm
ZXJlbnQgaGllcmFyY2h5IGxldmVsKS4gSSBwcmVmZXIgbXkgd2F5DQo+IGJlY2F1c2UgaXQgYWxs
b3dzIHRoYXQgdW5kZXJzdGFuZGluZyBwdXJlbHkgZnJvbSB0aGUgZnVuY3Rpb24gbmFtZSBhcyBv
cHBvc2VkIHRvIGhhdmluZyB0byBsb29rIGF0IHRoZSBmdWxsIGRlZmluaXRpb24NCj4gYmVmb3Jl
IGtub3dpbmcgaWYgaXRzIGEgZ2xvYmFsIGNoZWNrIHZzIGEgZ3QgbGV2ZWwgY2hlY2suIEkgdGhp
bmsgd2UgcmVhbGx5IG91Z2h0IHRvIGhhdmUgYSBtb3JlIGNvbmNpc2UgbmFtaW5nDQo+IGNvbnZl
bnRpb24gYXMgb3Bwb3NlZCB0byAid2UgZG8gaXQgbGlrZSB0aGlzLCBzbyB3aHkgbm90IGp1c3Qg
Zm9sbG93Ii4gQW4gYWx0ZXJuYXRpdmUgd291bGQgYmUgaW5zdGVhZCBvZg0KPiAiaW50ZWxfZ3Rw
eHBfaXNfc3VwcG9ydGVkIiB0aGVuICJpbnRlbF9ndF9zdXBwb3J0c19weHAiLiANCj4gDQo+IA0K
PiA+IA0KPiA+IERhbmllbGUNCj4gPiANCj4gPiA+ICAgCXJvb3QgPSBkZWJ1Z2ZzX2NyZWF0ZV9k
aXIoInB4cCIsIGd0X3Jvb3QpOw0KPiA+IA0KPiANCg0K
