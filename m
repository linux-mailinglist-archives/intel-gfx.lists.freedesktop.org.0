Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9B46411F9
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Dec 2022 01:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76E810E0CB;
	Sat,  3 Dec 2022 00:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A91B10E0CB
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Dec 2022 00:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670027154; x=1701563154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SrdlULe/kfFKRXMJcyqnrwEWVHBzlOnSNeu67Kt9/K0=;
 b=gzeBEaLhVXl0X9uTJSckCgyKv2xYANk6ZSMaGI6zSzMYOkV14IuYf1Je
 RYAhFArridApCZoGa1MqUKBpUbQcyhmz8LNaBbYacLCHbaJhvNGzdtP82
 9C+80zzSOxEn7QKntGVd0XhW1Ohr/6D6HizNVQ7jPWkqRJTCFbqfaY6bg
 u012LIuO3MzQCQbgQMzIGeuM3vgwQ2zHIsKtq/GK6YNgj+ViilLA7nCBN
 mViIC1RkYh4ruC44+MQk3dWHGTcfKUY4QlOyfYEcuJ1KNlPXI5sT+xdCt
 cBepXXXR4pc3mi6mvIFVIpl1IoNCRa0oGxeHzCNJxhNHHzxRRrb7MDSz5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="343045778"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="343045778"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 16:25:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="890342323"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="890342323"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2022 16:25:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 2 Dec 2022 16:25:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 2 Dec 2022 16:25:53 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 2 Dec 2022 16:25:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2nwD3Km4h0biKIzu8RbprYIzbOQtEUKXTAbuf8b6OkuF7/zDIsN/NeOUOJxh2QQ21OVsVpi2vDWqs2naV/kCKKWiLJmn7TnVabXsQ0s39cF7sc5xaAdzqtnKqIVDvlKo/G49uD+7UGO+XxTgPUWidm9UGCkuBUoZgPcXLm0VVo6tey0JhxNz8AkVEXrmZrf1FSBglmZ2b2dPBQqzHjDyvgLwpdymtvi3qDd8u9UpxUU1YuFy6pEs+HIBen0q8Ae3SJsweLP3GieKEQOAqAQx9kLDJi5YBT/VY2fxoKD++/ouVa/c1Fu6AyUbYeR8LP4JDKoFa6XoSIkhhQFsGJo1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SrdlULe/kfFKRXMJcyqnrwEWVHBzlOnSNeu67Kt9/K0=;
 b=eM9HaNPikWPQ68DGb4SM6NkKQ4KToj1TvgTVYLU5RZmHEa4fZEAIcfC7z8OD9l3OubKGZrdEeKP+hbY7hotyq4jn2ruAVnBl6/L2V9cyK7QpvUzbkmgODHxn0IHyMMVipI++c7l3jnKuxIctpkEu9oyfwY/h91lSQFE2eUgFV6PFLEIlALGhk9NSScaR3EwZwKoK6nrxJ9aukF4o8rbnnHP7znjBA26KtioqJRPpKrcVOynQ+i5lHgFaci3OWcOcoxqMPZwbifOkcKSW9NFT2plUBIbl9eoMm4p/p7qjOV926sdS910jdZ+TBIFVwIKWpgFC6h6EGPwAbu4STq6tnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB5421.namprd11.prod.outlook.com (2603:10b6:5:398::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.10; Sat, 3 Dec 2022 00:25:50 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.008; Sat, 3 Dec 2022
 00:25:50 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 0/7] drm/i915/pxp: Create a backend abstraction
 layer for pxp-tee-link
