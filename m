Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C505579132
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 05:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4CF11B3A3;
	Tue, 19 Jul 2022 03:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA0011B3B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 03:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658200512; x=1689736512;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SCtOGSOc+LWYSS/QQk8NGzogAzxIV1paHU0KkcYckH4=;
 b=ZBYQvts35HLgpX6/Idfny6tNXgG65RfikRBBhVYi5GiRHECNkOnCMWro
 7KhEj5A99FUR4FDTu083WIcXxWr5DyPMCOmNERbEgenpzEkvDKfEYYPtK
 grKlqanYiNCRgYY/88Hg8lIn9fJJdBK1S7098kcc2GPZ4qY2uXnkj859I
 koXLik/Y2mkE7hx7H2uE5yvpK2xATPs3F6liQDCgps+yFVdtpgPtugmmm
 gzXzAaejqHjTXZS68bbTS5sSvPT7u8NZjOL0cU8eyGGJ+EbkyVNG79SRD
 fN1SFVbQkf4A9kirAY951TMfzvt4PXevsMp4FJ4wIerrz1obChIRnJb+P A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="287116632"
X-IronPort-AV: E=Sophos;i="5.92,282,1650956400"; d="scan'208";a="287116632"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 20:15:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,282,1650956400"; d="scan'208";a="655552121"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jul 2022 20:15:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 18 Jul 2022 20:15:10 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Jul 2022 20:15:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Jul 2022 20:15:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Jul 2022 20:15:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmXOHJnIAHGQAM1VtivUtMj/SlfTQ8cCXl/fLIHuzIbdx6yawipfvw2Z/g81AxqBA8wRnTLRuSqb1fJ8y3ofDZmWNC15/9YQqczsIUitGfEdjinjT6HH+rn6QbsNDhapzyCGQeJTo9pg+oEXQOwY6OzgMbZu2E3KCjK3sObK7BN0LQ3HwytmGdYgI/GnI7rC+7wCLgNQ9OD8HfyX/PQzAjWzLSZ76fZT5dTa06VDIqzqGrSiW3NEvr8wZwbv9VMo6Q8Gd9YfgGlhxOwLJO2LR5oVXomGZ8gYWSL/fCyvAfXT27A2Rj44dNiFfpWtYeMtD+AQD0g6zq+X85wCEvNlqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCtOGSOc+LWYSS/QQk8NGzogAzxIV1paHU0KkcYckH4=;
 b=jEMECf1LO2k3+wJ7/9j3RuiNCsUXOgnxERiKBExooSZBxBeNAk1C78N1PBNu1fJnv+HULkbqbgFhXOgsIE1an2N7SgYzrBBPz+DhtVsB/6ccI/vMuvP16Gto0LZOJqoEHmIZeGCSJ4iYUx9pQcsaEklLkywOu31/ihuU/iVeIfBEiZGRH6Gja49ln6JzR2VTgFejCA1kGThYIKXw8NqnHgvMp+f3pH9t+WcNQzktWbqOm31vQ9CrX/nmwvYgwfb7iHarfeiOEeKGZ4G1C9xPSxVE9b7juBkYfDTv9/7lBsEJ6f+fN4Xae3KdTY1kZRJLQqXzLQ//5EVKh290fl6p1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN6PR11MB1265.namprd11.prod.outlook.com (2603:10b6:404:48::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.12; Tue, 19 Jul 2022 03:15:07 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 03:15:07 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
Thread-Index: AQHYkcJv5q/lPkN+5E6eprkCmYrMba1z1j4wgABq5oCAENZhsA==
Date: Tue, 19 Jul 2022 03:15:07 +0000
Message-ID: <DM6PR11MB3177EFA94C68E9D3D23EAB79BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
 <c758d7c0-cb11-7135-2048-a197998ac2da@intel.com>
