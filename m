Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4837F504C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 20:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3A410E0E7;
	Wed, 22 Nov 2023 19:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4875F10E0E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 19:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700680368; x=1732216368;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Su/iDnSqDx2c8QF6QnxxVR7+zJjWIG0LwnnNHwj2PPY=;
 b=bYQEkoawPiHHIktOFcMO3Kad6k/4JawVw4H1L/rySYZ2UGuWZ1SuEiN0
 sw0pLL1Yty3yj5jcbWa/nbmZZfHfz2oLkiT99RhFfcwRpbUAnAQ/rDUU0
 Hco5tfAU938h/I3RFv3HWKfvNj+jtuJNCz+L+RAL0EHhApFee2C8M8gjI
 o5NmJmkNj6+QQB2t3GHu9VWS+F3BJKFB2eGKksHXrklm1orGttYidMNAe
 ikF48DnP4l/TlG4B+UEf8y7zZQkBL0W0/W3Hotuyxm/YhYlAfN56cjs6e
 INhGjBT9KjMuXA02z3GSEHb+3G8eGDg/SnRoNMLtiZWt5zZmt01rByE/l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="371483171"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="371483171"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 11:12:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="716833949"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="716833949"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 11:12:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 11:12:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 11:12:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 11:12:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCxtPQvYX/jgmCHZqHCPrEloqfF70cPBZC4VK7CQP+K0fs+R90Be0AoZ58nkxlPFE782VwGdxoQVhXf8LltpH+TEwDE6MZ1s+LGPxtCuAafseGYyN3LjYPUcBpq9KNiCF3WwRlAimjuP8odGcAIy+YDlgzleMZdhGv4/Qv8k82YqK/gAgsJ0HSWg+KZqO7+JfuUSAsf0KoQEzA2pgedaGbbkAEFPO2ZDK3VWepzJc0ZA21BQI3Ez5ROtbdLQJtV3m7BO+YBc9ItYC3tK8ES8mUCrwbx9q86rRJk1rr54Ixwk3beFS5s/38ZZFEumOH3l7dAmxJClJ/cnWklmgVFWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Su/iDnSqDx2c8QF6QnxxVR7+zJjWIG0LwnnNHwj2PPY=;
 b=oT+9ikBdr4J0uhyyhkyqYTcAlhr4fldZH9crONZUFZl5VyDjuJz8KLHkH4XGWuO2lvYnwk6BKlbmmx8cK59wN88nXU86uVwQEDD7yQ8NEKtjyHcnVw7nkGPftnKUCzn4nCNN6r8oo5+xmJ2GiWjxPtZlilz+0PxJ5vt+7vc7hKLFFXnk+g7gCUfXdHlO32KgcZMzxalCT0g960iMOiZqC7yKy7CfUe/48C9rWIqhASEwZ2/6IWU4B6y54Re1UWlXxaInVL5AO1wG3eqwNJpoWCWmIlzs0qjttqIWYmQD1bPNnj6f/CKvjJ2ARaRb2gxJrG5Fv7JtCVmxQjLDXLbIkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS7PR11MB6174.namprd11.prod.outlook.com (2603:10b6:8:9a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.19; Wed, 22 Nov 2023 19:12:41 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::d070:1879:5b04:5f57]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::d070:1879:5b04:5f57%4]) with mapi id 15.20.7025.019; Wed, 22 Nov 2023
 19:12:41 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcHhwOiBBZGQg?=
 =?utf-8?Q?drm=5Fdbgs_for_critical_PXP_events._(rev5)?=
Thread-Index: AQHZ8TN1RJGCgl+IE0WMmV3qrhqc0rCHDVGA
Date: Wed, 22 Nov 2023 19:12:40 +0000
Message-ID: <8e855eb3de2dda79c96b5eececf80f822f272906.camel@intel.com>
References: <20230919180425.1517853-1-alan.previn.teres.alexis@intel.com>
 <169581291678.20757.13627914580777505297@emeril.freedesktop.org>
