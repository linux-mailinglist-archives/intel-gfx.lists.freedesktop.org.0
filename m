Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7966C616B2E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A0A10E541;
	Wed,  2 Nov 2022 17:48:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0308610E530
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411295; x=1698947295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OWCLMtnVs2tPgmPOMKE2JwS0P07PsPz0duUNMo6c+Bs=;
 b=BckKrAXFc/pBOnG3qnmJ9XjszO0CQkLGFctdTApZeFdG0hFjefFTLliz
 Vzas2X9NYTjI8/X+n0rxrINPi1aPSVjfx+y52ISZkLKlbtLC5vT8TnLlb
 f4Az8rO7epHtHvWO8LlQqRLjqpfTdx2EuBpEZ2kevxaOTtOYkMsjJPFS8
 oq5z5cA//S34md+5uch+AuZbbJMemK8b6dMhij827Rzwgc09wXwWDf3ze
 /qd9LV0FDveCyg2IS/ls4z4x1phwzO1B0955oFMmO1wEAXtcS/bS16QVY
 PhdDOhID4DphmXNh1IxX2zkcpD8hioC4BREkBjcHteHLilQLzRuCIMZx0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395788734"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="395788734"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:48:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="776986733"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="776986733"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2022 10:48:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 10:48:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 10:48:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 10:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dtKizs+NvB71cxRVEg1qHBlodCcwBZEmfRVeh+sMAxbuGuKlSiY4pSFXykh4SmoD5b3zDwM/AeG2QAAvS9l58ncmhW+0KDfNaBxbgcWYtaFXUdV18Ky0EzMvow1+agRNrOLMNiwyKWZ+Zn5GFhE4GdE9GZ4FmCpMDA+ZXJgewb3ldnS0F7u3zP8IVaJYHyHrXec3oUd0YoYmWbHg+4J9FiieKi32G3kWsYYpdTcMIguEeaFFAAeSp4MmhniDWZyFmk0xyOz76GXl9Z2cE2JoPucUOgB935LTdElC5nqwakvewy4RVzT7rmtha3Jhkeyia+ka7vwt7yDdWzt+FvBd0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OWCLMtnVs2tPgmPOMKE2JwS0P07PsPz0duUNMo6c+Bs=;
 b=duHBS2d2q/DHpyDpO7uJvAXZ65nqmzAcjTFmYGgzaY0ZWyaWffzlMrTPQ87LLorDT1/83hZGWpx1FuJfQ0kUqJGbmX/fCKwyfj6fEFHORZ9jTkIb1bYHC266u6DS8NKlmG1POgsY7eObn/42CDyRPSitAYy9MZH/G/zGhxHBEMVbNCsjeom0VeQOL0NZRFwQNLjYI3EOO6SAs/5zOQQIEdIBm1nwowaPRe6JYSbzi5VRfBIndG4rBiKd6eoFqOPxlmjhigYUJSEG6TAwWRK4QAooMQJW8Na+GEra3nfWtRC+UM877x6W/3YHUugJEFVjiVajp6aTsmg3Ra00FKqvhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5496.namprd11.prod.outlook.com (2603:10b6:208:314::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Wed, 2 Nov
 2022 17:48:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fbdb:a959:437c:13c6]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fbdb:a959:437c:13c6%8]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 17:48:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Remove inappropriate DSC slice alignment
 warning
Thread-Index: AQHY5REUTS5OSWvPsUSxbvrMs7pIJK4qjycAgAAPSoCAAAH+gIABW/UA
Date: Wed, 2 Nov 2022 17:48:07 +0000
Message-ID: <5426ac1d0600ed627cf24560dfa86a1d16c1b1cf.camel@intel.com>
References: <20221021054922.2753034-1-jouni.hogander@intel.com>
 <0839ad26187a137e1a1afb80ea6dc40d5dc9e3f0.camel@intel.com>
 <7fd6c03e88471339440401126043e7422df9a9c7.camel@intel.com>
 <51ebcaea9c2d4a8a691ae4f473f20ba6e0599ce6.camel@intel.com>