In-Reply-To: <c758d7c0-cb11-7135-2048-a197998ac2da@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c104a535-1637-4430-24bb-08da6934e1ce
x-ms-traffictypediagnostic: BN6PR11MB1265:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vI9jpbjq4lJNnKZ0xGe2/FrmuvsYCNUoApNNa2B1xSj3Ru5ZWxfft/Egk9tFPU05qcPIFzfJKzK3uQxDn8y0y79zdt8YC8nDeyJNSn1kfJaJ9lJ0nsWadgUf65BSjAVzwU7Ewp6MNRg4Hv0TjUm07BfV1e/X5lqjVT6yeUn10d7fo1sKLoeN+RApIqoPJAw2Hcm3ACTnnGmFn9OhlEaT+10zdsEO1Wnc8aQn5G6raF+ufyNbNu8M6Q0nXqNKlg+GAVNLi7nG5PItkUBRuMuL4awwkJA4v3vR/hKF2R6Jep5k8o+qXXY9aJ87dHyDOtTkI3DikBHp5HjZ4D8RymOjAjCZNHafCTq5IYcBYM01gix1XDITq7nfJGxy2dK721N26K1fjUVii9dusKrnjL/CuWb3JxAxXTQwIvCGe9C7rf0q8mVZmalq6qzaU7TAiZGTXM7OPgQKB6kFGTTE5beU3PQ/fQwcoBgqOrgzI68m0XgcJm5hjGyenxqu2phCALc7GXrKabRyohNnILCluFwA0qowR7H5qrzo71XbOpceqbYapmZs50IO+cKfLskgN58/ChLKT6pOInyL90/NQcW3s6+opczqE8jYEme8yN7TkFTPO5WE8wK6aaxO8zyuvf1OCgASPDqGpuZqKXgCiL0bWQEy8dRj/THuT/G2EXwxvTsmwMN0NJ5e5k4YnArx8+Ds879nqva7g4IZ+G12w0Pb5hvVfTbZt8z5THrb6p+TnMqWW2eTkPazUqA2aihZMAx+TUY8OQ4MZFwNH6XD8NFs0wfY5tMG6sW571P7xHvg86uP0JaOaPA2Ou6UkpC7WeaT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(366004)(396003)(346002)(39860400002)(66476007)(110136005)(478600001)(8936002)(66946007)(64756008)(71200400001)(66556008)(76116006)(86362001)(66446008)(8676002)(316002)(52536014)(38070700005)(82960400001)(6506007)(55236004)(53546011)(2906002)(7696005)(26005)(122000001)(41300700001)(9686003)(38100700002)(33656002)(55016003)(186003)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjNCMmQwWDdmcEF5QUhpZkpGakp0anJFQm9hMjFWTkNheXp6VlhWd2YrUktn?=
 =?utf-8?B?ZnZEQkhKcDRJTGlvcFNaZ2MwcXBKR1g4Q0pXbUhiYlQxM2Vrb3BJVUxBV0hl?=
 =?utf-8?B?NFhhTXFWTFNONUJGbGliQ280bHg0T3BBZnJ4eWVoVDNZRlBVNFdIVnRYUlRQ?=
 =?utf-8?B?aTEyS2FKQXhnemljbjFweDBSZm1SK1QyVjRiUU83MUZXRVozNEgwUUVQeFhz?=
 =?utf-8?B?VHgzc3FhdEJTVTFpcTZMb0FLUkRBdmMrMi95V0tMMVJkbFNJZW5WTnE2OEpZ?=
 =?utf-8?B?R0kxVFMxM2IzQWR5K2k2eDYzRmFDMm0ySUp0Q05DTDVUZzh1R24remFXSVZ3?=
 =?utf-8?B?UkFRcE53QTExMGgyNDFwM1ZTbmhqYUl3VVpvbkZYNjNzb1BTSzRyRkJzTXZp?=
 =?utf-8?B?bkxwTFZ4d0R2ZWFrVlRIMm82Y3Vidk1odDJBcUlZQ3I0S09hTVF5c0ZWL0Jj?=
 =?utf-8?B?Tm03K1RrK29yS0c3Y2VET1RSb25sSndYbjBLcUJHWEprb3QvNUxNa3lKdUE5?=
 =?utf-8?B?R3BJZzN0K2ZZRXp1ZEpYSU9admtzY1U4QU0rZEg2NWRkenNZeVlMb3o5M3pK?=
 =?utf-8?B?VDhZWEdKRmZHazBHK1VUWUltMllBZGdST0xrczM3NXZKaHA5U0dnNWZ6TmRz?=
 =?utf-8?B?SXB3YkI4WDFwODBLMDM2U0N3ZFhFWlI1NGZ3Z1duTlZ3RzNlSyttcU8wZTkv?=
 =?utf-8?B?eVNxY2FFMW42T0FlZWpwV3lUL2lVRWpaR1c4MGJGYlloQ2piQVMxbWNCSWEy?=
 =?utf-8?B?bXRqSmJjd0NRL0VGMnJpVXczQ0p1aXFseXdCbGVxUzdZQjFOcmFuN3FBemJq?=
 =?utf-8?B?MGVvMFlzanFHbmlxZFdEcmhxdnlEakRaelNBRzZNb0xXdUNHc2Q5b1grU1NQ?=
 =?utf-8?B?RXFpRU9LVjd6dzdLaWVjcWxNNmRzZCtnQzBpS1VKdUEwUGkwSU02WFUwanp2?=
 =?utf-8?B?YUlHZzU4djB0V0Y4bUh6dkZOMDFydUFCRWlndnA4aUJSdzdBOGlqbEFEMEYw?=
 =?utf-8?B?a3I0Q3hZVmRVMXIxNGgxRFdkKzZCZnI1RlJMM1JoeUJPbGtpbTVwSThFOUlX?=
 =?utf-8?B?cWNyYVhtWk10UWU1TS9VTkx3eWRKM1FLWk1RUjJwakJSVC9xK2cxNHlwSVJi?=
 =?utf-8?B?WDZ2N3FOTzYyQXM0MlhnZGxHemtnMlo4V3JhWDRDWWZybXd4YVRhdzhQYTRh?=
 =?utf-8?B?TWswTUlGTE92M0xqQUIxZUE4bFhBSHJNU25RRHFCenA4MVNOcTdiL3pUYXBu?=
 =?utf-8?B?cHhPTlp4d2FUVGozU0ROUXRZZlJ4WWVEYm5qdmFiMFhlN0J2VU9Hc0FRa0lw?=
 =?utf-8?B?UmMxUUJXc2pIbXRXVDFDenA1VlZRdHVmQW9acW9LUmRBTHdIb0t0bHRnUk94?=
 =?utf-8?B?eEtra1cyM1ZZbmt6d2VrUHlNQ2Y2cVZDM1MrUDVUSkEzNG5rWTEzOHdQeVhv?=
 =?utf-8?B?K2tDR29MempjbzVVNmptS0hFUHFTUk0vUGZVaHByLzVVakh4Z2lJYlRYdW5D?=
 =?utf-8?B?d1NYVFByTERoOEpvVmgrVEg0ckoxdzlQT243N2V1VmErNE1peDh3TmVUdk5w?=
 =?utf-8?B?L3M5Q3VHR1pnZVlndmg1OFBGOThzSXdDYXY1cGtBUHpnTGlSVVFhc25vN2w5?=
 =?utf-8?B?aHoyL0RqZ3BEUFV6bHNZMkVleVNXVmFWVXpEdHkyYk5ndE83cUFRSnFPV3I1?=
 =?utf-8?B?NEJRSEs2RjB2M0ZEV1UrVWVrUXZQM2p4OWJTazdncDdOYWhIcThYa29NWVFN?=
 =?utf-8?B?R0FzWnVBSHp3Ym9scUdmSEo0bWwwTFhKZ0daY2ZOcmpRaVQ0NjlkdVR2WFlP?=
 =?utf-8?B?MGd5MWpuMS9LdUx1akpkZlVITUY0WVhuOGhTRW1sM0ZRNHdYNGxwNXliZjkv?=
 =?utf-8?B?TnZ2L0p5YVQvWDlBenZCMlc0NEluckw1R2VtNk1rYnRQdEpZTWFiZDVHdFVy?=
 =?utf-8?B?anBXWVFFZkNhbCtxNkEyczllVnhGeGtka0ZIcUJUMHdVa3k1QXVNWkIzOGh1?=
 =?utf-8?B?U2lmeGRrR205akxlY3hBY0RyNGJEMFNxb0x1QXU2RHlyWEdhNTBnaS9rbGY3?=
 =?utf-8?B?ZzROcEFja28rdmRLNHl3SUFPaW9yZUJXekR2S3Q1NGdvREhDYldXK1FUemY4?=
 =?utf-8?Q?l/2XfnHuyXCf5SMqYDlvtwJ7y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c104a535-1637-4430-24bb-08da6934e1ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 03:15:07.3320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rns91JWgJnNqM/zL1aJY036DGmqRfyN9K3PWyGcB76vjKOPGZt54UUyXcwXFG26WGNn2OiJ7wNTkK4y9jxzlhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOYXV0aXlhbCwgQW5raXQgSyA8
YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVseSA4LCAyMDIy
IDM6MzYgUE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2hkbWk6IFBydW5lIG1vZGVzIHRoYXQgcmVxdWlyZQ0K
PiBIRE1JMi4xIEZSTA0KPiANCj4gSGkgQXJ1biwNCj4gDQo+IFRoYW5rcyBmb3IgdGhlIGNvbW1l
bnRzLg0KPiANCj4gUGxlYXNlIGZpbmQgbXkgcmVzcG9uc2UgaW5saW5lLg0KPiANCj4gT24gNy84
LzIwMjIgOTozMCBBTSwgTXVydGh5LCBBcnVuIFIgd3JvdGU6DQo+ID4NCj4gPj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNl
c0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+PiBPZiBBbmtpdCBOYXV0aXlh
bA0KPiA+PiBTZW50OiBUaHVyc2RheSwgSnVseSA3LCAyMDIyIDEwOjU3IEFNDQo+ID4+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSF0gZHJtL2k5MTUvaGRtaTogUHJ1bmUgbW9kZXMgdGhhdCByZXF1aXJlDQo+ID4+IEhE
TUkyLjEgRlJMDQo+ID4+DQo+ID4+IEhETUkyLjEgcmVxdWlyZXMgc29tZSBoaWdoZXIgcmVzb2x1
dGlvbiB2aWRlbyBtb2RlcyB0byBiZSBlbnVtZXJhdGVkDQo+ID4+IG9ubHkgaWYgSERNSTIuMSBG
aXhlZCBSYXRlIExpbmsgKEZSTCkgaXMgc3VwcG9ydGVkLg0KPiA+PiBDdXJyZW50IHBsYXRmb3Jt
cyBkbyBub3Qgc3VwcG9ydCBGUkwgdHJhbnNtaXNzaW9uIHNvIHBydW5lIG1vZGVzIHRoYXQNCj4g
Pj4gcmVxdWlyZSBIRE1JMi4xIEZSTC4NCj4gPj4NCj4gPiBJZiB0aGUgaGFyZHdhcmUgZG9lc24n
dCBzdXBwb3J0IEZSTCB0aGVuIGl0IGJhc2ljYWxseSBibG9ja3MgSERNSTIuMQ0KPiBmZWF0dXJl
Lg0KPiA+IFRoZW4gaXQgd29udCBiZSBwb3NzaWJsZSB0byB1c2UgYW55IHJlc29sdXRpb24gYWJv
dmUgNGs2MCBpcyBpdD8NCj4gDQo+IA0KPiBZZXMgcmlnaHQuIEFzIEkgdW5kZXJzdGFuZCwgdGhl
IEhETUkyLjFhIHN1cGVyc2VkZXMgSERNSTIuMGIsIGFuZCBzbyB0aGUNCj4gDQo+IHBsYXRmb3Jt
c8KgIHN1cHBvcnRpbmcgSERNSTIuMCBtdXN0IG5vdyBwYXNzIHRoZSBIRE1JMi4xIENUUy4NCj4g
VGhlIEhETUkyLjFhIHNwZWMgaW50cm9kdWNlcyBNYXJrZXRpbmcgRmVhdHVyZSBuYW1lcyBmb3Ig
NEsxMDAsIDRLMTIwLA0KPiA4a0A1MCwgOGtANjAgd2l0aCBzdWZmaXggQSwgYW5kIEIuDQo+IFN1
ZmZpeCBBIG1lYW5pbmcgbW9kZSBzdXBwb3J0ZWQgd2l0aG91dCBjb21wcmVzc2lvbiwgYW5kIEIg
bWVhbmluZywNCj4gbW9kZSBzdXBwb3J0ZWQgd2l0aCBjb21wcmVzc2lvbi4NCj4gDQo+IFRoZXJl
IGFyZSBDVFMgdGVzdHMgdGhhdCBleHBlY3QgdGhlc2UgbW9kZXMgbm90IHRvIGJlIGVudW1lcmF0
ZWQsIGlmIHRoZQ0KPiBzb3VyY2UgZG9lcyBzdXBwb3J0IHRoZSBnaXZlbiByZXF1aXJlbWVudHMu
DQo+IA0KPiANClRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uDQoNCj4gPg0KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+
ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
IHwgMjENCj4gKysrKysrKysrKysrKysrKysrKysrDQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDIx
IGluc2VydGlvbnMoKykNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMNCj4gPj4gaW5kZXggZWJkOTFhYTY5ZGQyLi45M2MwMGI2MTc5NWYg
MTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
DQo+ID4+IEBAIC0xOTc0LDYgKzE5NzQsMjAgQEAgaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlk
KHN0cnVjdA0KPiA+PiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIGludCBjbG9jaywNCj4gPj4g
ICAJcmV0dXJuIHN0YXR1czsNCj4gPj4gICB9DQo+ID4+DQo+ID4+ICsvKg0KPiA+PiArICogSERN
STIuMSByZXF1aXJlcyBoaWdoZXIgcmVzb2x1dGlvbiBtb2RlcyBsaWtlIDhrNjAsIDRLMTIwIHRv
IGJlDQo+ID4+ICsgKiBlbnVtZXJhdGVkIG9ubHkgaWYgRlJMIGlzIHN1cHBvcnRlZC4gUGxhdGZv
cm1zIG5vdCBzdXBwb3J0aW5nIEZSTA0KPiA+PiArICogbXVzdCBwcnVuZSB0aGVzZSBtb2Rlcy4N
Cj4gPj4gKyAqLw0KPiA+PiArc3RhdGljIGJvb2wNCj4gPj4gK2hkbWkyMV9mcmxfcXVpcmsoaW50
IGRvdGNsb2NrLCBib29sIGZybF9zdXBwb3J0ZWQpIHsNCj4gPj4gKwlpZiAoZG90Y2xvY2sgPj0g
NjAwMDAwICYmICFmcmxfc3VwcG9ydGVkKQ0KPiA+PiArCQlyZXR1cm4gdHJ1ZTsNCj4gPj4gKw0K
PiA+PiArCXJldHVybiBmYWxzZTsNCj4gPj4gK30NCj4gPj4gKw0KPiA+PiAgIHN0YXRpYyBlbnVt
IGRybV9tb2RlX3N0YXR1cw0KPiA+PiAgIGludGVsX2hkbWlfbW9kZV92YWxpZChzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+PiAgIAkJICAgICAgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKm1vZGUpIEBAIC0yMDAxLDYgKzIwMTUsMTMNCj4gQEANCj4gPj4gaW50ZWxfaGRtaV9t
b2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ID4+ICAgCQljbG9j
ayAqPSAyOw0KPiA+PiAgIAl9DQo+ID4+DQo+ID4+ICsJLyoNCj4gPj4gKwkgKiBDdXJyZW50IFBs
YXRmb3JtcyBkbyBub3Qgc3VwcG9ydCBIRE1JMi4xIEZSTCBtb2RlIG9mDQo+ID4+IHRyYW5zbWlz
c2lvbiwNCj4gPj4gKwkgKiBzbyBwcnVuZSB0aGUgbW9kZXMgdGhhdCByZXF1aXJlIEZSTC4NCj4g
Pj4gKwkgKi8NCj4gPj4gKwlpZiAoaGRtaTIxX2ZybF9xdWlyayhjbG9jaywgZmFsc2UpKQ0KPiA+
PiArCQlyZXR1cm4gTU9ERV9CQUQ7DQo+ID4+ICsNCj4gPiBJbnN0ZWFkIG9mIHNldHRpbmcgdGhp
cyBmcmxfc3VwcG9ydGVkIGFzIGZhbHNlLCBjYW4gd2UgZ2V0IHRoaXMgaW5mbw0KPiA+IGZyb20g
aGFyZHdhcmUsIHNvIHRoYXQgd2hlbiBvdXIgaGFyZHdhcmUgc3VwcG9ydHMgaXQgbGF0ZXIgaXQg
d291bGQgYmUNCj4gZWFzeSB0byBlbmFibGUgdGhpcy4NCj4gDQo+IFdlIGNhbiBoYXZlIHNvbWV0
aGluZyBsaWtlOg0KPiANCj4gc3JjX3N1cHBvcnRzX2ZybCgpDQo+IA0KPiB7DQo+IA0KPiAvKiBG
Ukwgbm90IHN1cHBvcnRlZCBpbg0KPiANCj4gcmV0dXJuIGZhbHNlOw0KPiANCj4gfQ0KPiANClll
cyBzb21ldGhpbmcgbGlrZSB0aGlzIGxvb2tzIGdvb2QuIEl0IHdvdWxkIGJlIGEgZ29vZCBkZXNp
Z24gdG8ganVkZ2UgdGhpcyBiYXNlZCBvbiB0aGUNCkRpc3BsYXkgdmVyc2lvbi4NCg0KVGhhbmtz
IGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
