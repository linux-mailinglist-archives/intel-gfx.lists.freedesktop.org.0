Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4967DFFDD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 09:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8F310E4F7;
	Fri,  3 Nov 2023 08:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D53D10E4F4;
 Fri,  3 Nov 2023 08:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699001947; x=1730537947;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vOfevo6jUZs1InCWl8fscRgCXso6d981K8h/AZYqqFU=;
 b=gYoyNQ5yOjbSFMMKsCuV0uNVxVpjRkrSLks98oxmE+ZA9u6xBo6EuJeA
 fcFTZg46YKEJedn3Bz7ZkMuUDuzUaOlQERpB4zQzOYd6MzSbg4+F/aKen
 fedeXM93QRG/tPi8spqrdQWqgsgDZ/JCcQc5a1Q5mob/Ouxk8nRTCCyqF
 SAqj3ifRFYgwuxDmh8Zpr9xWs45VPcIGqd41P7U2wHybPksfiJ3HSfLF0
 XoTlmUJ13dhs9wWEyaqKfz4Oku4963bIIaJtYoavx1luFX1/Izj9uwQiz
 1O4X5ubq3qZHTXpqBLo4Jp/CJHocOWzyaJrheZ8dDJ3DMFMEZy+/2lrsO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="391776679"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="391776679"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 01:59:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="796560711"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796560711"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 01:59:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 01:59:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 01:59:02 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 01:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zh0s0Ey+beT2qTOJiRV/Cz0vlhltzG9n/+C3NUIMk4h4iNyikHB5/WYyIDVWHIT8W6RJ0A+YnBzF/NELuyMT7/RMUHLTJR2VTwXOVzzJrmpiI++3/DuDVv2Z92zLzyvMMSNRfYapUN5Kd6+5ssIlmWC9bJY2KGuF3G1YiLbSTNwhsGMWPR5uOmWaVqHfvRWKgGzdO7pg8Kq8+8yHT5xBE0rjbv1PjxCRQfzhJ1HdDmD8SCsxkW4MD6NS/sDp5qcg36S5HScIVgBUmCHQWmzKZW4zQJ1pGqjLBtagt6T5sYHJqJDbWtyln3g83J9oBuAiffkeoPpGdPumucMZApD3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vOfevo6jUZs1InCWl8fscRgCXso6d981K8h/AZYqqFU=;
 b=UoXGo+EioBEGHvEuWSHgGMKCbKlbVNTu11QHQUcC9pmSsLYibrIQmfcpzwq8Z02EFa1wOb44cDCuDv9LDTI0rsAa9i81M6uFrV4YJSouHIvkRlgpugwdJTmfeRCqYCEelbyf8/87sP9qfIHjNg7ldafylBaTO8Mqk4DZ+YEiisX3qAl9Rm2I3rKNhN/k502M+hmejGHnCF50IoZnlhx2Z/NEFCQkVQ3UovIud0eXw2YlkNgw7ysYgZrOdTnmRRTQC9npitzubfPs5vJRPIhpAqfVcPG/vmp0PMdQEe14e0enYI4bxDagIRx5JnRiINia/H90RjkdhSgG4V+s+CwDyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB5578.namprd11.prod.outlook.com (2603:10b6:510:e7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 08:58:58 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::5c7:6814:f748:f22b]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::5c7:6814:f748:f22b%6]) with mapi id 15.20.6933.019; Fri, 3 Nov 2023
 08:58:57 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaByyY657pE9j2g0eFdsqwqmFEkbBaTK8AgAAJWLaADagzgIAAW1+A
Date: Fri, 3 Nov 2023 08:58:56 +0000
Message-ID: <a227240f5e9ccff944cf6bf1a920c034d0b7b099.camel@intel.com>
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
 <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
 <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
 <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
 <1dedcd11-ac0c-465e-bbe4-079767f5813e@linux.intel.com>
 <d31820ec905a17c38e513653024368d702e8ccbf.camel@intel.com>
