Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B502643CFD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 07:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86D910E300;
	Tue,  6 Dec 2022 06:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3689C10E309
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 06:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670306907; x=1701842907;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UMR95L1hTJvRsYK7BnVxnrBaq0OVM+M+BL5l/SHHUNE=;
 b=BqBcZBB1VTkQHg2PctChWz4OwXlIHP+5Dd+nXm+g5tYecUEu8Fm1wzUl
 BW2iJp93sEhrub8+L3ehBW3i+yO+ArZK8xZ4SP+T2WXc1+DV3ZU3a5qFl
 LuFV1hiDe7c7zwB8wT13D0sTCl6dO8PPvmNAyMfkKZNigckr44kNnWLrl
 rIXZN/0dGyOD81NaeikCass90wqf3kDZ0ly4cAQmvCdcf/iHjDAbp+FOY
 RBkBh6y+8rDkiNhLlj9U5y5gfPXZlmHmakSiDC6nTl0/dXFZREpbBukFC
 yetlPOUHC4H+FMJZwgoEOtUSpJ42IfrOgDn0IpBmaWNlEQ8vlistq+D4J w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318403531"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318403531"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 22:08:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="676859449"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="676859449"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 05 Dec 2022 22:08:18 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 22:08:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 22:08:15 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 22:08:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 22:08:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WkGlxsnn4JIQ8JhQGosN5LdZ7wJAilzHbs6WHwNQzJsJnz5wF8pdKOGhKbAdban026EH1uu6jjpOBBV35GSvZfazeG3E+kxh8bwjN7DLR/k4mDTJt9SU5VHzbQV3BqphucrO8humaiRdoom/56fWZoodoMmgaZVQkSFUHFyUzTuzj6P9CmMWZqd8kWXQrQjg6tMI4ZFBB3XfsPyDcFZWsnuCO0eoCH6lzu0xKD+LLOG6U1FYxn46wmXt3d7PqcIc57UYttXMB6h0jIEAsH9Eyiv4SiGj2ePiWawt1du+EI3AlXvVC8GyxzNB5yaR91aRMA+AeYG6UkUZLosGsO6i9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UMR95L1hTJvRsYK7BnVxnrBaq0OVM+M+BL5l/SHHUNE=;
 b=OjarvLr95NlLkSgX+dQi9UGZ5uEIC5iHAr4rqLeK9EPeDUnNKNLRx/dyyGYYqsnU3SqvNa6ITaqfNxbCZhr5rqxKrKOExtu6hVaqccFP4cncXBZKDKkgmg1fvzTgqo8jjk/2Rfw3bDR5YwPOSfQ7PnGlrF9Us245i3CZyGue6jG61KJWj0WUCR3dk4FoEn52PCD0RWTUvJKejUaBlDUYhFhSJD+qbCquAc/yhZNjdf+jh10FIM3TpW/TBzJktAIYPm3ZXfiMnfNf96e17koX+G+un9Bs3JlwRxQcgizGTImGq/RVU568kJec/mDBYGK2Phw5kqF6xKAsXnSmFbebbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA2PR11MB4875.namprd11.prod.outlook.com (2603:10b6:806:11a::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 06:08:13 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 06:08:13 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 6/6] drm/i915/guc: Move
 guc_log_relay_chan debugfs path to uc
Thread-Index: AQHYY+gZgarq8+op3kO1XG+epJoj962IEHcAgNlV6QCAAETXgA==
Date: Tue, 6 Dec 2022 06:08:13 +0000
Message-ID: <3ee103d2780da22131164af565e8627e1b42647e.camel@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-7-alan.previn.teres.alexis@intel.com>
 <87sfmvr48v.wl-ashutosh.dixit@intel.com>
 <fcc2e286740bc20296ae4ef67563964e813d035b.camel@intel.com>
