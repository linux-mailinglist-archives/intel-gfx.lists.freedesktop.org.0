Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F53E5FBFCC
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 06:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C25B10E299;
	Wed, 12 Oct 2022 04:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD69A10E299
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 04:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665547536; x=1697083536;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=GvA7DWuU9xNVEbbqk0mXgqPJcATn57nKWg4Ht8v48p8=;
 b=EuFm01TuqsnsPw3ElreKDVD2rbxcCU/CKXhE9mEcgBkEJVg6e7sVBnVQ
 rpxHlKSBNWammSjbORGJw8rTq17V8sWASbAflUlJFUglaSeMYT7cR5UW+
 9/xA16AeSdLoMildQiL+KzogRC2benaZorgr4oq8S+ELgUqe6KzjCxxUL
 +b8jIU6NHifsMr77z+tNW3kZssfUaTKo6EUmHpkU2fOCltGOtGP7WvmvL
 QLba07xHAmYPypfnmbUyMmbYOzKKNgjMfeAwyceXxkeLyiIl5BHqSZYxn
 u4QKr97YXLwaMc1znRx+0kDyqOZJ8CcZ8XrnktJKEz7qKrQn7ma9md33u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292014898"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="292014898"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 21:05:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628954029"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="628954029"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 11 Oct 2022 21:05:34 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 21:05:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 21:05:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 21:05:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 21:05:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ez2pwWS6mYhSf1Kou2c0/bHowuyBOeqCycyjskMpUuycsVSc4nojPfLzk4by1wQzoe8RSL+YYIFYcDVW3g490+o0HHlVu0+xsLQNAAtmJoIeq348IdvEVq5X0EJL9MEy9E4ZFY+GvAienKb43MGm0Nbh7wvbYL1es91LY6FuTv2u/X6l3BbtIzruebtYzbfGWhqmpYipRLI4oEMcq0vBqWGstNklPppmLbUZTfyvsFdVghmwy+FyHCRggcHZ6zIM31O5WFq5qt5eod/tbk/RhYptpQ+TUli3ch4pcZuVsO5nVJbBHOF3Loq5UgpLdYbXojoxcf9Gj5QitEUIz4kPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GvA7DWuU9xNVEbbqk0mXgqPJcATn57nKWg4Ht8v48p8=;
 b=ObuWLPmW7zUw71okuLgiFpIymQd0w36Nrbmitc4aldRGDKv/vKYn2viJ9ijfrgrUipxhnZIHXnJ+vvpyDtk1CUId+374krxtiHJX16NcTWq+9r3TRHqkSFTTKq4UZgY/neEVKgpPTrGQNIqCxgNi116tHYvF1FlrzGXkRGQRfkLyJN201+9lQEHY3e/lltZthLqwKuUrV3qBsi3V6YOK/9W4GQZ9Q52S1gtAML4AC9l8Arecp9n63rWXhDT5o0ulxVPqfgf6v3XKeElGmdNjA2jNJHNLwEICw1G7eX7GX1gWWubqyeC9qfV1p0g3QTpTzHHCn/dzMvPAz1Vkk7SPsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB6519.namprd11.prod.outlook.com (2603:10b6:8:d1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.15; Wed, 12 Oct 2022 04:05:31 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5709.021; Wed, 12 Oct 2022
 04:05:31 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVsYXkgZGlzYWJsaW5nIEd1?=
 =?utf-8?Q?C_scheduling_of_an_idle_context?=
Thread-Index: AQHY2d9EEbajQsJXQUaJD+NTyGCv6a4KLJYA
Date: Wed, 12 Oct 2022 04:05:31 +0000
Message-ID: <dd012d7149edc2013e974c76ec7638e49add423d.camel@intel.com>
References: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
 <166510058635.5835.1093965493532107465@emeril.freedesktop.org>
In-Reply-To: <166510058635.5835.1093965493532107465@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB6519:EE_
x-ms-office365-filtering-correlation-id: 2570df7d-a6b2-4661-fd08-08daac07014d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bemC1k/0f7EM9GFZDS9lw3bRXO2bx0rHCNAu2XecVSjKOjtyWNv6soKBaN5rQ6THLgKcL0FEuYhqcdLEcQpkJW/3eXbJR0hYPPJSmemXPXiP+z75azHo0ueCdKMIU6vO1JUXeu/DnLSudLGEMObXInYio7KMjF0TTAS90UnSru/rLpPzXfHU3+STY9635cV1qUNRKv9hX7Fdt8NqqtI1eqWMHZt8y/V/u7amdVZ5nmyzHCNcIq34lOhwg2iQmOd/KpGdLebFzuzauX85dhi0Huj/pCnpnIpTvuImc5NPVb0pULSBnHDsPCz+6hWPnCw3QiDNaRiSnjX8ytyPqTtAeBYdTVjZxgsRwubupQa5BWunWiLN+ldJI6duVOnayMXudUVs0S0117ra47oUsRLHxZXlClMH1efLEHSjVIKoZpvlcqGtAcEPTYrO8L9977hWNxsEdTLxNByxzH/LQ6mxF3Z3iuZycDhml2Da67zN0gA7caOIqhTfJir55w7rK8OpTaunDhqxLGfRjnkxfQmsojyHiUc3G0cbDB9FJWkjK84y2rMnjqgN9SFVIvvEnF9rlKf1z8ljQjEbXGO5rG2K9FlT2dLkcykHnD7swuVMc1oKs3GzRO9Lt/VGOyPaT/lJaowOGru4HIzHKIWaAJHxHmkfSI6Ez2dc5Xb+1+StRPCTjwx+vGA4ITZTmn4LvxxtmkCJTVlIDS1juLu4QUSfGUUtyHxL1KAxdDPbE063ZhVyuaSLB+5P7qghHQk5xg/CK2W+2nQbUF6L9M/fOWQU6Dv0RyjIVBl/P2EvJZ7H1F0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199015)(5660300002)(38100700002)(71200400001)(36756003)(966005)(6916009)(2906002)(6486002)(478600001)(316002)(76116006)(6506007)(19627235002)(2616005)(86362001)(64756008)(186003)(38070700005)(82960400001)(8936002)(6512007)(66946007)(41300700001)(66556008)(122000001)(66446008)(91956017)(26005)(83380400001)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wnp3ZlZMUzBnaTJFQml5c2oxSi85VDJNcXUrbnpkaTkxZFZXV3d1L0JtaTNp?=
 =?utf-8?B?T0VnUDhzU1VpV3VLN080YlcwdmxjMlFzRXBJVk94SVhsQ3RmdVZDYUZYUVR2?=
 =?utf-8?B?NkgyTHpSOWZNMUhFdGFjUWY2WWV3WFFjTk1GR1ZNV0Nkd3NWOVJRbTNoOElz?=
 =?utf-8?B?MzdMZ3REbXRxWDgwQVdrZVM2eDlBbkVwM0VZcUZGV1B1SjBLMi9sNDZ4QU9K?=
 =?utf-8?B?OGxEK3RFQVFrYStNS1A1U0trd0Ryak03bkx5NVFoeS8wOWg2L1IvT2RxU2lD?=
 =?utf-8?B?UkRBRVlqRytOVkQzVGZleTVaS0g1MGdianpPMjZudFgvVzdaYWFEbThJVWZT?=
 =?utf-8?B?Mm5FZ0hVYnhOZXpvMUdQcmxGaGpZMXFVQkE4VGx3cWRRUXM3bG1wczZCVm5j?=
 =?utf-8?B?ZkxBaXB5Y3c3TzhKSVBvY2NoWHNPbllYWnpzMkxVSE53U3d6eXhCRXJKQTY0?=
 =?utf-8?B?MTRLbmc0WGFtL1BDbkQ3bHZ5UTBtUUFva1BOdklmaVdQZXJQWDJvZXYxeG1x?=
 =?utf-8?B?eUlDTkhPVHc0OXFPSkRuc3h6eTY4SG0ybGFXeGtRZ1d3MTVGZm1jdTRnMGh5?=
 =?utf-8?B?WHh4SXpncWRoYlNraWFTVG1YNHppQTBRSStDT0xtK2xET2lITEVEMmxBZ0k0?=
 =?utf-8?B?eEgxdHdBN0hDNEtGaURONzRDQzZGbTIwT0wyNEd3TWwzU0hZSjZPaXpjZGxr?=
 =?utf-8?B?dEQwZGRGUmRtUDdKeXIvZVpwMGFTODNJWDdWV21NSzVzSTlKK3UzZHRZZCth?=
 =?utf-8?B?Q3kyaVY2ZXNVVjJKWVcxemlVNmFQVzhSalZSSHVDN3ByS05Iajd1dENrR0k0?=
 =?utf-8?B?KzdYcTZabHlIcXkyYktjVnBEaDVtYVF1NWRERlRzUkZlclJDWks1K2NkVWhv?=
 =?utf-8?B?MGd2V2UyQ0JSdlVERWRtUStOWmJXc3h4Q3ZUTUJMeEhTaGRNNUFxL3d3S29h?=
 =?utf-8?B?bWFQNnJtNWZQYWxoMjVYQzZYQ052QW5aL3pzZlBwTEdDWWlIc3B4SHhvcThB?=
 =?utf-8?B?ZDdIQ2c5OTljMlR6Q3RENjF6UFdYQ3p4WVZnUzVhTFIvOHpFeDFNU29ONSs5?=
 =?utf-8?B?eDdUbkZHdHFMeGt6UDJ3cm1SeWt1TGdpckZHY0JsV0U4SlpveXU3clRTdzdj?=
 =?utf-8?B?TFpFVFdpdktvZDhOVXVWQUQ5UTgvN0YwcmUzWGtXaEVzSWNuN05xclU0a0gr?=
 =?utf-8?B?MzE2NFo4RTl0ODBVYlNqYklPakxDaitvWWZ4YTlHbGdObjZuQ0NTeFlidHRI?=
 =?utf-8?B?eEhzVytqdVovejM0ZUZMUExPUFRhUlF5YVUvR1AxeWtYMytXLzNzZEk1dUpY?=
 =?utf-8?B?VG1YNlYzY0s2Vi8ycDc0d0lBaWhGZGw4Zlk1TkR3ZkorYUlGTVR4QlF6dG5j?=
 =?utf-8?B?N25Ia0h6SzhFaEd4NUlLZlZVRmFub1ZLUGROOWdsNXR0Y29qdkdBOW43V1pu?=
 =?utf-8?B?UUZEem9RSWI3VTViSlFXS044YnQxZHhWNlNIYjJVSW51MGticDh2Wk1SaGlH?=
 =?utf-8?B?R0NDOEFyOGxzN2tMY0RwTEwvcThWTW42Mjg4NWFYQ0wxMWJ4MkVDSzYrb3pO?=
 =?utf-8?B?V3l1cHQzQmg1VWJySzZzcmJlNTVIS2U2b1VoWXBmNTVNOFRUSGNXcnFyaHNG?=
 =?utf-8?B?M29PSTBKNno2aU9GTUZIa2dJZE5sTVFhMlV6eWdyTXNRRmlYdytYVVA5ZDBq?=
 =?utf-8?B?RUZQRDY2RGgvcUxIUllScW56aC9BTjY1YlFFNHZSZXBFL1lZNE5qenlESTRi?=
 =?utf-8?B?Tm9ZcS9UWWFpZ2J5ZVd1b2ora1VNTDErU2VPbEJ5WEhxc2EyN2YxbW9VTThl?=
 =?utf-8?B?clQwdFVDUzRtQzZFQ1NxbFNjWmNqL2pCUTExNktDY3ZWN1ZsdXczNEFYcGtI?=
 =?utf-8?B?RmVrYi9UNVF2M1NSR0JFajRtcVRybklQNkRQbnhaOExZcEdnVW03SHdmbjBo?=
 =?utf-8?B?azVrWG9uWUdGZzB5NGwwSFUyb1lEdUFwVFRCUlphenVCdmFNL290cmdMU3Iv?=
 =?utf-8?B?RXJyamp1WG9EL0d5L0FZWUREa1VBbnJaREJWSWdrMFFwRFlDRDJzYUJobXdY?=
 =?utf-8?B?M1dsM01mWC9rUldZKy83WVFTS3JkZ2tQTU9scHhIUk9jUElKYnRxOFVlUit4?=
 =?utf-8?B?OVFqVElpTGlBVTd2SHM3cjRLU2dxbkxQWm83Mi8yazFLOHJQLzFoeHY0Nkty?=
 =?utf-8?Q?nn3H3KMkr9dqaFoGwoL0Wac=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3FECCD64CA7B6B4696E5E87E0F636DA4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2570df7d-a6b2-4661-fd08-08daac07014d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2022 04:05:31.2358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MyD6RGQKutC7EbHdGINdqWG4sgp+mbqn8BzflxkECoe9f9Y2erPjDxivClEwyYLVF4a0TbYjmtnJDyf/HpN5/tBpl54lsKU4HUf3UybmIU9tmdv2hwNwyDlNos1hEV/z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6519
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVs?=
 =?utf-8?q?ay_disabling_GuC_scheduling_of_an_idle_context?=
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