In-Reply-To: <d31820ec905a17c38e513653024368d702e8ccbf.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB5578:EE_
x-ms-office365-filtering-correlation-id: f62af4e1-baa8-421b-e99c-08dbdc4b1cdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L+JL+JA6aDSV0O8YrTSncpcpTB3n7e+dG7wF3GCxqyWUcTCqk1w7EwyVMy2HEAyDli9m1NnOuHKoGpRu+CeLA3EQCBgYIRRjSA3wvo5XkManVniGjnmrn5HtemP8BS4vjMSIPA6XTp1BJUxywUczmM8Lk/waCqutsGUSYzoSFDNNIqCT/CCnPa/0m1cOaiwFRRYIRTzARmg0U4ZfLGjGQQ9y0/Oq+zU8POsEtf+y1FmmsSxaVRDMYiy1bqaBEfR2sSjFI7nZIRqYPSl+zErjuJZZrr/PMam9BRTfozZiS7OjwdUMZ65oclBDJdjTjYJeolFIidCXsbEEbAxqoSqswG0G8BWU2jqYFwVVxZqJBBHIfQhfhLTMPN8bHfnOrYPQqlkMorF3gPXA7bVf+dgEuWpIrJEdiK7Xe8l0v9SXxfYyPfwXoF9fdCDg0Opxs/5qLRFIO46q/8qfZZEPA8AQXuz/K8LdcBVJa8lMSABdKKZMH5+Ck635Wu0MMxvz1Euws9jAlMYd3qXP7+t3LLpElZqhXEfBRKZWiR2SVnrqsMfHNnl6FwxVmQDWg4IcYVmkO5w+4jJYxK1B8ujNYvlUcChjlcF4H2OjgaP5I9IrB3K8BNg129H2+bZwjYMoftmn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(366004)(346002)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(36756003)(2616005)(6512007)(26005)(71200400001)(478600001)(6506007)(8936002)(2906002)(83380400001)(5660300002)(110136005)(41300700001)(91956017)(76116006)(66946007)(66556008)(66446008)(4326008)(6486002)(316002)(8676002)(66476007)(64756008)(38070700009)(38100700002)(82960400001)(122000001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzgxbjlnVXg4RkdTVDcrcW00Q0MwN2lJZWdQbmZjbHkwSDh0WXg2THc2ZEZT?=
 =?utf-8?B?REVRN1pvRlVZT3pRWHdBOGdjTEVkNmNwN3lnL0VWaFdBSUtuVVdnL0NxYXgr?=
 =?utf-8?B?Y0xqS2pzaW85eVdwRUxoUDYra0RXQ3grT08wM3p5TDJTdkptZG9UN2ZOQk56?=
 =?utf-8?B?Z0U1MFlNKy9DakZNa0lJaGJ1bUhaYVUyY3hEcW9VZTF4U2hKcnBlK1ZGY3VM?=
 =?utf-8?B?b3JrOGJBY25pSS8rVU93bVZWcXJGZGFWVkd3YUJ5NXFMSGFZTjNOTE02YmRW?=
 =?utf-8?B?REh3VlNiM3hFSVRiSHRDRUkxSHNNWndSOXEvQ1c1TURrVjN4L0o0TDUwV3Iz?=
 =?utf-8?B?Y1BaK1VOanJpZTNCSmpGNitlWXBUSytyR1FlbFNrQkxqRzBrZG9QV2ZobVNX?=
 =?utf-8?B?V25PY0tXL0NRVjJ5dkRKWDM5NVgxdmRxWUxCNXc4QWVrUWd3RURpRUhGYUVW?=
 =?utf-8?B?TWpIc1RCbXdnZHdnYUNWS2poUk9BT3lNd1ZFVzRtVkwxaFI5NEN6OXQwN3Fh?=
 =?utf-8?B?ZG40eE1BZFlGZVFhQ0F5V1Nmai9od1RpZEdhQ0MvdW1jd0padWN3STFQeHA3?=
 =?utf-8?B?WGZGRzg2dUF5TmVDc282SE9UdERySGJyREtKazlHd2o5RjZFMHhsSDBYbW15?=
 =?utf-8?B?eStsN3d6QXNXRTNRNjdnTG5PdE0rQm4rbmtWY0dQWHpubGo5OFV3QURIUktj?=
 =?utf-8?B?VDVWMVNaZlA4QnVjdmhtWEYzRUx2SjlzVEQ3Z2tpaS9MWUhvVmh5NVNPRlJ2?=
 =?utf-8?B?NFkrdWZyNElFQnFYV2VZZTdlRXVlRFdDQ2ZxVWtVRGxLUitVcUR6TzdpcUNN?=
 =?utf-8?B?MjErY2pLZWNadGZ0ZnpaU1hIZHNqVWZhbHdJWUVmSnBLakgzR0ZZREZXbmNl?=
 =?utf-8?B?bFA0aWZYaXdCNTJranZDOTZXcnU1alFBYWtCOXVJeFlEaDVVU3JaZU9TQnN0?=
 =?utf-8?B?STJCOXZRZUJjZGNlcDFzZEFqNkpER3VaRmNiQUlhV3p3YnA1SE5vYjNJeVlZ?=
 =?utf-8?B?OFdrMlFWRmkwaTcva0dMUlJ1ZGdHZ09aZ1N2ZTBYUmdZaFZyaVVocDNIanRv?=
 =?utf-8?B?dHp2bGFNQm9JaTh6aDBzdm9mY2trckgzM2VaNHBidElKQmFHSm9CYy9VR1BX?=
 =?utf-8?B?cUxWeXF6eEgzSWdJbUlWTEM4TFg5QmRsQVViK0Z0RENvYktwRjFQdDRZdTlE?=
 =?utf-8?B?aGdzNWhkcGJ0ZE83R2dUNmJ4NEpBOHpKak96Y3VwMmJLR2hyUGVralMvbm9O?=
 =?utf-8?B?L3NucFEwWnQrNFc2Y3p2bmZsaG9UTnd5TFRVOVk3aWh1WWJaMlo5ZUdmN3M5?=
 =?utf-8?B?V0kzTmJxeGE1Q25aUUgvTEVFZWF3S2R3UXY2Qk9sOVh5QkZnV2lYUE1OL1JB?=
 =?utf-8?B?Mm5WUk1FNnJ3U3UyeGt2WmpGUlBtcWNlOFpnejlnY0JnUFM4QXdFckd3TFZi?=
 =?utf-8?B?WlJ3ZDNnNEJQRXJuYUNTdVlYalpVVzNxdnNOR0lSWkFNa3Frbmo5R256Snlv?=
 =?utf-8?B?OXptdHY3cGVTSVI3KzQ0QkpqUTd0WnNoa2VrRTlXT2l3WmZydytydkZNbU9L?=
 =?utf-8?B?MCtIWWdMSnNsS05Fd2JkdjRBY1hBS29HQm1XRWJkYzU5MGd5b3pBb0JLOGpB?=
 =?utf-8?B?WHBaRkxPdEpkT3FXVXhEMzZXT2EyOXQ4UW9KOUdKNVJUaGM4YjVGMWgxYkJB?=
 =?utf-8?B?eVJpWmtTcTN4WUJ1ZTdlT0Z6L29oaWtOSDR1ZDZKdW1SMVBtUkxGSDJ4R01O?=
 =?utf-8?B?elllYWRSUjVZaVRaT3l5V3ZrUXpjUlB3TnQwU0V1VnZDWHJWTjdqNC85Vjg0?=
 =?utf-8?B?bmVJREg0SzE3Q3RLVXBEK24rSncwOTBTUk1mQXBTSXZhM0pDc1NON2J0bXZw?=
 =?utf-8?B?UjE0NmtScmdoZVRDaVdtMXVFVGdXL3dzUkVsSmRqUE5SbEZMQndNRWx0V1BZ?=
 =?utf-8?B?cWw0ZURhOFR1Q1RReTJpbkpxNUgxQUFCSTJEU1NaN3RVKzNabXhpVnY4dFdG?=
 =?utf-8?B?U1FvbDA0djNPdUlJZDBCckZLMm9BeUY1ejhDN0NLTHZXOWliWGxaYlpxM1lK?=
 =?utf-8?B?WlhpWDNpc0d5cDJOcDdFUjZsWW56UFNselVJdHZmT0JnOGljTllSczZWeVpL?=
 =?utf-8?B?Kzd6OXN6ci93TkRBenAxVENoTnpJTmYzQXk4a2N3ZHNDSVRrT2VMbzVEbzYv?=
 =?utf-8?B?aXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D1AD454551FBDF40A2B3C69FF6F84CF8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f62af4e1-baa8-421b-e99c-08dbdc4b1cdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 08:58:56.8150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5BHsmuyl3duLRMUbEWLgruc0gR4latLI4LjuDwUEMiYyy+4j2AdIT41ifmuBlOh2uxcefvzYZvqWv+38SgHJknAYv97Y1fB8bP6c8nR09D8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTAzIGF0IDAzOjMxICswMDAwLCBWaXZpLCBSb2RyaWdvIHdyb3RlOg0K
PiA+ID4gDQo+ID4gPiBBbnkgb3RoZXIgc3VnZ2VzdGlvbnM/DQo+ID4gDQo+ID4gSSB0aGluayBp
dCB3aWxsIGJvaWwgZG93biB0byB0aGUgcmVhc29uIHVuY29yZSBsb2NrIGlzIGhlbGQgb3Zlcg0K
PiA+IHRoZSANCj4gPiByZXNwZWN0aXZlIHNlY3Rpb25zIGllLiB0aGUgY29tbWVudCBpbiBpOTE1
X2dldF9jcnRjX3NjYW5vdXRwb3MuDQo+ID4gDQo+ID4gSWYgaXQgaXMgdGltaW5nIHNlbnNpdGl2
ZSB0byB0aGUgZXh0ZW50IGlycSBvZmYgd2FzIG5lZWRlZCBpdCBtYXkNCj4gPiBhcHBseSANCj4g
PiB0byBYZSBhcyB3ZWxsLiBMaWtld2lzZSB0aGUgbmVlZCB0byB1c2UgbW1pbyBoZWxwZXJzIHdo
aWNoIHJlbHkgb24NCj4gPiB0aGUgDQo+ID4gdW5jb3JlIGxvY2sgYWxyZWFkeSBoZWxkLiBRdWVz
dGlvbiBvZiB3aGV0aGVyIHRoZXJlIGlzIGNvbmNlcHR1YWwgDQo+ID4gY29tbW9uYWxpdHksIHdp
bGwgcHJvYmFibHkgZHJpdmUgdGhlIGJlc3QgbmFtZSwgb3IgdGhlIGJlc3QNCj4gPiBhcHByb2Fj
aA0KPiA+IGluIA0KPiA+IGdlbmVyYWwuDQo+IA0KPiB5ZWFwLCB0aGlzIGlzIGhvdyBJJ20gc2Vl
aW5nIHRoaXMuIElmIGk5MTUtZGlzcGxheSBuZWVkcyB0aGlzIGdsb2JhbA0KPiBsb2NrIGFyb3Vu
ZCBtbWlvIG9wZXJhdGlvbnMsIHRoZW4gd2Ugd291bmQgbmVlZCB0byBhZGQgaXQgdG8gdGhlDQo+
IHhlX21taW8gYXMgd2VsbCBhbmQgdGhlbiBzb2x2ZSB0aGUgbmFtZSwgZXRjLg0KPiANCj4gSG93
ZXZlciwgSSBkb24ndCBiZWxpZXZlIHRoYXQgb3RoZXIgdXNlcnMgb2YgdGhlIG1taW8gd291bGQg
bmVlZA0KPiB0aGlzIGxvY2suIFNvIEkgYmVsaWV2ZSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gaXMg
dG8gY3JlYXRlIGEgaTkxNS0NCj4gZGlzcGxheSBvbmx5IHNwaW5fbG9jaywgYXJvdW5kIHRoZSBp
bnRlbF9kZV9tbWlvIGNhbGxzIGFuZCBoZXJlLg0KPiANCj4gV2l0aCB0aGlzIHdlIGVudGlyZWx5
IGtpbGwgdGhlIGRlcGVuZGVuY3kgb24gc29tZW9uZS1lbHNlJ3MgbG9jaw0KPiBhbmQgaGF2ZSBz
b21ldGhpbmcgdGhhdCBpcyBlbnRpcmVseSBpbnNpZGUgZGlzcGxheSBjb2RlIHNvIGl0DQo+IGRv
ZXNuJ3QgbmVlZCB0byBiZSBwb3J0ZWQgdG8gb25lIG9yIGFub3RoZXIgZHJpdmVyIGNvcmUgY29t
cG9uZW50cy4NCg0KUmlnaHQsIEkgYWdyZWUgdG9vLg0KDQpNeSBwYXRjaCB3YXMganVzdCB0cnlp
bmcgdG8gYWRkcmVzcyB0aGUgcXVpY2sgaGFjayBtYWRlIGZvciBYZSwgbm90IHRoZQ0KYWN0dWFs
IGltcGxlbWVudGF0aW9uIGluIFhlJ3Mgc2lkZS4gIEJ1dCBpdCBtYWtlcyBzZW5zZSB0byBpbXBs
ZW1lbnQNCnRoaXMgbmV3IGxvY2sgaW50ZXJuYWxseSBpbiB0aGUgZGlzcGxheSBzbyB0aGVyZSBh
cmUgbm8gZGVwZW5kZW5jaWVzIG9yDQp3cmFwcGVycyBuZWVkZWQuDQoNCkknbGwgcmVzcGluLg0K
DQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