In-Reply-To: <fcc2e286740bc20296ae4ef67563964e813d035b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA2PR11MB4875:EE_
x-ms-office365-filtering-correlation-id: d8ea8b18-72fb-441e-85dd-08dad7504265
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WQ0mwR6GI4JfQ+yzdneWO6FdvdE6wEiijGYddIhV9G1vDwBXFxx5bpUEwEFjAJxBBjyuu2lXJlZV2LSJzNlr4uiRegEmDem1q9HIbqd0D4hUQouye2HaQ1lUpzPgU8fD+JqgG7+Wgxm1U49eVWv1Tf5NzyZHs31mbbzw4vBd0j5Jh9534OTUjtOACAOmrRBTjxBTEDwRhd7CIvS6WNgVM2/APo24XD2wn8hBJJEdGElJU1uB+f8/XYq8yVIem0jXM+F4iGC3BWLwU7u0TUtrDFBmYpgMUYrw3SX4fW0Xtfp1JF4LQor/oSH29y7BdR4PFF4Gy9hY/wa6hhvLPmvS1q4eOo9nErDxCwJ3h08g0SBp+qZlXpYLUb/Soete47mJWY+jVW9IiXDF0SCW1RWsDArX9YVzyT+KFs3upmeHQJ0G0Ip9qniRBrxtmZW5MNkiATHjyUTngHFXq1v4bQ8lhuOdrBsOF/SwO6kArNPuDXcOU/SiHGCecImKiDIL3x11nrqDlEv9nnEoWQn9goKtJV3Zr7uA6IYVcu6nOQfNOGYO7yLVcJf1fDUHuRr3vEiV7GS5tPtPvv8qzRWsWrJqF6rsFOx56FN3zwMhl1wesGtf54c4ZpOwh9BCBaOZRN3bbywrLaFzc0dw57qBwyVRuzWL0Mbsa0bNYOZjjT1RhfDyU2oxQcRg3c4kOKln2PjgEFdD4uzRQOvF5JwFeDUv0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199015)(478600001)(6486002)(71200400001)(76116006)(66946007)(91956017)(186003)(86362001)(26005)(6506007)(6512007)(37006003)(316002)(8676002)(66446008)(66556008)(6636002)(66476007)(4326008)(64756008)(38100700002)(122000001)(2616005)(82960400001)(2906002)(38070700005)(41300700001)(36756003)(6862004)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zm5Rbkd0QS9JaTA0WjlWRkQwR3o4K0psTHJ2YkM4OHMva1VNZitFVExMazFS?=
 =?utf-8?B?dC95eURuMkJEd2xLSTkrZ2U4VnlHZXNlQzExYzRlQmFTSC9RLzhrNHA3TzIr?=
 =?utf-8?B?WGhZT1czYmU4alQ2S2ZHcHlwL0VqT09XUEJQL1hybFRETERVZWtjMlMyUVpa?=
 =?utf-8?B?V2xEZ2hBbThyRkVSYUNZRk1xb0dLdVpNTlpSdElXZ0ttY2dDeUpRUVZRakJQ?=
 =?utf-8?B?NG9UU2dTQ3FFdS9nYjJUQnhRczZCN2ZKRnR6V3cxWGs5aWNEbkRwVytpbEtW?=
 =?utf-8?B?STRzN21RakRYK3NJY3g4eThuOTRQTmx6OUFBbVpFU0t3RitiTm8ybzFtN3lp?=
 =?utf-8?B?S0NDaGlpRjdPZXM2eXBiVVBtcHBYOWNVZURVL2k5V3Z1WGF3cFVBSkJoWnB1?=
 =?utf-8?B?NGhqazVJK3RZalpHbW8xS1V6QVNMVkwvUGxMS3J5enlmcllVWnNiT1VyTkRW?=
 =?utf-8?B?TW5mS2V1amtKSXN2akZLRlJiRTRCYndYMGlKNEdHbnhNc0dUejlJbVhqVjhK?=
 =?utf-8?B?a1NuS1dZUFJBaXFTZ0V6eFRLQW1KQjFCQ0lqWUhvT0ZNamN2ME93ZTVqMGZK?=
 =?utf-8?B?RmVLY0Z5bXBnWC85TnFXT1ZROVZyUEh3Z1Zyby82K29BZllsdnlZY1E5N1VZ?=
 =?utf-8?B?S2NKUDJTdmtEOHhpQndNUXRCaFFQY2tSaU03WWRiMXI1VzFZYTBIaCtIeXpq?=
 =?utf-8?B?Y0NIUWNGaEhaSnVxMGpZTHVtY0VCTEpLdENzRWlIUEpLcGZhdHVlc0F1K2N1?=
 =?utf-8?B?M2NSU0xVUElRK0JkcXpXSHZlWWtZWVhNNG0zZm1BR1FVZ3N3czYyenZKU3Ux?=
 =?utf-8?B?bzdVQ0dXOTlteDFFUHJzOXB3M0l2K0dPMGtETjlROFdrUm85ZHd0UjFmaEVv?=
 =?utf-8?B?TUVlWXJKcGhkeXBmTkxzUzBFa0p1N2tzZDdueTdkMGp1b0J0NDEyeHd0OXRN?=
 =?utf-8?B?akxiZzhZeDhzblYvMSt5OVQ3SU9QU0k4d2s2ZmxyeE1sWURxKy9XR3J3UUlh?=
 =?utf-8?B?OXN5Z0QrT2p1aFlmWFFhbGczdzhYRzdCeklHYWwxcStKN0dCaTg2eXpFUWxM?=
 =?utf-8?B?b0dPYXk4N2J4RWh6YXNFaVlIK28vU2tyd1NlOVhXRDNDQWlxY2Vyc0JoTHJt?=
 =?utf-8?B?SmIvVU5QdEtWcmdlYUFBR3pGUzVHYWZIT3NzQkd0ZHJUZGhzTitlMVJsUHJl?=
 =?utf-8?B?cHhxSEtIWkRvYThUTUVFQ0FnZC9tMXdnZWN2Y0VOWXlpQ042TG1FQXVDZVNQ?=
 =?utf-8?B?WnFORzZVUnBpazk0Sk16ZURtYlZTSU9aUmdyTGczY3RvSStZVVNENSs2enNE?=
 =?utf-8?B?bVg4QXRMMXdKN1RtUyt0cWFkSjlBNEFiTjRGWHlHMkRvYytNYnNqdER2d2hv?=
 =?utf-8?B?T1orVm43bUpzNkVLaHR6UjNTT1RiNW1BY3VmenRrZHFKMm9sbitGTTFSc1BJ?=
 =?utf-8?B?K1VGQ2hpbE1ZL2xKOENINFZGQ0FhdUg4b3dNc05XT295SitHS0hobjZFMEVW?=
 =?utf-8?B?TDk3MGtOeHM0L0NyS0pSbFQ2SVFNU2dVazBVMFJWMERBcDJrbDM4RXcxZ3FG?=
 =?utf-8?B?Rk8vdHVEak41ZmluUkhrRS9WdUdEc2VwK3RyYTRHakF2TENwWnFXT0FJWkE1?=
 =?utf-8?B?TytyWlBtSEd0OEwvWnAwQ29yc0JybHBtQWlwN1p4TzNOdG9vL3pXQXFNazBi?=
 =?utf-8?B?R3EwNWFOSVdMZWxISXFoVElEL29iVWxWS1c1aUNVR3VXMzRqR1QwNS9jcDBF?=
 =?utf-8?B?dm1meERQbUh4K0ZuZmc4YWVrYUREQXpOU0FRalpGYU0zVWxrMUs3UXJaWGx6?=
 =?utf-8?B?UkRjbGpYelBJUDR1RkkrejR4M1ZNcVVQS3laaFAzWldab2JLb2hueDBCRXEz?=
 =?utf-8?B?ZTBFOHdUVGFMcklNM2wrSm52Z25nOG4zYm16Uit5QmlZTXFaN1IveTZOVWNx?=
 =?utf-8?B?cm9vaElGWGMrbjBFTU56LzNhblNlWnRKZlRJemJDVHBxMXJBc2hETGxaSFl4?=
 =?utf-8?B?S0hFRFFYTFFGbEEwZURlVGwzRGlsMTB2MHh4dTFjRE5SRlUyRGx6ajhydWtt?=
 =?utf-8?B?L0JkSW9YWGFibTJFaklxaEFaR2k0amQ2aHpRc0lsdWFGaE44SDZWZnY1dDdD?=
 =?utf-8?B?QU8ySG82YlRyMkVTNGhVN3lad3p2Z1BxU0dnSGI1T2NuYmg3WEJaRWhCNXR6?=
 =?utf-8?Q?astHUUW756HGuSFkV/HTWy4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E1272BFF87DF34F8243A48457262FE3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ea8b18-72fb-441e-85dd-08dad7504265
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 06:08:13.7182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YUYOn+rzpQphJzfHXZLQQqLuSspSf05jsHYRJDrA+fx0v4yLjSzzFG7ogx0VUDCQx4lcXiqBrGReN5aAk/tWagKROWuOy9vPFkqTaaLBalFhzglM9QQbTajqpzDKuDqh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 6/6] drm/i915/guc: Move
 guc_log_relay_chan debugfs path to uc
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCk9uIE1vbiwgMjAyMi0xMi0wNSBhdCAxODowNCAtMDgwMCwgQWxhbiBQcmV2aW4gVGVyZXMg
QWxleGlzIHdyb3RlOg0KPiBPbiBXZWQsIDIwMjItMDctMjAgYXQgMTI6MDggLTA3MDAsIERpeGl0
LCBBc2h1dG9zaCB3cm90ZToNCj4gPiBPbiBNb24sIDA5IE1heSAyMDIyIDE0OjAxOjUxIC0wNzAw
LCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+IA0KPiA+ID4gQWxsIG90aGVyIEd1QyBSZWxheSBM
b2dnaW5nIGRlYnVnZnMgaGFuZGxlcyBpbmNsdWRpbmcgcmVjZW50DQo+ID4gPiBhZGRpdGlvbnMg
YXJlIHVuZGVyIHRoZSAnaTkxNS9ndC91Yy9wYXRoJyBzbyBsZXQncyBhbHNvIG1vdmUNCj4gPiA+
ICdndWNfbG9nX3JlbGF5X2NoYW4nIHRvIGl0cyBwcm9wZXIgaG9tZQ0KPiBBbGFuOltzbmlwXQ0K
PiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfbG9nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMNCj4g
PiA+IGluZGV4IDc5M2EwNmExNjg3NC4uZjY1Nzg1NjVmZWQ2IDEwMDY0NA0KPiA+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMNCj4gPiA+IEBAIC00MTks
OCArNDE5LDExIEBAIHN0YXRpYyBpbnQgZ3VjX2xvZ19yZWxheV9jcmVhdGUoc3RydWN0IGludGVs
X2d1Y19sb2cgKmxvZykNCj4gPiA+IAkgKi8NCj4gPiA+IAluX3N1YmJ1ZnMgPSBpbnRlbF9ndWNf
bG9nX3JlbGF5X3N1YmJ1Zl9jb3VudChsb2cpOw0KPiA+ID4gDQo+ID4gPiArCWlmICghZ3VjLT5k
Ymdmc19ub2RlKQ0KPiA+ID4gKwkJcmV0dXJuIC1FTk9FTlQ7DQo+ID4gDQo+ID4gT25jZSBhZ2Fp
biwgd2h5IGlzIHRoaXMgY2hlY2sgbmVlZGVkPyBUaGUgcGF0Y2ggaXMgb3RoZXJ3aXNlIGZpbmUu
DQo+ID4gDQo+IA0KPiBCZWNhdXNlIG9uIGk5MTUgdXBzdHJlYW0gdG9kYXksIHdlIGRvIGhhdmUg
YSBjb2RlIHBhdGggd2hlcmUgdGhhdCBkYmdmc19ub2RlIGlzIG5vdCBiZWluZyBwb3B1bGF0ZWQg
YW5kIGkgYXNzdW1lIHRoYXQNCj4gd291bGQgYmUgdGhlIGNhc2UgaWYgY29uZmlnIGZpbGUgZGlz
YWJsZXMgZGVidWdmcz8gQW5kIHdpdGhvdXQgdGhhdCB3ZSBkb24ndCBzdXBwb3J0IGd1Yy1yZWxh
eS1sb2dnaW5nLg0KPiANCkFsYW46IFNjcmF0Y2ggdGhhdCAtIGl0cyBub3QgbmVlZGVkLg0KDQo=