In-Reply-To: <169581291678.20757.13627914580777505297@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.50.0-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS7PR11MB6174:EE_
x-ms-office365-filtering-correlation-id: 4f48fae6-6fff-4810-f900-08dbeb8eff6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mMZiT2in6RnS6WPRAaY7WKzkhbXfmhFYzheALo40ZiVHqp65Ibvaqc1vRb7n53qvpar5sW7QJ7EVNj5OmDJ7lXL/ZJednDUJZh0JxrRT91EReaEquGN+n0XshJONGj1oOgXC/1DcQWVVC40dIRAOF/BtckFkdJ9mEyWZ3C492bUV8yc5VpUHAhOsjN82gkwcIn8T+PLQynG8AxJ739Bh4ehU+LROz51cKRi+K7lm12hIIznUI0H2eZOfv1/EhljoHtud6ZOFLM/R+iNMi0Rs6Kb2fH27KpUHaHePECrwkPgoat9yKPrNoAV8LZHJmMfhJW7ekCbyj4MfnmdEb9Uzi5/O5nGJLvo/rsfqm5+B+I7vE+DaxR0h3fkwWvfC+3JLFy4jhlGzHoDeqEE8VJbfbH0yeFAbvyP4iXqexC8vk8Gi2JEkvbXnwCwOfYhtXCNk0KJAFyaKlVhb2LT0/Sippbn3SDud7qLc5mCXSPwvgxDJODJfYGngfq9csxEHcZ5dutv7VDbdfefgEal3aUVPLu3d9V5XuwaDEpipTImCRv0XWotEB5zW9232+7ltJbd/5q3JE9htMoMVqmTLUj5D1hh4MuogfOMkixPvTs9Qe5SQaEus7fSwAH90qfEJGEee
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(376002)(396003)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(26005)(2616005)(6512007)(6506007)(83380400001)(8936002)(5660300002)(71200400001)(41300700001)(478600001)(4744005)(966005)(2906002)(6486002)(316002)(6916009)(91956017)(64756008)(66476007)(66556008)(66946007)(76116006)(66446008)(86362001)(36756003)(38100700002)(122000001)(82960400001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGhLZXVsVHVJN3ErUENlMlR2N21laENlMjZBNFZEL0hmYjEvQTB6Z3VXSGpR?=
 =?utf-8?B?YVkyMUVIK2JXUnE5UGFDU0pYOHE3eFBmaU9acEtacEp4L2d0Z3BjcDFraXRD?=
 =?utf-8?B?R09VTzdaTzlaUWhhTlZnQm44MGl4elFOV1RGQm8zVFZGcVhaUWg5L1lCVnMx?=
 =?utf-8?B?U1N3c3hvSlhBUVc4bzVLVTFDcnJYS2cyaHlYNUNPMVhzeU1USTJMWk5BdnYz?=
 =?utf-8?B?aS9Va29xU1FsZWV3bDRDMGJlSERneGE5aFFYVFFLM0dKeWVPL3JWWDhpRVlZ?=
 =?utf-8?B?Wmx2WEErVWthK3ZxL3VpclZ2R2VqZFZGL2hoQWx4N3hZeUFxUHRZSjA2TWJx?=
 =?utf-8?B?a0NSZzV2R09HVGZOOFZSelBQWWZUSi95MUNiVVRnRUtMZzV0bWZGNWJMMmZ0?=
 =?utf-8?B?ZnMyQkNSaUswd2E0cDFyNFlkNG1iSDdvS1N5VUprSzdnUGMydEJBMTlmUDcv?=
 =?utf-8?B?K2dacnBnNTc3SWhjVDZEY3FGa2dUVjNveHFhNUMraVcwSTQwLys5Y2VIS1Ny?=
 =?utf-8?B?Wk5nd3l3Tm1xY3dtUHd0dmNVd2UrWktXSmhZK2JYb1FCeWFYZ2RWY2JRdHBm?=
 =?utf-8?B?bkkxbE5yTHJ0bGl6UXEvMHFqME9NNElQZURkMmdzZGgyMEJtQzBXMk02aGQ1?=
 =?utf-8?B?Nno4bk1CeVNYY0J2RjYrUmc4R1ozRDcva3l1eStSTkdMUUxXWjN3c3JucEZl?=
 =?utf-8?B?dzduSHRMcUlTdWhaT3NKazAwZnRsdlozRlNPK09KWkozOWpmUmh6OU9HWlBx?=
 =?utf-8?B?Uis4QmVwclk2NHhHU013aGxLK084elV1ZytqelNudzE2SjRSbVJYL0pwdFhv?=
 =?utf-8?B?M1NnaVp6Rm10VkdZSjZaamd6VnRodjhyc3B0endWQnJVbXVRYlpaUklEb3VI?=
 =?utf-8?B?SGkydU5WdGJHQkNhSkZFVlB2eStlUk4wSGZ5TTJ3dnNlaitta2QzUnFMVTcw?=
 =?utf-8?B?Y1ZUN1Q4eW85bTFJL0REOWJBdDk0YlRZMVpndTJxUXlrQmxmWTNKUEFIVkky?=
 =?utf-8?B?Zk1ldUtFdkJHVUtUcWhOZExJUzQ0T3NRV3Rwc1NFdThrR2VjWlNwTkRoMkMy?=
 =?utf-8?B?QTYvMG9uZnYyOTdudTRVc3k5RFIxWmZFcHo1QWdjaEQzbktWWU9Xa1ZRNEdl?=
 =?utf-8?B?WDl4WFdwMk5pYjU2aS9pdTN0SHNIQWtNQXRkY3pCYTBKa0xtTm4zdnZLM2Jm?=
 =?utf-8?B?TGMzL2J6ZVJuc3E4YnVVclZaUDJ5aXVoQkRPZ3RiUXE2WUZlRUhXdVFwdUlx?=
 =?utf-8?B?ZDgvN2FJWlZHRHU4eUVFdHJtZXRsK2NZZ3lOTUZGTEQ2QmVUemxueUxNZldN?=
 =?utf-8?B?NitncGUyTFdpNDdLbHNwbVBRYXFDSFhqSGNRV3Ixbnh4aFhtVzJKNnpVbWRJ?=
 =?utf-8?B?RENNcDIyVms2dkFRZmlkVHFRZEZicm5zcURWMUxkcnJDMUQxRVpaRklidCtF?=
 =?utf-8?B?TXNsNVRsRHJsUThSWGhoUnJ3TTY3RDByOTdacXFRa0ZZc1lKdXYwTkJkcUNB?=
 =?utf-8?B?ZEtCS1l1LzFxMzZvRjRhR1VoMWcyb3k0NGVEcEI2SEdNMWQ3TEtQb2JkdnNV?=
 =?utf-8?B?ZW95RWJRT2hFZk45dlc4ZGp0aGJKQVJpdkhvMzR1djJPb3djZm1aU3huVmlF?=
 =?utf-8?B?TURGWjZ6U3BOQmFEbk94WEpJWUpFTWZUL2drYjdTZkpwaGZ6cUFDUUpmV2Yr?=
 =?utf-8?B?bThvVXU0NHF1MGUxYys4QzQ4Kzk0VnNuZEMyYk1NVmdMcVRCb3NWdWxVVmNr?=
 =?utf-8?B?Tm5qbUJrZlBXTnlYQmJkVnhrM1RwMGU2dTRXMFA4d2FIQTVUem9MdXRMRi9q?=
 =?utf-8?B?L2hoRHlJQ21iMnVudmJPUElqeW45aVFmb05lcjM0WTB2RW5uN0RpTGk1aGRu?=
 =?utf-8?B?K1FOdXkxaW1iaS9sOWpVdVZlSm9MMG91VEdqeTZoOHJHcVQvSUFmT3pIWDI0?=
 =?utf-8?B?b1FOYXhkMFkrcWUrVFRyYWtycnZyWGJQc2dYV0NucnVqaGs5Wnc4VUNEM1hB?=
 =?utf-8?B?VTBoUFJleHFockNQaHBYay90UEpDTlRZQ1ZCandPeUZBS0gvMlZUZ29rcUEv?=
 =?utf-8?B?d2tkZ1lhSXpXb0RWOGtjYmdJVjJGSXJxKzU4cU5IZWVrUVlPRlNPbTZ2Rnl6?=
 =?utf-8?B?TGVCTTQ3aWo1M3FHeEF1UDM1SUZoV0Zia1FrQXd3TUJKeWEzeEV0ZTVyR25K?=
 =?utf-8?Q?sj0J2FaypQ20xRYY3tbrsRA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FCF1AD2A12C7A4DA19EE2D704E02002@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f48fae6-6fff-4810-f900-08dbeb8eff6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2023 19:12:40.5549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1qVf9YCxVpXOJlPNPGLREzKq11/HhIFfrYra8lf0jgKA10ZTm15g8KZMVfG5qOfTFEMoGWxL7YARWsbKBlNwEtMDiruiSjDteHlBooDJ1v0uBMr7hC6Ml1kyAtDL690R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6174
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_drm=5Fdbgs_for_critical_PXP_events=2E_=28rev5?=
 =?utf-8?q?=29?=
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

T24gV2VkLCAyMDIzLTA5LTI3IGF0IDExOjA4ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBkcm0vaTkxNS9weHA6IEFkZCBkcm1fZGJncyBmb3IgY3Jp
dGljYWwgUFhQIGV2ZW50cy4gKHJldjUpDQo+IFVSTDogICAgaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjM4MDMvDQphbGFuOnNuaXANCj4gDQo+IEhlcmUgYXJlIHRo
ZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzEyMzgwM3Y1X2Z1bGw6DQo+IA0KPiBJR1QgY2hhbmdlcw0KPiBQb3NzaWJsZSByZWdyZXNz
aW9ucw0KPiANCj4gICAqICAgaWd0QHBlcmZfcG11QGZyZXF1ZW5jeUBndDA6DQo+ICAgICAgKiAg
IHNoYXJkLWRnMjogUEFTUzxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV8xMzY4Mi9zaGFyZC1kZzItMTEvaWd0QHBlcmZfcG11QGZyZXF1ZW5jeUBndDAuaHRt
bD4gLT4gU0tJUDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMjM4MDN2NS9zaGFyZC1kZzItNi9pZ3RAcGVyZl9wbXVAZnJlcXVlbmN5QGd0MC5odG1s
Pg0KYWxhbjogZmFpbHVyZSBpcyB2ZXJpZmllZCBhcyBub3QgcmVsYXRlZC4gYnV0IHdpbGwgcG9z
dCBhIHJlYmFzZSBzaW5jZSBpdHMgYmVlbiBhIHdoaWxlLg0K