In-Reply-To: <51ebcaea9c2d4a8a691ae4f473f20ba6e0599ce6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5496:EE_
x-ms-office365-filtering-correlation-id: ba7864e7-4deb-45f4-fd4e-08dabcfa66bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IbpIqXfSxuts4XvGrIkDr4WtS2YkRXt34vVG3SVxFfqJaEycUcM+K1LvYbGewN8IQkHJS1PQdSy8zak4IaOBaeSgIc4Q4tQDa0Mj/hMGVu3KI0a4vzsEwS4yBJYnyGquJdguk0ud/e+L/jZ6EnfQ22WAa2A8iQE3502tNi733GDtOuVNsqV7+CO04ZrsMWKiDT45vTtKpeO7Fy8xOIoXz8W2uJKmZ4BxvSkmM3c6dunkHLPo3KQxXUlA390/sQcvvxBwguyPBjBwfyTKaXS0vAEITiTxWnxZ0ckkezHP2AP2jLgJyqXHy8y0Cr/F8WJEqzBNmVmMG/ZX4pmy7NHU4GzA+MWqQELbmiAqg1wQ1P4vxZT9RxyrrqTndLbCNUWD+jQvQ4EMpieHtEG4y5QVcm36ye29YJ3LK5YXb3/m7omLsc6g5vJJe7uVjFRSM3pYARFlvIybtAKzyesIXNeX7CploeqPhTbsuTu2Npnk73LR967h1wxWo3gOTLcUqSecXR15+WjQzC8+sXE2lp60xOC5ELg61j6YV8N0LT3ROY33xNsSQxLkvskzuk/zpoAYPDq07CIHxKZgnpqWhTDerg52+VyGw/ZIX8BYzPEOvLJQxOZzyfrKTprp5hnmL2H/xvjGZqcme9ZAhb0+y7bJs5PlRnIgyNtvwUpXq2X3EVXcRcoXzxbGdB7OMevZfh7DSByB9jqEIvxiw88QTmLw0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199015)(36756003)(6512007)(38100700002)(26005)(6486002)(107886003)(2616005)(2906002)(71200400001)(122000001)(966005)(4001150100001)(6506007)(38070700005)(478600001)(82960400001)(86362001)(186003)(83380400001)(66574015)(54906003)(66446008)(110136005)(41300700001)(316002)(64756008)(66476007)(66556008)(6636002)(8936002)(8676002)(91956017)(66946007)(5660300002)(76116006)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEVTcXh0KzNQbVJFczNhZnRXVlZDQm1jZXlhUmVWUzJROWVqOFgzcnFnUEF0?=
 =?utf-8?B?WklZTzFrMEdJeWZWY3pCVUIxK0J2SDhvandRZlREbG83dnB4SktzcFY3Slp2?=
 =?utf-8?B?VDVBWUFFM2UyQjZIVU5VUlJQZ2JkUnZuVFoybWpzSVBoajBrZitFbGo0MmNO?=
 =?utf-8?B?TEY4Vzg4SjFHT2ZTdzRnVXJmVksra29JbFBSRnhtRjFJZUVlVHY1VDNEVXQv?=
 =?utf-8?B?bzEzYXJVUWk4dTFObEV1RFRDSGtYVnZpNmpHTHV2UHRwc1FJMWZFbUdpUVJa?=
 =?utf-8?B?L2oxQ09uUGxOYllLWStBSFI2UUpKbkwzRDBIckZUWEVqNmVJMWJNL1hrSmJs?=
 =?utf-8?B?SzZWaXgwbmJuVTFQblRhYlpPd25Ndk16QittektZYXUvZHFXOTF0b1l0d3Jn?=
 =?utf-8?B?TGMyM0FIOVE1bE5OSnRHZFUyMUNrY1RINVd4YkhVVGZiMWZoRWpXbm1ib3k4?=
 =?utf-8?B?aTNxd0FSSlJMNFhCZ1Z1eUMrOUpJdzZCeHBUdU9taE1yNXM3YkV5YXhzMkM4?=
 =?utf-8?B?OXFNYzEzN0xkazRScWtVZWl4N3hXUmJTRWRhTlRpL0pxako5dHlDQVFFWnk5?=
 =?utf-8?B?VThsZjVKNS9MbjJYeCtabzBCb1lBaUV4WS9rY04weEZVczI4RzlUT20zajls?=
 =?utf-8?B?RUNUR3pnclJUTXdpZnNsbzZYZGo5NCtUY2xRS0llRlB3ZzUyTGRDTU1zbWxs?=
 =?utf-8?B?cWd2WnQzUEpxckxGQVhHLzdDRHRVNk9zN2pGL29IakMvRjlHaGk0QnRmVG93?=
 =?utf-8?B?aU84N0kvNnNUN2svL0J5OUtIR3ZCSUx6Mm9taS90eUFUZ210OVZXZkdkNDhY?=
 =?utf-8?B?a0QzUVJMWHpobFFGcEo5UlRHZDArTnFGTVBhbSt5c29xTy9RNjEvbTBaM01k?=
 =?utf-8?B?cXRWUm52MExDREFHMkFyZ01qQS9nOEw4M1NnU1NNUHFjQmxZaE9NT1Z6KzlJ?=
 =?utf-8?B?Z0dtbGMxN2twMm1DSnJmb3NOUDFUa2tKYkhUbnUwZkxTWHdFeDkyVFcyM2kz?=
 =?utf-8?B?UGs1cGRLVm1qSi9Ma3RYTWpGRFlIZFR3dHJzVjJ0bTNuSVpXSDlRT25kZ1J6?=
 =?utf-8?B?dmliVStacDJ4TUdHTWRCS1c0WUFIZER0UWRib25tN2dmSllZUzZQa2ZmVlNY?=
 =?utf-8?B?MnIrQWVBQVdtWjR0WkxuMEhzSlVlTXoxUUo4K1FwbzdQQUd6bVRNTUJDODlr?=
 =?utf-8?B?Sk8wRGRETitTWlY5cDBXTzVZdjg1YTJQTCtGRFZJSDNHcjNEL2c5Z0NuUkVq?=
 =?utf-8?B?RGhmNHcxdmpIZmJheGcvVm5JVEJaZ3YzTjBXUGZXS2dYSzJRNko4TVVJMm81?=
 =?utf-8?B?M1BrT3BqZjNQdmF4ZnE0Z0JyV2hRSC9hN01kSGQ2bWxDd1NtSk1Ia0VyNWZM?=
 =?utf-8?B?QTlRNjR6OTVEN0pqTVVYdmoyVE54NDZNL1ZLamxOQUtzZFpDN29rczNRTm1P?=
 =?utf-8?B?ZnhiRjdvT0RyS2x3Qk9VT1hleStFY0NiMUpmQkJnK1RMZ1o5Z21SZ2xrRUFs?=
 =?utf-8?B?c1A3UUxnamdUVGxOSmZsNTI4R2VUTGZsT1lVQzJ2VmJjVWNORUErdkZwcktL?=
 =?utf-8?B?UlQxeEx1UWhUUnB0RGN6MkZpalpZWEM4S24xUFpDaXI0SllzYXN1ZzU3d3VV?=
 =?utf-8?B?Z29wbDh2RjZab2d1ZTZqRks0RWJValQrQmlCSzBWTERnYzVKV2o2REJ6Unp4?=
 =?utf-8?B?MUNwbUdNcC9iQjc4ck1YY0t4YTJMMkJMeG91TWpWQUNhYThDQmtla2xGZldt?=
 =?utf-8?B?Y0hFcGFKazRmaDMxRVJHYW8wZUZYdHMwUEV1d1UzZ3JOUG44dXkxYnRybmt6?=
 =?utf-8?B?aHdnZXA1elFtbytUSzM5endtRUVtOXV5RnNMNmdDNkM4UjNraXcrK2FWamdV?=
 =?utf-8?B?Kzh3Mi9OY1BxNUJDWFFLbllxbVlabHFqM090QjEyYjI3TUVDV0JHK2NWcHVB?=
 =?utf-8?B?ODRyNzJEL0lwdHJwak5ETCsxNjNHdVVERzZ6S1BsVmxaSDlKYldJVlF6WmNO?=
 =?utf-8?B?WTlaZWZDdjg1aEJzV1ZOSERnU3RNTnRWQUppUGJyZmR6SWI5NklaNUZxaVNh?=
 =?utf-8?B?eVVCa2lNL21JS0k1ZFY1REgxNXFqSlFrTlZuN1A0a2taRi9GL1hIVlRVdWZq?=
 =?utf-8?B?TEgzZ2VVaENXNEQySlZ0YS91WUtoRCtOdWxFQzlneDd1NUdjVTNaV2FpRHlR?=
 =?utf-8?B?Q1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <56E66602944BC348B0BD3568458141EE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba7864e7-4deb-45f4-fd4e-08dabcfa66bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 17:48:07.7319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 99+LDzPTTUFuCUX2JBQ3uSQB3rDlpDX900RlP9uLpF/Nnsre5NndH+j+FVkWcEjjheXLGMN4p7LFTpC6kbf+xb0vsL8VNS6xZweUM1vpvbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5496
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Remove inappropriate DSC
 slice alignment warning
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

