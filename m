Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B80347DE08
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 04:19:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003A410E26A;
	Thu, 23 Dec 2021 03:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46DFD10E26A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 03:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640229541; x=1671765541;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=JUDsox49M8qK6XEtljvg0jflXF2/mz4cta6weK++rvc=;
 b=gWhSSNAgVAxXIL8O1941kEdTbv9oOt4TKqQYb+1BTij/c2Qnj2AsOA5f
 BJfQgwoPw+C3kOKKjLHqWFsvPhVjcZzZcUqubL+t1OsgkpmFhlROFKObw
 d5ads2dOjtmgNRPSiIjUFvMMcn2td5nc/X0YmKK2EYNSkkES1bMdqFYp6
 Hi+Rd5h9HQfkPonJZE2tUDv+zkTJIXKit7NcD1mFtnn7guvprSL4jd6H2
 s8c4WvQ3YYwno9a0AEEY913dGJnQkXJoG55iWt1nOpyPDC/T85Vmb+o1r
 KxjuhNoA/avMp/Nwv+LvZn4JYYpreKEBRR2unPUNnBDyO6bayaQJ9mtUD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="239499058"
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="239499058"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 19:19:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="521925192"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 22 Dec 2021 19:19:00 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 19:18:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 22 Dec 2021 19:18:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 22 Dec 2021 19:18:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dzZrdPxT2BjnXg97byOBYPHrJikV0xvMc8HBUXQN6lr1/JxqogdHe7B13NI5CeKW01KtkB6lLa5IuEuTRg5fp+96nwO4jw5Z4eQcBjAnJPopkQG/kbsxDxHp3fHEN3fIHvoZwnVeWnkEcX4nu5zsDNVlBmxZwV4vhgKSrJIWeBAS1Iq19NipuYK8/G5pbfpaJTcmSgs87kc6lEmH+Mnvcj6maQVu2MbA2PSJYLiogMXkL0YDCz83PZR2YGFbPyg67xz6pCnw7dRKyWk1kgKyr2O7DZHstKtZeBPTHk8flVRMrluYo7PrAX3h6btqS80JyAVVmpbyuPP7etCJ7kslvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JUDsox49M8qK6XEtljvg0jflXF2/mz4cta6weK++rvc=;
 b=d1yXnZ48B/iJsQRmMTW+nthVw5rA8xI6AOrk1qHlAsRP2beFE12BjCx/z6OuS/d2VqeKoIQy6iHk43MvjTPhOH+MuhyYTeaZ3OYA0pKA/TAHbIpUm7/zvSnii+Gw4wduTbbASgMiaP6XmOTbZh++TSzXg87OffjpcAwxaojQdrZwPoAb6iQLPAU/vrWjF8ftT4dHuh4c8AZ8V9ugxrbYC8jBvENHX2JadU371PQqwsCmtFNAVjx1AjrfsTFvsTfpL0Ah/N0mUpi80WpyzoyQ+dL79vflJqyEFRQbBteFZBLvicHhwfHPSyP908pBcynaRn8YD4bHXNkr1WZreBPudg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1422.namprd11.prod.outlook.com (2603:10b6:300:25::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Thu, 23 Dec
 2021 03:18:57 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::701e:97aa:3dc2:e318]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::701e:97aa:3dc2:e318%4]) with mapi id 15.20.4823.019; Thu, 23 Dec 2021
 03:18:57 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Yokoyama, Caz" <caz.yokoyama@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