DQoNCk9uIFRodSwgMjAyMi0xMC0wNiBhdCAyMzo1NiArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0K
PiBQYXRjaCBEZXRhaWxzDQo+IFNlcmllczogRGVsYXkgZGlzYWJsaW5nIEd1QyBzY2hlZHVsaW5n
IG9mIGFuIGlkbGUgY29udGV4dCBVUkw6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvMTA5NDY2LyBTdGF0ZToNCj4gZmFpbHVyZSBEZXRhaWxzOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDk0NjZ2MS9pbmRleC5odG1s
IA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMjIyMyAtPiBQYXRjaHdvcmtf
MTA5NDY2djFTdW1tYXJ5RkFJTFVSRQ0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTA5NDY2djEgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+IMKgdmVyaWZp
ZWQgbWFudWFsbHkuDQo+IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5v
dGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiDCoGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzEwOTQ2NnYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQ0KPiDC
oHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFs
c2UgcG9zaXRpdmVzIGluIENJLg0KPiBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwOTQ2NnYxL2luZGV4Lmh0bWwNCj4gUGFy
dGljaXBhdGluZyBob3N0cyAoNDIgLT4gNDApTWlzc2luZyAoMik6IGZpLWN0Zy1wODYwMCBmaS1o
c3ctNDIwMHUgDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXNIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFu
Z2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMDk0NjZ2MToN
Cj4gSUdUIGNoYW5nZXNQb3NzaWJsZSByZWdyZXNzaW9ucyAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAbWlncmF0ZTpmaS1iZHctZ3Z0ZHZtOiBQQVNTIC0+IERNRVNHLVdBUk4NCg0KSSBiZWxpZXZl
IHRoaXMgaXMgdW5yZWxhdGVkIGZhaWx1cmUgc2luY2UgdGhlIHNlcmllcyB3YXMgb25seSBjaGFu
Z2luZyBndWMgY29kZSBwYXRocyBhbmQgdGhpcyBpcyBhIEJEVyB0ZXN0Lg0KQWRkaXRpb25hbGx5
LCB0aGUgd2FybmluZyByZXBvcnRlZCB3YXMgYWJvdXQgYSBtZW1vcnktZnJlZSB3aGlsZSBhIGxv
Y2sgd2FzIGhlbGQgYnV0IHRoZSBtdXRleCBiZWluZyByZXBvcnRlZA0Kd2FzIG5vdGhpbmcgdG8g
ZG8gd2l0aCBHdUMgd2hpbGUgdGhlIHNlcmllcyBiZWluZyB0ZXN0ZWQgaXMgb25seSBldmVyeSBh
ZGRpbmcgY29kZSB0aGF0IHVzZSBvciBkZXBlbmQgb24NCmd1Yy0+Y29udGV4dF9sb29rdXAgb3Ig
Y2UtPmd1Y19zdGF0ZS5sb2NrIC4NCg==
