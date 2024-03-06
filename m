Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A7C873633
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C694710E275;
	Wed,  6 Mar 2024 12:23:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtBZbHkK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91EA710E275
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 12:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727831; x=1741263831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrng96XmhtMuuz+BcnBGu+v8rJSMy+hnKDNAz2ty3mI=;
 b=mtBZbHkKL2sq/d67woWklp3b4HJ2vgqMTjrtMsnrsF4rjbzAhx4BTkJZ
 IOQIH1ml/nVuc+4k9cQGwUu5kdxBVtEF1xaSH4Rsc74LY1wFXtSglGryR
 rhchoxdPt2GHvYtQdBFRhWQSPqsUw/olQsMLFiI1BTIsJj2smEHDvj4ns
 q9ySMVUqE7iVciGxfWQlowoPKPt6NWVoxOMy+O64skuadmmGyf0tG7jAA
 cKkIVPyv4rJnut0dY0AoNpO281/dOoGvBMRcgIvc8LjJA4XBN3nXNnQQ6
 6l48De8Y548DNBSBAEwg2f61XiCo3+GjPPX5HqSOTkzjyZgAFbvIUT3g1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="15761771"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="15761771"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:23:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14297112"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 04:23:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:23:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:23:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 04:23:48 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 04:23:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H/K6jU4KJpkWKKiP5os/+0diVaNl0ehdd5rlVw5NUIMdgc+i/wjcw81BUCAq36ZdX8PvUWV1Lk4ASJzoomsGRb1EZ+sm6yDeRTPlS1XhswslZWxMlwJ94BT0tp/uTkk97Ph7XzodSOEV2YvhhOCI3M9TmQfG0ezz2HKNP5wnuTMjzdvNPRXMBnFV/suNBZuMH3eYCEery5b8T2IVKjFx84R/J9ytND9Jyzrle1PmdOS8ui2GnwfCeNURqDE7G9dFdpHUihQx3lsbPSSc30FmW2F/gcH05ooBklEGGaQ75qmzVn+0OuQj8SCdX93AmAcvGrfI6S1AgEi2+cXU2VMbDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jrng96XmhtMuuz+BcnBGu+v8rJSMy+hnKDNAz2ty3mI=;
 b=CjNTXiAXUY2f0Wt44X1W85ccjAKWiy2WepJREbdVaxLaBrMK9UIPBvsgD9RtaZphyXeNVBwwcTLKHo1sckIWvj9FeuuS1vL5UjTSgeu/Qk6n5oYaQL1aoAWOu47xs3CZjagWRSkSOTYi7I4wT7Ba0aWLi8yM3nKiiZx8dybzAZl1quLXgH0TUy6/9pCSHu3eduWiKDiVk5XkKzcNWctN7RAonKpk7j0PvNO+mTEViiGVXbjrmZ8PS+Lk9EshTK6FEzABXx9or/IQmtyK8EKRi0LmVPTtUq1KFPHubJ/piIOwwophawviC7fhZInm+anzA0+tuaklWSWtFfHxxXt5FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Wed, 6 Mar
 2024 12:23:46 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 12:23:46 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 1/3] drm/i915/vrr: Generate VRR "safe window" for DSB
Thread-Topic: [PATCH 1/3] drm/i915/vrr: Generate VRR "safe window" for DSB
Thread-Index: AQHab3vyvns3uinDk0SnRkyTSLzxebEqowNg
Date: Wed, 6 Mar 2024 12:23:46 +0000
Message-ID: <PH7PR11MB598110BCA2DBC3694C4CE094F9212@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
 <20240306040806.21697-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240306040806.21697-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB5036:EE_