T24gVHVlLCAyMDIyLTExLTAxIGF0IDIxOjAyICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVHVlLCAyMDIyLTExLTAxIGF0IDIwOjU1ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gT24gVHVlLCAyMDIyLTExLTAxIGF0IDIwOjAwICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+IE9uIEZyaSwgMjAyMi0xMC0yMSBhdCAwODo0OSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOg0KPiA+ID4gPiBTZWxlY3RpdmUgdXBkYXRlIGFyZWEgaXMgbm93IGFsaWduZWQg
d2l0aCBEU0Mgc2xpY2UgaGVpZ2h0IHdoZW4NCj4gPiA+ID4gRFNDIGlzIGVuYWJsZWQuIFJlbW92
ZSBpbmFwcHJvcHJpYXRlIHdhcm5pbmcgYWJvdXQgbWlzc2luZyBEU0MNCj4gPiA+ID4gYWxpZ25t
ZW50Lg0KPiA+ID4gPiANCj4gPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiA+ID4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPiA+ID4gDQo+ID4gPiA+IEZpeGVzOiA0N2Q0YWUyMTkyY2IgKCJkcm0vaTkx
NS9tdGw6IEV4dGVuZCBQU1Igc3VwcG9ydCIpDQo+ID4gPiA+IENsb3NlczogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy83MjEyDQo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwu
Y29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMyAtLS0NCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlv
bnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRleCA5MDRhMTA0OWVmZjMuLjY0ZTllMTM0ZmRj
YSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiA+IEBAIC0xNjc4LDkgKzE2NzgsNiBAQCBzdGF0aWMgdm9pZA0KPiA+ID4g
PiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdubWVudChjb25zdCBzdHJ1Y3QNCj4gPiA+
ID4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiAqYw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
cGlwZV9jbGlwLT55MSAtPSBwaXBlX2NsaXAtPnkxICUgeV9hbGlnbm1lbnQ7DQo+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBpZiAocGlwZV9jbGlwLT55MiAlIHlfYWxpZ25tZW50KQ0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBpcGVfY2xpcC0+eTIgPSAoKHBpcGVfY2xp
cC0+eTIgLyB5X2FsaWdubWVudCkNCj4gPiA+ID4gKyAxKQ0KPiA+ID4gPiAqIHlfYWxpZ25tZW50
Ow0KPiA+ID4gPiAtDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChJU19BTERFUkxBS0VfUChk
ZXZfcHJpdikgJiYgY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiBkc2MuY29tcHJlc3Npb25fZW5hYmxl
KQ0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX3dhcm4oJmRldl9w
cml2LT5kcm0sICJNaXNzaW5nIFBTUjIgc2VsDQo+ID4gPiA+IGZldGNoDQo+ID4gPiA+IGFsaWdu
bWVudCB3aXRoIERTQ1xuIik7DQo+ID4gPiANCj4gPiA+IEl0IGlzIG5lY2Vzc2FyeSBjaGVjayBp
ZiBEU0MgYWxpZ25tZW50IGFuZCBQU1IyIGFsaWdubWVudA0KPiA+ID4gbWF0Y2hlcywgaWYNCj4g
PiA+IG5vdCBQU1IyIGNhbid0IGJlIGVuYWJsZWQuDQo+ID4gDQo+ID4gVGhpcyBjaGVjayBpcyB0
aGVyZSBhdCB0aGUgYmVnaW4gb2YNCj4gPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdu
bWVudDoNCj4gPiANCj4gPiAvKiBBRExQIGFsaWducyB0aGUgU1UgcmVnaW9uIHRvIHZkc2Mgc2xp
Y2UgaGVpZ2h0IGluIGNhc2UgZHNjIGlzDQo+ID4gZW5hYmxlZCAqLw0KPiA+IGlmIChjcnRjX3N0
YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQo+ID4gwqDCoMKgwqDCoMKgwqDCoChJU19B
TERFUkxBS0VfUChkZXZfcHJpdikgfHwgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDE0KSkNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHlfYWxpZ25tZW50ID0gdmRzY19jZmct
PnNsaWNlX2hlaWdodDsNCj4gDQo+IFRoaXMgaXMgc3RpbGwgd3JvbmcuDQo+IFRoZXJlIGlzIG5v
IGd1YXJhbnRlZSB0aGF0IHJlcXVpcmVkIFBTUjIgYWxpZ25tZW50IG1hdGNoZXMgdmRzY19jZmct
DQo+ID5zbGljZV9oZWlnaHQuDQoNClRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIFBs
ZWFzZSBjaGVjayAiRFNDIHNsaWNlL1BTUjIgU1UgcGFuZWwNCnkgZ3JhbnVsYXJpdHkgYWxpZ25t
ZW50IiBwYXRjaCBzZXQuDQoNCj4gDQo+ID4gDQo+ID4gRm9yIHNvbWUgcmVhc29uIHdoZW4gdGhp
cyBnb3QgbWVyZ2VkIHdhcm5pbmcgd2FzIHN0aWxsIGxlZnQgdGhlcmUuDQo+ID4gTm93DQo+ID4g
anVzdCByZW1vdmluZyB0aGUgd2FybmluZyBhcyB3ZWxsLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiA+
IMKgfQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiDCoC8qDQo+ID4gPiANCj4gPiANCj4gDQoNCg==