Thread-Index: AQHX8vhHu+f113PpNU6JUldcsGI/z6w3NqoAgAg7CAA=
Date: Thu, 23 Dec 2021 03:18:57 +0000
Message-ID: <2a4cc866a3c24ccfb55dab8bdfc18547957332f1.camel@intel.com>
References: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <4c02824ccbb7d40c15fc20ea272013c41e9aa54a.camel@intel.com>
In-Reply-To: <4c02824ccbb7d40c15fc20ea272013c41e9aa54a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.2 (3.42.2-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74fe913c-816f-408e-f0f9-08d9c5c2f506
x-ms-traffictypediagnostic: MWHPR11MB1422:EE_
x-microsoft-antispam-prvs: <MWHPR11MB142261EA05D31A539B3B9EE3C77E9@MWHPR11MB1422.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TB6Tbg+uChpuKqF7AH8j5hiQwjRLOHSUsKIs7vTkM5sieLUFHwjootZzUgz4aMxfktsHEssyrnhfQE7Z+kS2ROvC8rk8vhc32NeFzdn1yF85RQx6gjTXhszROFY7DIxf3z/pKWomImNxIWpAViKmmCa7pf04jCpxR2JhHN+xhWlT2p0F34k+gW1LGTJaI2hLtwdoPPb1Hgn0P8v+v2pVzw5LkzYee8VXpYgYsWJVVUVB/i52KBAHMT+huNc6X3q96wu9Fn8lC2ZCtKGL4naaAv032gh18Zc5iqlcqL7UkQzFX4Lqyve/KM6r3oM21Vp7bY3GJy1t5qiUdJdQottLtSgnbDMDCqWVkjiMYJpFsQd808jdOoCFN28HNN2C5Q5fv0rHDvoqLlktOm8P5dBXrWQQe/f6Lg5ngqiK8E+5IrRUHkVWL5K+c5bR7ZXXn08Kn7wk7iMXxt8/G7Gwn8Fc7kG1k04z75acGdg1GvZkT1nPibrkX8+ruyvGAxRQHivVw0B/oXOl9Jw+o9VQNAWEhUi6JzL0dq0G63Y8Yee/Cmw2w6i6CD64ZTWbBAhvswWgaG2MjBcmbAga7dvwGQCQZqJkS3IezK6SA/P4V8Zk7aalPx0xnPJ+QjpihbUz3UB9cGEI7W53MuLSJGO6aCwnLbVmvP63D1slZkXVVwoW2r+gnS8aQxtJfdxNLR15fPPgDTwr91KiNhfPX6eeB4OlWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(82960400001)(38070700005)(186003)(122000001)(6506007)(38100700002)(4001150100001)(8676002)(8936002)(508600001)(2906002)(6636002)(71200400001)(83380400001)(6512007)(316002)(86362001)(76116006)(66556008)(2616005)(64756008)(66476007)(66946007)(36756003)(66446008)(110136005)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkJIa1pzSDhpNmRXdmkvUWwzeDZ0cU9mdUxKblNyeEp1L3lZTkN3QjlYKzhh?=
 =?utf-8?B?NjlDellUWjdjR2FzNGgxbllwNkR3QlVzalg5Wk5UMW5ua3dSUzBzUHJ4Z2lE?=
 =?utf-8?B?VE9tZmZicHE0bkNhaExscC94NDRkN2psL1ViYzRQSjdlVFJSai85ZVpXV29O?=
 =?utf-8?B?SHpJUVpPQWJBRXNlenV5Sk9OYSt1am54N3RKZHhCTUlWRnZGamMvTDVkeXBV?=
 =?utf-8?B?d1B5UXJJTWNQK0ZpREQrMTVEQ296RTA4ajR4aDJWS3ZKSlB0NkZ3WU10ek1a?=
 =?utf-8?B?VmI0Q0dKNytQN3prTDZBUmFGbzBGWEJFcjJ4S2NDTzlMb3VTTmlpTmU4UGl1?=
 =?utf-8?B?OGhKUHJiQ0FLY0c2VHNWSUZGQkM5bDQ4K3I3MTBST0kyUFVLRG1PZUJrVy91?=
 =?utf-8?B?WU8vZm8xRFBtcjV2bWhhRFdwZno1VFFwVlZaNGR4R1VUMDVJWm9xUzg1YWxw?=
 =?utf-8?B?c1p1dTd2b1NWY1FuWHJnUnJFUmpuSzZ3WExLMHBQbTM3K25BUmZjY09WR1lq?=
 =?utf-8?B?UWp4RERBMFJJK1UzNE9pUGpTSjZrMXgxSDVhWkJQRkJ3ZDBOR3NvTzMvVnBp?=
 =?utf-8?B?UEp4L21hdGFGMEI2aDZ5WXE1aDJzM0o0V2NVcjRFYW9XNEdCTURRRXB3NFRD?=
 =?utf-8?B?UDNKQ253bzJJSHZqZFpSNU1YMzdXcWhibkIweE1mblVoSWwwSjBpM0RRdjEz?=
 =?utf-8?B?NUF5ZGlKekcybm9jTXkxc2xDa1NpT3J6ZWttTDBBM0JBMURFOGNWRFdHTEEw?=
 =?utf-8?B?NjczTHlxdnFycFJmdmQrMGJBVzRQd05TSVFzT1RpQ0MrUU1yV24yUmVCdXRV?=
 =?utf-8?B?Wlp4WlFjUFBjWlpiWHdwQlJyU2t0T0ppSUh0NlpraXNHU2FDMUs4Vlpleksx?=
 =?utf-8?B?UDJsb0JzWGFIMVNGdFpWckRGaUYwVjdwRW1ETklFUHBWNnZkaVdIT1p5eG1B?=
 =?utf-8?B?RmZTczRuNThva3dtaU5qUE9NQ2Q0aU03SFFIbHJxN1BaY2ZaYVo0U05hMFVu?=
 =?utf-8?B?cmNnKyt4ZGR0SDVxM0dFcEExYUJlRk5FTWFNY3RBcWx6RGtIRm91Y3F6S2pv?=
 =?utf-8?B?TTJ5ZnNXY0w2RXFyYWVtNHVGdEtCWFkyTklZdnZ2MGxnWVk2OWlSQ3Z5Nm5p?=
 =?utf-8?B?SS8vV1kxbkFjQzdtZk9TaG83TVRJdnBSMEw0dDVxKzh3c1pmQmdSZng5RWxJ?=
 =?utf-8?B?Z3l5RDFyMURKUUtVcmgrTVU3T0tNeUlOZHFreWFoMVBYYTJ6TDRWNm9qRkh2?=
 =?utf-8?B?YmU5NHBiMjhJZGxISFBiclA1Vm5CNnlpdlVIK0VsdWVvOFBBaHV1cG5XV0dD?=
 =?utf-8?B?dEFZSVE5dEV6a3pKYVduV0lLNzJoNHlXWEpzd25jYW11aHkwQ1V1OHQ4MWs4?=
 =?utf-8?B?ZDRjbjE4Mk84WmdTVmxWeld2cTRWM3ZEMzRkVlNVaTJmNy9ESnROVStHd1No?=
 =?utf-8?B?akJqSkphbktBazlhYWZ1ZERwaFZoaWNMNWE5TWlOYm5aZWlScDQxWGFwdTV4?=
 =?utf-8?B?UlVkVmNDbVM5Tk9pTkQwdEZFMmVPbThtR3dPYnhPRjZ3TDZxcWJ2OW95cEFj?=
 =?utf-8?B?cFFNNkxXeVgra3N3c0hQd0FIRVU2OHJEZVhSa0ZRejRkd1VjTFU3Yk9tSzQr?=
 =?utf-8?B?ZmFNT21mWXN4UW1qZlBoRU85enk2d0FkYjRybXpZRzJjaForLzVkelV6d1dq?=
 =?utf-8?B?ZTMzRjhSNUpPTDIrcGNMcDJCMWRxTDNNRmJEbTdJVGRxaEZ2cFdtY1NKdDZ4?=
 =?utf-8?B?V0NZc3EyOCtNeHVYR0hnL1RYejlFY2c4aVVCVFpzdHF5dFVGVkdVVUIxUWpS?=
 =?utf-8?B?UDVaakllMVJaUzZMUUhPY0RWcjdYcTgyd1JRaXFCeGdyM2JVOWVhUXEycVRu?=
 =?utf-8?B?L1ZoVW10SFhqVE5meWlmb292RWwyeFlxMGtEUW5zeWFCdU4zdDVrbnlOR1A0?=
 =?utf-8?B?OW5FWnd2UmJTWnR5bWh1dVRNQWVsZGozd3dJTkVidUhCTHRjYytDcEpObE95?=
 =?utf-8?B?SnhVUkJUSU9kTzZKUFpqNWRkcm9XeEtmU1BxRU8wVGdLSllvN25idnlIdFpP?=
 =?utf-8?B?dC9uL3V4SUJZOXFUMHZrT0xNQXg0N1lxWVlFQ3pXMXdwdDk1K2s2Nm4vNTcv?=
 =?utf-8?B?dERjK1hRRENlK21BckdNS0p2ZXorRjN1NWJtNlBqalNjckZKTHc4a3FUWEZP?=
 =?utf-8?B?eWducWxYWW0wamVVUitSZ0UzdG44ZGxxU2pJclQxemtJNzN5eDFlM1ZUMWNo?=
 =?utf-8?B?WVpGUnZLV04wRnorNGZZUjd0ajJTSmpsc0piSXRueVUxTUd4eW8reWphRktV?=
 =?utf-8?B?T0lyVjNNR1BwQy8vNW1tdXFvclZEOFRDdEZ6cG1Pemw0MHJ3ZHhWL0dIWGF1?=
 =?utf-8?Q?/Wg8GDRZDDRxzDvUEx9kjLWh14Q648SH39xSe9/AaJeZA?=
x-ms-exchange-antispam-messagedata-1: DtrNUr7XzlJQqvhJ/w5gCBep+jVk1SEjLnU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF61BA3B145C504CA2FBA96D9E972BA0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74fe913c-816f-408e-f0f9-08d9c5c2f506
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2021 03:18:57.3898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 60s7UdCZyTxqstfLc8eegDCOllxio8BQyGX+3fLWHH499mooY00VINHgr7f9o5B+3g8u9orU+yY0Nixrj53JSaIE/VHXWGMokoanDBNpuRGMcwXw6PsaoUis91QZ1QvGZ0Qwu3ImMklg0qygSUC3Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1422
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
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

T24gRnJpLCAyMDIxLTEyLTE3IGF0IDIxOjM3ICswMDAwLCBZb2tveWFtYSwgQ2F6IHdyb3RlOgo+
IE9uIFRodSwgMjAyMS0xMi0xNiBhdCAxOTo0MSAtMDgwMCwgTWFkaHVtaXRoYSBUb2xha2FuYWhh
bGxpIFByYWRlZXAKPiB3cm90ZToKPiA+IFJlcGxhY2UgR0VOPG4+IHdpdGggRElTUExBWV9WRVI8
bj4sIGluIGxpbmUgd2l0aCB0aGUgbmFtaW5nCj4gPiBjb252ZW50aW9uCj4gPiBmb2xsb3dlZCBp
biB0aGUgaTkxNSBkcml2ZXIgY29kZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWFkaHVtaXRo
YSBUb2xha2FuYWhhbGxpIFByYWRlZXAgPAo+ID4gbWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnBy
YWRlZXBAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZG1jLmMgfCAxNCArKysrKysrLS0tLS0tLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYwo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jCj4gPiBpbmRleCBhNjliMjhkNjVhOWIuLjc2MTZh
MzkwNmI5ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZG1jLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1j
LmMKPiA+IEBAIC00Myw5ICs0Myw5IEBACj4gPiDCoMKgwqDCoMKgwqDCoMKgX19zdHJpbmdpZnko
bWFqb3IpICJfIsKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKPiA+IMKgwqDCoMKgwqDCoMKgwqBfX3N0
cmluZ2lmeShtaW5vcikgIi5iaW4iCj4gPiDCoAo+ID4gLSNkZWZpbmUgR0VOMTJfRE1DX01BWF9G
V19TSVpFwqDCoMKgwqDCoMKgwqDCoMKgwqBJQ0xfRE1DX01BWF9GV19TSVpFCj4gPiArI2RlZmlu
ZSBESVNQTEFZX1ZFUjEzX0RNQ19NQVhfRldfU0laRcKgwqAweDIwMDAwCj4gPiDCoAo+ID4gLSNk
ZWZpbmUgR0VOMTNfRE1DX01BWF9GV19TSVpFwqDCoMKgwqDCoMKgwqDCoMKgwqAweDIwMDAwCj4g
PiArI2RlZmluZSBESVNQTEFZX1ZFUjEyX0RNQ19NQVhfRldfU0laRcKgwqBJQ0xfRE1DX01BWF9G
V19TSVpFCj4gV2h5IHRoZSBvcmRlciBvZiBHRU4xMi8xMyBhbmQgVkVSMTIvMTMgaXMgcmV2ZXJz
ZWQ/Cj4gT3RoZXIgdGhhbiB0aGF0LCBMR1RNLgo+IC1jYXoKCkkgaGFkIGZpcnN0IGRlZmluZWQg
R0VOMTMgYmVsb3cgR0VOMTIsIGludGVyY2hhbmdlZCB0aGVtIHRvIGZvbGxvdwp0aGUgdXN1YWwg
Y29udmVudGlvbiBvZiBsYXRlc3QtZ2VuLWZpcnN0LgoKLSBNYWRodW1pdGhhCgo+ID4gwqAKPiA+
IMKgI2RlZmluZSBBRExQX0RNQ19QQVRIwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgRE1DX1BBVEgoYWRscCwgMiwgMTQpCj4gPiDCoCNkZWZpbmUgQURMUF9ETUNfVkVSU0lPTl9S
RVFVSVJFRMKgwqDCoMKgwqDCoERNQ19WRVJTSU9OKDIsIDE0KQo+ID4gQEAgLTY4NCwyMyArNjg0
LDIzIEBAIHZvaWQgaW50ZWxfZG1jX3Vjb2RlX2luaXQoc3RydWN0Cj4gPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfQUxERVJMQUtFX1AoZGV2
X3ByaXYpKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+ZndfcGF0
aCA9IEFETFBfRE1DX1BBVEg7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRt
Yy0+cmVxdWlyZWRfdmVyc2lvbiA9IEFETFBfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5tYXhfZndfc2l6ZSA9IEdFTjEzX0RNQ19N
QVhfRldfU0laRTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPm1heF9m
d19zaXplID0gRElTUExBWV9WRVIxM19ETUNfTUFYX0ZXX1NJWkU7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgfSBlbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpIHsKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5md19wYXRoID0gQURMU19ETUNfUEFUSDsKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5yZXF1aXJlZF92ZXJzaW9uID0gQURM
U19ETUNfVkVSU0lPTl9SRVFVSVJFRDsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkbWMtPm1heF9md19zaXplID0gR0VOMTJfRE1DX01BWF9GV19TSVpFOwo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+bWF4X2Z3X3NpemUgPSBESVNQTEFZX1ZFUjEyX0RN
Q19NQVhfRldfU0laRTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKElTX0RHMShkZXZf
cHJpdikpIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5md19wYXRo
ID0gREcxX0RNQ19QQVRIOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMt
PnJlcXVpcmVkX3ZlcnNpb24gPSBERzFfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5tYXhfZndfc2l6ZSA9IEdFTjEyX0RNQ19NQVhf
RldfU0laRTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPm1heF9md19z
aXplID0gRElTUExBWV9WRVIxMl9ETUNfTUFYX0ZXX1NJWkU7Cj4gPiDCoMKgwqDCoMKgwqDCoMKg
fSBlbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgewo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBkbWMtPmZ3X3BhdGggPSBSS0xfRE1DX1BBVEg7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9IFJLTF9ETUNf
VkVSU0lPTl9SRVFVSVJFRDsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMt
Pm1heF9md19zaXplID0gR0VOMTJfRE1DX01BWF9GV19TSVpFOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRtYy0+bWF4X2Z3X3NpemUgPSBESVNQTEFZX1ZFUjEyX0RNQ19NQVhf
RldfU0laRTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA+PSAxMikgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPmZ3
X3BhdGggPSBUR0xfRE1DX1BBVEg7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9IFRHTF9ETUNfVkVSU0lPTl9SRVFVSVJFRDsKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPm1heF9md19zaXplID0gR0VOMTJfRE1D
X01BWF9GV19TSVpFOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+bWF4
X2Z3X3NpemUgPSBESVNQTEFZX1ZFUjEyX0RNQ19NQVhfRldfU0laRTsKPiA+IMKgwqDCoMKgwqDC
oMKgwqB9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMSkgewo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPmZ3X3BhdGggPSBJQ0xfRE1DX1BBVEg7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9
IElDTF9ETUNfVkVSU0lPTl9SRVFVSVJFRDsKCg==