x-ms-office365-filtering-correlation-id: 55aa02d5-ee90-4e65-ddae-08dc3dd84568
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /aGetvxKGr60d3gSjGtBhaz1Hi1Lbmn0cZZ33G3/IRjyWP3yeuQQSzlUveF8geWKrhhumErdCk3KZZGz4kQ1CMUOVrtXLtZXIPPHlw4xzXBk0Q6YxGSWpp7k8IehmT8nYlIi6e9LIBHETKlAQShRk7ryHR864gydfslpNJ12TlOrIAmC87Xk56Qor3YlULgHri5jvDN35x9p4rp5VoBZGJJvLB82jJql7KKQhSNMuB9jMKYUhtRF5RgT7/jx3gYFj6k+vQY3Ei8lrErtnOg+aGlYbBuNg5P/jsKFZ2LBJupk70OMg0fULl29AklbexGLLQByYU3saDZbGclTNIhPkTTnmFWa2digrJEk4Oy+ujI5jP0Itg2Vr39Kvecr2CgpAyumtdhTwVKTQ9zYnkInhLzehwolwYnHbXaEViNp6N7N0SRIDt3C7Jm3To/JEkLagmkLX4IQKwG650UVG4B6EEgHZtzc1lco1xfwo06T/VchZvhH7AbvP3T3TsD5U/zh7sa/0xhB5g/lsYyyF2jGDwlGfuYnS1BwXRph4ya7n16xBXK7nSIIqTuEZ2mzhW6gosFv/OM416XFu7slPKddLAqPAqHPtew21aMg+pd9DSZw/XjQg1F6sLPFy5Nh/hCYICG51GxUU1IG0XryCbp2Z6mKuZ2rvlAqK6fSBYCd8Qw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkRReExKWm03SW02YlpSdTlMMjd5OTYrOEhOeHphaDBYRndvQ2l6RWJzVk13?=
 =?utf-8?B?T2hUWG1yT3lMQjVCN1prbXlCRSt0RzdKZHZLZjFFUHFnWmoybVVaakk5a0hS?=
 =?utf-8?B?OExHWS9rdis4Z0M5VDAxMWZOOWF3TmNNOFY3TGhrRlhoQ3V4MWdlU2FndHY2?=
 =?utf-8?B?YndSdHZ0djRHTXh2Vjl0Skc4UlAycnVjUDNvUkpiVXNBUmozOWNka2Jrdnkz?=
 =?utf-8?B?dTlzR0VTRlBPeEhDNUFYWFEwNTRFSEZINys4Vm9vOUxmUEVCanl0d0tJU2dp?=
 =?utf-8?B?RDFHOXN6TUtSUnQxYndJVGpEMm00WGljYWk3MnNiVjBCRzRjMWp6SFJyR0tz?=
 =?utf-8?B?cHZ1TXJYTkFiUkJkYTdQWHNGQ2FkUE4wclVkQ1kyckhwSnVuWjRLVk5tUDEw?=
 =?utf-8?B?SFZlenZIRWQ3ZStPVTk5c3VneVJLNzcwM2ZGb3hEdEUzc3pwR1o3bTlhd1Mr?=
 =?utf-8?B?TVhHYUdiWW1PeGQ2cXNZNUQ5eExwTTVUc21LWFU2aHl3OFZ2YU1JaXFlZ3Fv?=
 =?utf-8?B?UVdpTHFXc2p2OTBGVXVMS0c2S1F5NU5ycms5TlhYWGpla2lnbHRTS3A1VkRS?=
 =?utf-8?B?blZscXY1RmxnWE1rbHRkQXFOQW4vY0dBSWEyRUlFRXBGMmpuaWUrWDlLMmdL?=
 =?utf-8?B?TkVRVXovQytpVVVscDhCbTU0NWVBb1lCeTlJMWUvZWpZYzF6dXpxeGdTaHhw?=
 =?utf-8?B?NEN6UWsrNWQ1NW5Walo1QkxTRDlaRFJIOVNkeG8yWWlubU9yd0tJVkFhS3F3?=
 =?utf-8?B?bzFhMnNIZGhxY0xUMkZ6Ry9ES1Q5Q2lRdDhCRXBZWkx0dmI1ZGViYkxCMVlu?=
 =?utf-8?B?YU9oWEVPTHYxUzlyMXAyNTZCQmRuQkYrV0ZLY3U1OXNHYWpCSmVYZC9mZ0N1?=
 =?utf-8?B?Znd0Z3pZZ3kzc3BvYXlXWDVqbjV6THJIZUVYZHczVisrVklWTExLQmFJR1BT?=
 =?utf-8?B?amZHaThnZlpZQzNMQ05LVmc2ZWdwMnNETllkQk5hVnhwNHZUTVZJQzgxRlp2?=
 =?utf-8?B?bncwcCtmY20xbFZjMFBBQ3hqbXlNemx1eFFTNmdyNHdmaU1YS2VTaXkrMXg3?=
 =?utf-8?B?dUZzLzNCMk4rOFVvWGV4cTRHMVNlcFU3ODBZTWVaT1VJSjJPWUNpT3RUTkZC?=
 =?utf-8?B?ald4UFJ6MWV4YzhnVklyZUJmbjVCNXQ0UVRTUG42M0ljUGF0SXNqZVU5L1ZT?=
 =?utf-8?B?S21mVVh3eG16K2oyMGxWaC9kUFMyQk5JNmlrbzlCaGpNQy9LOU9HcTZnTFUw?=
 =?utf-8?B?bHVibERTT0N1TzRoUWFsZ3RIMHlWM3VLZEhGaGsvQTZPWFFSZTRlUXdNU0RX?=
 =?utf-8?B?TXRlMW1pN2QrRlFDRGdDQkpucFNJRndackxvdU9sUE5wSUJCOFREYzRCcS9E?=
 =?utf-8?B?NU1mOUR1ZkVDZUxTTUx0MDdSLzJmYU1IWTl4NXNSaEIyS1JvUk13RjJSSHZ3?=
 =?utf-8?B?M0RKckxJQzVjNklwQWpNeDdBOURQYjJWOE05eU9wUVh0YXJrUnFyem5TQ1hZ?=
 =?utf-8?B?S28rOWpoTjR5cmdGdDA4aDZhWnFlRFlzQ3k1RThQclVzdHFBRkJ1eDJiTzJH?=
 =?utf-8?B?NEwwZTBhYWdHaVIramIwV0x1NUhkcHRhcXhoNnJQbGU5endoN091ckpkbnh1?=
 =?utf-8?B?R2hlVTFkUGhSeU5iVHRrNnlmMGRuQXhOYzNaN0ZHL3o0ckwrVWhrYmdEYys5?=
 =?utf-8?B?NG9rcGk2QTJPakJsSFBENkNMMnVBdlhEcThCZnJtT05KbFVBSThTajYxeHls?=
 =?utf-8?B?aWNKTHJBNnNTTVFUcDNxQ3lVcGhGTWRENjJLaHlMZzcwYmZVV3dwZmxmWTRY?=
 =?utf-8?B?WGp2bTVaOGxWczRJSkNCbkZMNWlKUnNxV2swU0hUQklGTnlPYmFObnI0czVX?=
 =?utf-8?B?WHlHNjh6K1NRVzZnSjFoamgzRjRvbzM2bHoyTytHcis2dUlETFUvZExpRERV?=
 =?utf-8?B?WmhzZ1ZjMzV2VTJCUno3cXA5RU5Uc2xWV2E2RVYraXl3MmlWdkZGVUhYMjh2?=
 =?utf-8?B?OWFENXdzQTBBYndCS2JpaWozR09ua1ZDTWFldkRpUkhyS1JBQ0hIKzNEL0VC?=
 =?utf-8?B?djd3dkhwUFdJRTZSNVpqY1pmQkJWY29SV3NlOGxpbGt6K0pIbml0elJYN2Vl?=
 =?utf-8?Q?FP7aUpJ5MC3bjfW7yZQeVDSWh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55aa02d5-ee90-4e65-ddae-08dc3dd84568
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 12:23:46.6014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SedeRE2Xp4DYw2qB6zi14fNEasdsSlnoHclqWt8KTCQnW1QRkuivmQ94oAKWcAbMTSOcLOxVzk3hBhgDtYBMLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwgMjAyNCA5OjM4IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAxLzNdIGRybS9pOTE1L3ZycjogR2VuZXJhdGUgVlJS
ICJzYWZlIHdpbmRvdyIgZm9yIERTQg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IExvb2tzIGxpa2UgVFJBTlNfQ0hJQ0tF
TiBiaXQgMzEgbWVhbnMgc29tZXRoaW5nIHRvdGFsbHkgZGlmZmVyZW50DQo+IGRlcGVuZGluZyBv
biB0aGUgcGxhdGZvcm06DQo+IFRHTDogZ2VuZXJhdGUgVlJSICJzYWZlIHdpbmRvdyIgZm9yIERT
Qg0KPiBBREwvREcyOiBtYWtlIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgZWZmZWN0aXZlIHdp
dGggVlJSDQo+IA0KPiBTbyBmYXIgd2UndmUgb25seSBzZXQgdGhpcyBvbiBBREwvREcyLCBidXQg
d2hlbiB1c2luZyBEU0IrVlJSIHdlIGFsc28NCj4gbmVlZCB0byBzZXQgaXQgb24gVEdMLg0KPiAN
Cj4gQW5kIGEgcXVpY2sgdGVzdCBvbiBNVEwgc2F5cyBpdCBkb2Vzbid0IG5lZWQgdGhpcyBiaXQg
Zm9yIGVpdGhlciBvZiB0aG9zZQ0KPiBwdXJwb3NlcywgZXZlbiB0aG91Z2ggaXQncyBzdGlsbCBk
b2N1bWVudGVkIGFzIHZhbGlkIGluIGJzcGVjLg0KPiANCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcNCj4gRml4ZXM6IDM0ZDgzMTFmNGExYyAoImRybS9pOTE1L2RzYjogUmUtaW5zdGF0ZSBE
U0IgZm9yIExVVCB1cGRhdGVzIikNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzk5MjcNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2Vk
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgfCA3ICsrKystLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAyICstDQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBpbmRleCA1ZDkwNWY5MzJj
YjQuLmViNWJkMDc0MzkwMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5jDQo+IEBAIC0xODcsMTAgKzE4NywxMSBAQCB2b2lkIGludGVsX3Zycl9zZXRfdHJh
bnNjb2Rlcl90aW1pbmdzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQ0KPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNw
dV90cmFuc2NvZGVyOw0KPiANCj4gIAkvKg0KPiAtCSAqIFRSQU5TX1NFVF9DT05URVhUX0xBVEVO
Q1kgd2l0aCBWUlIgZW5hYmxlZA0KPiAtCSAqIHJlcXVpcmVzIHRoaXMgY2hpY2tlbiBiaXQgb24g
QURML0RHMi4NCj4gKwkgKiBUaGlzIGJpdCBzZWVtcyB0byBoYXZlIHR3byBtZWFuaW5ncyBkZXBl
bmRpbmcgb24gdGhlIHBsYXRmb3JtOg0KPiArCSAqIFRHTDogZ2VuZXJhdGUgVlJSICJzYWZlIHdp
bmRvdyIgZm9yIERTQiB2Ymxhbmsgd2FpdHMNCj4gKwkgKiBBREwvREcyOiBtYWtlIFRSQU5TX1NF
VF9DT05URVhUX0xBVEVOQ1kgZWZmZWN0aXZlIHdpdGggVlJSDQo+ICAJICovDQo+IC0JaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMykNCj4gKwlpZiAoSVNfRElTUExBWV9WRVIoZGV2X3By
aXYsIDEyLCAxMykpDQo+ICAJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9UUkFOUyhj
cHVfdHJhbnNjb2RlciksDQo+ICAJCQkgICAgIDAsIFBJUEVfVkJMQU5LX1dJVEhfREVMQVkpOw0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IGUwMDU1N2UxYTU3Zi4uM2IyZTQ5
Y2UyOWJhDQo+IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTQ1OTksNyAr
NDU5OSw3IEBADQo+ICAjZGVmaW5lIE1UTF9DSElDS0VOX1RSQU5TKHRyYW5zKQlfTU1JT19UUkFO
UygodHJhbnMpLCBcDQo+ICAJCQkJCQkgICAgX01UTF9DSElDS0VOX1RSQU5TX0EsDQo+IFwNCj4g
IAkJCQkJCSAgICBfTVRMX0NISUNLRU5fVFJBTlNfQikNCj4gLSNkZWZpbmUgICBQSVBFX1ZCTEFO
S19XSVRIX0RFTEFZCVJFR19CSVQoMzEpIC8qIEFETC9ERzIgKi8NCj4gKyNkZWZpbmUgICBQSVBF
X1ZCTEFOS19XSVRIX0RFTEFZCVJFR19CSVQoMzEpIC8qIHRnbCsgKi8NCj4gICNkZWZpbmUgICBT
S0xfVU5NQVNLX1ZCTF9UT19QSVBFX0lOX1NSRAlSRUdfQklUKDMwKSAvKiBza2wrICovDQo+ICAj
ZGVmaW5lICAgSFNXX0ZSQU1FX1NUQVJUX0RFTEFZX01BU0sJUkVHX0dFTk1BU0soMjgsIDI3KQ0K
PiAgI2RlZmluZSAgIEhTV19GUkFNRV9TVEFSVF9ERUxBWSh4KQ0KPiAJUkVHX0ZJRUxEX1BSRVAo
SFNXX0ZSQU1FX1NUQVJUX0RFTEFZX01BU0ssIHgpDQo+IC0tDQo+IDIuNDMuMA0KDQo=
