Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3932F83C785
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 17:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A995110E2CB;
	Thu, 25 Jan 2024 16:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAF010E2CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 16:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706198836; x=1737734836;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/vM+Qnk6lkcdAWgHRcSxrhwNELqdfSEK+G/cJexNaXo=;
 b=mCXOQielOa2uSn/gBTeIIMp9BkSFg25Ji++bARI/ratbvQhxVDCLvHdN
 M9cLWH2Ex3FkgnwOmgIxXWWfZhTKxtRZ1Xn3Yu1Oe8w4T3KerSDyxZlbr
 LG3tD10iF4BvUpMtxdBMJBeEY52LKqeSkREskr44bzbO8QWB42Jev/Rl6
 eDUV3mYZSfDZhKKe10AdB/Ee+K7RjbX9DeYUfspNzCTpW5HmMbZi2PQWG
 om/Y0DeXhNy8Li29mVTzn7wzF8WVRSCp81EirxUHJGZr57Kt6y7m8weXH
 6m5YGqp8Ag1wfNFF6JZyrmVJoQrTVrtJzEOYBGldDdE+0vYB3suFAXg94 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="401857210"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="401857210"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 08:07:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="820837596"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="820837596"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 08:07:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 08:07:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 08:07:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 08:07:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3//d5bLyI1saMVe/angGg2/22XT7FegeYg7ovjcBQyLKmY4ExmUOFXytDMQIxUIumBdi9DXlRoRRNSTJvpBxyEGqT+Ujaok+OOKS2BwydOd62YL8sclYxP2WpszcxzLV87zitbjojb58/2EYnyoXEgdM0XEpABlBCKK5uL6ewEMoZZJRfEp/5vcQrViuGjJKNvk2ICYCmk+WTNiViCc/vldbWltDugwbYLDILJb9RwJiLmj0SnzGqO5/5k75zjZpg1hhawUKVTFfvVMaxoJ3cvXz8wqnR1btMB1Ugayl0kDASrdr2eAE7joGUpfj9onpdmChQ1uGIlQJUeuxoT9MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/vM+Qnk6lkcdAWgHRcSxrhwNELqdfSEK+G/cJexNaXo=;
 b=Rus6cEivV63Ik8Ebc5pAij9rN55QOWc7KEYM+uyNa00VsRgh48ptLEd21GJYwXe5LuVJpq7VHTvJOfUSC/mgIeCGVPSkBsi9jFMh7Z2rBYG3j82qNvMEGkETuXglIhwNqdoYfLTsTWdU449uDo2pcMSRtPcremAKhhw2UssYb3KyEpE9hwxGGbOaGBRg26slAALHlGKulcnBy0yKsyjcyHVCapdUYAEf3VJ5LTlusT13CJVtV5/gyPgznMSQo+PFHG/hcwBF79GYNLnJNKfAd79nnSqYWR9Wg3dQOyzBb66HgFvfkNkSmHADqQaJpgVfibtJ05t+LR69pM+stIBwog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SJ0PR11MB5664.namprd11.prod.outlook.com (2603:10b6:a03:37f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.24; Thu, 25 Jan
 2024 16:07:05 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967%4]) with mapi id 15.20.7202.034; Thu, 25 Jan 2024
 16:07:05 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaT6LAvEsnEI7RAEOrEiVG2hUjGLDqpxiAgAAHpQCAAAMPgA==
Date: Thu, 25 Jan 2024 16:07:05 +0000
Message-ID: <6e06b068a1a9bef7baa7da6536c5c8846a9f127d.camel@intel.com>
References: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
 <c7209d47d99a35d08a96e6a302595e4854b1d543.camel@intel.com>
 <78627f64-0f6e-430b-a954-30bec402b132@gmail.com>