Thread-Index: AQHY/4t2UTulJwmPoEC26vxFuZTij65bXTAA
Date: Sat, 3 Dec 2022 00:25:50 +0000
Message-ID: <4d1a19ca9cb232832844f6ab0de9055d21b00d93.camel@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB5421:EE_
x-ms-office365-filtering-correlation-id: 3ac78ec5-c6e1-45a3-bc7b-08dad4c4eea0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WHqxISlWvLxZwiT5SquYquufaUH1uR4PxtdQa9Rq9KAeIQs2iJ/qSL8gLosnR7BGvsUcCU5ywttbl80kADgbOwprJqVFyMO85B6WFDk2oSiDLR+GTIi0ayRHID3DG8Iq75eabdjVZpnM8bvno6OdyROL2WQCqWa22U7qQiiln9MH/nHBLHy5YbBYnDVY17yWveCvHp1TJmt67ULOZW79DkeFosnXi0lb7z+IwdrVZ4WYh1q0beoClHD3fWqAHgG733DK0aWe1f7fzCwgX2n5C/xTiQX66SGxXbTsT+O8SecNSIm6ILKjPtMB6Rk/YL9I1ct4wreVnZFvcKlFHe79b8qRPFUN7Mvg3SlddUoTwbnLznkw8/TXH/kPy9NcZuobFkOFlC+lt2vOW+w5XaHKZr4pOHevFH9XlaCU7h+JLj6hAqmGq+o8x7t3SlDYU8O5464un7OSDUOCL/e8Dhg44p4jOphMNZxtVkJX1BxjYdzXFqJKYRI0mcz+lklGIO1EggmkHxRltdW98o1EPQfOMWAGajsgCsWrVjr4m3ftArHYO6lduvOwZkI2xzZ/WfioPMyqHbDhwz49lps8QqL7eLB0Cjz38x0Im3sjLWekToEzMGwsLisgXxml01bYgl2YJ9syZjQb+zTuryh9UuJ2iILZgnEwhK2BSzt3SU8IWlp9GTbtUgAUNJxsXFZDqNhv23XAb/yI4N1R6N6L5JTBRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(346002)(376002)(396003)(451199015)(6506007)(107886003)(66946007)(6486002)(66446008)(54906003)(26005)(316002)(6916009)(478600001)(6512007)(64756008)(4326008)(91956017)(76116006)(71200400001)(66556008)(66476007)(8676002)(8936002)(2616005)(5660300002)(186003)(2906002)(4001150100001)(83380400001)(36756003)(41300700001)(122000001)(38100700002)(82960400001)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUdpTlBmVnZBczZhWjF2dkN1VnNRMHl1QVBCNm1lTE9CSTU4SmI0bWN6MUc5?=
 =?utf-8?B?ckJtQnBHYlpXV2t5ZWh5OGFvbFNBbmNpbG5BUXA0cDUyc1pHamFYUE5JRWRT?=
 =?utf-8?B?SnZKQUw5ZlJTNVpadEw1UFQ0TXMrZ0gyNDJTb2lKT1krVjhuODBETEZxdlU4?=
 =?utf-8?B?NjdhbmFkN0dvM0lpNnVNWUg4VXNYbG9BeklSdjBobW5sY2l1Nmg3NTQydC8x?=
 =?utf-8?B?SzFtblVNQ3pINkN3ZUJlU3JFamtNamVMU2pBQUllYkNvdWZ5aC9mSVJKcG91?=
 =?utf-8?B?T0k4OE5mSlVxaENzSW5Ua2EvNDVOL2xXMkoxcXJiOFI0ajBEM1kzOWpLdFRi?=
 =?utf-8?B?OVJINjRCZ3ljUFlEd3Y2NXVCOUtrSGZtSytzUU5PZWVZSVFnL2kya1R5S3pT?=
 =?utf-8?B?UVFYU3JkN3o3SlNsY3gxRS9iampNQWVvZ3krU1owQ3RGM1ozTHRYM2s5a3da?=
 =?utf-8?B?bCtnb1daejBudWhoalV0dURRZS9QbnVSdmQ1by9BekpwZk9haDIwTE1LNjFT?=
 =?utf-8?B?eHVIK0ZTNk9jdUxaTkkrVzRqamozRzRKRkM3QWp1cGtVekpoTDVWOGJOaXhC?=
 =?utf-8?B?QURCaEJoYndLRTUrMzd0TmF5eWpFQzJKam5aRXVEOXlGalhoSHpSYkJ2UGxG?=
 =?utf-8?B?OVhSa0VmeFVzcWRmZnVFeE5KU2VTRWdJVWRXTDRUN1VOQTdEZHV5SFlpWnpm?=
 =?utf-8?B?cWUySXBITWVSOHNyTzVuNmdLWkRzeFZycjBCOVN5cGdKNEs5QzlKR0x3UUFj?=
 =?utf-8?B?OHVlQUZzbWUvOXR0WkFhbnh5Z3FwdTNraVd0L3RpK0F1VXpQaHR6Y2hzUklm?=
 =?utf-8?B?NDdUeXNVcC8rRklwSXJrbEMzVld0M3Zid3N4NG1ndE04ZlFyRUFCRXhmNC9w?=
 =?utf-8?B?aUp3MUtJNU9OdzZIR1pzc0YzWDYzR0JKMkNTbkdJUTAzdDNpMHBzM1BYV3ZV?=
 =?utf-8?B?eEZ0QkZXREJsOStrbVhvTEF3RWNXL1BCMUZXVFRoZGdyZmxIUHh1bTdWUnox?=
 =?utf-8?B?VHhlM2MwYitKRXBnblBqSGk3THpRN0Q2YUpvS21QTk0vVkdpTTk1dWZFVWtk?=
 =?utf-8?B?NCtSRWFOQ1ZmWlVxZGpwenV3dmcxQ3o2Q0RBOGxtRkJTelVTVThhZXcyTDYx?=
 =?utf-8?B?VDV0TWdvaGthSnlRNVBWN1R1T1dRVXA0M1F2Y2FKTlROTlFncklLSXcyZkMr?=
 =?utf-8?B?MElhUnFxdlA3Zkg1a29KSVZ1MUJ0U0FvU0JqVXJaSXBvanorWW1Qb0tpUnZ5?=
 =?utf-8?B?WWJENG84SlJoaHZ6OVM1KzNaeURiT3pDV2UwK3AwZEtBZDI5SElBNVpwTFEy?=
 =?utf-8?B?b1FmL2tEL0lpanhiT2p6ZGZXZW50Q0xTQm55S1M1RmpQQlNjT1hOZ2JnSTA0?=
 =?utf-8?B?aFovaVo4RkNsb3JsOGZqdFRmRnhkN0xhUHVpU0U4WGFuUFhvaWxUZmR1azN0?=
 =?utf-8?B?dmZhNStGZmw5WFd3Mi96SjJsOWZhWERSOU4xTVdYRHQyN0trS0xYSnZDVFVl?=
 =?utf-8?B?V1MvZlpkdE1MMzhPbXVOL1U2NmFDcFdrYUxyVkJ5UldhTHJvZWZzTHBObllX?=
 =?utf-8?B?aHIydEpWZnUxZHZwR21LQ2RnK2JhY2VaUUVRckxRQUJXNEQ0STFjQUtRMUIr?=
 =?utf-8?B?dzQwOXJKTDJwYnRtUDk5UjRTWWFWYUp2OHU2RkZ0cUR2NUtnK29NMUJLaUFa?=
 =?utf-8?B?TXZveU9UZjZvUW9XMUZHdXlsdEVhVVoxNXVDeWVMZXE2UzkrSmVuUWpQcXh2?=
 =?utf-8?B?QUdaTFBKMTlhelhLeHoxdkpOUkI2eEM2RjB4TWQrc1p3d3Z6bGhXa3ZFVyto?=
 =?utf-8?B?YlZ5S3RLMWhkbHNrb0ZHbFVrTS82d2xJU1Bhd1dBRVpXb3JUTjdiYzVYbXdv?=
 =?utf-8?B?TVFjM25YSDJCYjNKWEUxWEY1azhBL1pIbjd3V0VFTUtJNGI0T1ZMVXk2djRz?=
 =?utf-8?B?RzM1Zk9oUG5PT2JIc0R4NHNYSlFUN1NaSW5Ba0FxYndoRDc4T1lsV2cvZFFU?=
 =?utf-8?B?NW5hRDY0eDNoZGJsMDVPTk1QUEJrYkh1cE1TSU9LcXhDZzVZZC9Eb2RWUUJp?=
 =?utf-8?B?dXZMQjk1ZWxGYjNVWER3NlpDK3lMK1JwNGMzTkxlWTlGRWQwTElMWUdwNnR6?=
 =?utf-8?B?KzJaNjEyT1JpQlBlNGZZSFp4eG1SbEh2eHQ4cFVNc3k3Slh3NUVTTDV5TmlB?=
 =?utf-8?Q?gjJqvs0ddXW3csKOqn9uY1Y=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0C0A29EBEE8682459782A3678593454F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac78ec5-c6e1-45a3-bc7b-08dad4c4eea0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2022 00:25:50.7911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hmB8bWmGewjQikW0+tH9F7q5CSgJjajoxVheZs3uik4n87oAoVZyl+HogkYzIVkgROk3s3OptwAcF54jT+3XUVNE1zT8idRuWrRTcjCBLM/oj7Mk69+RIH3Sk4OibCJn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5421
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 0/7] drm/i915/pxp: Create a backend
 abstraction layer for pxp-tee-link
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KytSb2RyaWdvLCBEYW5pZWxlLCBKYW5pLg0KDQpIZXkgZm9sa3MgLSBhbnkgY29uY2VybnMgd2l0
aCB0aGlzIGFwcHJvYWNoPyANCg0KaTkxNS0+cHhwLS0tPltmZWF0dXJlIGZ1bmN0aW9uc10NCiAg
ICAgICAgfC0tLS0tLS0+IFt0ZWUtYmFja2VuZHMtZm9sZGVyXQ0KICAgICAgICAgICAgICAgICAg
ICAgICAgfC0tLT5tZWktcHhwIHRyYW5zcG9ydCBmdW5jdGlvbnMgKGxlZ2FjeSkNCiAgICAgICAg
ICAgICAgICAgICAgICAgIHwtLS0+Z3NjY3MgdHJhbnNwb3J0IGZ1bmN0aW9ucyAobXRsKykNCg0K
dGVlIGJhY2tlbmQgZm9sZGVyIGJhc2ljYWxseSBhYnN0cmFjdHMgYXdheSB0aGUgdHJhbnNwb3J0
IG1lY2hhbmlzbSB0byBnZXQgUFhQIG1lc3NhZ2VzDQp0byBhbmQgZnJvbSBQWFAgZmlybXdhcmUg
c2VydmljZS4gdGhlIGdvYWwgaXMgdG8ga2VlcCB0aGUgdXBwZXIgbGF5ZXIgb2YgUFhQIHNvbWV3
aGF0DQphZ25vc3RpYyB0byB0aGUgYm90dG9tIGxhdGVyIGFuZCBsZXQgdGhlIGJvdHRvbSBsYXRl
ciBoYW5kbGUgYmFja2VuZCBhc3NldHMgYW5kIGZsb3dzDQpkZXBlbmRpbmcgb24gdGhlIHBsYXRm
b3JtLiANCg0KVG9kYXkgdGhlIG1laS1weHAgZnVuY3Rpb25zIGNhbGxlZCBkaXJlY3RseSBieSB0
aGUgcHhwIG1haW4gZnVuY3Rpb25zIGFuZCBpbiBmdXR1cmUgdG8NCmF2b2lkIGEgd2hvbGUgYnVu
Y2ggb2YgImlmIChnZW54KSBlbHNlIChnZW4tbXRsKSBpIHdhbnQgdG8gY3JlYXRlIGEgc2V0IG9m
IGZ1bmN0aW9uIHB0cnMNCnRoZSBiYWNrZW5kIHdpbGwgcG9wdWxhdGUgYXQgaW5pdCAoYW5kIGFs
c28gYSBiYWNrZW5kLXByaXZhdGUgY29udGV4dCkgc28gdGhhdCB0aGUNCmFic3RyYWN0aW9uIGNh
biBiZSBjbGVhbiBhbmQgbW9kdWxhcjoNCg0Kc3RydWN0IGludGVsX3B4cCB7DQoJLi4uDQogCXN0
cnVjdCB7DQoJCS8qKiBAcHJpdjogUG9pbnRlciBleGNsdXNpdmVseSBmb3IgYmFja2VuZCBsYXll
ciB0byBzdG9yZSBwcml2YXRlIGNvbnRleHQuKi8NCgkJdm9pZCAqcHJpdjsNCgkJLyoqIEBpbml0
OiBGdW5jLXB0ciBjYWxsZWQgdG8gaW5pdGlhbGl6ZSB0aGUgYmFja2VuZCB0cmFuc3BvcnQgcmVz
b3VyY2VzLiovDQogCQlpbnQgKCppbml0KShzdHJ1Y3QgaW50ZWxfcHhwICpweHApOw0KCQkvKiog
QGZpbmk6IEZ1bmMtcHRyIGNhbGxlZCB0byBmcmVlIHRoZSBiYWNrZW5kIHRyYW5zcG9ydCByZXNv
dXJjZXMuKi8NCiAJCXZvaWQgKCpmaW5pKShzdHJ1Y3QgaW50ZWxfcHhwICpweHApOw0KCQkvKioN
CgkJICogQGlzX3JlYWR5OiBGdW5jLXB0ciBjYWxsZWQgdG8gcXVlcnkgaWYgdGhlIGJhY2tlbmQg
dHJhbnNwb3J0IGlzIGF2YWlsYWJsZQ0KCQkgKiBmb3IgdXNlLiBEZXBlbmRpbmcgb24gdGhlIGJh
Y2tlbmQsIHNvbWUsIHN1Y2ggYXMgbWVpLCBoYXZlIGFzeW5jcm9ub3VzIHdvcmtlcnMNCgkJICog
b3IgY2FsbGJhY2tzIHRoYXQgc2V0dXAgdGhlIGJhY2tlbmQgdGVlIGxpbmsgdG8gdGhlIHNlY3Vy
aXR5IGZpcm13YXJlLg0KCQkgKiovDQoJCWJvb2wgKCppc19yZWFkeSkoc3RydWN0IGludGVsX3B4
cCAqcHhwKTsNCgkJLyoqIEBpbml0OiBGdW5jLXB0ciBjYWxsZWQgdG8gY3JlYXRlIGEgcHhwIHNl
c3Npb24uKi8NCiAJCWludCAoKmNyZWF0ZV9zZXNzaW9uKShzdHJ1Y3QgaW50ZWxfcHhwICpweHAs
IGludCBzZXNzaW9uX2lkKTsNCgkJLyoqIEBpbml0OiBGdW5jLXB0ciBjYWxsZWQgdG8gc2VuZCBt
ZXNzYWdlIHBhY2tldHMgdG8gcHhwIGZpcm13YXJlLiovDQogCQlpbnQgKCpzZW5kX21lc3NhZ2Up
KHN0cnVjdCBpbnRlbF9weHAgKnB4cCwNCiAJCQkJICAgIHZvaWQgKm1zZ19pbiwgc2l6ZV90IG1z
Z19pbl9sZW4sDQogCQkJCSAgICB2b2lkICptc2dfb3V0LCBzaXplX3QgbXNnX291dF9tYXhfbGVu
LA0KCX0gdGVlX2xpbms7DQp9Ow0KDQouLi5hbGFuDQoNCk9uIFdlZCwgMjAyMi0xMS0yMyBhdCAx
NDozNCAtMDgwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+IFBYUCBpcyBhIGZlYXR1cmUgYWxsb3dp
bmcgd29ya2xvYWRzIGV4ZWN1dGluZyBvbiBlbmdpbmVzIHRvIG9wZXJhdGUgd2l0aA0KPiBlbmNy
eXB0ZWQgYnVmZmVycyAodmlhIHNwZWNpZmljIHN0YXRlIGluc3RydWN0aW9ucykuIE9uIHRoZSBv
dGhlciBoYW5kLCBQWFAgY29udHJvbHMNCj4gZm9yIG9wZXJhdGlvbnMgbGlrZSBhcmJpdHJhdGlv
biBzZXNzaW9uIGNyZWF0aW9uIGFuZCBnbG9iYWwgdGVhcmRvd24gb2YgUFhQIHNlc3Npb25zDQo+
IHJlcXVpcmUgY29tbXVuaWNhdGluZyB3aXRoIHRoZSBzZWN1cml0eSBmaXJtd2FyZS4NCj4gDQo+
IFRoZSB0cmFuc3BvcnQgbGF5ZXIgdG8gZXN0YWJsaXNoLCBleGVjdXRlIGFuZCBzaHV0ZG93biBj
b21tdW5pY2F0aW9uIHdpdGggdGhlIHNlY3VyaXR5DQo+IGZpcm13YXJlIGlzIGRpZmZlcmVudCBi
ZXR3ZWVuIFRHTC9BREwgdnMgTVRMLiBUaGUgZm9ybWVyIHVzZXMgdGhlIG1laSBjb21wb25lbnQg
ZHJpdmVyDQo+IGludGVyZmFjZXMgd2hpbGUgdGhlIGxhdHRlciBkZXBlbmRzIG9uIHRoZSBtZWRp
YS10aWxlJ3MgR1NDLWNvbW1hbmQtc3RyZWFtZXIuIEJvdGggY2FzZXMNCj4gaGF2ZSB2ZXJ5IGRp
ZmZlcmVudCBjb2RlIGZsb3cgYW5kIGFzc2V0cy4NCj4gDQo+IFRoaXMgc2VyaWVzIGFpbXMgdG8g
Y3JlYXRlIGEgY2xlYW4gcGFydGl0aW9uIGJldHdlZW4gdGhlIGZyb250IGVuZCBvZiB0aGUgUFhQ
IHN1YnN5c3RlbQ0KPiBhbmQgdGhlIGJhY2tlbmQtdGVlIHRyYW5zcG9ydCBsYXllci4gVGhlIGdv
YWwgaGVyZSBpcyB0byBwcmVzZW50IGFuIGludHVpdGl2ZSBsYXllcmluZw0KPiB1c2luZyBiYWNr
ZW5kIGZ1bmN0aW9uIHBvaW50ZXJzIHRoYXQgd2lsbCBzY2FsZSBmb3IgZnV0dXJlIGhhcmR3YXJl
IGJhY2tlbmRzDQo+IHdoaWxlIGtlZXBpbmcgdGhlIGZyb250IGVuZCBhZ25vc3RpYyB0byB0aGUg
YmFja2VuZCBkZXRhaWxzLg0KPiANCj4gDQo+IEFsYW4gUHJldmluICg3KToNCj4gICBIQVg6IGRy
bS9pOTE1L3B4cDogUHJlcGFyZSBpbnRlbF9weHAgZW50cnkgcG9pbnRzIGZvciBNVEwNCj4gICBk
cm0vaTkxNS9weHA6IFJlZmFjdG9yIG1laS10ZWVsaW5rIGNoZWNrcyBhdCBpbml0L2ZpbmkNCj4g
ICBkcm0vaTkxNS9weHA6IEFic3RyYWN0IG1laS10ZWVsaW5rIGZ1bmN0aW9uIGFjY2VzcyB2aWEg
YmFja2VuZCBwdHJzDQo+ICAgZHJtL2k5MTUvcHhwOiBTZXBhcmF0ZSB0ZWUtbGluayBmcm9udCBl
bmQgaW50ZXJmYWNlcyBmcm9tIGJhY2tlbmQNCj4gICAgIGltcGxlbWVudGF0aW9uDQo+ICAgZHJt
L2k5MTUvcHhwOiBtb3ZlIG1laS1weHAgYW5kIG1laS1nc2MgcmVzb3VyY2VzIHRvIGJlIGJhY2tl
bmQtcHJpdmF0ZQ0KPiAgIGRybS9pOTE1L3B4cDogQWRkIFBYUCBnc2NjcyB0ZWUtbGluayBiYWNr
ZW5kIHN0dWJzDQo+ICAgZHJtL2k5MTUvcHhwOiBCZXR0ZXIgaGllcmFyY2h5IHJlYWRpYmlsaXR5
IC0gbW92ZSBiYWNrZW5kcyB0byBhDQo+ICAgICBiYWNrZW5kIGZvbGRlcg0KPiANCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgNCArLQ0KPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jICAgIHwgICAyICstDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgfCAgIDYgKy0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jcmVhdGUuYyAgICB8ICAgMiArLQ0K
PiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgICAyICst
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDQg
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jICAgICAgICAgIHwgMTAz
ICsrKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmggICAgICAgICAg
fCAgMTYgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmMgICAg
ICB8ICAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9kZWJ1Z2Zz
LmMgIHwgICA4ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2h1Yy5j
ICAgICAgfCAgMTMgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfaXJx
LmMgICAgICB8ICAgNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9w
bS5jICAgICAgIHwgIDExICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
X3Nlc3Npb24uYyAgfCAgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9w
eHBfdGVlLmMgICAgICB8IDMxMCArKy0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvcHhwL2ludGVsX3B4cF90ZWUuaCAgICAgIHwgIDIyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9weHAvaW50ZWxfcHhwX3R5cGVzLmggICAgfCAgNTIgKystDQo+ICAuLi4vaTkxNS9weHAv
dGVlX2JhY2tlbmRzL2ludGVsX3B4cF9nc2Njcy5jICAgfCAgNDggKysrDQo+ICAuLi4vaTkxNS9w
eHAvdGVlX2JhY2tlbmRzL2ludGVsX3B4cF9nc2Njcy5oICAgfCAgMTMgKw0KPiAgLi4uL2k5MTUv
cHhwL3RlZV9iYWNrZW5kcy9pbnRlbF9weHBfdGVlX21laS5jIHwgMzk4ICsrKysrKysrKysrKysr
KysrKw0KPiAgLi4uL2k5MTUvcHhwL3RlZV9iYWNrZW5kcy9pbnRlbF9weHBfdGVlX21laS5oIHwg
IDEzICsNCj4gIDIxIGZpbGVzIGNoYW5nZWQsIDY3NyBpbnNlcnRpb25zKCspLCAzNTggZGVsZXRp
b25zKC0pDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL3Rl
ZV9iYWNrZW5kcy9pbnRlbF9weHBfZ3NjY3MuYw0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3B4cC90ZWVfYmFja2VuZHMvaW50ZWxfcHhwX2dzY2NzLmgNCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvdGVlX2JhY2tlbmRzL2lu
dGVsX3B4cF90ZWVfbWVpLmMNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9weHAvdGVlX2JhY2tlbmRzL2ludGVsX3B4cF90ZWVfbWVpLmgNCj4gDQo+IA0KPiBiYXNl
LWNvbW1pdDogYzhiMmNlNmUyMDY2MmVmMzAxMzBlNjVmNDczYjFmZjUzNjI3NjVlMw0KPiAtLSAN
Cj4gMi4zNC4xDQo+IA0KDQo=