In-Reply-To: <78627f64-0f6e-430b-a954-30bec402b132@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SJ0PR11MB5664:EE_
x-ms-office365-filtering-correlation-id: 6b7d1fa5-dffd-4852-5798-08dc1dbfacbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QHFjDEDRbGlAtAfkZo6ozONDt4XBs1I11Vbc7HUXBTvDysjQI8EGRTA33iM8/1OEHm7MgNHQpYVx4/+j/tzXq2mnn86srbPptnCTdKYJ6fLHsoI8dGqVQGjbkGC/xKjDkW5KtVHYuCtNFOjsQudth+fPZk97g2oi6GRl5vcxQeIi3C7oSnz0z+VYXM3VJH8ffDF5nD2ZtW+TFf3vJQcksM54GIqSQMPUPyhEN2zB/rz1AotQoQcsRK3O4G0yxrkntCvkIUYoN9rYvcvkq/iIIgrmGEepUk09ixUfprahK1jRXtYAykNXlHrGhPpWhh2TZ0pVmPgDdgq0ZRaNQOgcGi4GMbMn9hVMP1S2RzVxJ+joOS46t2MdvByX5ou6VYOgEDStrWQgHgzxMd63ckMXWxwEJ7mkgAhN6WNLOh3CN3Zw2dh8tCkVvj3PvOfy5+bX5GvYNyhAlsIGD/ul4+BoHGreIEMchETlE+ltWoKmve3HuKWPQ5qDKK+1D725geAHLswj1uO2yZT0SG/4R1BAt0Lj+J6nDPsVWwmCp58rYxMcGi4hMg3h7lb/Eb6u8NuNDt2p7ZbqntsAKYqXsc/lpw7xHJBbLHoJXcs9JA08t2k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(136003)(366004)(396003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(316002)(64756008)(110136005)(66476007)(76116006)(66446008)(66946007)(66556008)(91956017)(83380400001)(38070700009)(8676002)(38100700002)(5660300002)(82960400001)(86362001)(36756003)(2906002)(8936002)(4326008)(41300700001)(122000001)(26005)(478600001)(6486002)(2616005)(966005)(71200400001)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anFWeGJMNGVVSFNwRGh3L2ZJVXRzYWt3VWZpSmxOdHoxamltbFpDQStmczlL?=
 =?utf-8?B?bDhnRW1TQnFsbDk0QTFrTE9EYVkxWUp6WUI1RzhoYWhpRnVUYmw4ajlHeUE5?=
 =?utf-8?B?ZFFEbUkvcDI3NkNUSDR6UldVVmpuSFo0NTNuREpsOGZGY3hXcVFuTUhreVEx?=
 =?utf-8?B?WWR6NzEya3lULzMrMmdzbjlsa05WZVdWeUFvN2Y4alpPbWJQeUM2M0w4dDlJ?=
 =?utf-8?B?NzlIOW1PUUVBUUxUZ3EzMTdnSkc3VDZnaU9NSStZS1RNUjZSWXF3Z09VcmZU?=
 =?utf-8?B?T3JCRkZIdWZLeHYxOEo1K1VzZHFlaTczeW9SQmxPL0x4NGtXM3U1amtjOW1l?=
 =?utf-8?B?RDNRV3pUZWtaVmlGdFg5QWhnb09rTFJhT3RWTW1iMjhDVUVzTENMSFdFOTRS?=
 =?utf-8?B?Q3pna0tobm56N1VNaWRmSU5mNkIvSVF0d1ZTOFNITDE4aG9LbUZvMDVXR0hE?=
 =?utf-8?B?RW1DZVRmVmh3Q1prUkE0UFI3a2Q1SXhNS1lKWklady9WSmRIamxoZ3FkQ1JH?=
 =?utf-8?B?L3dHTW9wazl3ckdqUFR2aFlrV3VhQ1VrWWt1ell3ekxDdjBmQnN4OW4vN2JO?=
 =?utf-8?B?SFNzM0dsZ09nRkNHYlhRbTQ2aVNnSE1pbDJ1RFFZdkF0VmF0Q29aOURBcTZy?=
 =?utf-8?B?V3RmYmExU1I5MHNMNkZxczNPTWNlNzA3RGJTTlFmOXcrWnUreUhrWU12MnNa?=
 =?utf-8?B?Vi9XM01ObkYzK1FBVTRUSGRPeXQ5SlVKQm91Vk9wSW9xQjVjWkNYVGNCcGow?=
 =?utf-8?B?UEczbkRsQlFmV2hxcmxYWHJBWGp0NHhmSnFmdGg5SDRvVDgvOWZTblRWcXR1?=
 =?utf-8?B?K3JuNzNYd2lZeS9EUzRzQlFjeXlITnlLRlBpVGRyUENjMzdxZEpacEduZzM4?=
 =?utf-8?B?RU0vK1JJbTNWcThMckpqWFNiZTJXNmxScVdtQzRJWDRoSHJ5QmJLYVRvSnhw?=
 =?utf-8?B?dHB4UXYwcHhqUnppRGhESUtWaW9BWUkwS1NjSDZiMjNnY2R1S1J3K1BDeHRl?=
 =?utf-8?B?cEtWT0tWdnNjYTQ4VEs2QzNLek1BN1c0WXpMRytocTljbWZ6Ly83TFZrWkNi?=
 =?utf-8?B?R0RrRWNEanVZTmdVVW5hMXJkcWFqSCswcUhtWTV2SmU5ZUkrM1NaOVBWaE13?=
 =?utf-8?B?ZlNmMzRNQ3FOaTk0QlR2VTF2M0pVaTRyd0prNklrN2FCU2VFTTdCTndjcTBS?=
 =?utf-8?B?UnhIMVY3MGVVK2NxUXp6d0RQcXoyR3ltNzVIb29qbmc3SmQ4N2tqTEMyZ0NK?=
 =?utf-8?B?ZjNTRy8zc2E0L0taZFd2alVzaVNMckMyUnZvMDN3Z1REZm9vZXdobXVYMW5P?=
 =?utf-8?B?b0UybkY3eldjYjJYdzhiOUJlTWNDSU53aGxYbzAwMHFSMGJBUjFtQkkxR21V?=
 =?utf-8?B?cXJlQ3NjK1JnKzd6ejlYOGVqazJHalpOU2VlQ2JjbUNGSzJwRURtTnZNS0Fs?=
 =?utf-8?B?SHh0QlZVbmJ2SVRiRUIwbGxXMUdHV0NJb0VtbFNXZzZqbjJ2eldxeHhGYmhj?=
 =?utf-8?B?SGxXQkxaVVdBNm5kemNjRm4xMWRkRmN1ZGJSSW15cjRQY3pSdzlTNGJueDlW?=
 =?utf-8?B?SDRUWkx6UEl4WTBIWnRBU0RlTnhpazYwaUh0cHlLVldGRkgrMzAxSEV0clJ6?=
 =?utf-8?B?UTV6c3ZMNFkrS0FVN1VPK2VCeXZYcGh6WEREV0lHeUlNclpxcnNXSGhGNjZ6?=
 =?utf-8?B?TGdvRzROQjYzdFBKbHN1RGlqUU5KSHJJUDIxdzl0R1prek40WE1FcWNqZFVP?=
 =?utf-8?B?b0NEdGlrazJSVlhaMm1ja0FwdENqeWZacXFMdFQ4MTZvSkI1Q0NHWGFJemQz?=
 =?utf-8?B?SFJHdWtQV3NwUzFIN1p5UytHcVk4S0kxN1h0ejFVT3A5cS81aWE4QVpOMitZ?=
 =?utf-8?B?RUFBUFFDS1cyVGJNVUdKVXkzYXUyUHZHUEJJL2xWZ1lYV1NPVi94STlSZ3B2?=
 =?utf-8?B?bDhKbDNsenVFNUllZUk4MEpvazZRWEh4dm9VUldVTEtuL0hyci9MT050RjJl?=
 =?utf-8?B?OHQwR2REYzJvK1VRNHVNV3RSRVZSTW5vdS9sMDVWVldxNk12MVJ0VGJ3QTc4?=
 =?utf-8?B?QUdISnNvcFNWbG5OZjBKUmIvVTU5MWRPcGFYWUppZFRZSjZEZStqV1BaZkg1?=
 =?utf-8?B?by9kdkhLRi9ZQWlLZDBqSW1PeVhCaVlCc0d1Z3RUNXlRRHhyQTZteVErejlB?=
 =?utf-8?B?WGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <99A1E0C9EEFB3143AB2421A0EFAA498C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7d1fa5-dffd-4852-5798-08dc1dbfacbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 16:07:05.3610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ewe/wmGmEZSFlK8RdswtvJhxfCxh3nX6Zawd6oSRO9LgZ8kWe760NiV4juKZptNdb3oHwPn2sSh8B7FAsfqtMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5664
X-OriginatorOrg: intel.com
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

T24gVGh1LCAyMDI0LTAxLTI1IGF0IDE3OjU2ICswMjAwLCBKdWhhLVBla2thIEhlaWtraWxhIHdy
b3RlOg0KPiBPbiAyNS4xLjIwMjQgMTcuMjgsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+IE9uIFRo
dSwgMjAyNC0wMS0yNSBhdCAxNzoyNSArMDIwMCwgSnVoYS1QZWtrYSBIZWlra2lsYSB3cm90ZToN
Cj4gPiA+IEF1eENDUyBmcmFtZWJ1ZmZlcnMgZG9uJ3Qgd29yayBvbiBYZSBkcml2ZXIgaGVuY2Ug
ZGlzYWJsZSB0aGVtDQo+ID4gPiBmcm9tIHBsYW5lIGNhcGFiaWxpdGllcyB1bnRpbCB0aGV5IGFy
ZSBmaXhlZC4gRmxhdENDUyBmcmFtZWJ1ZmZlcnMNCj4gPiA+IHdvcmsgYW5kIHRoZXkgYXJlIGxl
ZnQgZW5hYmxlZC4gQ0NTIGlzIGxlZnQgdW50b3VjaGVkIGZvciBpOTE1DQo+ID4gPiBkZXJpdmVy
Lg0KPiA+ID4gDQo+ID4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0veGUva2VybmVsLy0vaXNzdWVzLzkzMw0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSnVoYS1QZWtr
YSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+
ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8
IDggKysrKysrKysNCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiA+
ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2
ZXJzYWxfcGxhbmUuYw0KPiA+ID4gaW5kZXggNTExZGMxNTQ0ODU0Li4xNTIxZDgyOTUyNWEgMTAw
NjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJz
YWxfcGxhbmUuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+IEBAIC0yMjkwLDYgKzIyOTAsMTQgQEAgc3RhdGljIHU4
IHNrbF9nZXRfcGxhbmVfY2FwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+
ICAgCWlmIChIQVNfNFRJTEUoaTkxNSkpDQo+ID4gPiAgIAkJY2FwcyB8PSBJTlRFTF9QTEFORV9D
QVBfVElMSU5HXzQ7DQo+ID4gPiAgIA0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBGSVhNRTogQmVs
b3cgaWYoSVNfRU5BQkxFRChDT05GSUdfSTkxNSkuLikgaXMgYmVjYXVzZSBYZSBkcml2ZXINCj4g
PiA+ICsJICogY2FuJ3QgdXNlIEF1eENDUyBmcmFtZWJ1ZmZlcnMuIE9uY2UgdGhleSBhcmUgZml4
ZWQgdGhpcyBuZWVkIHRvIGJlDQo+ID4gPiArCSAqIHJlbW92ZWQuDQo+ID4gPiArCSAqLw0KPiA+
ID4gKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0k5MTUpICYmICFIQVNfRkxBVF9DQ1MoaTkxNSkp
DQo+ID4gPiArCQlyZXR1cm4gY2FwczsNCj4gPiA+ICsNCj4gPiANCj4gPiBmdW5jdGlvbmFsIGJ1
dCBsb29rcyBvZGQuDQo+ID4gd291bGQgcmF0aGVyIGFkZCBhIGNoZWNrIGluc2lkZSBvZiBnZW4x
Ml9wbGFuZV9oYXNfbWNfY2NzKCkgb3IgJ2lmICgoIUlTX0VOQUJMRUQoQ09ORklHX0k5MTUpICYm
ICFIQVNfRkxBVF9DQ1MoaTkxNSkpICYmIGdlbjEyX3BsYW5lX2hhc19tY19jY3MoaTkxNSwNCj4g
PiBwbGFuZV9pZCkpJw0KPiANCj4gSGkgSm9zZSwNCj4gDQo+IG5vdCBzdXJlIEkgdW5kZXJzdG9v
ZCB5b3VyIGlkZWEuIEhlcmUgbmVlZCB0byBiZSBkaXNhYmxlZCBhbGwgdmVyc2lvbnMgDQo+IG9m
IGF1eCBjY3MgZm9yIFhlLCBub3QganVzdCBtYyBjY3MuDQoNCmFoIG1pc3BsYWNlIHRoaXMgdGhp
cy4uLnBsZWFzZSBpZ25vcmUuDQoNCnRoaXMgaXMgZmluZSBmb3Igc29tZXRoaW5nIHRoYXQgd2ls
bCBiZSBmaXhlZCBzb29uLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCg0KDQo+IA0KPiA+IA0KPiA+ID4gICAJaWYgKHNrbF9w
bGFuZV9oYXNfcmNfY2NzKGk5MTUsIHBpcGUsIHBsYW5lX2lkKSkgew0KPiA+ID4gICAJCWNhcHMg
fD0gSU5URUxfUExBTkVfQ0FQX0NDU19SQzsNCj4gPiA+ICAgCQlpZiAoRElTUExBWV9WRVIoaTkx
NSkgPj0gMTIpDQo+ID4gDQo+IA0KDQo=
